{ config, pkgs, ... }: {
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  imports = [
    ./nix-config/modules/vim
    ./nix-config/modules/zsh
    ./nix-config/modules/dotfiles
  ];
  nixpkgs.config.allowUnfree = true;
  home.packages = [
    pkgs.cabal2nix
    pkgs.nixGLNvidia
    pkgs.xorg.xmessage
    pkgs.haskellPackages.xmonad
    pkgs.haskellPackages.xmonad-extras
    pkgs.haskellPackages.xmonad-contrib
    pkgs.haskellPackages.yeganesh
    pkgs.fish
    pkgs.htop
    pkgs.zathura
    pkgs.neofetch
    pkgs.libGL
    pkgs.ranger
    pkgs.albert
    pkgs.minecraft
    pkgs.vivaldi
    pkgs.gcc
    pkgs.carp
    pkgs.lua
    pkgs.discord-ptb
    pkgs.mpv
    pkgs.makeWrapper
    pkgs.youtube-dl
    pkgs.ytcc
    pkgs.SDL
    pkgs.ghc
    pkgs.nitrogen
  ];
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "kamp";
  home.homeDirectory = "/home/kamp";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.03";
}
