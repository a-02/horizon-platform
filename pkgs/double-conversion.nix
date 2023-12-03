{ mkDerivation, HUnit, base, bytestring, fetchgit, ghc-prim, lib
, system-cxx-std-lib, test-framework, test-framework-hunit
, test-framework-quickcheck2, text
}:
mkDerivation {
  pname = "double-conversion";
  version = "2.0.4.2";
  src = fetchgit {
    url = "https://github.com/haskell/double-conversion/";
    sha256 = "15060q09kjlk62lq4labmc84f2m3df1ylf21p7r975x13wj1xy3f";
    rev = "1320d0a4df745c9ecb5fada9a681b3842cf1f47c";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring ghc-prim system-cxx-std-lib text
  ];
  testHaskellDepends = [
    base bytestring HUnit test-framework test-framework-hunit
    test-framework-quickcheck2 text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell/double-conversion";
  description = "Fast conversion between single and double precision floating point and text";
  license = lib.licenses.bsd2;
  broken = false;
}