{ mkDerivation
, base
, doctest
, doctest-discover
, hedgehog
, lib
, vector
}:
mkDerivation {
  pname = "hw-hedgehog";
  version = "0.1.1.1";
  sha256 = "28aedae8da96c369ed7f81db7d9b00f00b975aa4058bf2dd36a6f49ded8b7a4e";
  revision = "2";
  editedCabalFile = "0c9wy5jmsmfwz151k9zxfsj5663zz3rsvmr0i9vsv5agw8fb8xhq";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base hedgehog vector ];
  testHaskellDepends = [ base doctest doctest-discover ];
  testToolDepends = [ doctest-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-works/hw-hedgehog#readme";
  description = "Extra hedgehog functionality";
  license = lib.licenses.bsd3;
  broken = false;
}
