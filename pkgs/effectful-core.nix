{ mkDerivation, base, containers, exceptions, lib, monad-control
, primitive, transformers-base, unliftio-core
}:
mkDerivation {
  pname = "effectful-core";
  version = "2.3.0.1";
  sha256 = "3cb1e1e12542e15c03856be8865111e2f71f40d9b108ad7de27612efa52e739b";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base containers exceptions monad-control primitive
    transformers-base unliftio-core
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "An easy to use, performant extensible effects library";
  license = lib.licenses.bsd3;
  broken = false;
}