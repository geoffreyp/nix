with import <nixpkgs> {};
stdenv.mkDerivation {
  name = "mywebpage";
  src = ./.;
  installPhase = "mkdir $out; cp docroot/index.html docroot/img.png $out/";
}
