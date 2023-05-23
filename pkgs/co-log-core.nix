{ mkDerivation, Glob, base, doctest, lib }:
mkDerivation {
  pname = "co-log-core";
  version = "0.3.2.0";
  sha256 = "3495edd3a0c4a1bf4b9dbc30df0a23bdb14848f57a8b71cfa81511ab38c11ee5";
  revision = "1";
  editedCabalFile = "0ljr9pam99q2mgqig8yf1pmz5j0jxk6dq9c2rvzyc4jbv6bnbwnf";
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