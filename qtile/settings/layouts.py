"""
This module contains the settings for the specific part that 
manages the layouts of my qtile configuration.

The module is pretty simple to understand, we have a general
layout configuration that uses the libqtile.layout module to
set up some layouts, today (07/04/2021) this configuration supports the
following layouts:

    - max
    - monad tall
    - monad wide
    - bsp
    - matrix
    - ratio tile

For more information: github.com/pablocorbalann/dotfiles/tree/main/qtile
"""
from libqtile import layout
from libqtile.config import Match
from settings.theme import colors

layout_conf = {
    'border_focus': colors['focus'][0],
    'border_width': 1,
    'margin': 4
}

layouts = [
    layout.Max(),
    layout.MonadTall(**layout_conf),
    layout.MonadWide(**layout_conf),
    layout.Bsp(**layout_conf),
    layout.Matrix(columns=2, **layout_conf),
    layout.RatioTile(**layout_conf),
    # TODO: Add support for more layouts (see qtile.org)
]

floating_layout = layout.Floating(
    float_rules=[
        *layout.Floating.default_float_rules,
        Match(wm_class='confirmreset'),
        Match(wm_class='makebranch'),
        Match(wm_class='maketag'),
        Match(wm_class='ssh-askpass'),
        Match(title='branchdialog'),
        Match(title='pinentry'),
    ],
    border_focus=colors["color4"][0]
)
