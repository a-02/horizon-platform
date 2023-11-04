{ mkDerivation, base, containers, lib, syb, template-haskell
, th-abstraction
}:
mkDerivation {
  pname = "th-extras";
  version = "0.0.0.6";
  sha256 = "02bf23940c0233a6ef6f61868e827ebd4554afe8d71cef2a1eb8e286a7f07c4a";
  revision = "1";
  editedCabalFile = "0v81vfgaky4bb3rh18mnb7ampwm43dba3vsngv9mb1f3z975f0ix";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base containers syb template-haskell th-abstraction
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/mokus0/th-extras";
  description = "A grab bag of functions for use with Template Haskell";
  license = lib.licenses.publicDomain;
  broken = false;
}