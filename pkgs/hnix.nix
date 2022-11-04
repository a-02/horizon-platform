{ mkDerivation
, aeson
, array
, base
, base16-bytestring
, binary
, bytestring
, comonad
, containers
, criterion
, cryptonite
, data-fix
, deepseq
, deriving-compat
, Diff
, directory
, exceptions
, extra
, fetchgit
, filepath
, free
, gitrev
, Glob
, hashable
, hashing
, haskeline
, hedgehog
, hnix-store-core
, hnix-store-remote
, http-client
, http-client-tls
, http-types
, lens-family
, lens-family-core
, lens-family-th
, lib
, logict
, megaparsec
, monad-control
, monadlist
, mtl
, neat-interpolation
, optparse-applicative
, parser-combinators
, pretty-show
, prettyprinter
, process
, ref-tf
, regex-tdfa
, relude
, repline
, scientific
, semialign
, serialise
, some
, split
, syb
, tasty
, tasty-hedgehog
, tasty-hunit
, tasty-th
, template-haskell
, text
, th-lift-instances
, these
, time
, transformers
, transformers-base
, unix-compat
, unordered-containers
, vector
, xml
}:
mkDerivation {
  pname = "hnix";
  version = "0.16.0";
  src = fetchgit {
    url = "https://github.com/milloni/hnix";
    sha256 = "0k6dwf7aaigracwnjlvlbjcl4gb9xv3wqzzy293z2wpm3wsr02m3";
    rev = "005568ee024eabee129d9cf4ca331c6da260610b";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    array
    base
    base16-bytestring
    binary
    bytestring
    comonad
    containers
    cryptonite
    data-fix
    deepseq
    deriving-compat
    directory
    exceptions
    extra
    filepath
    free
    gitrev
    hashable
    hashing
    hnix-store-core
    hnix-store-remote
    http-client
    http-client-tls
    http-types
    lens-family
    lens-family-core
    lens-family-th
    logict
    megaparsec
    monad-control
    monadlist
    mtl
    neat-interpolation
    optparse-applicative
    parser-combinators
    pretty-show
    prettyprinter
    process
    ref-tf
    regex-tdfa
    relude
    scientific
    semialign
    serialise
    some
    split
    syb
    template-haskell
    text
    th-lift-instances
    these
    time
    transformers
    transformers-base
    unix-compat
    unordered-containers
    vector
    xml
  ];
  executableHaskellDepends = [
    aeson
    base
    comonad
    containers
    data-fix
    deepseq
    exceptions
    filepath
    free
    haskeline
    optparse-applicative
    pretty-show
    prettyprinter
    ref-tf
    relude
    repline
    serialise
    template-haskell
    time
  ];
  testHaskellDepends = [
    base
    containers
    data-fix
    Diff
    directory
    exceptions
    filepath
    Glob
    hedgehog
    megaparsec
    neat-interpolation
    optparse-applicative
    pretty-show
    prettyprinter
    process
    relude
    serialise
    split
    tasty
    tasty-hedgehog
    tasty-hunit
    tasty-th
    template-haskell
    time
    unix-compat
  ];
  benchmarkHaskellDepends = [
    base
    criterion
    data-fix
    exceptions
    filepath
    optparse-applicative
    relude
    serialise
    template-haskell
    time
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-nix/hnix#readme";
  description = "Haskell implementation of the Nix language";
  license = lib.licenses.bsd3;
  mainProgram = "hnix";
  broken = false;
}
