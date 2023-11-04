{ mkDerivation, base, containers, hspec, lib, monads-tf, patience
}:
mkDerivation {
  pname = "options";
  version = "1.2.1.2";
  sha256 = "6e4d8fa177713d00f95cb43d21359a7d2908ce1e04f703be5b59679ccc3a5f4a";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base containers monads-tf ];
  testHaskellDepends = [ base containers hspec monads-tf patience ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/typeclasses/options/";
  description = "Powerful and easy command-line option parser";
  license = lib.licenses.mit;
  broken = false;
}