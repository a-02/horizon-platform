{ mkDerivation
, assoc
, base
, binary
, bytestring
, deepseq
, fetchgit
, ghc-prim
, hashable
, lib
, text
, these
, transformers
}:
mkDerivation {
  pname = "strict";
  version = "0.5";
  src = fetchgit {
    url = "https://github.com/haskellari/strict";
    sha256 = "0rh7jh54mz225dvmlwn8ynh5zrl94ssq44qp8096rsd6q5sbs5ib";
    rev = "68876e95b4dbdca76bf4f5bd7164a35abf3bdcb7";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/strict/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    assoc
    base
    binary
    bytestring
    deepseq
    ghc-prim
    hashable
    text
    these
    transformers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-strict/strict";
  description = "Strict data types and String IO";
  license = lib.licenses.bsd3;
  broken = false;
}
