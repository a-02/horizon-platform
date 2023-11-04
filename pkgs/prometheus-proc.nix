{ mkDerivation, base, directory, filepath, lib, prometheus-client
, regex-applicative, text, unix, unix-memory
}:
mkDerivation {
  pname = "prometheus-proc";
  version = "0.1.5.0";
  sha256 = "0e0fb1702e423490762c247c99de2ba0df66bc7e75e5811a7e29e79ee035694e";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base directory filepath prometheus-client regex-applicative text
    unix unix-memory
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/fimad/prometheus-haskell";
  description = "Export metrics from /proc for the current process";
  license = lib.licenses.bsd3;
  broken = false;
}