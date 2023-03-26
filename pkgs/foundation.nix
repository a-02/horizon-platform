{ mkDerivation, base, basement, fetchgit, gauge, ghc-prim, lib }:
mkDerivation {
  pname = "foundation";
  version = "0.0.29";
  src = fetchgit {
    url = "https://gitlab.rescue.horizon-haskell.net/hackage/foundation";
    sha256 = "1l1idylvv25xp40zxxb5iim4xarpxfycwh85rmgabb0mbz4gw5rb";
    rev = "d3136f4bb8b69e273535352620e53f2196941b35";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/foundation/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base basement ghc-prim ];
  testHaskellDepends = [ base basement ];
  benchmarkHaskellDepends = [ base basement gauge ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-foundation/foundation";
  description = "Alternative prelude with batteries and no dependencies";
  license = lib.licenses.bsd3;
  broken = false;
}