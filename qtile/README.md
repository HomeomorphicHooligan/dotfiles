<p align="center">
  <img src="images/qtile.png">
</p>

# Qtile (TWM)
Qtile is a tiling window manager (WM) that has been programmed in Python, it's also configurated using PYthon.

###### Thanks to [@antoniosarosi](https://github.com/antoniosarosi) because most of the configuration is actually based on his.

---

### Installation of Qtile (arch)

You have to install the Qtile tiling manager for using this configuration.
```
sudo pacman -S qtile pacman-contrib
yay -S nerd-fonts-ubuntu-mono
pip install psutil
```

---

### Using the configuration

Clone this repository and copy my configs:

```bash
git clone https://github.com/pablocorbalann/dotfiles.git pablo-dotfiles
cp -r pablo-dotfiles/dotfiles/.config/qtile ~/.config
rm -rf pablo-dotfiles/
```

If the network widget doesn't work check `./settings/widgets.py` and look
for this line, you should find it inside a list called *primary_widgets*:

```python
# Change interface arg, use ip address to find which one you need
 widget.Net(**base(bg='color3'), interface='wlp2s0'),
```

### Structure

In `config.py`, which is the file where most people write all their config, I only have an *autostart* function and some other variables like

```python
@hook.subscribe.startup_once
def autostart():
    subprocess.call([path.join(qtile_path, 'autostart.sh')])
```

If you want to change *autostart* programs, open  `./autostart.sh`

```bash
#!/bin/sh

# systray battery icon
cbatticon -u 5 &
# systray volume
volumeicon &
```

If you want to modify keybindings, open `./settings/keys.py`. To modify
workspaces, use `./settings/groups.py`. Finally, if you want to add more
layouts, check `./settings/layouts.py`, the rest of files don't need any
configuration.

## Themes

To set a theme, check which ones are available in `./themes`, and write
the name of the theme you want in a file named `./config.json`:

```json
{
    "theme": "material-ocean"
}
