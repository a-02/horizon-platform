{ mkDerivation
, base
, blaze-html
, bytestring
, containers
, data-default
, deepseq
, lib
, mtl
, syb
, text
, uniplate
, xss-sanitize
}:
mkDerivation {
  pname = "cheapskate";
  version = "0.1.1.2";
  sha256 = "ed374897c39391fcf760552e6468def39fe36c3185708ca83056660ca3a2c69e";
  revision = "1";
  editedCabalFile = "15hdlp062gv8x7giwcfbj1kfmhpj1bg7y2w4wr2yl436haxkrbmq";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    blaze-html
    containers
    data-default
    deepseq
    mtl
    syb
    text
    uniplate
    xss-sanitize
  ];
  executableHaskellDepends = [ base blaze-html bytestring text ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/jgm/cheapskate";
  description = "Experimental markdown processor";
  license = lib.licenses.bsd3;
  broken = false;
}
