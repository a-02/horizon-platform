{ mkDerivation
, MonadPrompt
, base
, bytestring
, lib
, mtl
, random
, transformers
}:
mkDerivation {
  pname = "rvar";
  version = "0.3.0.1";
  sha256 = "2529c11a7f22683a398b34a63d0d04beb75833d763777074513454a769b745f1";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    MonadPrompt
    mtl
    random
    transformers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-numerics/random-fu";
  description = "Random Variables";
  license = lib.licenses.publicDomain;
  broken = false;
}
