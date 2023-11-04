{ mkDerivation, base, boring, dec, deepseq, lib, some }:
mkDerivation {
  pname = "singleton-bool";
  version = "0.1.7";
  sha256 = "1c2d196386c3697e884fcc8bef530506045a4860a5f669cc8416358b473bb29b";
  revision = "1";
  editedCabalFile = "1aqdd1bzccj8fb2fy1la9gqxvgaa2prba4wig0bnrr5vz13f487c";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base boring dec deepseq some ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/phadej/singleton-bool#readme";
  description = "Type level booleans";
  license = lib.licenses.bsd3;
  broken = false;
}