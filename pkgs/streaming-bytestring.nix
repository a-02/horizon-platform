{ mkDerivation, base, bytestring, deepseq, exceptions, ghc-prim
, lib, mmorph, mtl, resourcet, smallcheck, streaming, tasty
, tasty-hunit, tasty-smallcheck, transformers, transformers-base
}:
mkDerivation {
  pname = "streaming-bytestring";
  version = "0.3.2";
  sha256 = "885b3c0c5496393f0040d624ed4e7c91617a7edbc1bc6733172d08ab40edba67";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring deepseq exceptions ghc-prim mmorph mtl resourcet
    streaming transformers transformers-base
  ];
  testHaskellDepends = [
    base bytestring resourcet smallcheck streaming tasty tasty-hunit
    tasty-smallcheck transformers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-streaming/streaming-bytestring";
  description = "Fast, effectful byte streams";
  license = lib.licenses.bsd3;
  broken = false;
}