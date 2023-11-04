{ mkDerivation, Diff, aeson, aeson-pretty, async, base, bytestring
, deepseq, directory, exceptions, filepath, hedgehog, http-conduit
, lib, mmorph, mtl, network, process, resourcet, stm, tar
, temporary, text, time, transformers, unliftio
, unordered-containers, yaml, zlib
}:
mkDerivation {
  pname = "hedgehog-extras";
  version = "0.4.7.1";
  sha256 = "3d2954651c33f07ae9a4d13fb6a3bb55db99b9493f7f2dccce9516e8eaad360e";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson aeson-pretty async base bytestring deepseq Diff directory
    exceptions filepath hedgehog http-conduit mmorph mtl network
    process resourcet stm tar temporary text time transformers unliftio
    unordered-containers yaml zlib
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