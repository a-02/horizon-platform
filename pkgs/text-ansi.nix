{ mkDerivation, base, lib, text, text-builder-linear }:
mkDerivation {
  pname = "text-ansi";
  version = "0.3.0.1";
  sha256 = "0078b6e1adfb3fbbb4e241e20116829c3ede02f3906eb292ab4540c9e82f3846";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base text text-builder-linear ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/awkward-squad/text-ansi";
  description = "Text styling for ANSI terminals";
  license = lib.licenses.bsd3;
  broken = false;
}