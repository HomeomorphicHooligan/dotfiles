"""
This module stores all the information and parameters that are used to
configurate the modules, sometimes called groups of my qtile configuration.

A group, is a workspace that can hold N number of windows, in my configuration I
have enabled 9 groups.

For more information check out: github.com/pablocorbalann/dotfiles/tree/main/qtile
"""
from libqtile.config import Key, Group
from libqtile.command import lazy
from settings.keys import mod, keys


# For using this icons you will have to install a nerd font (any of them). Check
# out: nerd-fonts.com, and then enable it (in arch you have to put the .ttf, odtf or 
# the font itself in the /usr/local/share/fonts/ dir, for more information about how
# to enable the font check: wiki.archlinux.org/index.php/Fonts# Icons: 
#
# Bellow you can see the icon of each group and it's nerd font name:
#
#   nerdfonts.com/cheat-sheet

groups = [Group(f" {icon}  ") for icon in [
    "", # Icon for the web browser: nf-fa-firefox
    "", # Icon of Python: nf-fae-python
    "", # Icon of the terminal: nf-dev-terminal
    "", # Icon of the html lang: nf-fa-code
    "", # Icon of the settings: nf-seti-config
    "", # Icon of the file manager: nf-mdi-folder
    "", # Icon of the image viewer: nf-mdi-image
    "", # Icon of the video player: nf-fa-video_camera
    "", # Icon of the layers: nf-mdi-layers
]]

for i, group in enumerate(groups):
    actual_key = str(i + 1)
    keys.extend([
        # Switch to workspace N
        Key([mod], actual_key, lazy.group[group.name].toscreen()),
        # Send window to workspace N
        Key([mod, "shift"], actual_key, lazy.window.togroup(group.name))
    ])
