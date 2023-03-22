{ mkDerivation, base, lib }:
mkDerivation {
  pname = "doctest-lib";
  version = "0.1";
  sha256 = "02c6fa934b4ebc1abca1f7346920921969fc5080397efb606ca270d840555cef";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://hub.darcs.net/thielema/doctest-lib/";
  description = "Parts of doctest exposed as library";
  license = lib.licenses.mit;
  broken = false;
}