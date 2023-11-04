{ mkDerivation, array, base, bytestring, containers, hashable
, indexed-profunctors, indexed-traversable-instances, lib, mtl
, optics-core, text, transformers, unordered-containers, vector
}:
mkDerivation {
  pname = "optics-extra";
  version = "0.4.2.1";
  sha256 = "7e23a7a325e3448354614d3d958279c9ac2fdd0831ceee2808830e7a962fca41";
  revision = "1";
  editedCabalFile = "0bpr1bkb7mmww028n8ikwa0qhdl7ybxpb9s887dlp3dvxr5iq8nq";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array base bytestring containers hashable indexed-profunctors
    indexed-traversable-instances mtl optics-core text transformers
    unordered-containers vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Extra utilities and instances for optics-core";
  license = lib.licenses.bsd3;
  broken = false;
}