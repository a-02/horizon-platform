{ mkDerivation, base, blaze-html, http-media, lib, servant
, servant-server, wai, warp
}:
mkDerivation {
  pname = "servant-blaze";
  version = "0.9.1";
  sha256 = "264aa17b95400a13cf23f7421f54b3a3160119c15380a31a96bdfc4a40f2db21";
  revision = "2";
  editedCabalFile = "1bc933vfxwdcpgfxy34dkxpadv8j1j053rjxfl4lj0gajwxc5x48";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base blaze-html http-media servant ];
  testHaskellDepends = [ base blaze-html servant-server wai warp ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://haskell-servant.readthedocs.org/";
  description = "Blaze-html support for servant";
  license = lib.licenses.bsd3;
  broken = false;
}