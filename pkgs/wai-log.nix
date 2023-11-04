{ mkDerivation, aeson, base, bytestring, http-types, lib, log-base
, string-conversions, text, time, uuid, wai
}:
mkDerivation {
  pname = "wai-log";
  version = "0.4.0.1";
  sha256 = "19d21d688e3093289afd7632d33bfaf27c0ab49e5956f153ad72c81ce85e990a";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base bytestring http-types log-base string-conversions text
    time uuid wai
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/scrive/wai-log";
  description = "A logging middleware for WAI applications";
  license = lib.licenses.bsd3;
  broken = false;
}