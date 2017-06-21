{ pkgs, lib, ... }:
let
  nvim = pkgs.neovim.override {
    vimAlias = true;
    configure = (import ./vim/customization.nix { pkgs = pkgs; });
  };
in
  [ nvim pkgs.ctags pkgs.python ]
