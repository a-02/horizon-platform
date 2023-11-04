{ mkDerivation, base, lib }:
mkDerivation {
  pname = "generic-lens-lite";
  version = "0.1";
  sha256 = "865db698880aa050641e43124ce2f3aed064e33c25d3aec85aa040e3e105e01f";
  revision = "5";
  editedCabalFile = "1mc7fp8z1zm4k7kl7d4abq73zfkzf19hdviq0gqzgcigyskj97zq";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [ base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/phadej/generic-lens-lite";
  description = "Monomorphic field lens like with generic-lens";
  license = lib.licenses.bsd3;
  broken = false;
}