{ mkDerivation, base, deepseq, doctest, hedgehog, hspec
, hspec-hedgehog, lib, selective, text
}:
mkDerivation {
  pname = "validation-selective";
  version = "0.2.0.0";
  sha256 = "9a884e97e6a64f2cacadec8d5ea7e8ba7562d0c8fa9ab7cd5c34055eaec64987";
  revision = "2";
  editedCabalFile = "1lzx925znym2jx0qwicx7cv9ixy5qw4r3819sxvgd2yyvs159az1";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base deepseq selective ];
  testHaskellDepends = [
    base doctest hedgehog hspec hspec-hedgehog selective text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/kowainik/validation-selective";
  description = "Lighweight pure data validation based on Applicative and Selective functors";
  license = lib.licenses.mpl20;
  broken = false;
}