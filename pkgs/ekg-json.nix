{ mkDerivation, aeson, base, ekg-core, fetchgit, lib, text
, unordered-containers
}:
mkDerivation {
  pname = "ekg-json";
  version = "0.1.0.7";
  src = fetchgit {
    url = "https://github.com/vshabanov/ekg-json";
    sha256 = "1zvjm3pb38w0ijig5wk5mdkzcszpmlp5d4zxvks2jk1rkypi8gsm";
    rev = "00ebe7211c981686e65730b7144fbf5350462608";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base ekg-core text unordered-containers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/tibbe/ekg-json";
  description = "JSON encoding of ekg metrics";
  license = lib.licenses.bsd3;
  broken = false;
}