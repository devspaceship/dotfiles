# { lib, pkgs, ... }:
# {
#   imports = lib.optionals pkgs.stdenv.isLinux [ ./linux.nix ]
#     ++ lib.optionals pkgs.stdenv.isDarwin [ ./darwin.nix ];
# }
#

{ config, pkgs, ... }:

{
  home.username = "devspaceship";
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
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/devspaceship/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}

