{ lib, config, pkgs, ... }:

  let
    zsh_config = import ./zsh.nix {
      inherit (pkgs) writeText zsh-prezto neovim less;
    };
  in
  { 
    networking.domain = "infra.atrust.com";
    networking.search = [ "infra.atrust.com" ];
    networking.firewall.allowPing = true;
    security.sudo.wheelNeedsPassword = false;

    environment.systemPackages = let
      neovimPackages = import ./vim.nix pkgs;
    in
    with pkgs; [
      fasd
      tmux
      git
      (pkgs.lib.overrideDerivation pkgs.zsh-prezto (attrs: {
        rev = "237abad3280ba8418f9cded4bd8b57fef4c508da";
        name = "zsh-prezto-2017-03-28_rev237abad";
        src = pkgs.fetchgit {
          url = "https://github.com/disassembler/prezto";
          rev = "237abad3280ba8418f9cded4bd8b57fef4c508da";
          sha256 = "0xvfbjxhhldgyqjf7zpfgwfcfa6w7z8d9ar1hv2hwfsir0ggqhw4";
          fetchSubmodules = true;
        };
      }))
    ] ++ neovimPackages;
    environment.etc = zsh_config.environment_etc;
    # Select internationalisation properties.
    i18n = {
      consoleFont = "Lat2-Terminus16";
      consoleKeyMap = "us";
      defaultLocale = "en_US.UTF-8";
    };

    # Set your time zone.
    time.timeZone = "America/New_York";


    # List services that you want to enable:
    programs = {
      zsh.enable = true;
    };
    services.openssh.enable = true;
    services.openssh.passwordAuthentication = false;
}
