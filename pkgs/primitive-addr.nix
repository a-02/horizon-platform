{ mkDerivation, base, lib, primitive }:
mkDerivation {
  pname = "primitive-addr";
  version = "0.1.0.2";
  sha256 = "4281c3a429bc03ab2940d072a6cbd63948bdf2607561456d972ba3ca4db9211b";
  revision = "1";
  editedCabalFile = "14pawzzip9528qizhrpai00h27z9dfin4kw8vqkb6576pi8g1y2f";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base primitive ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/andrewthad/primitive-addr";
  description = "Addresses to unmanaged memory";
  license = lib.licenses.bsd3;
  broken = false;
}