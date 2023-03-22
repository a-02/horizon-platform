{ mkDerivation, HUnit, base, bytestring, conduit, conduit-extra
, directory, hspec, lib, network, process, resourcet, unix
}:
mkDerivation {
  pname = "simple-sendfile";
  version = "0.2.30";
  sha256 = "b6864d2b3c62ff8ea23fa24e9e26f751bfe5253c8efb1f1e4fee2ba91d065284";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring network unix ];
  testHaskellDepends = [
    base bytestring conduit conduit-extra directory hspec HUnit network
    process resourcet unix
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Cross platform library for the sendfile system call";
  license = lib.licenses.bsd3;
  broken = false;
}