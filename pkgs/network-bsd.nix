{ mkDerivation, base, deepseq, lib, network }:
mkDerivation {
  pname = "network-bsd";
  version = "2.8.1.0";
  sha256 = "d94961ca15c42c798d19cde540ec12b25cc43435fb95e682399d6c1a02022d4e";
  revision = "4";
  editedCabalFile = "1gd9a8j7fwg0jz0s6il5fk9sl0hm19ja1w56ix51wa0qi2h5x56d";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base deepseq network ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell/network-bsd";
  description = "POSIX network database (<netdb.h>) API";
  license = lib.licenses.bsd3;
  broken = false;
}