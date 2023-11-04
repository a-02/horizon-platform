{ mkDerivation, QuickCheck, aeson, base, case-insensitive
, containers, criterion, deepseq, dlist, email-validate, foldl
, hashable, hspec, hspec-megaparsec, html-entity-map, lib, lucid
, megaparsec, microlens, microlens-th, modern-uri, mtl
, parser-combinators, text, text-metrics, unordered-containers
, weigh, yaml
}:
mkDerivation {
  pname = "mmark";
  version = "0.0.7.6";
  sha256 = "8c78a5aa7a1806c315bf8c0aa68321f04f508d72e4cac412ea401371fc7c50fd";
  revision = "1";
  editedCabalFile = "0jpin5hrh2wi5yqzzccww3rb94ylb3i7y0wm16q8knq4680fq8zx";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    aeson base case-insensitive containers deepseq dlist email-validate
    foldl hashable html-entity-map lucid megaparsec microlens
    microlens-th modern-uri mtl parser-combinators text text-metrics
    unordered-containers yaml
  ];
  testHaskellDepends = [
    aeson base foldl hspec hspec-megaparsec lucid megaparsec modern-uri
    QuickCheck text
  ];
  benchmarkHaskellDepends = [ base criterion text weigh ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/mmark-md/mmark";
  description = "Strict markdown processor for writers";
  license = lib.licenses.bsd3;
  broken = false;
}