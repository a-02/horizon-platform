{ mkDerivation, base, lib, OneTuple }:
mkDerivation {
  pname = "tuple";
  version = "0.3.0.2";
  sha256 = "2fcb068ffafbe64170e02094a363f83d1725f44f8af963d9dad943a592e89624";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base OneTuple ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Various functions on tuples";
  license = lib.licenses.bsd3;
  broken = false;
}