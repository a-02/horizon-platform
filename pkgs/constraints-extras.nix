{ mkDerivation, aeson, base, constraints, lib, template-haskell }:
mkDerivation {
  pname = "constraints-extras";
  version = "0.4.0.0";
  sha256 = "f639594f340986e7647616194dec57a85490ca60e3b0f5197d011675da242ec7";
  revision = "1";
  editedCabalFile = "1fdabah3ilq9yf94916ml3c3rxgcgab1jhzl4mk1zgzsw78j53qf";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base constraints template-haskell ];
  executableHaskellDepends = [ aeson base constraints ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/obsidiansystems/constraints-extras";
  description = "Utility package for constraints";
  license = lib.licenses.bsd3;
  broken = false;
}