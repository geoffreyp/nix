{ pkgs ? import <nixpkgs> {} }:
let
  _calcul = pkgs.haskellPackages.callPackage ./calcul.nix {};
in
pkgs.stdenv.mkDerivation {
  name = "calcul";
  src = ./.;
  buildInputs = [ _calcul ];
  installPhase = ''
    mkdir $out
    cp ${_calcul}/bin/*.cgi $out/
    cp *.html $out/
  '';
}
