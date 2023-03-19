{ mkDerivation, array, base, bytestring, criterion, deepseq
, directory, filepath, hedgehog, hspec, hspec-hedgehog, lib, mtl
, process, profunctors, temporary, text, text-short, vector
}:
mkDerivation {
  pname = "souffle-haskell";
  version = "3.5.1";
  sha256 = "70b9b8fb6e58609675c5b29137557f1cbe599443dd0ab31ca33b1f66815ebc6f";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array base bytestring deepseq directory filepath mtl process
    profunctors temporary text text-short vector
  ];
  testHaskellDepends = [
    array base directory hedgehog hspec hspec-hedgehog profunctors
    temporary text text-short vector
  ];
  benchmarkHaskellDepends = [ base criterion deepseq text vector ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/luc-tielen/souffle-haskell#README.md";
  description = "Souffle Datalog bindings for Haskell";
  license = lib.licenses.mit;
  broken = false;
}