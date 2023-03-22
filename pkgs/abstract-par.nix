{ mkDerivation, base, deepseq, lib }:
mkDerivation {
  pname = "abstract-par";
  version = "0.3.3";
  sha256 = "248a8739bd902462cb16755b690b55660e196e58cc7e6ef8157a72c2a3d5d860";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base deepseq ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/simonmar/monad-par";
  description = "Type classes generalizing the functionality of the 'monad-par' library";
  license = lib.licenses.bsd3;
  broken = false;
}