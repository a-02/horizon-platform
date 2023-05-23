{ mkDerivation, SHA, base, base16-bytestring, bytestring, criterion
, lib, tasty, tasty-hunit, tasty-quickcheck
}:
mkDerivation {
  pname = "cryptohash-sha1";
  version = "0.11.101.0";
  sha256 = "a4042c97ad02eb68e766577ca35c01970c33e96cfd74ccb4dd403e3476a23241";
  revision = "2";
  editedCabalFile = "1v495qn836flf4nhn43sbq14bhqfljvcpncmfrnvkhbrp5drxgi5";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring ];
  testHaskellDepends = [
    base base16-bytestring bytestring SHA tasty tasty-hunit
    tasty-quickcheck
  ];
  benchmarkHaskellDepends = [ base bytestring criterion ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-hvr/cryptohash-sha1";
  description = "Fast, pure and practical SHA-1 implementation";
  license = lib.licenses.bsd3;
  broken = false;
}