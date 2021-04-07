"""
This module contains the python script that defines the configuration
of the mouse for my Qtile configuration.

For more information check: github.com/pablocorbalann/dotfiles/tree/main/qtile

"""

# Imports (just qtile)
from libqtile.config import Drag, Click
from libqtile.command import lazy
from settings.keys import mod


# We can define the mouse as a list of actions, formed by
# mods, buttons and results.
# TODO: implement a more consistent mouse functionallity level
mouse = [
    Drag(
        [mod],
        "Button1",
        lazy.window.set_position_floating(),
        start=lazy.window.get_position()
    ),
    Drag(
        [mod],
        "Button3",
        lazy.window.set_size_floating(),
        start=lazy.window.get_size()
    ),
    Click([mod], "Button2", lazy.window.bring_to_front())
]
