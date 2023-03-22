{ mkDerivation, aeson, base, bytestring, containers, deepseq
, directory, extra, ghc, ghcide, hashable, hls-plugin-api, lib, lsp
, lsp-types, retrie, safe-exceptions, stm, text, transformers
, unordered-containers
}:
mkDerivation {
  pname = "hls-retrie-plugin";
  version = "1.0.3.0";
  sha256 = "3e272ccc97621fb93b5d5bbe37b49b26afcb7d2edc09701d87aa41bfaa6fdbbd";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base bytestring containers deepseq directory extra ghc ghcide
    hashable hls-plugin-api lsp lsp-types retrie safe-exceptions stm
    text transformers unordered-containers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Retrie integration plugin for Haskell Language Server";
  license = lib.licenses.asl20;
  broken = false;
}