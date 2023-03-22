{ mkDerivation, base, effectful-core, fetchgit, lib, mtl
, pg-transact, postgresql-simple, resource-pool
}:
mkDerivation {
  pname = "pg-transact-effectful";
  version = "0.0.1.0";
  src = fetchgit {
    url = "https://github.com/Kleidukos/pg-transact-effectful";
    sha256 = "1ijrppsyilcf5079hdh711sdq8mc3qy1p9v6p6zvp9sxj52macj5";
    rev = "45730b124c7c21f1dcfd85667fda1c19b8ec9723";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base effectful-core mtl pg-transact postgresql-simple resource-pool
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/kleidukos/pg-transact-effectful/";
  license = lib.licenses.mit;
  broken = false;
}