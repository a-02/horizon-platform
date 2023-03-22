{ mkDerivation, HUnit, base, hashable, lib, stm, test-framework
, test-framework-hunit
}:
mkDerivation {
  pname = "async";
  version = "2.2.4";
  sha256 = "484df85be0e76c4fed9376451e48e1d0c6e97952ce79735b72d54297e7e0a725";
  revision = "3";
  editedCabalFile = "023y75hfcvmjicmq5kxw55h2y729cysh1wlkggmwnv9jr307sdj6";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base hashable stm ];
  testHaskellDepends = [
    base HUnit stm test-framework test-framework-hunit
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/simonmar/async";
  description = "Run IO operations asynchronously and wait for their results";
  license = lib.licenses.bsd3;
  broken = false;
}