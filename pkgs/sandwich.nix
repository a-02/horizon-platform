{ mkDerivation
, aeson
, ansi-terminal
, async
, base
, brick
, bytestring
, colour
, containers
, directory
, exceptions
, filepath
, free
, haskell-src-exts
, lib
, lifted-async
, microlens
, microlens-th
, monad-control
, monad-logger
, mtl
, optparse-applicative
, pretty-show
, process
, safe
, safe-exceptions
, stm
, string-interpolate
, template-haskell
, text
, time
, transformers
, transformers-base
, unix
, unliftio-core
, vector
, vty
}:
mkDerivation {
  pname = "sandwich";
  version = "0.1.1.2";
  sha256 = "b8b1dd82e8cc776ce35bba22d4285fe2ad50fb512f7555703f00f7b782608aba";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    ansi-terminal
    async
    base
    brick
    bytestring
    colour
    containers
    directory
    exceptions
    filepath
    free
    haskell-src-exts
    lifted-async
    microlens
    microlens-th
    monad-control
    monad-logger
    mtl
    optparse-applicative
    pretty-show
    process
    safe
    safe-exceptions
    stm
    string-interpolate
    template-haskell
    text
    time
    transformers
    transformers-base
    unix
    unliftio-core
    vector
    vty
  ];
  executableHaskellDepends = [
    aeson
    ansi-terminal
    async
    base
    brick
    bytestring
    colour
    containers
    directory
    exceptions
    filepath
    free
    haskell-src-exts
    lifted-async
    microlens
    microlens-th
    monad-control
    monad-logger
    mtl
    optparse-applicative
    pretty-show
    process
    safe
    safe-exceptions
    stm
    string-interpolate
    template-haskell
    text
    time
    transformers
    transformers-base
    unix
    unliftio-core
    vector
    vty
  ];
  testHaskellDepends = [
    aeson
    ansi-terminal
    async
    base
    brick
    bytestring
    colour
    containers
    directory
    exceptions
    filepath
    free
    haskell-src-exts
    lifted-async
    microlens
    microlens-th
    monad-control
    monad-logger
    mtl
    optparse-applicative
    pretty-show
    process
    safe
    safe-exceptions
    stm
    string-interpolate
    template-haskell
    text
    time
    transformers
    transformers-base
    unix
    unliftio-core
    vector
    vty
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://codedownio.github.io/sandwich";
  description = "Yet another test framework for Haskell";
  license = lib.licenses.bsd3;
  broken = false;
}
