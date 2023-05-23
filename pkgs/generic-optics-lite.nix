{ mkDerivation, base, generic-lens-lite, lib, optics-core }:
mkDerivation {
  pname = "generic-optics-lite";
  version = "0.1";
  sha256 = "b1a75e89e612c8866e47e922db65a7250e3e3890b26309db4d466665c3d4c56d";
  revision = "5";
  editedCabalFile = "13ywf3smi7g7yz1pp8afb95dy4x6qq4kvll7chm4bnjl7s3d85kg";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base generic-lens-lite optics-core ];
  testHaskellDepends = [ base optics-core ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/phadej/generic-lens-lite";
  description = "Monomorphic field opics like with generic-lens";
  license = lib.licenses.bsd3;
  broken = false;
}