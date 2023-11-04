{ mkDerivation, algebraic-graphs, ansi-terminal, array, base
, bytestring, containers, directory, extra, fetchgit, filepath, ghc
, ghc-paths, hie-compat, hspec, lib, lucid, mtl
, optparse-applicative, process, sqlite-simple, temporary
, terminal-size, text
}:
mkDerivation {
  pname = "hiedb";
  version = "0.4.4.0";
  src = fetchgit {
    url = "https://github.com/wz1000/HieDB";
    sha256 = "15sq6dqf2294ymdcwffhigdq31ci50jh2vk8hpnyqhm1bvvbmlh9";
    rev = "62ef191df2c1ce3324c2dfc2f2a574863642435d";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    algebraic-graphs ansi-terminal array base bytestring containers
    directory extra filepath ghc hie-compat lucid mtl
    optparse-applicative sqlite-simple terminal-size text
  ];
  executableHaskellDepends = [ base ghc-paths ];
  testHaskellDepends = [
    base directory filepath ghc ghc-paths hspec process temporary
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Generates a references DB from .hie files";
  license = lib.licenses.bsd3;
  broken = false;
}