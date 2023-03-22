{ mkDerivation, aeson, base, containers, deepseq, fetchgit
, filepath, lib, path, path-io, validity, validity-containers
, validity-path
}:
mkDerivation {
  pname = "dirforest";
  version = "0.0.0.0";
  src = fetchgit {
    url = "https://github.com/NorfairKing/dirforest";
    sha256 = "0d5gf7y46nrrrysmpmhfq7iij9xcpbiqp4bnzz09730zqfs40rm4";
    rev = "69e8ae036b047fae105c1fe990e175a7572a3eba";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/dirforest/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base containers deepseq filepath path path-io validity
    validity-containers validity-path
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