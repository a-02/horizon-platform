{ mkDerivation, aeson, base, lib, relude, text, unicode-transforms
, uri-encode
}:
mkDerivation {
  pname = "url-slug";
  version = "0.1.0.0";
  sha256 = "f6bb5635a3d2ddf3ac511eeb25c31982cf08e41b75fb5a19b62cd0fabb9bbd74";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base relude text unicode-transforms uri-encode
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Encoding and decoding of URL slugs";
  license = lib.licenses.mit;
  broken = false;
}