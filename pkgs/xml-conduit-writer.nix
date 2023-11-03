{ mkDerivation, base, containers, data-default, dlist, lib, mtl
, text, xml-conduit, xml-types
}:
mkDerivation {
  pname = "xml-conduit-writer";
  version = "0.1.1.4";
  sha256 = "229dbf3470a6d6f284329373060d8a14ae26ea92eefda53c138024e55f7ac5ba";
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