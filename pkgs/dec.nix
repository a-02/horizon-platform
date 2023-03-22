{ mkDerivation, base, boring, lib }:
mkDerivation {
  pname = "dec";
  version = "0.0.5";
  sha256 = "e18043c7c7e68168489f164921a02efede0c0175a5012ed5451ec2242338df88";
  revision = "1";
  editedCabalFile = "1vng67drg2y9vjg6106q4lcz0kf2f2kl4qrrnl76kmk6z9a9kakh";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base boring ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/phadej/dec";
  description = "Decidable propositions";
  license = lib.licenses.bsd3;
  broken = false;
}