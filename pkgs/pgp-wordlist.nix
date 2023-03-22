{ mkDerivation, HUnit, base, bytestring, containers, deepseq
, doctest, lib, tasty, tasty-hunit, tasty-quickcheck, text, vector
}:
mkDerivation {
  pname = "pgp-wordlist";
  version = "0.1.0.3";
  sha256 = "ef3b560276981def53abc01cbe3cb4d0bece8eaa8a210ee890729ee500c4e695";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring containers text vector ];
  testHaskellDepends = [
    base bytestring deepseq doctest HUnit tasty tasty-hunit
    tasty-quickcheck text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/quchen/pgp-wordlist";
  description = "Translate between binary data and a human-readable collection of words";
  license = lib.licenses.bsd3;
  broken = false;
}