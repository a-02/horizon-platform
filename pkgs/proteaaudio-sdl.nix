{ mkDerivation, SDL2, base, bytestring, c2hs, lib
, system-cxx-std-lib
}:
mkDerivation {
  pname = "proteaaudio-sdl";
  version = "0.9.3";
  sha256 = "57f99c2ca828fd820c618936f970cc70d9457de48ba4ed097531085494b0ee84";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring system-cxx-std-lib ];
  librarySystemDepends = [ SDL2 ];
  libraryPkgconfigDepends = [ SDL2 ];
  libraryToolDepends = [ c2hs ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Simple audio library for SDL";
  license = lib.licenses.bsd3;
  broken = false;
}