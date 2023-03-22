{ mkDerivation, base, containers, data-default-class, lib }:
mkDerivation {
  pname = "data-default-instances-containers";
  version = "0.0.1";
  sha256 = "a55e07af005c9815d82f3fc95e125db82994377c9f4a769428878701d4ec081a";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base containers data-default-class ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Default instances for types in containers";
  license = lib.licenses.bsd3;
  broken = false;
}