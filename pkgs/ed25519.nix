{ mkDerivation, QuickCheck, base, bytestring, criterion, deepseq
, directory, doctest, fetchgit, filepath, ghc-prim, hlint, lib
}:
mkDerivation {
  pname = "ed25519";
  version = "0.0.5.0";
  src = fetchgit {
    url = "https://gitlab.homotopic.tech/horizon/adopted/ed25519";
    sha256 = "1rfvp3jx1vv16yg4lnfzni380xx6jrghn6nq6s2vqm5nd40p5vyi";
    rev = "faf8fe90aa1cd2492ea1e64c55f5c59fc0322210";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring ghc-prim ];
  testHaskellDepends = [
    base bytestring directory doctest filepath hlint QuickCheck
  ];
  benchmarkHaskellDepends = [ base bytestring criterion deepseq ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://thoughtpolice.github.com/hs-ed25519";
  description = "Ed25519 cryptographic signatures";
  license = lib.licenses.mit;
  broken = false;
}