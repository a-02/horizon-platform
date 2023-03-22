{ mkDerivation, base, containers, lib, relude, stm }:
mkDerivation {
  pname = "lvar";
  version = "0.1.0.0";
  sha256 = "6437b76048cb367f063b78071038e5bbdd947901777955fa60634b6d49de94c2";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base containers relude stm ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/srid/lvar";
  description = "TMVar that can be listened to";
  license = lib.licenses.bsd3;
  broken = false;
}