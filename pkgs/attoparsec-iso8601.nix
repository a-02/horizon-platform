{ mkDerivation, attoparsec, base, integer-conversion, lib, text
, time, time-compat
}:
mkDerivation {
  pname = "attoparsec-iso8601";
  version = "1.1.0.1";
  sha256 = "73206fb9cb46e8608940b3dd7acbff76d62a76ec4e8d2070a855ecab4649916b";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    attoparsec base integer-conversion text time time-compat
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell/aeson";
  description = "Parsing of ISO 8601 dates, originally from aeson";
  license = lib.licenses.bsd3;
  broken = false;
}