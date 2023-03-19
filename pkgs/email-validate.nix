{ mkDerivation, QuickCheck, attoparsec, base, bytestring, doctest
, hspec, lib, template-haskell
}:
mkDerivation {
  pname = "email-validate";
  version = "2.3.2.18";
  sha256 = "97492da27ec2e856b807a6703be5952b15fdc9be855a32a81526e68a8b2f7185";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    attoparsec base bytestring template-haskell
  ];
  testHaskellDepends = [ base bytestring doctest hspec QuickCheck ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/Porges/email-validate-hs";
  description = "Email address validation";
  license = lib.licenses.bsd3;
  broken = false;
}