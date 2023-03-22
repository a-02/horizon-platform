{ mkDerivation, aeson, base, bytestring, containers, daemons
, directory, either, fast-logger, fetchgit, filepath, foreign-store
, friendly-time, generic-deriving, hedgehog, hostname, lib
, lifted-async, lifted-base, lucid, mmorph, monad-control
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
    sha256 = "0iiga6idcbsm2lgcx6ck3bn37950gzhicrqg0xw65dxsfyhma2p0";
    rev = "f6c7bbbcdb383d2eb487ad7fe427ec05a747c14f";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base bytestring daemons directory either fast-logger filepath
    friendly-time generic-deriving hostname lucid monad-control
    monad-logger mtl optparse-applicative postgresql-simple
    resource-pool safe servant servant-lucid servant-server
    servant-static-th string-conv text text-conversions time
    timing-convenience unix unliftio unliftio-core unordered-containers
    wai warp
  ];
  executableHaskellDepends = [
    aeson base bytestring daemons directory either fast-logger filepath
    foreign-store friendly-time generic-deriving hostname lucid
    monad-control monad-logger mtl optparse-applicative
    postgresql-simple resource-pool safe servant servant-lucid
    servant-server servant-static-th string-conv text text-conversions
    time timing-convenience unix unliftio unliftio-core
    unordered-containers wai warp
  ];
  testHaskellDepends = [
    aeson base bytestring containers daemons directory either
    fast-logger filepath friendly-time generic-deriving hedgehog
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