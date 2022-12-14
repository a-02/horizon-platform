{ mkDerivation
, QuickCheck
, base
, bytestring
, containers
, deepseq
, directory
, lib
, process
, text
, time
}:
mkDerivation {
  pname = "tagsoup";
  version = "0.14.8";
  sha256 = "ba7e5500d853d29f0675b90655b7fdd032a4a7eee82a56e7ee3ef9949fe93ad5";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring containers text ];
  testHaskellDepends = [
    base
    bytestring
    deepseq
    directory
    process
    QuickCheck
    time
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/ndmitchell/tagsoup#readme";
  description = "Parsing and extracting information from (possibly malformed) HTML/XML documents";
  license = lib.licenses.bsd3;
  broken = false;
}
