{ mkDerivation, base, base-prelude, bytestring, lib, mtl, tasty
, tasty-hunit, tasty-quickcheck, text, transformers
}:
mkDerivation {
  pname = "binary-parser";
  version = "0.5.7.4";
  sha256 = "ba824da8aff477db01478810fee5f485e6e27a19800a42a86ccb3983cbe9931a";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring mtl text transformers ];
  testHaskellDepends = [
    base-prelude bytestring tasty tasty-hunit tasty-quickcheck
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/nikita-volkov/binary-parser";
  description = "An efficient but limited parser API specialised to bytestrings";
  license = lib.licenses.mit;
  broken = false;
}