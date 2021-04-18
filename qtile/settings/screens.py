WALLPAPER_ROUTE = "/home/pablo/.config/qtile/wallpaper.txt"

from libqtile.config import Screen
from libqtile import bar
from libqtile.log_utils import logger
from settings.widgets import primary_widgets, secondary_widgets
import subprocess


def status_bar(widgets):
    return bar.Bar(widgets, 24, opacity=0.95)

w_name = ""
with open(WALLPAPER_ROUTE, "r") as f:
    w_name = f.read().strip()

w_route = f"/home/pablo/wallpapers/wallpapers/full-hd/{w_name}".strip()

print("w_name: ", w_name)
print("The path of the wallpaper is: ", w_route)

screens = [Screen(top=status_bar(primary_widgets),
                  wallpaper=w_route,
                  wallpaper_mode='strech')]

xrandr = "xrandr | grep -w 'connected' | cut -d ' ' -f 2 | wc -l"

command = subprocess.run(
    xrandr,
    shell=True,
    stdout=subprocess.PIPE,
    stderr=subprocess.PIPE,
)

if command.returncode != 0:
    error = command.stderr.decode("UTF-8")
    logger.error(f"Failed counting monitors using {xrandr}:\n{error}")
    connected_monitors = 1
else:
    connected_monitors = int(command.stdout.decode("UTF-8"))

if connected_monitors > 1:
    for _ in range(1, connected_monitors):
        screens.append(Screen(top=status_bar(secondary_widgets)))
