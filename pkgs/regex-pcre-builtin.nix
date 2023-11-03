{ mkDerivation, array, base, bytestring, containers, lib
, regex-base, text
}:
mkDerivation {
  pname = "regex-pcre-builtin";
  version = "0.95.2.3.8.44";
  sha256 = "cacea6a45faf93df8afbf50ecb09f87acabfed0477cba4746205649eb52ec55e";
  revision = "6";
  editedCabalFile = "1rn3649yqqrbd177mbyk12gdpbm3kdzjgnjqxfv68crah237y08j";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array base bytestring containers regex-base text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "PCRE Backend for \"Text.Regex\" (regex-base)";
  license = lib.licenses.bsd3;
  broken = false;
}