{ mkDerivation, base, lib }:
mkDerivation {
  pname = "first-class-families";
  version = "0.8.0.1";
  sha256 = "4a1c8fbdbe01757ea8dc3190050d7a4a72c86e205d23676182292fe192c1da72";
  revision = "2";
  editedCabalFile = "0idiqb4ckwa7hya827gc2cbjh83wmz3cppnl124834pkla2h99np";
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
  homepage = "https://github.com/Lysxia/first-class-families#readme";
  description = "First-class type families";
  license = lib.licenses.mit;
  broken = false;
}