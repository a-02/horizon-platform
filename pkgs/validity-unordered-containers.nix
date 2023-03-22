{ mkDerivation, base, hashable, lib, unordered-containers, validity
}:
mkDerivation {
  pname = "validity-unordered-containers";
  version = "0.2.0.3";
  sha256 = "f20d6b20b9695379f3478b357cd7c0968c3726ef4336eb0c652b84a34e332a87";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base hashable unordered-containers validity
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/NorfairKing/validity#readme";
  description = "Validity instances for unordered-containers";
  license = lib.licenses.mit;
  broken = false;
}