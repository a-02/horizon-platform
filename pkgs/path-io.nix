{ mkDerivation
, base
, containers
, directory
, dlist
, exceptions
, filepath
, hspec
, lib
, path
, temporary
, time
, transformers
, unix-compat
}:
mkDerivation {
  pname = "path-io";
  version = "1.7.0";
  sha256 = "34bd41820298757bda9fbdc8a07ecb574bc4d78d1260025b1644813ea08d21cb";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    containers
    directory
    dlist
    exceptions
    filepath
    path
    temporary
    time
    transformers
    unix-compat
  ];
  testHaskellDepends = [
    base
    directory
    exceptions
    filepath
    hspec
    path
    transformers
    unix-compat
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/mrkkrp/path-io";
  description = "Interface to ‘directory’ package for users of ‘path’";
  license = lib.licenses.bsd3;
  broken = false;
}
