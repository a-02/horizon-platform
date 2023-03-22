{ mkDerivation, base, fetchgit, fingertree, lib }:
mkDerivation {
  pname = "fingertree-psqueue";
  version = "0.3";
  src = fetchgit {
    url = "https://gitlab.homotopic.tech/horizon/adopted/fingertree-psqueue";
    sha256 = "1h13yz23i3flx4mg8czk4k5ypx78q2lwfmmaljm54z3an1p4lv60";
    rev = "d466b18e18d706dc1373ed2894c1e20ea2826329";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base fingertree ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Implementation of priority search queues as finger trees";
  license = lib.licenses.bsd3;
  broken = false;
}