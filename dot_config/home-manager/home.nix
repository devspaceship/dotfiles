# { lib, pkgs, ... }:
# {
#   imports = lib.optionals pkgs.stdenv.isLinux [ ./linux.nix ]
#     ++ lib.optionals pkgs.stdenv.isDarwin [ ./darwin.nix ];
# }

{ config, pkgs, ... }:
{
  home.username = "devspaceship";
  # home.homeDirectory = "/home/devspaceship";
  home.homeDirectory = "/Users/devspaceship";
  home.stateVersion = "24.11";

  home.packages = [
    pkgs.cmatrix
    pkgs.fzf
    pkgs.htop
    pkgs.lazygit
    pkgs.neovim
    pkgs.ripgrep
    pkgs.tree
    # (nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })
  ];

  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;
    ".config/htop/htoprc".source = dotfiles/htop/htoprc;
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.home-manager.enable = true;
}

