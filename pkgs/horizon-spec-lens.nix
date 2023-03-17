{ mkDerivation, base, fetchzip, horizon-spec, lens, lib }:
mkDerivation {
  pname = "horizon-spec-lens";
  version = "0.2.1";
  src = fetchzip {
    url = "https://gitlab.horizon-haskell.net/haskell/horizon-spec-lens/-/archive/0.2.1/horizon-spec-lens-0.2.1.tar.gz";
    sha256 = "0b2y8isijbfnf8q62mp2lpc287bv5xnkm389k3bi4yd8kyj44w1n";
  };
  postUnpack = "sourceRoot+=/horizon-spec-lens/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base horizon-spec lens ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://horizon-haskell.net";
  description = "Horizon Stable Package Set Lenses";
  license = lib.licenses.mit;
  broken = false;
}