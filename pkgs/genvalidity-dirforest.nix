{ mkDerivation, QuickCheck, base, bytestring, containers, criterion
, dirforest, fetchgit, filepath, genvalidity
, genvalidity-bytestring, genvalidity-containers
, genvalidity-criterion, genvalidity-hspec, genvalidity-hspec-aeson
, genvalidity-path, genvalidity-text, hspec, lib, path, path-io
, pretty-show
}:
mkDerivation {
  pname = "genvalidity-dirforest";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/NorfairKing/dirforest";
    sha256 = "0d5gf7y46nrrrysmpmhfq7iij9xcpbiqp4bnzz09730zqfs40rm4";
    rev = "69e8ae036b047fae105c1fe990e175a7572a3eba";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/genvalidity-dirforest/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base containers dirforest filepath genvalidity
    genvalidity-containers genvalidity-path path QuickCheck
  ];
  testHaskellDepends = [
    base bytestring containers dirforest filepath
    genvalidity-bytestring genvalidity-hspec genvalidity-hspec-aeson
    hspec path path-io pretty-show QuickCheck
  ];
  benchmarkHaskellDepends = [
    base criterion dirforest genvalidity genvalidity-criterion
    genvalidity-text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/NorfairKing/dirforest#readme";
  license = "unknown";
  broken = false;
}