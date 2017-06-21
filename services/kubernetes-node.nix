{ lib, config, pkgs, ... }:
{
  services.kubernetes = {
    roles = [ "node" ];
  };
  virtualisation.docker = {
    enable = true;
    enableOnBoot = true;
    #extraOptions = "--iptables=false --ip-masq=false -b cbr0";
  };
}
