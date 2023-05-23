{ mkDerivation, base, deepseq, lib }:
mkDerivation {
  pname = "sop-core";
  version = "0.5.0.2";
  sha256 = "87bffd2254b98ded822d449fcd1c33dbd74d2ce96bf35e7a6714abc5a2297265";
  revision = "2";
  editedCabalFile = "0db36xhswrsc30cw5c5s7h6g1ykcb3bkjjnixaqqshxln6cwfsig";
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
  description = "True Sums of Products";
  license = lib.licenses.bsd3;
  broken = false;
}