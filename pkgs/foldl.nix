{ mkDerivation, base, bytestring, comonad, containers
, contravariant, criterion, doctest, hashable, lib, primitive
, profunctors, random, semigroupoids, text, transformers
, unordered-containers, vector
}:
mkDerivation {
  pname = "foldl";
  version = "1.4.14";
  sha256 = "8c056f8eea4b598aa584b7d752221e71b380ef675b97dd5d779fa12662560e46";
  revision = "1";
  editedCabalFile = "0v055cj7sw5xa7v0lm2gryfhj8nxhnjrs1zm9nnxyzgv2aivb8vc";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring comonad containers contravariant hashable primitive
    profunctors random semigroupoids text transformers
    unordered-containers vector
  ];
  testHaskellDepends = [ base doctest ];
  benchmarkHaskellDepends = [ base criterion ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Composable, streaming, and efficient left folds";
  license = lib.licenses.bsd3;
  broken = false;
}