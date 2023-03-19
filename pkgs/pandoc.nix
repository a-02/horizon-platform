{ mkDerivation, Diff, Glob, JuicyPixels, SHA, aeson, aeson-pretty
, array, attoparsec, base, base64, binary, blaze-html, blaze-markup
, bytestring, case-insensitive, citeproc, commonmark
, commonmark-extensions, commonmark-pandoc, connection, containers
, data-default, deepseq, directory, doclayout, doctemplates, emojis
, exceptions, file-embed, filepath, gridtables, haddock-library
, http-client, http-client-tls, http-types, ipynb, jira-wiki-markup
, lib, mime-types, mtl, network, network-uri, pandoc-types, parsec
, pretty, pretty-show, process, random, safe, scientific
, skylighting, skylighting-core, split, syb, tagsoup, tasty
, tasty-bench, tasty-golden, tasty-hunit, tasty-quickcheck
, temporary, texmath, text, text-conversions, time
, unicode-collation, unicode-transforms, unix, xml, xml-conduit
, xml-types, yaml, zip-archive, zlib
}:
mkDerivation {
  pname = "pandoc";
  version = "3.1.1";
  sha256 = "d8bf5ca02a54b10bc0980848eb10697fa5c83d0c452a9afcea2ec823a9168537";
  configureFlags = [ "-f-trypandoc" ];
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    aeson aeson-pretty array attoparsec base base64 binary blaze-html
    blaze-markup bytestring case-insensitive citeproc commonmark
    commonmark-extensions commonmark-pandoc connection containers
    data-default deepseq directory doclayout doctemplates emojis
    exceptions file-embed filepath Glob gridtables haddock-library
    http-client http-client-tls http-types ipynb jira-wiki-markup
    JuicyPixels mime-types mtl network network-uri pandoc-types parsec
    pretty pretty-show process random safe scientific SHA skylighting
    skylighting-core split syb tagsoup temporary texmath text
    text-conversions time unicode-collation unicode-transforms unix xml
    xml-conduit xml-types yaml zip-archive zlib
  ];
  testHaskellDepends = [
    base bytestring containers Diff directory doctemplates filepath
    Glob mtl pandoc-types process tasty tasty-golden tasty-hunit
    tasty-quickcheck text time xml zip-archive
  ];
  benchmarkHaskellDepends = [
    base bytestring deepseq mtl tasty-bench text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  postInstall = ''
    mkdir -p $out/share/man/man1
    mv "man/"*.1 $out/share/man/man1/
  '';
  homepage = "https://pandoc.org";
  description = "Conversion between markup formats";
  license = lib.licenses.gpl2Plus;
  broken = false;
}