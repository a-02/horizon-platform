{ mkDerivation, array, base, containers, indexed-profunctors
, indexed-traversable, lib, transformers
}:
mkDerivation {
  pname = "optics-core";
  version = "0.4.1";
  sha256 = "ca64e215f31719482a9449b5d56fbd589367e639d2b1869f7965a3970442949a";
  revision = "1";
  editedCabalFile = "0sqwlbl6x0197bpkq7jvn9j5iwyr54z8qwmxbij6qlwjyfld2qxi";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array base containers indexed-profunctors indexed-traversable
    transformers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Optics as an abstract interface: core definitions";
  license = lib.licenses.bsd3;
  broken = false;
}