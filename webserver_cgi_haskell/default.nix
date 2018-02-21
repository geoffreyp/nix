with import <nixpkgs> {};
stdenv.mkDerivation {
  name = "mywebpagecgihaskell";
  src = ./.;
  buildInputes = [ghc]
  buildPhase = ''ghc -O2 calcul.cgi calcul.hs''
  installPhase = ''mkdir $out
					cp *.html $out/
					cp *.cgi $out/ '';
}
