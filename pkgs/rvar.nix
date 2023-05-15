{ mkDerivation, MonadPrompt, base, bytestring, lib, mtl, random
, transformers
}:
mkDerivation {
  pname = "rvar";
  version = "0.3.0.2";
  sha256 = "5138d0758a04e4d8125272d665d8b918f039f65fd1cd84f2266b4908cbef88d6";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring MonadPrompt mtl random transformers
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