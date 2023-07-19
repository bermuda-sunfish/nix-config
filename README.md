# NixOS configurations

This repository contains NixOS config and/or home-manager config files. Requires [Nix flakes](https://nixos.wiki/wiki/Flakes).

It is based on [this starter config repo](https://github.com/Misterio77/nix-starter-config).

**Highlights**:

- Multiple **NixOS configurations**, including **desktop**, **laptop**, **server**
- Flexible **Home Manager** Configs through **feature flags**
- Extensively configured wayland environments (**sway** and **hyprland**)
- **Declarative** **themes** and **wallpapers** with **nix-colors**

## Structure

- `flake.nix`: Entrypoint for hosts and home configurations. Also exposes a
  devshell for boostrapping (`nix develop` or `nix-shell`).
- `lib`: A few lib functions for making my flake cleaner
- `hosts`: NixOS Configurations, accessible via `nixos-rebuild --flake`.
  - `common`: Shared configurations consumed by the machine-specific ones.
    - `global`: Configurations that are globally applied to all my machines.
    - `optional`: Opt-in configurations my machines can use.
  - `766f703131`: **vop11** virtual machine (8GB RAM and 4 vCPU) used for testing of NixOS build and configuration | Hyprland
- `home`: My Home-manager configuration, acessible via `home-manager --flake`
    - Each directory here is a "feature" each hm configuration can toggle, thus
      customizing my setup for each machine (be it a server, desktop, laptop,
      anything really).
- `modules`: A few actual modules (with options) I haven't upstreamed yet.
- `overlay`: Patches and version overrides for some packages. Accessible via
  `nix build`.
- `pkgs`: My custom packages. Also accessible via `nix build`. You can compose
  these into your own configuration by using my flake's overlay, or consume them through NUR.

## How to bootstrap

All you need is nix (any version). Run:
```
nix-shell
```

If you already have nix 2.4+, git, and have already enabled `flakes` and
`nix-command`, you can also use the non-legacy command:
```
nix develop
```

`nixos-rebuild switch --flake .` To build system configurations

`home-manager --flake .` To build user configurations

`nix build` (or shell or run) To build and use packages

## Tooling and applications I use

Most relevant user apps daily drivers:

- hyprland + swayidle + swaylock
- waybar
- emacs
- fish + starship
- kitty
- firefox
- gpg + pass
- tailscale
- podman
- docker
- kubernetes
- intellij idea, golang, pycharm
