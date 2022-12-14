{ mkDerivation
, QuickCheck
, base
, doctest-lib
, lib
, semigroups
, transformers
}:
mkDerivation {
  pname = "doctest-exitcode-stdio";
  version = "0.0";
  sha256 = "1dec779d5e67ea46c8b0d69d454e0717383654e87323bdebc2bc0a8cb33f6cbc";
  revision = "1";
  editedCabalFile = "1065s8bch6zhl6mc8nhvfpwd1irmjd04z7xgycbpihc14x4ijim3";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    doctest-lib
    QuickCheck
    semigroups
    transformers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://hub.darcs.net/thielema/doctest-exitcode-stdio/";
  description = "Run doctest's in a Cabal.Test.exitcode-stdio environment";
  license = lib.licenses.bsd3;
  broken = false;
}
