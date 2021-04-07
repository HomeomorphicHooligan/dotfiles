"""
This is my configuration for the QTile tilling WM, that is completly configurated using Python.

All the settings are modulariced into the settings/ python package, in this file just a hook is 
declarated.

All the information about how to install and use this configuration can be found here: 

    https://github.com/pablocorbalann/dotfiles/tree/main/qtile


Created by Pablo Corbalán @pablocorbalann: pablo.corbalan@protonmail.com

Qtile conf inspired in Antonio Sarosi's configuration, for AL
"""

# import all the packages we need
from libqtile import hook
from os import path
import subprocess

from settings import *


@hook.subscribe.startup_once
def autostart():
    subprocess.call([path.join(qtile_path, 'autostart.sh')])


main = None
dgroups_key_binder = None
dgroups_app_rules = []
follow_mouse_focus = True
bring_front_click = False
cursor_warp = True
auto_fullscreen = True
focus_on_window_activation = 'urgent'
wmname = 'LG3D'
