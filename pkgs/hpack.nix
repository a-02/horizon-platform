{ mkDerivation, Cabal, Glob, HUnit, QuickCheck, aeson, base
, bifunctors, bytestring, containers, cryptonite, deepseq
, directory, filepath, hspec, hspec-discover, http-client
, http-client-tls, http-types, infer-license, interpolate, lib
, mockery, pretty, scientific, template-haskell, temporary, text
, transformers, unordered-containers, vector, yaml
}:
mkDerivation {
  pname = "hpack";
  version = "0.35.2";
  sha256 = "03b7013d18dc2280fe3d134d80a68fa95125c456e660b52ae5a873b7662b90ec";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base bifunctors bytestring Cabal containers cryptonite
    deepseq directory filepath Glob http-client http-client-tls
    http-types infer-license pretty scientific text transformers
    unordered-containers vector yaml
  ];
  executableHaskellDepends = [
    aeson base bifunctors bytestring Cabal containers cryptonite
    deepseq directory filepath Glob http-client http-client-tls
    http-types infer-license pretty scientific text transformers
    unordered-containers vector yaml
  ];
  testHaskellDepends = [
    aeson base bifunctors bytestring Cabal containers cryptonite
    deepseq directory filepath Glob hspec http-client http-client-tls
    http-types HUnit infer-license interpolate mockery pretty
    QuickCheck scientific template-haskell temporary text transformers
    unordered-containers vector yaml
  ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/sol/hpack#readme";
  description = "A modern format for Haskell packages";
  license = lib.licenses.mit;
  broken = false;
}