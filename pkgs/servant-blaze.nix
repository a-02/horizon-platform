{ mkDerivation, base, blaze-html, http-media, lib, servant
, servant-server, wai, warp
}:
mkDerivation {
  pname = "servant-blaze";
  version = "0.9.1";
  sha256 = "264aa17b95400a13cf23f7421f54b3a3160119c15380a31a96bdfc4a40f2db21";
  revision = "1";
  editedCabalFile = "1y38lzmh5jr3bix0cqrcx9zkjdr1598hz7rvpnm827qw0ln3cmra";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base blaze-html http-media servant ];
  testHaskellDepends = [ base blaze-html servant-server wai warp ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://haskell-servant.readthedocs.org/";
  description = "Blaze-html support for servant";
  license = lib.licenses.bsd3;
  broken = false;
}