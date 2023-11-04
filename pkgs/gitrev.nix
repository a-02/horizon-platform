{ mkDerivation, base, base-compat, directory, filepath, lib
, process, template-haskell
}:
mkDerivation {
  pname = "gitrev";
  version = "1.3.1";
  sha256 = "a89964db24f56727b0e7b10c98fe7c116d721d8c46f52d6e77088669aaa38332";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base base-compat directory filepath process template-haskell
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/acfoltzer/gitrev";
  description = "Compile git revision info into Haskell projects";
  license = lib.licenses.bsd3;
  broken = false;
}