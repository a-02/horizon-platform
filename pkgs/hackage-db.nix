{ mkDerivation, Cabal, aeson, base, bytestring, containers
, directory, exceptions, filepath, lib, tar, time, utf8-string
}:
mkDerivation {
  pname = "hackage-db";
  version = "2.1.3";
  sha256 = "6b7fb10990d8265f45687af4764a0f9392d49417de8ae433880795c77be2f7e7";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base bytestring Cabal containers directory exceptions
    filepath tar time utf8-string
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/NixOS/cabal2nix/tree/master/hackage-db#readme";
  description = "Access cabal-install's Hackage database via Data.Map";
  license = lib.licenses.bsd3;
  broken = false;
}