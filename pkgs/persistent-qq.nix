{ mkDerivation, HUnit, aeson, base, bytestring, fast-logger
, haskell-src-meta, hspec, lib, monad-logger, mtl, persistent
, persistent-sqlite, resourcet, template-haskell, text, unliftio
}:
mkDerivation {
  pname = "persistent-qq";
  version = "2.12.0.6";
  sha256 = "8d7386b94d883713ef41edc4cb30c99c7ad4c54aed7019feba76e07a563f01fc";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base haskell-src-meta mtl persistent template-haskell text
  ];
  testHaskellDepends = [
    aeson base bytestring fast-logger haskell-src-meta hspec HUnit
    monad-logger mtl persistent persistent-sqlite resourcet
    template-haskell text unliftio
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/yesodweb/persistent#readme";
  description = "Provides a quasi-quoter for raw SQL for persistent";
  license = lib.licenses.mit;
  broken = false;
}