{ mkDerivation, base, data-default-class, lib, old-locale }:
mkDerivation {
  pname = "data-default-instances-old-locale";
  version = "0.0.1";
  sha256 = "60d3b02922958c4908d7bf2b24ddf61511665745f784227d206745784b0c0802";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base data-default-class old-locale ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Default instances for types in old-locale";
  license = lib.licenses.bsd3;
  broken = false;
}