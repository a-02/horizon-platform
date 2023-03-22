{ mkDerivation, base, criterion, lib, text, unordered-containers }:
mkDerivation {
  pname = "html-entity-map";
  version = "0.1.0.0";
  sha256 = "983600c33e8515e6ca31742d25490fb5a7be02503331963621b0ba5cd70d344c";
  revision = "5";
  editedCabalFile = "1776z73bs1v8z3qwpjvqqmzdlj6gm8qba93f41irhn7swdppfq72";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base text unordered-containers ];
  benchmarkHaskellDepends = [
    base criterion text unordered-containers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/mrkkrp/html-entity-map";
  description = "Map from HTML5 entity names to the corresponding Unicode text";
  license = lib.licenses.bsd3;
  broken = false;
}