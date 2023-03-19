{ mkDerivation, Cabal, aeson, base, bytestring, containers, deepseq
, directory, hspec, language-nix, lens, lib, pretty, process
}:
mkDerivation {
  pname = "distribution-nixpkgs";
  version = "1.7.0.1";
  sha256 = "02e623c27ca757006a0c81f33e8aed4c70cbb0c89563a6ba4e96a59ad5515079";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    aeson base bytestring Cabal containers deepseq language-nix lens
    pretty process
  ];
  testHaskellDepends = [
    aeson base Cabal deepseq directory hspec language-nix lens
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/NixOS/cabal2nix/tree/master/distribution-nixpkgs#readme";
  description = "Types and functions to manipulate the Nixpkgs distribution";
  license = lib.licenses.bsd3;
  broken = false;
}