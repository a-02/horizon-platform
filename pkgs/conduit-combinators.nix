{ mkDerivation, base, lib }:
mkDerivation {
  pname = "conduit-combinators";
  version = "1.3.0";
  sha256 = "9717d916a0422a7fb7cc262302333269607530d40cd0bea3be947872f906e7d3";
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
  homepage = "https://github.com/snoyberg/mono-traversable#readme";
  description = "DEPRECATED Functionality merged into the conduit package itself";
  license = lib.licenses.mit;
  broken = false;
}
