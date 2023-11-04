{ mkDerivation, base, contravariant, lib, template-haskell
, template-haskell-compat-v0208
}:
mkDerivation {
  pname = "contravariant-extras";
  version = "0.3.5.4";
  sha256 = "2f3a16d38cb6778704db7f142e54be169db4362e033b2d568c172d0c6e64298e";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base contravariant template-haskell template-haskell-compat-v0208
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/nikita-volkov/contravariant-extras";
  description = "Extras for the \"contravariant\" package";
  license = lib.licenses.mit;
  broken = false;
}