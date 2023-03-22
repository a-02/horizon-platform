{ mkDerivation, base, containers, data-default, dlist, lib, mtl
, text, xml-conduit, xml-types
}:
mkDerivation {
  pname = "xml-conduit-writer";
  version = "0.1.1.2";
  sha256 = "0891c05ad2a2de68183868de8f66230d02f209446ee91bca772cbf22b599ae58";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base containers data-default dlist mtl text xml-conduit xml-types
  ];
  testHaskellDepends = [ base text ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://bitbucket.org/dpwiz/xml-conduit-writer";
  description = "Warm and fuzzy creation of XML documents";
  license = lib.licenses.mit;
  broken = false;
}