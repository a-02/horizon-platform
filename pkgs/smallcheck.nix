{ mkDerivation, base, lib, logict, mtl, pretty }:
mkDerivation {
  pname = "smallcheck";
  version = "1.2.1";
  sha256 = "e41f9d11b50e0526dd28c9bc6cf6dddf98cebd782911a00c3e5cbe4ce53fc869";
  revision = "1";
  editedCabalFile = "141lvb58hy94gywchaaf2dbh1dncnj951q5l6xkg1drvm94dvj1b";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base logict mtl pretty ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/Bodigrim/smallcheck";
  description = "A property-based testing library";
  license = lib.licenses.bsd3;
  broken = false;
}
