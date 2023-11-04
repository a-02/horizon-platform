{ mkDerivation, base, deepseq, effectful-core, fetchgit, lib, mtl
, pg-transact, postgresql-simple, resource-pool
}:
mkDerivation {
  pname = "pg-transact-effectful";
  version = "0.0.1.0";
  src = fetchgit {
    url = "https://github.com/Kleidukos/pg-transact-effectful";
    sha256 = "1m1na8q1hm74kdwarjqjpqlrlig16h5js5qisfl1s021gy916bvv";
    rev = "db6fa0624c6a7dbd39274a0403b7087ae094fe4b";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base deepseq effectful-core mtl pg-transact postgresql-simple
    resource-pool
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/kleidukos/pg-transact-effectful/";
  license = lib.licenses.mit;
  broken = false;
}