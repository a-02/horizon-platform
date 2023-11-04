{ mkDerivation, SDL2, SDL2_image, base, bytestring, lib, sdl2
, template-haskell, text
}:
mkDerivation {
  pname = "sdl2-image";
  version = "2.1.0.0";
  sha256 = "d22403d966e0f18ecc33fadda8e611e2e90bc718e8d6647177f5118264a5920d";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring sdl2 template-haskell text
  ];
  librarySystemDepends = [ SDL2_image ];
  libraryPkgconfigDepends = [ SDL2 SDL2_image ];
  executableHaskellDepends = [ base sdl2 text ];
  executableSystemDepends = [ SDL2_image ];
  executablePkgconfigDepends = [ SDL2 SDL2_image ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Haskell bindings to SDL2_image";
  license = lib.licenses.mit;
  broken = false;
}