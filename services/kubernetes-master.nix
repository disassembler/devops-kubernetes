{ lib, config, pkgs, ... }:
{
  #networking.bridges = {
  #  cbr0 = {
  #    interfaces = [ "enp0s3" ];
  #  };
  #};
  services.kubernetes = {
    roles = [ "master" "node" ];
  };
  virtualisation.docker = {
    enable = true;
    enableOnBoot = true;
    #extraOptions = "--iptables=false --ip-masq=false -b cbr0";
  };
}
