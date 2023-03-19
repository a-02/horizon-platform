{ mkDerivation, base, call-stack, fetchgit, lib, tasty }:
mkDerivation {
  pname = "tasty-hunit";
  version = "0.10.0.2";
  src = fetchgit {
    url = "https://github.com/UnkindPartition/tasty";
    sha256 = "0xx85l6g6xxxyfjmlxz5mfli75v77js55a9hr0n7ghrypg2lpj55";
    rev = "226c35f468be389536fbb9471904a113d1586da6";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/hunit/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base call-stack tasty ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/UnkindPartition/tasty";
  description = "HUnit support for the Tasty test framework";
  license = lib.licenses.mit;
  broken = false;
}