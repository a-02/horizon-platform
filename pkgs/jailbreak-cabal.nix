{ mkDerivation, Cabal, Cabal-syntax, base, lib }:
mkDerivation {
  pname = "jailbreak-cabal";
  version = "1.4";
  sha256 = "4c76b5493098b83348f0fd98436cbbe18768da30bcc0ff7dcba0c250c73e9429";
  isLibrary = false;
  isExecutable = true;
  enableSeparateDataOutput = false;
  executableHaskellDepends = [ base Cabal Cabal-syntax ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/NixOS/jailbreak-cabal";
  description = "Strip version restrictions from Cabal files";
  license = lib.licenses.bsd3;
  broken = false;
}