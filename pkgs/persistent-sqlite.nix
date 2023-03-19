{ mkDerivation, HUnit, QuickCheck, aeson, base, bytestring, conduit
, containers, exceptions, fast-logger, hspec, lib, microlens
, microlens-th, monad-logger, mtl, persistent, persistent-test
, resource-pool, resourcet, sqlite, system-fileio, system-filepath
, temporary, text, time, transformers, unliftio-core
, unordered-containers
}:
mkDerivation {
  pname = "persistent-sqlite";
  version = "2.13.1.1";
  sha256 = "f2da6df242d3fb40fa256c8e6de0fa53d40d1b091ec7a6ded5001552ed07fa28";
  configureFlags = [ "-fsystemlib" ];
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base bytestring conduit containers microlens-th monad-logger
    mtl persistent resource-pool resourcet text time transformers
    unliftio-core unordered-containers
  ];
  librarySystemDepends = [ sqlite ];
  testHaskellDepends = [
    base bytestring conduit containers exceptions fast-logger hspec
    HUnit microlens monad-logger mtl persistent persistent-test
    QuickCheck resourcet system-fileio system-filepath temporary text
    time transformers unliftio-core
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://www.yesodweb.com/book/persistent";
  description = "Backend for the persistent library using sqlite3";
  license = lib.licenses.mit;
  broken = false;
}