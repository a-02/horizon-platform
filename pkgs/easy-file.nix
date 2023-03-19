{ mkDerivation, base, directory, filepath, lib, tasty, tasty-hunit
, time, unix
}:
mkDerivation {
  pname = "easy-file";
  version = "0.2.3";
  sha256 = "0437d8c2a5efe4bd703f2627495f28092f0256b3d2dab191c9d08a6351074cc9";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base directory filepath time unix ];
  testHaskellDepends = [ base tasty tasty-hunit ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/kazu-yamamoto/easy-file";
  description = "Cross-platform File handling";
  license = lib.licenses.bsd3;
  broken = false;
}