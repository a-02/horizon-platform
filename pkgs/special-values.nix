{ mkDerivation, base, bytestring, ieee754, lib, scientific, text }:
mkDerivation {
  pname = "special-values";
  version = "0.1.0.0";
  sha256 = "3c14dd1304dacc8e54c2dcf95ebb3bb74b172b5409b9b45352108a4698e06dce";
  revision = "2";
  editedCabalFile = "1vv5gydjd65jniifl3mnch8bzvpvdahi913gsa3kv5zijwhad699";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring ieee754 scientific text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/minad/special-values#readme";
  description = "Typeclass providing special values";
  license = lib.licenses.mit;
  broken = false;
}