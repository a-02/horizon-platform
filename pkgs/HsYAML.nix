{ mkDerivation, QuickCheck, base, bytestring, containers, deepseq
, lib, mtl, parsec, tasty, tasty-quickcheck, text, transformers
}:
mkDerivation {
  pname = "HsYAML";
  version = "0.2.1.1";
  sha256 = "465bb4fc90979c19bedf6db2053f9ac54537b4912d5827d7e2135d42ef5ef628";
  revision = "2";
  editedCabalFile = "0r2yh96nhmlfy2vj2c7i5703brv4lp9cw5v044j7s8487jvv70d6";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring containers deepseq mtl parsec text transformers
  ];
  testHaskellDepends = [
    base bytestring containers mtl QuickCheck tasty tasty-quickcheck
    text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-hvr/HsYAML";
  description = "Pure Haskell YAML 1.2 processor";
  license = lib.licenses.gpl2Only;
  broken = false;
}