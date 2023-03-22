{ mkDerivation, base, brick, cursor, lib, text }:
mkDerivation {
  pname = "cursor-brick";
  version = "0.1.0.1";
  sha256 = "7c07d3ad682ee8d704723376856ac4263b0d0ff5cd243b60fe7a78e4ccae1781";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base brick cursor text ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/NorfairKing/cursor-brick#readme";
  license = lib.licenses.mit;
  broken = false;
}