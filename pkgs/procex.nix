{ mkDerivation, async, base, bytestring, containers, deepseq, hspec
, lib, unix, utf8-string
}:
mkDerivation {
  pname = "procex";
  version = "0.3.3";
  sha256 = "96266d8189361a03628e7620be2bc704609c7616180eb375ab026ef979cbb9e4";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    async base bytestring containers deepseq unix utf8-string
  ];
  testHaskellDepends = [ async base bytestring hspec unix ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Ergonomic process launching with extreme flexibility and speed";
  license = lib.licenses.mit;
  broken = false;
}