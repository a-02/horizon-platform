{ mkDerivation, base, containers, lib }:
mkDerivation {
  pname = "commutative-semigroups";
  version = "0.1.0.0";
  sha256 = "661d41ac7fbab17bdc5ebb7eafeecc597616cc5a1c7fce1b07722aa8bc1a0618";
  revision = "3";
  editedCabalFile = "1g3z3w70hgcbkpf298pnafslx4f2pv9gs6vbgyx215y2p8amvn6s";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base containers ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Commutative semigroups";
  license = lib.licenses.bsd3;
  broken = false;
}