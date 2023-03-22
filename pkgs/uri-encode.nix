{ mkDerivation, base, bytestring, lib, network-uri, text
, utf8-string
}:
mkDerivation {
  pname = "uri-encode";
  version = "1.5.0.7";
  sha256 = "c79c624257833841a22890e4d2b0ab07e4be88e0f99474d328223815c0814252";
  revision = "2";
  editedCabalFile = "03pmvbi56gmg1z2wr3glncc7dbyh666bqp565inh31qzsp9zwmgj";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring network-uri text utf8-string
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Unicode aware uri-encoding";
  license = lib.licenses.bsd3;
  broken = false;
}