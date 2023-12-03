{ mkDerivation, array, base, bytestring, criterion, deepseq
, directory, fetchgit, filepath, hedgehog, hspec, hspec-hedgehog
, lib, mtl, process, profunctors, temporary, text, vector
}:
mkDerivation {
  pname = "souffle-haskell";
  version = "4.0.0";
  src = fetchgit {
    url = "https://github.com/luc-tielen/souffle-haskell";
    sha256 = "03kn2ap5wkiiqajln48gn70pq5dsypivvb6n3nl3i4gqdh8l2xnm";
    rev = "e441c84f1d64890e31c92fbb278c074ae8bcaff5";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array base bytestring deepseq directory filepath mtl process
    profunctors temporary text vector
  ];
  testHaskellDepends = [
    array base directory hedgehog hspec hspec-hedgehog profunctors
    temporary text vector
  ];
  benchmarkHaskellDepends = [ base criterion deepseq text vector ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/luc-tielen/souffle-haskell#README.md";
  description = "Souffle Datalog bindings for Haskell";
  license = lib.licenses.mit;
  broken = false;
}