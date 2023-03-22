{ mkDerivation, HUnit, base, exceptions, ghc-prim, hedgehog, lib
, mtl, mtl-compat, random, stm, tasty, tasty-hedgehog, tasty-hunit
, time, transformers, unliftio-core
}:
mkDerivation {
  pname = "retry";
  version = "0.9.3.0";
  sha256 = "c11e5dcb6fc9b7a327ebdf9188edcbe39fce64e728294e41a61e9ad94fa84ecd";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base exceptions ghc-prim mtl mtl-compat random transformers
    unliftio-core
  ];
  testHaskellDepends = [
    base exceptions ghc-prim hedgehog HUnit mtl mtl-compat random stm
    tasty tasty-hedgehog tasty-hunit time transformers unliftio-core
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/Soostone/retry";
  description = "Retry combinators for monadic actions that may fail";
  license = lib.licenses.bsd3;
  broken = false;
}