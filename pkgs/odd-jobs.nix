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
  version = "0.2.2";
  src = fetchgit {
    url = "https://github.com/saurabhnanda/odd-jobs";
    sha256 = "0zpyzrq5648wz3l4gk3v3j9jii1dq8kp1wal3ny8ghhmy04k7n5d";
    rev = "60481132b229d22eda8efcd3392dd1df237bd968";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson async base bytestring directory either fast-logger filepath
    friendly-time generic-deriving hdaemonize hostname lucid
    monad-control monad-logger mtl optparse-applicative
    postgresql-simple resource-pool safe servant servant-lucid
    servant-server servant-static-th string-conv text text-conversions
    time timing-convenience unix unliftio unliftio-core
    unordered-containers wai warp
  ];
  executableHaskellDepends = [
    aeson async base bytestring directory either fast-logger filepath
    foreign-store friendly-time generic-deriving hdaemonize hostname
    lucid monad-control monad-logger mtl optparse-applicative
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