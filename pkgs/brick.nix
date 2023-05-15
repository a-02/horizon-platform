{ mkDerivation, QuickCheck, base, bimap, bytestring, config-ini
, containers, data-clist, deepseq, directory, exceptions, filepath
, lib, microlens, microlens-mtl, microlens-th, mtl, stm
, template-haskell, text, text-zipper, unix, vector, vty, word-wrap
}:
mkDerivation {
  pname = "brick";
  version = "1.9";
  sha256 = "e34b6dbe715d97fe92fa3d54e6e5ac715e19be8e4a97acaf2c60bf85f0ab6e08";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bimap bytestring config-ini containers data-clist deepseq
    directory exceptions filepath microlens microlens-mtl microlens-th
    mtl stm template-haskell text text-zipper unix vector vty word-wrap
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