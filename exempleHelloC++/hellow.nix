{ pkgs ? import <nixpkgs> {}, myeigen ? pkgs.eigen } :
pkgs.stdenv.mkDerivation {
  name = "hellow-0.1";
  src = ./.;
  buildInputs = [ pkgs.cmake pkgs.pkgconfig myeigen ];
}
