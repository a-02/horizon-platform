{ mkDerivation, base, bytestring, case-insensitive, data-checked
, hashable, lib, semigroups, text
}:
mkDerivation {
  pname = "text-latin1";
  version = "0.3.1";
  sha256 = "6c7482ae0cfde06fe6ad8f0e6ea6b0d082d27a075370b5c018c31e53aad9abf3";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring case-insensitive data-checked hashable semigroups
    text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/mvv/text-latin1";
  description = "Latin-1 (including ASCII) utility functions";
  license = lib.licenses.bsd3;
  broken = false;
}