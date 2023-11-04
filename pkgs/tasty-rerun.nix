{ mkDerivation, base, containers, lib, mtl, optparse-applicative
, split, stm, tagged, tasty, transformers
}:
mkDerivation {
  pname = "tasty-rerun";
  version = "1.1.19";
  sha256 = "6f3df401f724ea0978ade8c18f8a7a5f1032ff7c5bf016885833135dbd2c7235";
  revision = "2";
  editedCabalFile = "01gliss91bx2xfpz4f99g82sqahir5g2rnwn531ccn8jp1m917di";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base containers mtl optparse-applicative split stm tagged tasty
    transformers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/ocharles/tasty-rerun";
  description = "Rerun only tests which failed in a previous test run";
  license = lib.licenses.bsd3;
  broken = false;
}