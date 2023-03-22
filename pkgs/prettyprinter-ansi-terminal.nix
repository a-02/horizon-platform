{ mkDerivation, QuickCheck, ansi-terminal, base, base-compat
, containers, deepseq, doctest, gauge, lib, prettyprinter, text
}:
mkDerivation {
  pname = "prettyprinter-ansi-terminal";
  version = "1.1.3";
  sha256 = "813739308ad6050620578994effe21058a170a341716acf52573fae42b5b1db3";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ ansi-terminal base prettyprinter text ];
  testHaskellDepends = [ base doctest ];
  benchmarkHaskellDepends = [
    base base-compat containers deepseq gauge prettyprinter QuickCheck
    text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/quchen/prettyprinter";
  description = "ANSI terminal backend for the »prettyprinter« package";
  license = lib.licenses.bsd2;
  broken = false;
}