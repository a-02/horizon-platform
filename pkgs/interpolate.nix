{ mkDerivation, QuickCheck, base, base-compat, bytestring
, haskell-src-meta, hspec, lib, quickcheck-instances
, template-haskell, text
}:
mkDerivation {
  pname = "interpolate";
  version = "0.2.1";
  sha256 = "2776dd5083aead756a761c3350a87312b4fbf4851555cf9560800bc3929c590e";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base haskell-src-meta template-haskell ];
  testHaskellDepends = [
    base base-compat bytestring haskell-src-meta hspec QuickCheck
    quickcheck-instances template-haskell text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/sol/interpolate#readme";
  description = "String interpolation done right";
  license = lib.licenses.mit;
  broken = false;
}