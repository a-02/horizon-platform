{ mkDerivation, QuickCheck, base, bimap, bytestring, config-ini
, containers, data-clist, deepseq, directory, exceptions, filepath
, lib, microlens, microlens-mtl, microlens-th, mtl, stm
, template-haskell, text, text-zipper, unix-compat, vector, vty
, vty-crossplatform, vty-unix, word-wrap
}:
mkDerivation {
  pname = "brick";
  version = "2.1.1";
  sha256 = "30280d6f7130eb3e6cbf5a55465a06a825169cb536d3b2e91883aec23532b31e";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bimap bytestring config-ini containers data-clist deepseq
    directory exceptions filepath microlens microlens-mtl microlens-th
    mtl stm template-haskell text text-zipper unix-compat vector vty
    vty-crossplatform word-wrap
  ];
  testHaskellDepends = [
    base containers microlens QuickCheck vector vty vty-unix
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/jtdaugherty/brick/";
  description = "A declarative terminal user interface library";
  license = lib.licenses.bsd3;
  broken = false;
}