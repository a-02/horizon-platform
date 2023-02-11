{ mkDerivation, base, bytestring, lib }:
mkDerivation {
  pname = "mmap";
  version = "0.5.9";
  sha256 = "58fcbb04e1cb8e7c36c05823b02dce2faaa989c53d745a7f36192de2fc98b5f8";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Memory mapped files for POSIX and Windows";
  license = lib.licenses.bsd3;
  broken = false;
}
