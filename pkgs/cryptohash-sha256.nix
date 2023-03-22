{ mkDerivation, SHA, base, base16-bytestring, bytestring, criterion
, lib, tasty, tasty-hunit, tasty-quickcheck
}:
mkDerivation {
  pname = "cryptohash-sha256";
  version = "0.11.102.1";
  sha256 = "73a7dc7163871a80837495039a099967b11f5c4fe70a118277842f7a713c6bf6";
  revision = "2";
  editedCabalFile = "1g7lpcn3zhrp4a65gj71v2164387r0m42pyavlx6bbifhyar1kkj";
  configureFlags = [ "-fuse-cbits" ];
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring ];
  testHaskellDepends = [
    base base16-bytestring bytestring SHA tasty tasty-hunit
    tasty-quickcheck
  ];
  benchmarkHaskellDepends = [ base bytestring criterion SHA ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/hvr/cryptohash-sha256";
  description = "Fast, pure and practical SHA-256 implementation";
  license = lib.licenses.bsd3;
  broken = false;
}