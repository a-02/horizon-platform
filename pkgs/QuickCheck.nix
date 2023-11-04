{ mkDerivation, base, containers, deepseq, lib, process, random
, splitmix, template-haskell, transformers
}:
mkDerivation {
  pname = "QuickCheck";
  version = "2.14.3";
  sha256 = "5c0f22b36b28a1a8fa110b3819818d3f29494a3b0dedbae299f064123ca70501";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base containers deepseq random splitmix template-haskell
    transformers
  ];
  testHaskellDepends = [ base deepseq process ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/nick8325/quickcheck";
  description = "Automatic testing of Haskell programs";
  license = lib.licenses.bsd3;
  broken = false;
}