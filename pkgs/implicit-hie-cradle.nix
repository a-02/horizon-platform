{ mkDerivation, base, directory, extra, filepath, hie-bios
, implicit-hie, lib, process, transformers
}:
mkDerivation {
  pname = "implicit-hie-cradle";
  version = "0.5.0.1";
  sha256 = "ee5623f8476e01c83dee8acbe5df4049613a5ff6b1831b00eec406c12785cae7";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base directory extra filepath hie-bios implicit-hie process
    transformers
  ];
  testHaskellDepends = [ base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/Avi-D-coder/implicit-hie-cradle#readme";
  description = "Auto generate hie-bios cradles";
  license = lib.licenses.bsd3;
  broken = false;
}