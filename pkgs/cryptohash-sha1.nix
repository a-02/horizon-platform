{ mkDerivation, SHA, base, base16-bytestring, bytestring, criterion
, lib, tasty, tasty-hunit, tasty-quickcheck
}:
mkDerivation {
  pname = "cryptohash-sha1";
  version = "0.11.101.0";
  sha256 = "a4042c97ad02eb68e766577ca35c01970c33e96cfd74ccb4dd403e3476a23241";
  revision = "1";
  editedCabalFile = "0bz9rfl7b2iwn45m0lxcmsyi5rrv3xdgzx2lzr79bds91dw6i25b";
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
  homepage = "https://github.com/hvr/cryptohash-sha1";
  description = "Fast, pure and practical SHA-1 implementation";
  license = lib.licenses.bsd3;
  broken = false;
}