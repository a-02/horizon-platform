{ mkDerivation
, HUnit
, base
, directory
, extra
, fetchgit
, hspec
, lib
, monad-parallel
, temporary
, unix
}:
mkDerivation {
  pname = "unix-compat";
  version = "0.7";
  src = fetchgit {
    url = "https://github.com/mitchellwrosen/fork--unix-compat";
    sha256 = "05bnsbaswlsjgb8hrvabwdxzj4ii0kabj8mk47iczlwks6rimlgl";
    rev = "f28060acd449643d267954647c1bb7c748c35fa9";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base unix ];
  testHaskellDepends = [
    base
    directory
    extra
    hspec
    HUnit
    monad-parallel
    temporary
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/jacobstanley/unix-compat";
  description = "Portable POSIX-compatibility layer";
  license = lib.licenses.bsd3;
  broken = false;
}
