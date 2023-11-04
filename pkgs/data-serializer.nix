{ mkDerivation, base, binary, bytestring, cereal, data-endian, lib
, parsers, split, tasty, tasty-quickcheck
}:
mkDerivation {
  pname = "data-serializer";
  version = "0.3.5";
  sha256 = "b4a0bfdeef7c8c77006682c46addf4ee9e1c8e51b5e01c7ac324813cd16ffd43";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base binary bytestring cereal data-endian parsers split
  ];
  testHaskellDepends = [
    base binary bytestring cereal tasty tasty-quickcheck
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/mvv/data-serializer";
  description = "Common API for serialization libraries";
  license = lib.licenses.bsd3;
  broken = false;
}