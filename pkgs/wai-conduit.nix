{ mkDerivation, base, bytestring, conduit, http-types, lib
, transformers, wai
}:
mkDerivation {
  pname = "wai-conduit";
  version = "3.0.0.4";
  sha256 = "2790093bd52892b8087c295044573c720773144f4061ccc72d6d6a617320d61f";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring conduit http-types transformers wai
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/yesodweb/wai";
  description = "conduit wrappers for WAI";
  license = lib.licenses.mit;
  broken = false;
}