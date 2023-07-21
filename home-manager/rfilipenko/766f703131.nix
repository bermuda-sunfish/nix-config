{ inputs, outputs, ... }: {
  imports = [
    ../common/base
    #    ../common/optional/desktop/hyprland
  ];

  colorscheme = inputs.nix-colors.colorschemes.atelier-sulphurpool;
  #wallpaper = outputs.wallpapers.aenami-northwind;

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "23.05";
}
