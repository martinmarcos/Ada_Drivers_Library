#!/usr/bin/env python

import re
import os
import sys

os.sys.path.insert(0, "../scripts/Kconfiglib/")

from kconfiglib import Kconfig, STR_TO_TRI

BOARDS = {
    'Crazyflie':           {'rts_profiles':      ['ravenscar-sfp', 'ravenscar-full'],
                            'board_conf_choice': 'CHOICE_BOARD_CRAZYFLIE2'},

    'HiFive1':             {'rts_profiles': ['zfp'],
                            'board_conf_choice': 'CHOICE_BOARD_HIFIVE1'},

    'MicroBit':            {'rts_profiles': ['zfp'],
                            'board_conf_choice': 'CHOICE_BOARD_MICROBIT'},

    'Native':              {'rts_profiles': ['native'],
                            'board_conf_choice': 'CHOICE_BOARD_NATIVE'},

    'OpenMV2':             {'rts_profiles': ['ravenscar-sfp', 'ravenscar-full'],
                            'board_conf_choice': 'CHOICE_BOARD_OPENMV2'},

    'STM32F407_Discovery': {'rts_profiles': ['ravenscar-sfp', 'ravenscar-full'],
                            'board_conf_choice': 'CHOICE_BOARD_STM32F4_DISCO'},

    'STM32F429_Discovery': {'rts_profiles': ['ravenscar-sfp', 'ravenscar-full'],
                            'board_conf_choice': 'CHOICE_BOARD_STM32F429_DISCO'},

    'STM32F469_Discovery': {'rts_profiles': ['ravenscar-sfp', 'ravenscar-full'],
                            'board_conf_choice': 'CHOICE_BOARD_STM32F469_DISCO'},

    'STM32F746_Discovery': {'rts_profiles': ['ravenscar-sfp', 'ravenscar-full'],
                            'board_conf_choice': 'CHOICE_BOARD_STM32F746_DISCO'},

    'STM32F769_Discovery': {'rts_profiles': ['ravenscar-sfp', 'ravenscar-full'],
                            'board_conf_choice': 'CHOICE_BOARD_STM32F769_DISCO'},
    }


FOLDERS = {'Crazyflie': 'crazyflie',
           'HiFive1': 'HiFive1',
           'MicroBit': 'MicroBit',
           'Native': 'native',
           'OpenMV2': 'OpenMV2',
           'STM32F407_Discovery': 'stm32f407_discovery',
           'STM32F429_Discovery': 'stm32f429_discovery',
           'STM32F469_Discovery': 'stm32f469_discovery',
           'STM32F746_Discovery': 'stm32f746_discovery',
           'STM32F769_Discovery': 'stm32f769_discovery'}


def gen_project(board_name, rts):
    assert board_name is not None, "board is undefined"
    assert board_name in BOARDS, "%s is undefined" % board_name

    board = BOARDS[board_name]

    conf = Kconfig("../config.in", srctree='..', config_prefix='')

    conf.syms['RELATIVE_PATH_TO_ADL_ROOT'].set_value ("../../")

    conf.syms[board['board_conf_choice']].set_value (STR_TO_TRI["y"])

    if rts == 'zfp':
        suffix = 'zfp'
        conf.syms['RUNTIME_PROFILE_ZFP'].set_value (STR_TO_TRI["y"])
    elif rts == 'ravenscar-sfp':
        suffix = 'sfp'
        conf.syms['RUNTIME_PROFILE_RAVENSCAR_SFP'].set_value (STR_TO_TRI["y"])
    elif rts == 'ravenscar-full':
        suffix = 'full'
        conf.syms['RUNTIME_PROFILE_RAVENSCAR_FULL'].set_value (STR_TO_TRI["y"])
    elif rts == 'native':
        suffix = "native"
        conf.syms['RUNTIME_PROFILE_NATIVE'].set_value (STR_TO_TRI["y"])
    else:
        assert False, "Unexpected runtime %s" % rts

    if suffix == "native":
        project_name = board_name
    else:
        project_name = '%s_%s' % (board_name, suffix)

    board_folder = FOLDERS[board_name]

    if suffix is not None:
        conf_out_folder = os.path.join(board_folder, suffix)
    else:
        conf_out_folder = board_folder

    cnt = '--  **AUTOMATICALLY GENERATED** Do not edit !!\n'
    cnt += '--  Please see board_projects_generator.py\n'
    cnt += '--  and edit this script instead.\n'
    cnt += '\n'
    cnt += 'with "%s/config.gpr";\n' % suffix
    cnt += '\n'
    cnt += 'aggregate library project %s is\n' % project_name
    cnt += '\n'
    cnt += '   for Runtime ("Ada") use Config.RUNTIME_NAME_PREFIX & Config.RUNTIME_NAME_SUFFIX;\n'
    cnt += '   for Target use Config.TARGET_PLATFORM;\n'
    cnt += '\n'
    cnt += '   for Project_Path use ("%s");\n' % suffix
    cnt += '   for Project_Files use (Config.RELATIVE_PATH_TO_ADL_ROOT & "/Ada_Drivers_Library.gpr");\n'
    cnt += '\n'
    cnt += '   for Library_Name use "adl";\n'
    cnt += '   for Library_Dir use "lib-" & Config.RUNTIME_NAME_SUFFIX;\n'
    cnt += '   for Library_Kind use "static";\n'
    cnt += '   for Create_Missing_Dirs use "True";\n'
    cnt += 'end %s;\n' % project_name

    print "creating directory %s" % conf_out_folder
    try:
        os.mkdir(conf_out_folder)
    except Exception:
        pass

    print "creating %s.gpr" % project_name.lower()
    with open('%s/%s.gpr' % (board_folder, project_name.lower()), 'w') as fp:
        fp.write(cnt)

    conf.write_config_ada('%s/config.ads' % conf_out_folder)
    print("configuration written to config.ads")

    conf.write_config_gpr('%s/config.gpr' % conf_out_folder)
    print("configuration written to config.gpr")



if __name__ == "__main__":
    for b in BOARDS:
        if 'rts_profiles' in BOARDS[b] and len(BOARDS[b]['rts_profiles']) >= 1:
            for rts in BOARDS[b]['rts_profiles']:
                gen_project(b, rts)
