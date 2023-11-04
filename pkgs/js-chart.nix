{ mkDerivation, base, lib }:
mkDerivation {
  pname = "js-chart";
  version = "2.9.4.1";
  sha256 = "0a08efdd35bd1b8f293f9163f59305f31835304b74c3e3a1a840fc94bbc9bd0e";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [ base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/jonascarpay/js-chart#readme";
  description = "Obtain minified chart.js code";
  license = lib.licenses.mit;
  broken = false;
}