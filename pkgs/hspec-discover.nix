{ mkDerivation, QuickCheck, base, directory, filepath, hspec-meta
, lib, mockery
}:
mkDerivation {
  pname = "hspec-discover";
  version = "2.10.10";
  sha256 = "a809388c0ea90b215e582f11e19e030aefa279d63f6ba1c5cbfd714403152f32";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base directory filepath ];
  executableHaskellDepends = [ base directory filepath ];
  testHaskellDepends = [
    base directory filepath hspec-meta mockery QuickCheck
  ];
  testToolDepends = [ hspec-meta ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://hspec.github.io/";
  description = "Automatically discover and run Hspec tests";
  license = lib.licenses.mit;
  broken = false;
}