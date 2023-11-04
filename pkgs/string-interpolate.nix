{ mkDerivation, QuickCheck, base, bytestring, criterion, deepseq
, formatting, haskell-src-exts, haskell-src-meta, hspec, hspec-core
, interpolate, lib, neat-interpolation, quickcheck-instances
, quickcheck-text, quickcheck-unicode, split, template-haskell
, text, text-conversions, unordered-containers, utf8-string
}:
mkDerivation {
  pname = "string-interpolate";
  version = "0.3.2.1";
  sha256 = "392f017d7df229af537f87f79ffef0df5030cc48b77765f0e6c1580db7bbfdd4";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring haskell-src-exts haskell-src-meta split
    template-haskell text text-conversions utf8-string
  ];
  testHaskellDepends = [
    base bytestring hspec hspec-core QuickCheck quickcheck-instances
    quickcheck-text quickcheck-unicode template-haskell text
    unordered-containers
  ];
  benchmarkHaskellDepends = [
    base bytestring criterion deepseq formatting interpolate
    neat-interpolation QuickCheck text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://gitlab.com/williamyaoh/string-interpolate/blob/master/README.md";
  description = "Haskell string/text/bytestring interpolation that just works";
  license = lib.licenses.bsd3;
  broken = false;
}