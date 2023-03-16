{ mkDerivation, aeson, base, containers, deepseq, fetchgit
, hashable, lens, lib, newtype, semialign, these
, unordered-containers, witherable
}:
mkDerivation {
  pname = "monoidal-containers";
  version = "0.6.3.0";
  src = fetchgit {
    url = "https://github.com/locallycompact/monoidal-containers";
    sha256 = "19093cl6v8wlpmmxmk2s88pr0fz51pvhbci4i42frnlfxgqaw0b1";
    rev = "977140aed7f850ca4e73090475b0f7ff02a7a92e";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base containers deepseq hashable lens newtype semialign these
    unordered-containers witherable
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/bgamari/monoidal-containers";
  description = "Containers with monoidal accumulation";
  license = lib.licenses.bsd3;
  broken = false;
}