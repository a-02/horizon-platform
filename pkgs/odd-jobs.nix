{ mkDerivation, aeson, async, base, bytestring, containers
, directory, either, fast-logger, fetchgit, filepath, foreign-store
, friendly-time, generic-deriving, hdaemonize, hedgehog, hostname
, lib, lifted-async, lifted-base, lucid, mmorph, monad-control
, monad-logger, mtl, optparse-applicative, postgresql-simple
, random, resource-pool, safe, servant, servant-lucid
, servant-server, servant-static-th, string-conv, tasty
, tasty-discover, tasty-hedgehog, tasty-hunit, text
, text-conversions, time, timing-convenience, unix, unliftio
, unliftio-core, unordered-containers, wai, warp
}:
mkDerivation {
  pname = "odd-jobs";
  version = "0.2.3";
  src = fetchgit {
    url = "https://github.com/saurabhnanda/odd-jobs";
    sha256 = "1blg3aw26fjrim788ha4dsrcjvb62ilbgnclnz3knrc8y0lgil1i";
    rev = "51c74432a5bbb1599c439fc59eef89d3adcde1a2";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson async base bytestring containers directory either fast-logger
    filepath friendly-time generic-deriving hdaemonize hostname lucid
    monad-control monad-logger mtl optparse-applicative
    postgresql-simple resource-pool safe servant servant-lucid
    servant-server servant-static-th string-conv text text-conversions
    time timing-convenience unix unliftio unliftio-core
    unordered-containers wai warp
  ];
  executableHaskellDepends = [
    aeson async base bytestring containers directory either fast-logger
    filepath foreign-store friendly-time generic-deriving hdaemonize
    hostname lucid monad-control monad-logger mtl optparse-applicative
    postgresql-simple resource-pool safe servant servant-lucid
    servant-server servant-static-th string-conv text text-conversions
    time timing-convenience unix unliftio unliftio-core
    unordered-containers wai warp
  ];
  testHaskellDepends = [
    aeson async base bytestring containers directory either fast-logger
    filepath friendly-time generic-deriving hdaemonize hedgehog
    hostname lifted-async lifted-base lucid mmorph monad-control
    monad-logger mtl optparse-applicative postgresql-simple random
    resource-pool safe servant servant-lucid servant-server
    servant-static-th string-conv tasty tasty-discover tasty-hedgehog
    tasty-hunit text text-conversions time timing-convenience unix
    unliftio unliftio-core unordered-containers wai warp
  ];
  testToolDepends = [ tasty-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://www.haskelltutorials.com/odd-jobs";
  description = "A full-featured PostgreSQL-backed job queue (with an admin UI)";
  license = lib.licenses.bsd3;
  broken = false;
}