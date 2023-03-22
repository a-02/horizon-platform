{ mkDerivation, base, lib }:
mkDerivation {
  pname = "type-equality";
  version = "1";
  sha256 = "4728b502a211454ef682a10d7a3e817c22d06ba509df114bb267ef9d43a08ce8";
  revision = "5";
  editedCabalFile = "0mhvj82l6nvxz3majr7kza4j7nxi0rqjx0ci8m1s9abkcirhcq2m";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/hesselink/type-equality";
  description = "Data.Type.Equality compat package";
  license = lib.licenses.bsd3;
  broken = false;
}