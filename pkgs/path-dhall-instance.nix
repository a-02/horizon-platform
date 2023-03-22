{ mkDerivation, base, dhall, either, lib, path, text }:
mkDerivation {
  pname = "path-dhall-instance";
  version = "0.2.1.0";
  sha256 = "ca582eedb714f50fe4165c52bfd02c339eabcb0104e49ce0ddd1513352fa2f9e";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base dhall either path text ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "ToDhall and FromDhall instances for Path";
  license = lib.licenses.mit;
  broken = false;
}