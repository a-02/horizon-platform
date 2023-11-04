{ mkDerivation, base, cache, effectful-core, fetchgit, hashable
, lib, tasty, tasty-hunit
}:
mkDerivation {
  pname = "effectful-cache";
  version = "0.0.1.0";
  src = fetchgit {
    url = "https://github.com/haskell-effectful/cache-effectful";
    sha256 = "01df89vls5653svqqfqq36wj45wc14qpw1dqwz4q9khglvc81ba9";
    rev = "0a5581da7c21a05a9ab1762a6da6997090fe311d";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base cache effectful-core hashable ];
  testHaskellDepends = [
    base cache effectful-core hashable tasty tasty-hunit
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-effectful/effectful-cache/tree/main/effectful-cache#readme";
  license = lib.licenses.mit;
  broken = false;
}