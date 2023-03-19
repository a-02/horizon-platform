{ mkDerivation, base, bytestring, lib, mtl, tasty, tasty-hunit
, tasty-quickcheck
}:
mkDerivation {
  pname = "tasty-kat";
  version = "0.0.3";
  sha256 = "a72501f0f77db372648566bbba1dd1d6d0d0c975b42238875d663313e9a5db93";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring tasty ];
  testHaskellDepends = [
    base bytestring mtl tasty tasty-hunit tasty-quickcheck
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/vincenthz/tasty-kat";
  description = "Known Answer Tests (KAT) framework for tasty";
  license = lib.licenses.mit;
  broken = false;
}