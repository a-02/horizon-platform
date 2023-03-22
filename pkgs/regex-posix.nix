{ mkDerivation, array, base, bytestring, containers, lib
, regex-base
}:
mkDerivation {
  pname = "regex-posix";
  version = "0.96.0.1";
  sha256 = "c7827c391919227711e1cff0a762b1678fd8739f9c902fc183041ff34f59259c";
  revision = "1";
  editedCabalFile = "1x5xkfddn3llxk4fngqbd8njssrwb7jlp0a0jxfrgdivbava9fwx";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array base bytestring containers regex-base
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "POSIX Backend for \"Text.Regex\" (regex-base)";
  license = lib.licenses.bsd3;
  broken = false;
}