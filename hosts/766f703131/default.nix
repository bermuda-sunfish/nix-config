{ inputs, outputs, lib, config, pkgs, ... }: {
  imports = [
    # If you want to use modules your own flake exports (from modules/nixos):
    # outputs.nixosModules.example

    # Or modules from other flakes (such as nixos-hardware):
    # inputs.hardware.nixosModules.common-cpu-amd
    # inputs.hardware.nixosModules.common-ssd
    ./hardware-configuration.nix

    ../common/base
  ];

  networking.hostName = "766f703131";

  users.users = {
    rfilipenko = {
      initialPassword = "hello-world-1234!";
      isNormalUser = true;
      openssh.authorizedKeys.keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBtRgVQmd+b+5rHkQevXc1joS6V1KiwAsHoPgD8SzAaI rfilipenko@optimanalytics.com"
      ];
      extraGroups = [ "wheel" "video" "audio" ];
    };
  };

  system.stateVersion = "23.05";
}
