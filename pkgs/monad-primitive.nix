{ mkDerivation, base, lib, primitive, transformers }:
mkDerivation {
  pname = "monad-primitive";
  version = "0.1";
  sha256 = "3dc032536e87ca77d9e802d581f036ebbf2e29064fb98a0ede05fb068b7926ee";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base primitive transformers ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://bitbucket.org/Shimuuar/monad-primitive";
  description = "Type class for monad transformers stack with pirimitive base monad";
  license = lib.licenses.bsd3;
  broken = false;
}