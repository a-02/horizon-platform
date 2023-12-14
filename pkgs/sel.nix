{ mkDerivation, base, base16, bytestring, fetchzip, hedgehog, lib
, libsodium-bindings, tasty, tasty-hunit, text, text-display
}:
mkDerivation {
  pname = "sel";
  version = "0.0.1.0";
  src = fetchzip {
    url = "https://hackage.haskell.org/package/sel-0.0.1.0/candidate/sel-0.0.1.0.tar.gz";
    sha256 = "014gf4gi356ai6rc7k2vi7zvw8mzac7dg31rdpi4r3rw76hch3cm";
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base base16 bytestring libsodium-bindings text text-display
  ];
  testHaskellDepends = [
    base base16 bytestring hedgehog libsodium-bindings tasty
    tasty-hunit text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-cryptography/libsodium-bindings";
  description = "Cryptography for the casual user";
  license = lib.licenses.bsd3;
  broken = false;
}