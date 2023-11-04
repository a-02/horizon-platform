{ mkDerivation, base, lib, mtl, random, transformers }:
mkDerivation {
  pname = "operational";
  version = "0.2.4.2";
  sha256 = "857da8b2b155a9f799c3f6eb34b158454ce7a0116a89f07d9fda05f1eadda6b7";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base mtl transformers ];
  executableHaskellDepends = [ base mtl random ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://wiki.haskell.org/Operational";
  description = "Implementation of difficult monads made easy with operational semantics";
  license = lib.licenses.bsd3;
  broken = false;
}