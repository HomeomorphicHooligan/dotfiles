<p align="center">
  <img src="images/logo.png" alt="ZSH">
</p>
 # ZSH 

ZSH is the most populat terminal shell, with the best comunity of the world. I normally use Zsh for everything.

In this folder I'm going to store the important configuration files of **my Zsh** shell.

### Using this configuration
Right now if you want to use my Zsh configuration, you will have to download the files by hand. Maybe in the future I will program a small shell script to automate the process.

If you use [Oh My ZSH](https://ohmyz.sh) the structure will be something similar to:
```
/home/<user>
| ...
| .zshrc
| .zshenv
| ...
| /.oh-my-zsh/
| | ...
| | /custom/
| | | ...
| | | /themes/
| | | | ...
| | | | evan.zsh-theme
```
### Clonning the .zshrc
If you just want to clone the `.zshrc` file, you can use this command:
```shell
rm -rf ~/.zshrc && echo "$(curl -L https://raw.githubusercontent.com/pblcc/dotfiles/main/zsh/.zshrc)" >> ~/.zshrc
```

###### Limitations under the license
