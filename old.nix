{
  network.description = "samdev";

  "samdev-kube01.infra.atrust.com" =
  { lib, config, pkgs, ... }:

  let
    zsh_config = import ./zsh.nix {
      inherit (pkgs) writeText zsh-prezto neovim less;
    };
  in
  { 
    networking.domain = "infra.atrust.com";
    networking.search = [ "infra.atrust.com" ];
    networking.interfaces.enp0s3.ip6 = [ { address = "2604:a880:1:20::2672:a001"; prefixLength = 64; } ];
    networking.defaultGateway6 = {
      address = "2604:a880:1:20::1";
      interface = "enp0s3";
    };

    environment.systemPackages = let
      neovimPackages = import ./vim.nix pkgs;
    in
    with pkgs; [
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
      ssh.forwardX11 = false;
      ssh.startAgent = true;
      zsh.enable = true;
    };
    services.openssh.enable = true;
    services.openssh.passwordAuthentication = false;
    services.bitlbee.enable = true;
    networking.firewall.allowedTCPPorts = [ 8001 38705 ];
    networking.firewall.allowPing = true;
    users.extraUsers.sam = {
      isNormalUser = true;
      uid = 1000;
      extraGroups = [ "wheel" ];
      openssh.authorizedKeys.keys = [ "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC5PPVdfBhmWxWYjSosuyjMdIYNjYC/ekz+Whv27wrFNHqxeGgKbXslUTwZX0r+zu/nlJnX9nj3zdVV9LosBB8JF9tfJGui9aBfPuxoIq9SMFSdcpZ8aOh4ZITv7zbsRHMECE8q7D5/a+7UZyTy8pv9g5SuCerHh3m//NIbo08OS9rt8SjqVio+B+rseLF960U3U3wTCtOA+VauTuE4kZfSfmQlEYUjaN3qwp4s5jpO7pgnGxshuqayRyuwJfRa/RYWB5ouSjyxTuo33K42EqT4XFoURkj7evJB5SRR7pm4vJCx4VkclIVmpLIcBiyWje+60zyKhAZEQVqKXedkuQ9748wZl07C6Czs4QiloGAjXv/tRm9YSdoeG5JhskEA8z2SCEQARJGquPH+f5vBltHeVC5K5LW94gSP9bfVBitcCgONVxUguCu0PmJUYKcVVjRi3KtJJzDSTDCjjN3e/mszrZY921yvVEkb7mFATBiHeSdrt55gKcG1vfTToLALIJJFQpGCwAMYUjKEcgq4PZa1UdCY/ynvynLds3mge4Y/X3EnLFsJaepfgNyPnnPg67kEda8uRSDYT8LaoqJpDzc7RQeY4BOfJfAxa8qMDHmp4W+dxHqrMphbH66fwUJAx1MWV8AoPFW0TGrDb3AnHBgoRt/5Fnz2ymy92Wb1KAIt3w== sam@maestro.local" "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDkIlJDZw19ZrSzHVfKZFMEYlHwwVbNxNPL/T+mg+LRtwb8a2uzLaL5h5FqKbfxQ1BbMW4xGGItFoBBl9RD4+CUlOyYmU6+3Lh+hYgMH2d0SOTWVsAxG3RDDLzrRPmIInV7u5oHQbzXO6IhNiQhWD3WKQnFlW0GasFzZERLh5+FzM9xuUiMO5mydQx6mgS8yyCAPfxhIt0KMu7NX4K8dbIfPx+1CMbRmYEww3UT3Aj5FRv4LuXj7aj/0jWB/jLbibVweLGSViezr+h00PGF2+7Lh5SUtqaxXDfKdmBsjf9W3b7S2IJ6A2qv6zVf5SG/R5CYOWqKBg6EG8mqpBEqktOb sam@crate" ];
    };
    users.extraUsers.root.shell = pkgs.bash;
    users.defaultUserShell = "/run/current-system/sw/bin/zsh";
  };
}
