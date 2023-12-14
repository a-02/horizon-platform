{ mkDerivation, base, base-prelude, bytestring, lib, mtl, tasty
, tasty-hunit, tasty-quickcheck, text, transformers
}:
mkDerivation {
  pname = "binary-parser";
  version = "0.5.7.5";
  sha256 = "472e4376b7f5e8fd1d50a692cb13898f3fe10504879c60d0d00c8299fe58dc1f";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring mtl text transformers ];
  testHaskellDepends = [
    base-prelude bytestring tasty tasty-hunit tasty-quickcheck
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/nikita-volkov/binary-parser";
  description = "An efficient but limited parser API specialised to bytestrings";
  license = lib.licenses.mit;
  broken = false;
}