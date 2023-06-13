{ mkDerivation, Cabal, Cabal-QuickCheck, Cabal-described
, Cabal-syntax, Cabal-tree-diff, HTTP, QuickCheck, array, async
, base, base16-bytestring, binary, bytestring, cabal-install-solver
, containers, cryptohash-sha256, directory, echo, edit-distance
, exceptions, filepath, hackage-security, hashable, lib, lukko, mtl
, network-uri, parsec, pretty, pretty-show, process, random
, regex-base, regex-posix, resolv, safe-exceptions, stm, tagged
, tar, tasty, tasty-expected-failure, tasty-golden, tasty-hunit
, tasty-quickcheck, text, time, tree-diff, unix, zlib
}:
mkDerivation {
  pname = "cabal-install";
  version = "3.8.1.0";
  sha256 = "61ce436f2e14e12bf07ea1c81402362f46275014cd841a76566f0766d0ea67e6";
  revision = "3";
  editedCabalFile = "14l2jvyrzhgkmgkrkhmb6cb1vy4pgcg3q8dgyg8vszpm0mb1ws77";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array async base base16-bytestring binary bytestring Cabal
    cabal-install-solver Cabal-syntax containers cryptohash-sha256
    directory echo edit-distance exceptions filepath hackage-security
    hashable HTTP lukko mtl network-uri parsec pretty process random
    regex-base regex-posix resolv safe-exceptions stm tar text time
    unix zlib
  ];
  executableHaskellDepends = [
    base Cabal Cabal-syntax directory filepath
  ];
  testHaskellDepends = [
    array base bytestring Cabal Cabal-described cabal-install-solver
    Cabal-QuickCheck Cabal-syntax Cabal-tree-diff containers directory
    filepath hashable mtl network-uri pretty-show QuickCheck random
    tagged tar tasty tasty-expected-failure tasty-golden tasty-hunit
    tasty-quickcheck time tree-diff zlib
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  postInstall = ''
    mkdir -p $out/share/bash-completion
    mv bash-completion $out/share/bash-completion/completions
  '';
  homepage = "http://www.haskell.org/cabal/";
  description = "The command-line interface for Cabal and Hackage";
  license = lib.licenses.bsd3;
  broken = false;
}