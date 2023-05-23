{ mkDerivation, aeson, base, containers, jose, lens, lib, servant
, text, unordered-containers
}:
mkDerivation {
  pname = "servant-auth";
  version = "0.4.1.0";
  sha256 = "add973fe8bcc1b68eaaf90a1ec8fd6933d11eabf3854f91371b77d6827b5ef21";
  revision = "5";
  editedCabalFile = "0azlfs9dvzcf2r3kbm76wmalyhg1w0vi9gc4xlwp8m2n509qhbda";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base containers jose lens servant text unordered-containers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-servant/servant/tree/master/servant-auth#readme";
  description = "Authentication combinators for servant";
  license = lib.licenses.bsd3;
  broken = false;
}