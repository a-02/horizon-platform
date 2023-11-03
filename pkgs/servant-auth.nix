{ mkDerivation, aeson, base, containers, jose, lens, lib, servant
, text, unordered-containers
}:
mkDerivation {
  pname = "servant-auth";
  version = "0.4.1.0";
  sha256 = "add973fe8bcc1b68eaaf90a1ec8fd6933d11eabf3854f91371b77d6827b5ef21";
  revision = "7";
  editedCabalFile = "18ylz2071416hhiqy7n72dvpsfy2cmhsh5j96mmcmgx05fcpkswg";
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