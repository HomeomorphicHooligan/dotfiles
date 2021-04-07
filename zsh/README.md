<p align="center">
  <img src="images/logo.png" alt="ZSH">
</p>

ZSH is the most populat terminal shell, with the best comunity of the world. I normally use Zsh for everything.

In this folder I'm going to store the important configuration files of **my Zsh** shell.

---

### Installing zsh (as default shell)
For installing ZSH, run the command for your linux distribution, for example in Arch Linux:
```shell
sudo pacman -S zsh
```
You can find the command for your distribution [here](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)

---

### Installing oh-my-zsh
For running the configuration is recommended [oh-my-zsh](https://ohmyz.sh/), for installing it run:
```shell
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

---

### Clonning the configuration
For running the configuration you will have to ruIf you just want the configuration, you can run:
```shell
git clone https://github.com/pablocorbalann/dotfiles pablo-dotfiles
cp -r pablo-dotfiles/zsh/ ~/zsh
cd ~/zsh
mv * ../
mv ../.zshrc ../.zshrc-old
mv .zshrc ../
mv .zshenv ../
source ~/.zshrc
```

---

###### Limitations under the license
