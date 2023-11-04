{ mkDerivation, HUnit, base, bytestring, containers, directory
, exceptions, fetchgit, filepath, ghc, ghc-boot, ghc-paths, lib
, random, stm, temporary, text, transformers, typed-process, unix
}:
mkDerivation {
  pname = "hint";
  version = "0.9.0.6";
  src = fetchgit {
    url = "https://github.com/haskell-hint/hint";
    sha256 = "0q18j3axi166k5k8mbcvdqy27cdvmxbhyb9rkjb3k31i5apaqnv4";
    rev = "7803c34c8ae1d83c0f7c13fe6b30fcb3abd0ac51";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base containers directory exceptions filepath ghc ghc-boot
    ghc-paths random temporary transformers unix
  ];
  testHaskellDepends = [
    base bytestring containers directory exceptions filepath HUnit stm
    text typed-process unix
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-hint/hint";
  description = "A Haskell interpreter built on top of the GHC API";
  license = lib.licenses.bsd3;
  broken = false;
}