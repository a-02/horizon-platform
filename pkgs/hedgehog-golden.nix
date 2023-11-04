{ mkDerivation, Diff, aeson, aeson-pretty, base, bytestring
, containers, directory, extra, fetchgit, hedgehog, lib, text
, with-utf8
}:
mkDerivation {
  pname = "hedgehog-golden";
  version = "1.0.2";
  src = fetchgit {
    url = "https://github.com/maybe-hedgehog-later/hedgehog-golden";
    sha256 = "19np0pzvi70bkknnjh9pkcm7nwq11ia5cb7iy4h1in9n4szj3i3f";
    rev = "4ab2906b3f0be5e31ee5a8585e45d43392694246";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    aeson aeson-pretty base bytestring containers Diff directory extra
    hedgehog text
  ];
  testHaskellDepends = [ aeson base hedgehog with-utf8 ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/felixmulder/hedgehog-golden";
  description = "Golden testing capabilities for hedgehog using Aeson";
  license = lib.licenses.bsd3;
  broken = false;
}