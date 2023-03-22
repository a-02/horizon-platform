{ mkDerivation, base, lib }:
mkDerivation {
  pname = "parser-combinators";
  version = "1.3.0";
  sha256 = "9310ef0d49f8a8922acda10b1cded9854cbee04dea717effc6ee5983072e4447";
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
  homepage = "https://github.com/mrkkrp/parser-combinators";
  description = "Lightweight package providing commonly useful parser combinators";
  license = lib.licenses.bsd3;
  broken = false;
}