{
  pkgs ? import nixpkgs {
    inherit system;
    config = { };
    overlays = [ ];
  },
  system ? builtins.currentSystem,
  nixpkgs ? <nixpkgs>,
}:
pkgs.mkShellNoCC {
  packages = [
    pkgs.just
    pkgs.packwiz
  ];
}

