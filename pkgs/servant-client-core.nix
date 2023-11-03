{ mkDerivation, QuickCheck, aeson, base, base-compat
, base64-bytestring, bytestring, constraints, containers, deepseq
, exceptions, free, hspec, hspec-discover, http-media, http-types
, lib, network-uri, safe, servant, sop-core, template-haskell, text
, transformers
}:
mkDerivation {
  pname = "servant-client-core";
  version = "0.20";
  sha256 = "a6744916079ec769c248ff5f7a2cc62d7eb03abb445be6c1fa7811c2866b4b04";
  revision = "1";
  editedCabalFile = "0nkgan32s6v5s3sqk5wdw1m977gszwi8lnap5wrr3m47q7j4003l";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base base-compat base64-bytestring bytestring constraints
    containers deepseq exceptions free http-media http-types
    network-uri safe servant sop-core template-haskell text
    transformers
  ];
  testHaskellDepends = [ base base-compat deepseq hspec QuickCheck ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://docs.servant.dev/";
  description = "Core functionality and class for client function generation for servant APIs";
  license = lib.licenses.bsd3;
  broken = false;
}