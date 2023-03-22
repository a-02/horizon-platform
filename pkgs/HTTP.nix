{ mkDerivation, HUnit, array, base, bytestring, deepseq, httpd-shed
, lib, mtl, network, network-uri, parsec, pureMD5, split
, test-framework, test-framework-hunit, time, transformers
}:
mkDerivation {
  pname = "HTTP";
  version = "4000.4.1";
  sha256 = "df31d8efec775124dab856d7177ddcba31be9f9e0836ebdab03d94392f2dd453";
  revision = "2";
  editedCabalFile = "1bpq8xjyrgcxs6yf6wh7ada2xrln1dqi02b5ilj8gwn1p30hq8nr";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array base bytestring mtl network network-uri parsec time
    transformers
  ];
  testHaskellDepends = [
    base bytestring deepseq httpd-shed HUnit mtl network network-uri
    pureMD5 split test-framework test-framework-hunit
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell/HTTP";
  description = "A library for client-side HTTP";
  license = lib.licenses.bsd3;
  broken = false;
}