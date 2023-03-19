{ mkDerivation, aeson, base, bytestring, containers, hashable, lib
, mtl, scientific, text, time, unordered-containers, validity
, validity-scientific, vector
}:
mkDerivation {
  pname = "autodocodec";
  version = "0.2.0.3";
  sha256 = "060fabff7c641d0c7cc4f9b22c4b03a08d1c7d0e615b7ebe38612e4a64f71ec6";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base bytestring containers hashable mtl scientific text time
    unordered-containers validity validity-scientific vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/NorfairKing/autodocodec#readme";
  description = "Self-documenting encoder and decoder";
  license = lib.licenses.mit;
  broken = false;
}