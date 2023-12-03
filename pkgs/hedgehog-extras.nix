{ mkDerivation, Diff, aeson, aeson-pretty, async, base, bytestring
, deepseq, directory, exceptions, filepath, hedgehog, http-conduit
, lib, mmorph, mtl, network, process, resourcet, stm, tar
, temporary, text, time, transformers, unliftio, yaml, zlib
}:
mkDerivation {
  pname = "hedgehog-extras";
  version = "0.5.0.0";
  sha256 = "03e87bcbad70c8694c15dc5701e8af9bd18e18fcda8d67cb8dced99bebbb221e";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson aeson-pretty async base bytestring deepseq Diff directory
    exceptions filepath hedgehog http-conduit mmorph mtl network
    process resourcet stm tar temporary text time transformers unliftio
    yaml zlib
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Supplemental library for hedgehog";
  license = lib.licenses.asl20;
  broken = false;
}