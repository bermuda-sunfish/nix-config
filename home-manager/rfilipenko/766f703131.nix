{ inputs, outputs, ... }: {
  imports = [
    ../common/base
    ../common/optional/desktop/hyprland
  ];

  colorscheme = inputs.nix-colors.colorschemes.atelier-sulphurpool;
  wallpaper = outputs.wallpapers.aenami-northwind;
}
