{
    packageOverrides = pkgs:
        let mkEnv = name: paths:
            pkgs.buildEnv {
                inherit name paths;

                pathsToLink = [
                    "/bin"
                    "/share/man"
                    "/share/doc"
                ];

                extraOutputsToInstall = [
                    "man"
                    "doc"
                ];
            };
        in
        {
            dotfiles = mkEnv "dotfiles" [
                pkgs.bat
                pkgs.btop
                pkgs.fastfetch
                pkgs.fd
                pkgs.fish
                pkgs.fzf
                pkgs.kanata
                pkgs.lazygit
                pkgs.lf
                pkgs.lsd
                pkgs.mangohud
                pkgs.neovim
                pkgs.ripgrep
                pkgs.rofi
                pkgs.starship
                pkgs.stow
                pkgs.tmux
                pkgs.wezterm
                pkgs.zoxide
            ];

            aero = mkEnv "aero" [
                pkgs.cava
            ];
        };
}
