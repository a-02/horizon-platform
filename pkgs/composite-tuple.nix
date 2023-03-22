{ mkDerivation, base, composite-base, lib }:
mkDerivation {
  pname = "composite-tuple";
  version = "0.1.2.0";
  sha256 = "8164e73058eab642b22244057c1b4b26359d02cda53637bc1c9c8a5f30f9bd78";
  revision = "1";
  editedCabalFile = "0j7mj8g3v4x0vy4rbx00kxb7d41r3s3djbfin9f1h592ahyap1va";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base composite-base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Tuple functions for composite records";
  license = lib.licenses.mit;
  broken = false;
}