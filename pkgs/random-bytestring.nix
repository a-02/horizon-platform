{ mkDerivation, async, base, bytestring, criterion, cryptonite
, entropy, ghc-prim, lib, mwc-random, pcg-random, primitive, random
}:
mkDerivation {
  pname = "random-bytestring";
  version = "0.1.4";
  sha256 = "920c6feea2e360a96275993191cc89e72784a3787bf4ad7d53eff58e5f209638";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring mwc-random pcg-random ];
  benchmarkHaskellDepends = [
    async base bytestring criterion cryptonite entropy ghc-prim
    mwc-random pcg-random primitive random
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://www.github.com/larskuhtz/random-bytestring";
  description = "Efficient generation of random bytestrings";
  license = lib.licenses.mit;
  broken = false;
}