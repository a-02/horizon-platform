{ mkDerivation, base, lib, primitive }:
mkDerivation {
  pname = "primitive-addr";
  version = "0.1.0.2";
  sha256 = "4281c3a429bc03ab2940d072a6cbd63948bdf2607561456d972ba3ca4db9211b";
  revision = "2";
  editedCabalFile = "1s18b6xm6906ldj8wd2b2j885xbgvf5mzabd4mpl1ic7a9205qgn";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base primitive ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/andrewthad/primitive-addr";
  description = "Addresses to unmanaged memory";
  license = lib.licenses.bsd3;
  broken = false;
}