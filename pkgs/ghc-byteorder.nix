{ mkDerivation, base, lib }:
mkDerivation {
  pname = "ghc-byteorder";
  version = "4.11.0.0.10";
  sha256 = "86e50a89798181db4f44ec3848fc52940c73098e88549a351ceb54fefc691fb6";
  revision = "4";
  editedCabalFile = "0jc4d4is49d6ddxpdkyqkpr464y80ydsb57shqndp08assplj93b";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [ base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "\"GHC.ByteOrder\" API Compatibility Layer";
  license = lib.licenses.bsd3;
  broken = false;
}