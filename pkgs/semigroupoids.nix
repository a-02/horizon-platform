{ mkDerivation, base, base-orphans, bifunctors, comonad, containers
, contravariant, distributive, foldable1-classes-compat, hashable
, lib, tagged, template-haskell, transformers, transformers-compat
, unordered-containers
}:
mkDerivation {
  pname = "semigroupoids";
  version = "6.0.0.1";
  sha256 = "7da38a9891bdf8205fd6522cdb712956b8c0bf5c52983da60295c8e057d77934";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base base-orphans bifunctors comonad containers contravariant
    distributive foldable1-classes-compat hashable tagged
    template-haskell transformers transformers-compat
    unordered-containers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/ekmett/semigroupoids";
  description = "Semigroupoids: Category sans id";
  license = lib.licenses.bsd2;
  broken = false;
}