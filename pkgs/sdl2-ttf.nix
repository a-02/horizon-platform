{ mkDerivation, SDL2, SDL2_ttf, base, bytestring, lib, sdl2
, template-haskell, text, th-abstraction, transformers
}:
mkDerivation {
  pname = "sdl2-ttf";
  version = "2.1.3";
  sha256 = "b60219fe8144c5d61b140b4607432b24fb93e947c504a8e2f89517175ba6a56a";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring sdl2 template-haskell text th-abstraction
    transformers
  ];
  libraryPkgconfigDepends = [ SDL2 SDL2_ttf ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Bindings to SDL2_ttf";
  license = lib.licenses.bsd3;
  broken = false;
}