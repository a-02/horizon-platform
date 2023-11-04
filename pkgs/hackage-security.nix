{ mkDerivation, Cabal, Cabal-syntax, QuickCheck, aeson, base
, base16-bytestring, base64-bytestring, bytestring, containers
, cryptohash-sha256, directory, ed25519, filepath, ghc-prim, lib
, lukko, mtl, network, network-uri, parsec, pretty, tar, tasty
, tasty-hunit, tasty-quickcheck, template-haskell, temporary, text
, time, transformers, unordered-containers, vector, zlib
}:
mkDerivation {
  pname = "hackage-security";
  version = "0.6.2.3";
  sha256 = "52ee0576971955571d846b8e6c09638f89f4f7881f4a95173e44ccc0d856a066";
  revision = "8";
  editedCabalFile = "1gzk9hrq0rv94msbvnkynzj5pnh94ixray8dl639zr29qh55cbib";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base base16-bytestring base64-bytestring bytestring Cabal
    Cabal-syntax containers cryptohash-sha256 directory ed25519
    filepath ghc-prim lukko mtl network network-uri parsec pretty tar
    template-haskell time transformers zlib
  ];
  testHaskellDepends = [
    aeson base bytestring Cabal Cabal-syntax containers network-uri
    QuickCheck tar tasty tasty-hunit tasty-quickcheck temporary text
    time unordered-containers vector zlib
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell/hackage-security";
  description = "Hackage security library";
  license = lib.licenses.bsd3;
  broken = false;
}