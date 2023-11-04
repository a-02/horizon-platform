{ mkDerivation, base, binary, bytestring, directory, ghc-compact
, lib
}:
mkDerivation {
  pname = "compact";
  version = "0.2.0.0";
  sha256 = "03a6b534f4f8f06fe1f3921be74f90c2fab9da7f28e7520612c91c28da266277";
  revision = "2";
  editedCabalFile = "1x38yjkl9b2ss6p9bdhpk5h1p4p3rlar09a31cpa8cgj959ws1da";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base binary bytestring ghc-compact ];
  testHaskellDepends = [ base directory ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/ezyang/compact";
  description = "Non-GC'd, contiguous storage for immutable data structures";
  license = lib.licenses.bsd3;
  broken = false;
}