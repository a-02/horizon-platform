{ mkDerivation, Glob, base, blaze-html, bytestring, containers
, directory, doctest, filepath, hspec-wai, http-media, lib
, semigroups, servant, servant-blaze, servant-server, tasty
, tasty-hspec, tasty-hunit, template-haskell, text, wai
}:
mkDerivation {
  pname = "servant-static-th";
  version = "1.0.0.0";
  sha256 = "25d4ca76d10bcaef4ae33571c3629d015b92297bb0391806d7f06f91e6327ec6";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base blaze-html bytestring containers directory filepath http-media
    semigroups servant servant-blaze servant-server template-haskell
    text
  ];
  testHaskellDepends = [
    base blaze-html bytestring directory doctest filepath Glob
    hspec-wai servant servant-blaze servant-server tasty tasty-hspec
    tasty-hunit wai
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/cdepillabout/servant-static-th";
  description = "Embed a directory of static files in your Servant server";
  license = lib.licenses.bsd3;
  broken = false;
}