{ mkDerivation, base, containers, doctest, first-class-families
, ghc-prim, hspec, lib, text
}:
mkDerivation {
  pname = "fcf-containers";
  version = "0.8.2";
  sha256 = "412b3003791d8e32c9a084d054973e9bfea13eb0a3947784907d3aeb1ef50a35";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base containers first-class-families ghc-prim text
  ];
  executableHaskellDepends = [ base first-class-families ];
  testHaskellDepends = [
    base containers doctest first-class-families ghc-prim hspec text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/gspia/fcf-containers";
  description = "Data structures and algorithms for first-class-families";
  license = lib.licenses.bsd3;
  broken = false;
}