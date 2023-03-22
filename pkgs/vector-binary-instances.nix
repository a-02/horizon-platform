{ mkDerivation, base, binary, bytestring, deepseq, lib, tasty
, tasty-bench, tasty-quickcheck, vector
}:
mkDerivation {
  pname = "vector-binary-instances";
  version = "0.2.5.2";
  sha256 = "b72e3b2109a02c75cb8f07ef0aabba0dba6ec0148e21321a0a2b2197c9a2f54d";
  revision = "3";
  editedCabalFile = "0av0k2gn90mf5ai74575bd368x73ljnr7xlkwsqmrs6zdzkw0i83";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base binary vector ];
  testHaskellDepends = [ base binary tasty tasty-quickcheck vector ];
  benchmarkHaskellDepends = [
    base binary bytestring deepseq tasty-bench vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/bos/vector-binary-instances";
  description = "Instances of Data.Binary for vector";
  license = lib.licenses.bsd3;
  broken = false;
}