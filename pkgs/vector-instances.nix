{ mkDerivation, base, comonad, hashable, keys, lib, pointed
, semigroupoids, vector
}:
mkDerivation {
  pname = "vector-instances";
  version = "3.4.2";
  sha256 = "34d92d6e77f64e8f7d79cde4a1d61799faec1b760b144935afc6f4a78877d667";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base comonad hashable keys pointed semigroupoids vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/ekmett/vector-instances";
  description = "Orphan Instances for 'Data.Vector'";
  license = lib.licenses.bsd3;
  broken = false;
}