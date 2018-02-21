with import <nixpkgs> {};
stdenv.mkDerivation {
  name = "mywebpagecgi";
  src = ./.;
  installPhase = "mkdir $out; cp *.html *.py $out/";
}
