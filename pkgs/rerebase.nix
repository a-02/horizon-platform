{ mkDerivation, lib, rebase }:
mkDerivation {
  pname = "rerebase";
  version = "1.20";
  sha256 = "f207ec83ccff1c6860e6276153ef618caf4e20de9ce098eae1a188ef355c9adc";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ rebase ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/nikita-volkov/rerebase";
  description = "Reexports from \"base\" with a bunch of other standard libraries";
  license = lib.licenses.mit;
  broken = false;
}