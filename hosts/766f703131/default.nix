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
  boot.loader.systemd-boot.enable = true;

  system.stateVersion = "23.05";
}
