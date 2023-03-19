{ mkDerivation, base, lib, transformers }:
mkDerivation {
  pname = "unliftio-core";
  version = "0.2.1.0";
  sha256 = "99384cba8d56d9d61b85e38a313a93ebcdb78be6566367f0930ef580597fe3e3";
  revision = "1";
  editedCabalFile = "19pw6f7hmka8kgnsbrrhp73rdnvdsmagh1s325rxqv5if1km1hwz";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base transformers ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/fpco/unliftio/tree/master/unliftio-core#readme";
  description = "The MonadUnliftIO typeclass for unlifting monads to IO";
  license = lib.licenses.mit;
  broken = false;
}