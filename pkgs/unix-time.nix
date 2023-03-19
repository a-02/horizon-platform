{ mkDerivation, QuickCheck, base, binary, bytestring, hspec
, hspec-discover, lib, old-locale, old-time, time
}:
mkDerivation {
  pname = "unix-time";
  version = "0.4.9";
  sha256 = "490734d4860e065aa92fb3f54dc07ba5fa61b4a0c6fb9989f38d5713bcac8b08";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base binary bytestring old-time ];
  testHaskellDepends = [
    base bytestring hspec old-locale old-time QuickCheck time
  ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Unix time parser/formatter and utilities";
  license = lib.licenses.bsd3;
  broken = false;
}