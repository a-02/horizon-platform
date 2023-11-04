{ mkDerivation, ansi-terminal, base, blaze-builder, bytestring
, containers, deepseq, lib, microlens, microlens-mtl, microlens-th
, mtl, parsec, stm, terminfo, transformers, unix, utf8-string
, vector, vty
}:
mkDerivation {
  pname = "vty-unix";
  version = "0.1.0.0";
  sha256 = "7faa08b40b6dae02abe518c87b7003876b2e988b620e0b73877bb506383c1295";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base blaze-builder bytestring containers deepseq microlens
    microlens-mtl microlens-th mtl parsec stm terminfo transformers
    unix utf8-string vector vty
  ];
  executableHaskellDepends = [ ansi-terminal base vty ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Unix backend for Vty";
  license = lib.licenses.bsd3;
  broken = false;
}