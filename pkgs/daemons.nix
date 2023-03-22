{ mkDerivation, HUnit, base, bytestring, cereal, containers
, data-default, directory, filepath, ghc-prim, lib, network, pipes
, test-framework, test-framework-hunit, transformers, unix
}:
mkDerivation {
  pname = "daemons";
  version = "0.3.0";
  sha256 = "c36f4f13aaf7d114925a559748c935f42397094c2f82c6809956d130261e0016";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    base bytestring cereal data-default directory filepath ghc-prim
    network pipes transformers unix
  ];
  executableHaskellDepends = [
    base bytestring cereal containers data-default ghc-prim network
    pipes transformers
  ];
  testHaskellDepends = [
    base data-default directory ghc-prim HUnit test-framework
    test-framework-hunit unix
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/scvalex/daemons";
  description = "Daemons in Haskell made fun and easy";
  license = lib.licenses.gpl3Only;
  broken = false;
}