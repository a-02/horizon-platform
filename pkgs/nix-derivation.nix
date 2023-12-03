{ mkDerivation, QuickCheck, attoparsec, base, containers, criterion
, deepseq, filepath, lib, pretty-show, text, vector
}:
mkDerivation {
  pname = "nix-derivation";
  version = "1.1.3";
  sha256 = "ab4dd7540c5f39abcf0486e35441a7115f36d76611cc2278db8b43f9c783b985";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    attoparsec base containers deepseq filepath text vector
  ];
  executableHaskellDepends = [ attoparsec base pretty-show text ];
  testHaskellDepends = [
    attoparsec base filepath QuickCheck text vector
  ];
  benchmarkHaskellDepends = [ attoparsec base criterion text ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Parse and render *.drv files";
  license = lib.licenses.bsd3;
  broken = false;
}