{ mkDerivation, async, base, bytestring, containers, directory
, effectful-core, exceptions, lib, lifted-base, primitive, process
, stm, tasty, tasty-bench, tasty-hunit, text, time, unix, unliftio
}:
mkDerivation {
  pname = "effectful";
  version = "2.3.0.0";
  sha256 = "6742be657fc65af9aa4f0cedfc7e90b76fba9cb5c736494075182a153244d90f";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    async base bytestring directory effectful-core process stm time
    unliftio
  ];
  testHaskellDepends = [
    base containers effectful-core exceptions lifted-base primitive
    tasty tasty-hunit unliftio
  ];
  benchmarkHaskellDepends = [
    async base tasty-bench text unix unliftio
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