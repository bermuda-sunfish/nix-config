{ pkgs, ... }: {
  imports = [
    ./bash.nix
    ./direnv.nix
    ./git.nix
    ./screen.nix
    #  ./shellcolor.nix
    ./ssh.nix
    ./starship.nix
  ];

  home.packages = with pkgs; [

    bc # Calculator
    bottom # System viewer
    ncdu # TUI disk usage
    exa # Better ls
    ripgrep # Better grep
    fd # Better find
    httpie # Better curl
    diffsitter # Better diff
    jq # JSON pretty printer and manipulator

    nil # Nix LSP
    nixfmt # Nix formatter
    #nix-inspect # See which pkgs are in your PATH

    ltex-ls # Spell checking LSP
  ];
}
