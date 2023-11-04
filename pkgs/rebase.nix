{ mkDerivation, base, bifunctors, bytestring, comonad, containers
, contravariant, deepseq, dlist, either, groups, hashable
, invariant, lib, mtl, profunctors, scientific, selective
, semigroupoids, stm, text, time, time-compat, transformers
, unordered-containers, uuid-types, vector, vector-instances, void
}:
mkDerivation {
  pname = "rebase";
  version = "1.20.1.1";
  sha256 = "106ce99d3c9bb5b0920cf8d03d98c3b2c90a08648bbab4ba93ad63a81d869abb";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bifunctors bytestring comonad containers contravariant deepseq
    dlist either groups hashable invariant mtl profunctors scientific
    selective semigroupoids stm text time time-compat transformers
    unordered-containers uuid-types vector vector-instances void
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/nikita-volkov/rebase";
  description = "A more progressive alternative to the \"base\" package";
  license = lib.licenses.mit;
  broken = false;
}