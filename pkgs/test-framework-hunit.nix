{ mkDerivation, HUnit, base, extensible-exceptions, lib
, test-framework
}:
mkDerivation {
  pname = "test-framework-hunit";
  version = "0.3.0.2";
  sha256 = "95cb8ee02a850b164bfdabdf4dbc839d621361f3ac770ad21ea43a8bde360bf8";
  revision = "3";
  editedCabalFile = "0i9mlalv7cl1iq43ld5myrnpszq5rxmd79hk495dcb08rglhgl3z";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base extensible-exceptions HUnit test-framework
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://batterseapower.github.io/test-framework/";
  description = "HUnit support for the test-framework package";
  license = lib.licenses.bsd3;
  broken = false;
}