{ mkDerivation, QuickCheck, base, bimap, bytestring, config-ini
, containers, contravariant, data-clist, deepseq, directory
, exceptions, filepath, lib, microlens, microlens-mtl, microlens-th
, mtl, stm, template-haskell, text, text-zipper, unix, vector, vty
, word-wrap
}:
mkDerivation {
  pname = "brick";
  version = "1.6";
  sha256 = "463dfba63a279cac25398a1b36f36677d487f56efba6c6ce595d65e7d1157da3";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bimap bytestring config-ini containers contravariant
    data-clist deepseq directory exceptions filepath microlens
    microlens-mtl microlens-th mtl stm template-haskell text
    text-zipper unix vector vty word-wrap
  ];
  testHaskellDepends = [
    base containers microlens QuickCheck vector vty
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/jtdaugherty/brick/";
  description = "A declarative terminal user interface library";
  license = lib.licenses.bsd3;
  broken = false;
}