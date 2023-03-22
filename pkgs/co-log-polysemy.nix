{ mkDerivation, base, co-log-core, lib, polysemy }:
mkDerivation {
  pname = "co-log-polysemy";
  version = "0.0.1.3";
  sha256 = "775989212f33126b035e1f26e836fc197c042d08811dca7ddf25b56fbdf3d7b0";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base co-log-core polysemy ];
  executableHaskellDepends = [ base co-log-core polysemy ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/co-log/co-log-polysemy";
  description = "Composable Contravariant Comonadic Logging Library";
  license = lib.licenses.mpl20;
  broken = false;
}