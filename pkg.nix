{ mkDerivation, base, bytestring, Cabal, cabal-plan, clock
, containers, directory, filepath, ghc, ghc-paths, mtl, pretty-show
, process, semigroupoids, semigroups, SHA, stdenv, template-haskell
, temporary, text, transformers, unix, unix-compat, utf8-string
}:
mkDerivation {
  pname = "cabal-helper";
  version = "1.0.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    base bytestring Cabal cabal-plan clock containers directory
    filepath mtl pretty-show process semigroupoids semigroups SHA
    template-haskell temporary text transformers unix unix-compat
    utf8-string
  ];
  testHaskellDepends = [
    base bytestring Cabal cabal-plan clock containers directory
    filepath ghc ghc-paths mtl pretty-show process semigroupoids
    semigroups SHA template-haskell temporary text transformers unix
    unix-compat utf8-string
  ];
  doHaddock = false;
  doCheck = false;
  description = "Simple interface to some of Cabal's configuration state, mainly used by ghc-mod";
  license = stdenv.lib.licenses.gpl3;
}
