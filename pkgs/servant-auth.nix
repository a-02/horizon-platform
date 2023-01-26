{ mkDerivation
, aeson
, base
, containers
, jose
, lens
, lib
, servant
, text
, unordered-containers
}:
mkDerivation {
  pname = "servant-auth";
  version = "0.4.1.0";
  sha256 = "add973fe8bcc1b68eaaf90a1ec8fd6933d11eabf3854f91371b77d6827b5ef21";
  revision = "4";
  editedCabalFile = "0qgaq8if56fh1ydx8crb24p5cb5axx3n1lnx8klvvkamwrbr870a";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    base
    containers
    jose
    lens
    servant
    text
    unordered-containers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/haskell-servant/servant/servant-auth#readme";
  description = "Authentication combinators for servant";
  license = lib.licenses.bsd3;
  broken = false;
}
