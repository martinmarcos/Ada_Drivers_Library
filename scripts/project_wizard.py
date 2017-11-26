#!/usr/bin/env python

###############################################################################
# We need to increase the maximum recursion depth for Kconfiglib to be able to
# process the big KConfig tree...

import resource
import sys

# Will segfault without this line.
resource.setrlimit(resource.RLIMIT_STACK, [0x10000000, resource.RLIM_INFINITY])
sys.setrecursionlimit(0x100000)

###############################################################################

import os

script_dir = os.path.dirname(os.path.abspath(__file__))
ADL_dir = os.path.join(script_dir, "..")
os.sys.path.insert(0, os.path.join(script_dir, "Kconfiglib/"))

from kconfiglib import Kconfig, \
                       Symbol, Choice, MENU, COMMENT, \
                       BOOL, TRISTATE, STRING, INT, HEX, UNKNOWN, \
                       expr_value, \
                       TRI_TO_STR, STR_TO_TRI, _is_base_n, _TYPE_TO_BASE


def create_subdir(dir):
    if not os.path.exists(dir):
        os.makedirs(dir)


def valid_int(str):
    try:
        nbr = int(str)
        return True
    except ValueError:
        return False


def query_bool(question, default="yes"):
    valid = {"yes": True, "y": True, "ye": True,
             "no": False, "n": False}
    if default is None:
        prompt = " [y/n]\n"
    elif default == "yes" or default == 'y':
        prompt = " [Y/n]\n"
    elif default == "no" or default == 'n':
        prompt = " [y/N]\n"
    else:
        raise ValueError("invalid default answer: '%s'" % default)

    while True:
        sys.stdout.write(question + prompt)
        choice = raw_input().lower()
        if choice == '?':
            continue
        elif default is not None and choice == '':
            return valid[default]
        elif choice in valid:
            return valid[choice]
        else:
            sys.stdout.write("Please respond with 'yes' or 'no' "
                             "(or 'y' or 'n').\n")


def query_string(question, default):

    prompt = " [default: '%s']\n? " % (default)
    while True:
        sys.stdout.write(question + prompt)
        choice = raw_input()
        if choice == '?':
            continue
        elif default is not None and choice == '':
            return default
        else:
            return choice


def query_choice(question, choices):

    prompt = " [%s]\n" % (", ".join(choices))
    while True:
        print question
        cnt = 0
        for item in choices:
            print " - (%d) %s" % (cnt, item)
            cnt += 1
        sys.stdout.write("? ")
        choice = raw_input()
        if choice == '?':
            continue
        elif choice in choices:
            return choice
        elif valid_int(choice) and 0 <= int(choice) <= len(choices) - 1:
            return choices[int(choice)]
        else:
            sys.stdout.write("Please respond with an item of the list.\n")


def query_int(question, range_from, range_to, default):

    has_range = range_from is not None and range_to is not None

    if has_range and range_from > range_to:
        raise ValueError("invalid range : %d .. %d" % (range_from, range_to))

    if has_range and not range_from <= default <= range_to:
        raise ValueError("invalid default answer: %d" % default)

    if has_range:
        prompt = " [%d .. %d] default:%s\n" % (range_from, range_to, default)
    else:
        prompt = " [default: %s]\n" % (default)

    while True:
        sys.stdout.write(question + prompt)
        choice = raw_input().lower()
        if choice == '?':
            continue
        elif default is not None and choice == '':
            return default
        elif not valid_int(choice):
            sys.stdout.write("'%s' is not a valid int value\n" % choice)
        elif not has_range or range_from <= int(choice) <= range_to:
            return int(choice)
        else:
            sys.stdout.write("'%s' is not in the range of valid values\n" % choice)


def sc_range(sc, has_active_range, low, high):
    base = _TYPE_TO_BASE[sc.orig_type]

    # Check if a range is in effect
    for low_expr, high_expr, cond in sc.ranges:
        if expr_value(cond):
            has_active_range = True

            # The zeros are from the C implementation running strtoll()
            # on empty strings
            low = int(low_expr.str_value, base) if \
              _is_base_n(low_expr.str_value, base) else 0
            high = int(high_expr.str_value, base) if \
              _is_base_n(high_expr.str_value, base) else 0

            break
    else:
        has_active_range = False


def sc_question(sc, prompt, indent):

    if sc.type == STRING:
        val = query_string(prompt, sc.str_value)
        sc.set_value(val)
    elif sc.type == INT:
        has_active_range = False
        low = 0
        high = 0
        sc_range(sc, has_active_range, low, high)
        if not has_active_range:
            low = None
            high = None
        val = query_int(prompt, low, high, int(sc.str_value))
        sc.set_value(str(val))
    elif sc.type == HEX:
        print prompt + " HEX type not supported..."
        return

    if isinstance(sc, Symbol) and sc.choice and sc.visibility == 2:
        return

    if not isinstance(sc, Symbol):
        # This is a choice
        choice_list = []
        if sc.syms:
            for item in sc.syms:
                if item.assignable:
                    choice_list.append(item.name)
        val = query_choice(prompt, choice_list)
        conf.syms[val].set_value(STR_TO_TRI['y'])
        return

    tri_val_str = {0: " ", 1: "M", 2: "*"}[sc.tri_value]

    if len(sc.assignable) == 1:
        return

    if sc.type == BOOL:
        val = query_bool(prompt, sc.str_value)
        sc.set_value(val)
        return

    if sc.type == TRISTATE:
        print prompt + " TRISTATE type not supported..."
        return


def menuconfig_nodes(node, indent):
    while node:
        if node.prompt:
            prompt, prompt_cond = node.prompt
            if expr_value(prompt_cond):
                if node.item == COMMENT:
                    sys.stdout.write(" " * indent + "*** %s ***\n" % prompt)
                elif node.item == MENU:
                    sys.stdout.write(" " * indent + "--- %s ---\n" % prompt)
                else:
                    sc = node.item
                    if sc.type != UNKNOWN:
                        sc_question(sc, prompt, indent)

        if node.list:
            menuconfig_nodes(node.list, indent + 4)

        node = node.next

project_name = query_string("Enter project name", "drivers")
project_dir = os.path.join(os.getcwd(), project_name)

config_file = os.path.join(ADL_dir, "config.in")
config_dir = os.path.dirname(config_file)

print "Loading configuration %s..." % config_file

conf = Kconfig(config_file, srctree=config_dir, config_prefix='')

conf.syms['RELATIVE_PATH_TO_ADL_ROOT'].set_value(os.path.relpath(config_dir, project_dir))

print "\n======== %s ========\n" % (conf.mainmenu_text)

menuconfig_nodes(conf.top_node.list, 0)

create_subdir(project_name)

conf.write_config(os.path.join(project_dir, ".config"))
print("configuration saved to config.ads")

conf.write_config_ada(os.path.join(project_dir, 'config.ads'))
print("configuration written to config.ads")

conf.write_config_gpr(os.path.join(project_dir, 'config.gpr'))
print("configuration written to config.gpr")

prj = 'with "config.gpr";\n'
prj += '\n'
prj += 'aggregate library project %s is\n' % project_name
prj += '\n'
prj += '   for Runtime ("Ada") use Config.RUNTIME_NAME_PREFIX & Config.RUNTIME_NAME_SUFFIX;\n'
prj += '   for Target use Config.TARGET_PLATFORM;\n'
prj += '\n'
prj += '   for Project_Path use (".");\n'
prj += '   for Project_Files use (Config.RELATIVE_PATH_TO_ADL_ROOT & "/Ada_Drivers_Library.gpr");\n'
prj += '\n'
prj += '   for Library_Name use "adl";\n'
prj += '   for Library_Dir use "lib-" & Config.RUNTIME_NAME_SUFFIX;\n'
prj += '   for Library_Kind use "static";\n'
prj += '   for Create_Missing_Dirs use "True";\n'
prj += '   LD_Switches := ("-T", Config.LD_Script_Path);'
prj += '\n'
prj += 'end %s;\n' % project_name

with open(os.path.join(project_dir, project_name + '.gpr'), 'w') as file:
    file.write(prj)

if query_bool("Do you want to create a examples project?"):
    example_name = query_string("Enter example project name", "hello")

    prj = 'with "%s/%s.gpr";\n' % (project_name, project_name)
    prj += '\n'
    prj += 'project %s is\n' % example_name
    prj += '\n'
    prj += '   for Runtime ("Ada") use %s\'Runtime ("Ada");\n' % project_name
    prj += '   for Target use %s\'Target;\n' % project_name
    prj += '\n'
    prj += '   for Source_Dirs use ("src");\n'
    prj += '   for Object_Dir use "obj";\n'
    prj += '   for Main use ("main.adb");\n'
    prj += '   for Create_Missing_Dirs use "True";\n'
    prj += '\n'
    prj += '   package Linker is\n'
    prj += '      for Default_Switches ("Ada") use Drivers.LD_Switches;\n'
    prj += '   end Linker;\n'
    prj += '\n'
    prj += 'end %s;\n' % example_name

    with open(os.path.join(os.getcwd(), example_name + '.gpr'), 'w') as file:
        file.write(prj)

    create_subdir("src")

    main = 'with Ada.Text_IO; use Ada.Text_IO;\n'
    main += '\n'
    main += 'procedure Main is\n'
    main += 'begin\n'
    main += '   Put_Line ("Hello world!");\n'
    main += 'end Main;\n'

    with open(os.path.join(os.getcwd(), "src", 'main.adb'), 'w') as file:
        file.write(main)

    os.system('gps -P %s.gpr' % example_name)
