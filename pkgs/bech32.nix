{ mkDerivation, QuickCheck, array, base, base58-bytestring
, bytestring, containers, deepseq, extra, hspec, hspec-discover
, lib, memory, optparse-applicative, prettyprinter
, prettyprinter-ansi-terminal, process, text, vector
}:
mkDerivation {
  pname = "bech32";
  version = "1.1.4";
  sha256 = "48553d2c017d7dec3450cca628ed09018e345bdb8b368661c0afc05658139a38";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array base bytestring containers extra text
  ];
  executableHaskellDepends = [
    base base58-bytestring bytestring extra memory optparse-applicative
    prettyprinter prettyprinter-ansi-terminal text
  ];
  testHaskellDepends = [
    base base58-bytestring bytestring containers deepseq extra hspec
    memory process QuickCheck text vector
  ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/input-output-hk/bech32";
  description = "Implementation of the Bech32 cryptocurrency address format (BIP 0173)";
  license = lib.licenses.asl20;
  broken = false;
}