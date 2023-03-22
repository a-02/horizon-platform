{ mkDerivation, Cabal, base, directory, filepath, lib }:
mkDerivation {
  pname = "cabal-doctest";
  version = "1.0.9";
  sha256 = "5556088496111d33810c4ae6c4a065bb37fa3315e9e8891e8000b1ab6707ba73";
  revision = "3";
  editedCabalFile = "0mh64vifcy5dbbx2n3llhbxx8mczifmipyqwrsb3vx2p2jyhvskd";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base Cabal directory filepath ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskellari/cabal-doctest";
  description = "A Setup.hs helper for running doctests";
  license = lib.licenses.bsd3;
  broken = false;
}