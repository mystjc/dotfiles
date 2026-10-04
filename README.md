## About

This repository contains my personal dotfiles, offering a collection of configurations for a variety of software used on my system. Currently tailored for [Arch Linux](https://archlinux.org/) and managed with [Stow](https://www.gnu.org/software/stow/).

| **Type**            | **Component**                                                                     |
| ------------------- | --------------------------------------------------------------------------------- |
| Display Manager     | [Ly](https://codeberg.org/fairyglade/ly)                                          |
| Window Manager      | [Niri](https://github.com/niri-wm/niri)                                           |
| Desktop Shell       | [Noctalia](https://noctalia.dev/)                                                 |
| Terminal            | [Wezterm](https://wezterm.org/)                                                   |
| Shell               | [Fish](https://fishshell.com/)                                                    |
| Shell Prompt        | [Starship](https://starship.rs/)                                                  |
| Editor              | [Neovim](https://neovim.io/), [Zed](https://zed.dev/)                             |
| App Launcher        | [Rofi](https://github.com/davatorium/rofi)                                        |
| File Manager        | [Lf](https://github.com/gokcehan/lf), [Dolphin](https://apps.kde.org/dolphin/)    |
| System Information  | [Fastfetch](https://github.com/fastfetch-cli/fastfetch)                           |
| Resource Monitor    | [Btop](https://github.com/aristocratos/btop)                                      |
| Color Scheme        | [Cobaltic](https://github.com/mystjc/cobaltic)                                    |
| Font Family         | [CaskaydiaCove Nerd Font](https://www.nerdfonts.com/)                             |
| Icon Theme          | [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)           |

## Installation

Install [Nix](https://wiki.archlinux.org/title/Nix):

```shell
sudo pacman -S nix
```

Install the necessary packages with Nix:

```shell
nix-env -iA nixpkgs.dotfiles
```

Clone the repository to `~/dotfiles`:

```shell
git clone https://github.com/mystjc/dotfiles.git && cd dotfiles
```

Run Stow within `~/dotfiles` to create symlinks:

```shell
stow --no-folding .
```
