{ pkgs, config, ... }:
let ifTheyExist = groups: builtins.filter (group: builtins.hasAttr group config.users.groups) groups;
in
{
  users.mutableUsers = false;
  users.users.rfilipenko = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "video"
      "audio"
    ] ++ ifTheyExist [
      "network"
      "docker"
      "git"
      "libvirtd"
    ];

    openssh.authorizedKeys.keys = [ (builtins.readFile ../../../../home-manager/rfilipenko/ssh.pub) ];
    packages = [ pkgs.home-manager ];
  };

  home-manager.users.rfilipenko = import ../../../../home-manager/rfilipenko/${config.networking.hostName}.nix;
}
