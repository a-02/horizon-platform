{ mkDerivation, base, bytestring, criterion, lib, rerebase, tasty
, tasty-hunit, tasty-quickcheck, text, text-builder-dev
}:
mkDerivation {
  pname = "text-builder";
  version = "0.6.7.2";
  sha256 = "6194f3076933bbe361e225461a10fd8ab29bd5476294ffb80a6af17c8535c7dd";
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