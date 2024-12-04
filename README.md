## About

These are my personal dotfiles, currently tailored for [Arch](https://archlinux.org/) and managed with [Stow](https://www.gnu.org/software/stow/).

This repository offers a collection of configurations for a variety of software.

## Installation

Install Stow and clone the repository to `~/dotfiles`:

```shell
sudo pacman -S stow
git clone https://github.com/mystjc/dotfiles.git && cd dotfiles
```

Afterwards, make sure to install the necessary programs:

```shell
sudo pacman -S bat btop fastfetch fd fish fzf joplin-appimage kanata kitty lazygit lf lsd mangohud neovim ripgrep rofi-wayland starship wezterm yazi zoxide
```

Then, run Stow within `~/dotfiles` to create the symlinks:

```shell
stow .
```

If there is a conflict with pre-existing files, use:

```shell
stow --adopt .
```

#### Highly recommend this [video](https://youtu.be/y6XCebnB9gs?list=PLgO4Le-rukkJjc45SlAjDi-xtikmoOdUu) by Dreams of Autonomy for additional information on using Stow!
