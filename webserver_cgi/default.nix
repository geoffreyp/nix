with import <nixpkgs> {};
stdenv.mkDerivation {
  name = "mywebpagecgi";
  src = ./.;
  installPhase = ''mkdir $out
					cp *.html $out/
					cp *.py $out/
					cp -r assets $out'';
}
