{ mkDerivation, async, base, base64-bytestring, bytestring
, containers, criterion, cryptohash-sha1, deepseq, directory
, fetchgit, generic-monoid, hspec, lib, mtl, network, port-utils
, postgres-options, postgresql-simple, prettyprinter, process, stm
, temporary, transformers, unix
}:
mkDerivation {
  pname = "tmp-postgres";
  version = "1.35.0.0";
  src = fetchgit {
    url = "https://github.com/jfischoff/tmp-postgres";
    sha256 = "0l1gdx5s8ximgawd3yzfy47pv5pgwqmjqp8hx5rbrq68vr04wkbl";
    rev = "7f2467a6d6d5f6db7eed59919a6773fe006cf22b";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    async base base64-bytestring bytestring containers cryptohash-sha1
    deepseq directory generic-monoid port-utils postgres-options
    postgresql-simple prettyprinter process stm temporary transformers
    unix
  ];
  executableHaskellDepends = [
    async base directory postgres-options postgresql-simple process
    temporary
  ];
  testHaskellDepends = [
    async base containers directory generic-monoid hspec mtl network
    port-utils postgres-options postgresql-simple process temporary
    unix
  ];
  benchmarkHaskellDepends = [
    base criterion deepseq postgres-options postgresql-simple temporary
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/jfischoff/tmp-postgres#readme";
  description = "Start and stop a temporary postgres";
  license = lib.licenses.bsd3;
  broken = false;
}