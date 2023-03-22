{ mkDerivation, base, bytestring, lib, libxml2, mtl }:
mkDerivation {
  pname = "libxml";
  version = "0.1.1";
  sha256 = "d1e92affb41e7abe1c7b692aa24ae47dbcf3636f2753bb85a3469c370d9afb07";
  configureFlags = [
    "--extra-include-dir=${libxml2.dev}/include/libxml2"
  ];
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring mtl ];
  librarySystemDepends = [ libxml2 ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Binding to libxml2";
  license = lib.licenses.bsd3;
  broken = false;
}