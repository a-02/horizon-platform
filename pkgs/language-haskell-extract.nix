{ mkDerivation, base, fetchgit, lib, regex-posix, template-haskell
}:
mkDerivation {
  pname = "language-haskell-extract";
  version = "0.2.3";
  src = fetchgit {
    url = "https://github.com/chessai/template-helper";
    sha256 = "17n6k5myycklbc2grhz654idwmmzjcw217gy2w1h9jlaqv6c52q7";
    rev = "f654f1e7ef47c591bb5ea23f1234289f99d09d05";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base regex-posix template-haskell ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/finnsson/template-helper";
  description = "Module to automatically extract functions from the local code";
  license = lib.licenses.bsd3;
  broken = false;
}