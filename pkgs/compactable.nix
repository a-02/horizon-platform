{ mkDerivation, QuickCheck, aeson, base, base-compat, bifunctors
, containers, contravariant, data-default-class, deepseq, fetchgit
, hashable, keys, lens, lib, semigroupoids, sydtest
, sydtest-discover, these, transformers, transformers-compat
, unordered-containers, vector, vector-instances
}:
mkDerivation {
  pname = "compactable";
  version = "0.2.0.1";
  src = fetchgit {
    url = "https://gitlab.com/fresheyeball/Compactable";
    sha256 = "19nqdzaj8x5bnj1h7qng659c3cs9dm4s54bvgvvkgjqq6hs04hjr";
    rev = "f63927b1e438c267f0d12f36e5b3735cfaebeeb4";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base base-compat bifunctors containers contravariant
    data-default-class deepseq hashable keys lens QuickCheck
    semigroupoids these transformers transformers-compat
    unordered-containers vector vector-instances
  ];
  testHaskellDepends = [
    base containers QuickCheck sydtest sydtest-discover these vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "A typeclass for structures which can be catMaybed, filtered, and partitioned";
  license = lib.licenses.bsd3;
  broken = false;
}