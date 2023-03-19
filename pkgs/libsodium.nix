{ mkDerivation, base, c2hs, hedgehog, lib, libsodium, tasty
, tasty-hedgehog, tasty-hunit
}:
mkDerivation {
  pname = "libsodium";
  version = "1.0.18.3";
  sha256 = "da90c7c7908d949186688cbc5069c087b0a77bbde3f0b14bdb1bb1103d78854d";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  libraryPkgconfigDepends = [ libsodium ];
  libraryToolDepends = [ c2hs ];
  testHaskellDepends = [
    base hedgehog tasty tasty-hedgehog tasty-hunit
  ];
  testPkgconfigDepends = [ libsodium ];
  testToolDepends = [ c2hs ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/k0001/hs-libsodium";
  description = "Low-level bindings to the libsodium C library";
  license = lib.licenses.isc;
  broken = false;
}