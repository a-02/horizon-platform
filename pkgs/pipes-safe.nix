{ mkDerivation, base, containers, exceptions, lib, monad-control
, mtl, pipes, primitive, transformers, transformers-base
}:
mkDerivation {
  pname = "pipes-safe";
  version = "2.3.5";
  sha256 = "f0b2d191a8a86edd5efeadd2a3af785a0b889222720f27b2fbe69d54fc53d78e";
  revision = "2";
  editedCabalFile = "04yyjgqr81b10635bw0f2i5kfh0qzp7l3v9k9qbzskvlsl3kdyjy";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base containers exceptions monad-control mtl pipes primitive
    transformers transformers-base
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Safety for the pipes ecosystem";
  license = lib.licenses.bsd3;
  broken = false;
}