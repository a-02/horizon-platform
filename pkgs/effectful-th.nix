{ mkDerivation, base, containers, effectful-core, exceptions, lib
, template-haskell, th-abstraction
}:
mkDerivation {
  pname = "effectful-th";
  version = "1.0.0.1";
  sha256 = "4ee3882a61a876aa3ca1ab3174347d8442688323f20f30a2d48f54fab4dbaba7";
  revision = "2";
  editedCabalFile = "15s8yvxf7sbi1vx5ylnrnxc1b694ndmdac0f5bi8v0cg6sjijkzw";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base containers effectful-core exceptions template-haskell
    th-abstraction
  ];
  testHaskellDepends = [ base effectful-core ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Template Haskell utilities for the effectful library";
  license = lib.licenses.bsd3;
  broken = false;
}