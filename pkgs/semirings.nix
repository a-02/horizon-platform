{ mkDerivation, base, base-compat-batteries, containers, hashable
, lib, unordered-containers
}:
mkDerivation {
  pname = "semirings";
  version = "0.6";
  sha256 = "99356619b137c7c4cf6597909be3c9df118f08a7dff4897549e350b95719059b";
  revision = "1";
  editedCabalFile = "1c06yhfa053sv3rfz0d72a33l5qb0xmj1b3hy2z7pzxrcay6g1yc";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base base-compat-batteries containers hashable unordered-containers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/chessai/semirings";
  description = "two monoids as one, in holy haskimony";
  license = lib.licenses.bsd3;
  broken = false;
}