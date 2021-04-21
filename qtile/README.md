<p align="center">
  <img src="images/qtile.png">
</p>

## Qtile (TWM)
Qtile is a tiling window manager (WM) that has been programmed in Python, it's also configurated using Python.

###### Thanks to [@antoniosarosi](https://github.com/antoniosarosi) because most of the configuration is actually based on his, don't forget to check out his repo.

---

### Installation of Qtile (arch based)

You have to install the Qtile tiling manager for using this configuration.
```
sudo pacman -S qtile pacman-contrib
# yay (aur helper)
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

#### Modifying the network

If the network widget doesn't work check `./settings/widgets.py` and look
for this line, you should find it inside a list called *primary_widgets*:

```python
# Change interface arg, use ip address to find which one you need
 widget.Net(**base(bg='color3'), interface='wlp2s0'),
```

You can also remove the `interface` keyword in order to get the net input of all your cards.
```python
 widget.Net(**base(bg='color3')),
```

---

### Structure

In `config.py`, which is the file where most people write all their config, I only have an *autostart* function and some other variables like

```python
@hook.subscribe.startup_once
def autostart():
    subprocess.call([path.join(qtile_path, 'autostart.sh')])
```

If you want to change *autostart* programs, open  `./autostart.sh`, the script is executed when starting qtile.

```bash
#!/bin/sh
# systray battery icon
cbatticon -u 5 &
# systray volume
volumeicon &
```

- If you want to modify keybindings, open `./settings/keys.py`.
- To modify workspaces, use `./settings/groups.py`.
-  Finally, if you want to add more layouts, check `./settings/layouts.py`. 

The rest of files don't need any configuration.

### Themes

To set a theme, check which ones are available in `./themes`, and write
the name of the theme you want in a file named `./config.json`:

```json
{
    "theme": "material-ocean"
}
