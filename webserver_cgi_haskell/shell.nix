with import <nixpkgs>{};
( haskellPackages.callPackage ./calcul.nix {} ).env
