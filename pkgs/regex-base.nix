{ mkDerivation, array, base, bytestring, containers, lib, text }:
mkDerivation {
  pname = "regex-base";
  version = "0.94.0.2";
  sha256 = "7b99408f580f5bb67a1c413e0bc735886608251331ad36322020f2169aea2ef1";
  revision = "1";
  editedCabalFile = "1k2gzjm7xz69f7zr08wh2wzb5dhb659cvimsvx0g9p8cf5f45x2g";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ array base bytestring containers text ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://wiki.haskell.org/Regular_expressions";
  description = "Common \"Text.Regex.*\" API for Regex matching";
  license = lib.licenses.bsd3;
  broken = false;
}