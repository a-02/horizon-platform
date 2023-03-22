{ mkDerivation, HUnit, array, base, bytestring, containers
, directory, dlist, filepath, language-c, lib, pretty, process
, shelly, test-framework, test-framework-hunit, text, transformers
}:
mkDerivation {
  pname = "c2hs";
  version = "0.28.8";
  sha256 = "390632cffc561c32483af474aac50168a68f0fa382096552e37749923617884c";
  revision = "2";
  editedCabalFile = "14j3sjxvwhj32zpz0iyigc6wdn6pjm3vlgs0prq0grvk48p176f3";
  isLibrary = false;
  isExecutable = true;
  enableSeparateDataOutput = true;
  executableHaskellDepends = [
    array base bytestring containers directory dlist filepath
    language-c pretty process
  ];
  testHaskellDepends = [
    base filepath HUnit shelly test-framework test-framework-hunit text
    transformers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell/c2hs";
  description = "C->Haskell FFI tool that gives some cross-language type safety";
  license = lib.licenses.gpl2Only;
  broken = false;
}