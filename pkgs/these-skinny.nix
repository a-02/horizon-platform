{ mkDerivation, base, deepseq, ghc-prim, lib }:
mkDerivation {
  pname = "these-skinny";
  version = "0.7.5";
  sha256 = "726933193bb33d9731a2ed794c07c3ff8952fb0baef5ebbd7dc3b2a3e5746cd9";
  revision = "2";
  editedCabalFile = "158rp41bdzzz2hc17vn5c1j6llcmbirajv0hsq2d76j38nyh7d94";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base deepseq ghc-prim ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/chessai/these-skinny";
  description = "A fork of the 'these' package without the dependency bloat";
  license = lib.licenses.bsd3;
  broken = false;
}