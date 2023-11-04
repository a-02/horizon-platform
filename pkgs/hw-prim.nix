{ mkDerivation, QuickCheck, base, bytestring, criterion, deepseq
, directory, doctest, doctest-discover, exceptions, ghc-prim
, hedgehog, hspec, hspec-discover, hw-hspec-hedgehog, lib, mmap
, transformers, unliftio-core, vector
}:
mkDerivation {
  pname = "hw-prim";
  version = "0.6.3.2";
  sha256 = "1fa05fdc46c72ed4b28aabcee69695ce810d451bbd263fbe75f94b179e20441d";
  revision = "1";
  editedCabalFile = "1wga8ghc001lz9y76ffrdrpqkxpj1lz7qpkykfl66lsqf5pvng32";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring deepseq ghc-prim mmap transformers unliftio-core
    vector
  ];
  testHaskellDepends = [
    base bytestring directory doctest doctest-discover exceptions
    hedgehog hspec hw-hspec-hedgehog mmap QuickCheck transformers
    vector
  ];
  testToolDepends = [ doctest-discover hspec-discover ];
  benchmarkHaskellDepends = [
    base bytestring criterion mmap transformers vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/haskell-works/hw-prim#readme";
  description = "Primitive functions and data types";
  license = lib.licenses.bsd3;
  broken = false;
}