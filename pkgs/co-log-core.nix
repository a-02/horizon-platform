{ mkDerivation, Glob, base, doctest, lib }:
mkDerivation {
  pname = "co-log-core";
  version = "0.3.2.0";
  sha256 = "3495edd3a0c4a1bf4b9dbc30df0a23bdb14848f57a8b71cfa81511ab38c11ee5";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [ base doctest Glob ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/co-log/co-log-core";
  description = "Composable Contravariant Comonadic Logging Library";
  license = lib.licenses.mpl20;
  broken = false;
}