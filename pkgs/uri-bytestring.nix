{ mkDerivation, HUnit, attoparsec, base, base-compat, blaze-builder
, bytestring, containers, criterion, deepseq, deepseq-generics
, hedgehog, lib, network-uri, safe, tasty, tasty-hedgehog
, tasty-hunit, template-haskell, th-lift-instances, transformers
}:
mkDerivation {
  pname = "uri-bytestring";
  version = "0.3.3.1";
  sha256 = "f3e7a0ac26111c426727fed11624efe9ce36ee2e74ca79570ec0985eb6111368";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    attoparsec base blaze-builder bytestring containers
    template-haskell th-lift-instances
  ];
  testHaskellDepends = [
    attoparsec base base-compat blaze-builder bytestring containers
    hedgehog HUnit safe tasty tasty-hedgehog tasty-hunit transformers
  ];
  benchmarkHaskellDepends = [
    base blaze-builder bytestring criterion deepseq deepseq-generics
    network-uri
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/Soostone/uri-bytestring";
  description = "Haskell URI parsing as ByteStrings";
  license = lib.licenses.bsd3;
  broken = false;
}