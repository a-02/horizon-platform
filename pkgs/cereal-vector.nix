{ mkDerivation, QuickCheck, base, bytestring, cereal, lib, vector
}:
mkDerivation {
  pname = "cereal-vector";
  version = "0.2.0.1";
  sha256 = "ff0685a6c39e7aae32f8b4165e2ae06f284c867298ad4f7b776c1c1b2859f933";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring cereal vector ];
  testHaskellDepends = [ base cereal QuickCheck vector ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/acfoltzer/cereal-vector";
  description = "Serialize instances for Data.Vector types.";
  license = lib.licenses.bsd3;
  broken = false;
}