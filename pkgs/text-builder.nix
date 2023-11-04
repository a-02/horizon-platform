{ mkDerivation, base, bytestring, criterion, lib, rerebase, tasty
, tasty-hunit, tasty-quickcheck, text, text-builder-dev
}:
mkDerivation {
  pname = "text-builder";
  version = "0.6.7.1";
  sha256 = "23ce63494c16c731e472b754df4ec0bc46222629a4b6c44c617e49ce790d53f4";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring text text-builder-dev ];
  testHaskellDepends = [
    rerebase tasty tasty-hunit tasty-quickcheck
  ];
  benchmarkHaskellDepends = [ criterion rerebase ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/nikita-volkov/text-builder";
  description = "Efficient strict text builder";
  license = lib.licenses.mit;
  broken = false;
}