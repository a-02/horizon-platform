let H =
      https://gitlab.homotopic.tech/horizon/horizon-spec/-/raw/0.4.2/dhall/package.dhall
        sha256:63d99b8dc5d0a7b25230dfde746003c5f4b30a607c89f6a104634062eec44503

let callHorizonAdopted
    : H.Name → H.Revision → H.HaskellPackage.Type
    = λ(name : H.Name) →
      λ(revision : H.Revision) →
        H.callGit
          ("https://gitlab.homotopic.tech/horizon/adopted/" ++ name)
          revision
          (None Text)

in  H.HorizonExport.MakePackageSet
      { packagesDir = "pkgs"
      , packageSetFile = "initial-packages.nix"
      , packageSet =
        { compiler = "ghc-9.4.2"
        , packages = toMap
            { Cabal = H.callHackage "Cabal" "3.8.1.0"
            , Cabal-QuickCheck =
                H.callGit
                  "https://gitlab.haskell.org/ghc/packages/Cabal"
                  "e9fdb85427ad1ef11a25c8b1f2286614c86a65ff"
                  (Some "Cabal-QuickCheck")
            , Cabal-described =
                H.callGit
                  "https://gitlab.haskell.org/ghc/packages/Cabal"
                  "e9fdb85427ad1ef11a25c8b1f2286614c86a65ff"
                  (Some "Cabal-described")
            , Cabal-syntax =
                H.callGit
                  "https://gitlab.haskell.org/ghc/packages/Cabal"
                  "e9fdb85427ad1ef11a25c8b1f2286614c86a65ff"
                  (Some "Cabal-syntax")
            , Cabal-tree-diff =
                H.callGit
                  "https://gitlab.haskell.org/ghc/packages/Cabal"
                  "e9fdb85427ad1ef11a25c8b1f2286614c86a65ff"
                  (Some "Cabal-tree-diff")
            , ChasingBottoms = H.callHackage "ChasingBottoms" "1.3.1.12"
            , Decimal = H.callHackage "Decimal" "0.5.2"
            , Diff = H.callHackage "Diff" "0.4.1"
            , Glob = H.callHackage "Glob" "0.10.2"
            , HTTP = H.callHackage "HTTP" "4000.4.1"
            , Hclip = H.callHackage "Hclip" "3.0.0.4"
            , HsYAML = H.callHackage "HsYAML" "0.2.1.1"
            , HUnit = H.callHackage "HUnit" "1.6.2.0"
            , ListLike = H.callHackage "ListLike" "4.7.7"
            , JuicyPixels = H.callHackage "JuicyPixels" "3.3.8"
            , MonadRandom = H.callHackage "MonadRandom" "0.5.3"
            , OneTuple = H.callHackage "OneTuple" "0.3.1"
            , Only = H.callHackage "Only" "0.1"
            , OpenGLRaw = H.callHackage "OpenGLRaw" "3.3.4.1"
            , PSQueue = H.callHackage "PSQueue" "1.1.1"
            , PyF = H.callHackage "PyF" "0.11.1.0"
            , QuickCheck = H.callHackage "QuickCheck" "2.14.2"
            , SHA = H.callHackage "SHA" "1.6.4.4"
            , StateVar = H.callHackage "StateVar" "1.2.2"
            , X11-xft = H.callHackage "X11-xft" "0.3.4"
            , X11 = H.callHackage "X11" "1.10.3"
            , abstract-deque = H.callHackage "abstract-deque" "0.3"
            , abstract-par = H.callHackage "abstract-par" "0.3.3"
            , adjunctions = H.callHackage "adjunctions" "4.4.2"
            , aeson = H.callHackage "aeson" "2.1.0.0"
            , aeson-pretty = H.callHackage "aeson-pretty" "0.8.9"
            , aeson-yaml = H.callHackage "aeson-yaml" "1.1.0.1"
            , alex = H.callHackage "alex" "3.2.7.1"
            , algebraic-graphs = H.callHackage "algebraic-graphs" "0.7"
            , alsa-core = H.callHackage "alsa-core" "0.5.0.1"
            , alsa-mixer = H.callHackage "alsa-mixer" "0.3.0"
            , ansi-terminal = H.callHackage "ansi-terminal" "0.11.3"
            , ansi-wl-pprint = H.callHackage "ansi-wl-pprint" "0.6.9"
            , appar = H.callHackage "appar" "0.1.8"
            , apecs = H.callHackage "apecs" "0.9.4"
            , asn1-encoding = H.callHackage "asn1-encoding" "0.9.6"
            , asn1-parse = H.callHackage "asn1-parse" "0.9.5"
            , asn1-types = H.callHackage "asn1-types" "0.3.4"
            , assoc = H.callHackage "assoc" "1.0.2"
            , async = H.callHackage "async" "2.2.4"
            , atomic-primops = H.callHackage "atomic-primops" "0.8.4"
            , atomic-write = H.callHackage "atomic-write" "0.2.0.7"
            , attoparsec-binary = H.callHackage "attoparsec-binary" "0.2"
            , attoparsec-iso8601 = H.callHackage "attoparsec-iso8601" "1.1.0.0"
            , attoparsec = H.callHackage "attoparsec" "0.14.4"
            , auto-update = H.callHackage "auto-update" "0.1.6"
            , autodocodec = H.callHackage "autodocodec" "0.2.0.1"
            , autodocodec-schema = H.callHackage "autodocodec-schema" "0.1.0.2"
            , autodocodec-servant-multipart =
                H.callHackage "autodocodec-servant-multipart" "0.0.0.0"
            , autodocodec-yaml = H.callHackage "autodocodec-yaml" "0.2.0.2"
            , barbies = H.callHackage "barbies" "2.0.3.1"
            , base-orphans = H.callHackage "base-orphans" "0.8.7"
            , basement = H.callHackage "basement" "0.0.15"
            , base16-bytestring = H.callHackage "base16-bytestring" "1.0.2.0"
            , base64-bytestring = H.callHackage "base64-bytestring" "1.2.1.0"
            , base64 = H.callHackage "base64" "0.4.2.4"
            , base-compat = H.callHackage "base-compat" "0.12.2"
            , base-compat-batteries =
                H.callHackage "base-compat-batteries" "0.12.2"
            , bifunctors = H.callHackage "bifunctors" "5.5.13"
            , bimap = H.callHackage "bimap" "0.5.0"
            , binary-orphans = H.callHackage "binary-orphans" "1.0.3"
            , bitvec = H.callHackage "bitvec" "1.1.3.0"
            , blaze-builder = H.callHackage "blaze-builder" "0.4.2.2"
            , blaze-html = H.callHackage "blaze-html" "0.9.1.2"
            , blaze-markup = H.callHackage "blaze-markup" "0.8.2.8"
            , blaze-textual = H.callHackage "blaze-textual" "0.2.2.1"
            , boring = H.callHackage "boring" "0.2"
            , breakpoint = H.callHackage "breakpoint" "0.1.1.1"
            , brick = H.callHackage "brick" "1.3"
            , bsb-http-chunked = H.callHackage "bsb-http-chunked" "0.0.0.4"
            , byteable = H.callHackage "byteable" "0.1.1"
            , byteorder = H.callHackage "byteorder" "1.0.4"
            , bytestring-builder =
                H.callHackage "bytestring-builder" "0.10.8.2.0"
            , bytes = H.callHackage "bytes" "0.17.2"
            , c2hs = H.callHackage "c2hs" "0.28.8"
            , cabal-doctest = H.callHackage "cabal-doctest" "1.0.9"
            , cabal-install = H.callHackage "cabal-install" "3.8.1.0"
            , cabal-install-solver =
                H.callHackage "cabal-install-solver" "3.8.1.0"
            , cabal2nix =
                H.callGit
                  "https://github.com/NixOS/cabal2nix"
                  "8e97f51e4bd4e5b9ff79391aa599ed8547771954"
                  (Some "cabal2nix")
            , cache = H.callHackage "cache" "0.1.3.0"
            , call-stack = H.callHackage "call-stack" "0.4.0"
            , case-insensitive = H.callHackage "case-insensitive" "1.2.1.0"
            , cassava = H.callHackage "cassava" "0.5.3.0"
            , cassava-megaparsec = H.callHackage "cassava-megaparsec" "2.0.4"
            , cborg = H.callHackage "cborg" "0.2.8.0"
            , cborg-json = H.callHackage "cborg-json" "0.2.5.0"
            , cereal-vector = H.callHackage "cereal-vector" "0.2.0.1"
            , cereal = H.callHackage "cereal" "0.5.8.3"
            , charset = H.callHackage "charset" "0.3.9"
            , checkers = H.callHackage "checkers" "0.6.0"
            , chell-quickcheck = H.callHackage "chell-quickcheck" "0.2.5.3"
            , chell = H.callHackage "chell" "0.5.0.1"
            , citeproc = H.callHackage "citeproc" "0.8.0.1"
            , clock = H.callHackage "clock" "0.8.3"
            , cmdargs = H.callHackage "cmdargs" "0.10.21"
            , co-log-core = H.callHackage "co-log-core" "0.3.1.0"
            , co-log-polysemy = H.callHackage "co-log-polysemy" "0.0.1.3"
            , code-page = H.callHackage "code-page" "0.2.1"
            , colour = H.callHackage "colour" "2.3.6"
            , colourista = H.callHackage "colourista" "0.1.0.1"
            , commonmark-extensions =
                H.callHackage "commonmark-extensions" "0.2.3.3"
            , commonmark-pandoc = H.callHackage "commonmark-pandoc" "0.2.1.2"
            , commonmark = H.callHackage "commonmark" "0.2.2"
            , comonad = H.callHackage "comonad" "5.0.8"
            , compactable =
                H.callGit
                  "https://gitlab.com/fresheyeball/Compactable"
                  "f63927b1e438c267f0d12f36e5b3735cfaebeeb4"
                  (None Text)
            , compact = H.callHackage "compact" "0.2.0.0"
            , composite-base = H.callHackage "composite-base" "0.8.1.0"
            , composite-cassava = H.callHackage "composite-cassava" "0.0.3.1"
            , composite-dhall = H.callHackage "composite-dhall" "0.1.0.1"
            , composite-lens-extra =
                H.callHackage "composite-lens-extra" "0.1.0.0"
            , composite-tuple = H.callHackage "composite-tuple" "0.1.2.0"
            , concurrent-output = H.callHackage "concurrent-output" "1.10.16"
            , conduit = H.callHackage "conduit" "1.3.4.2"
            , conduit-extra = H.callHackage "conduit-extra" "1.3.6"
            , config-ini = H.callHackage "config-ini" "0.2.5.0"
            , connection = H.callHackage "connection" "0.3.1"
            , constraints-extras = H.callHackage "constraints-extras" "0.3.2.1"
            , constraints = H.callHackage "constraints" "0.13.4"
            , contravariant = H.callHackage "contravariant" "1.5.5"
            , control-monad-free = H.callHackage "control-monad-free" "0.6.2"
            , cookie = H.callHackage "cookie" "0.4.5"
            , cpphs = H.callHackage "cpphs" "1.20.9.1"
            , criterion-measurement =
                H.callHackage "criterion-measurement" "0.2.0.0"
            , criterion = H.callHackage "criterion" "1.5.13.0"
            , csv =
                callHorizonAdopted
                  "csv"
                  "d02b89bbad79136b52fd1197f087466cf51573dd"
            , cursor-brick = H.callHackage "cursor-brick" "0.1.0.1"
            , curor-dirforest =
                H.callGit
                  "https://github.com/NorfairKing/cursor-dirforest"
                  "6ad5b168e26eb4e647df9f007d812aaf59338d40"
                  (Some "cursor-dirforest")
            , cursor-dirforest-brick =
                H.callGit
                  "https://github.com/NorfairKing/cursor-dirforest"
                  "6ad5b168e26eb4e647df9f007d812aaf59338d40"
                  (Some "cursor-dirforest-brick")
            , cursor-dirforest-gen =
                H.callGit
                  "https://github.com/NorfairKing/cursor-dirforest"
                  "6ad5b168e26eb4e647df9f007d812aaf59338d40"
                  (Some "cursor-dirforest-gen")
            , cursor-gen = H.callHackage "cursor-gen" "0.4.0.0"
            , cursor = H.callHackage "cursor" "0.3.2.0"
            , cryptonite = H.callHackage "cryptonite" "0.30"
            , cryptohash-md5 = H.callHackage "cryptohash-md5" "0.11.101.0"
            , cryptohash-sha1 = H.callHackage "cryptohash-sha1" "0.11.101.0"
            , cryptohash-sha256 = H.callHackage "cryptohash-sha256" "0.11.102.1"
            , cryptohash = H.callHackage "cryptohash" "0.11.9"
            , crypto-api-tests = H.callHackage "crypto-api-tests" "0.3"
            , crypto-api = H.callHackage "crypto-api" "0.13.3"
            , daemons = H.callHackage "daemons" "0.3.0"
            , data-binary-ieee754 = H.callHackage "data-binary-ieee754" "0.4.4"
            , data-clist = H.callHackage "data-clist" "0.2"
            , data-default-class = H.callHackage "data-default-class" "0.1.2.0"
            , data-default-instances-containers =
                H.callHackage "data-default-instances-containers" "0.0.1"
            , data-default-instances-dlist =
                H.callHackage "data-default-instances-dlist" "0.0.1"
            , data-default-instances-old-locale =
                H.callHackage "data-default-instances-old-locale" "0.0.1"
            , data-default = H.callHackage "data-default" "0.7.1.1"
            , data-fix = H.callHackage "data-fix" "0.3.2"
            , data-sketches = H.callHackage "data-sketches" "0.3.1.0"
            , data-sketches-core = H.callHackage "data-sketches-core" "0.1.0.0"
            , dec = H.callHackage "dec" "0.0.5"
            , deepseq-generics = H.callHackage "deepseq-generics" "0.2.0.0"
            , dense-linear-algebra =
                H.callHackage "dense-linear-algebra" "0.1.0.0"
            , dependent-map = H.callHackage "dependent-map" "0.4.0.0"
            , dependent-sum = H.callHackage "dependent-sum" "0.7.1.0"
            , derp = H.callHackage "derp" "0.1.6"
            , deriving-aeson = H.callHackage "deriving-aeson" "0.2.8"
            , dhall = H.callHackage "dhall" "1.41.2"
            , dhall-json = H.callHackage "dhall-json" "1.7.11"
            , digest = H.callHackage "digest" "0.0.1.3"
            , dimensional = H.callHackage "dimensional" "1.5"
            , direct-sqlite = H.callHackage "direct-sqlite" "2.3.27"
            , dirforest =
                H.callGit
                  "https://github.com/NorfairKing/dirforest"
                  "69e8ae036b047fae105c1fe990e175a7572a3eba"
                  (Some "dirforest")
            , distribution-nixpkgs =
                H.callHackage "distribution-nixpkgs" "1.7.0"
            , distributive = H.callHackage "distributive" "0.6.2.1"
            , dlist = H.callHackage "dlist" "1.0"
            , doclayout = H.callHackage "doclayout" "0.4"
            , doctest-exitcode-stdio =
                H.callHackage "doctest-exitcode-stdio" "0.0"
            , doctest-lib = H.callHackage "doctest-lib" "0.1"
            , doctest =
                H.callGit
                  "https://github.com/sol/doctest"
                  "4eb97c213acf7abe965a3a1b67397199ed155f3c"
                  (None Text)
            , doctemplates = H.callHackage "doctemplates" "0.10.0.2"
            , doctest-parallel = H.callHackage "doctest-parallel" "0.2.5"
            , dotgen = H.callHackage "dotgen" "0.4.3"
            , double-conversion =
                H.callGit
                  "https://github.com/haskell/double-conversion"
                  "5d092e0664442eaac8ae1d101dba57ce9b1c9b03"
                  (None Text)
            , easy-file = H.callHackage "easy-file" "0.2.2"
            , echo = H.callHackage "echo" "0.1.4"
            , ed25519 =
                H.callGit
                  "https://gitlab.homotopic.tech/horizon/adopted/ed25519"
                  "faf8fe90aa1cd2492ea1e64c55f5c59fc0322210"
                  (None Text)
            , edit-distance = H.callHackage "edit-distance" "0.2.2.1"
            , either = H.callHackage "either" "5.0.2"
            , email-validate = H.callHackage "email-validate" "2.3.2.16"
            , effectful-cache =
                H.callGit
                  "https://github.com/haskell-effectful/cache-effectful"
                  "0a5581da7c21a05a9ab1762a6da6997090fe311d"
                  (None Text)
            , effectful-core = H.callHackage "effectful-core" "2.1.0.0"
            , effectful-th = H.callHackage "effectful-th" "1.0.0.0"
            , effectful = H.callHackage "effectful" "2.1.0.0"
            , emojis = H.callHackage "emojis" "0.1.2"
            , enclosed-exceptions = H.callHackage "enclosed-exceptions" "1.0.3"
            , entropy = H.callHackage "entropy" "0.4.1.10"
            , envparse = H.callHackage "envparse" "0.5.0"
            , erf = H.callHackage "erf" "2.0.0.0"
            , exact-pi = H.callHackage "exact-pi" "0.5.0.2"
            , extensible-effects = H.callHackage "extensible-effects" "5.0.0.1"
            , extensible-exceptions =
                H.callHackage "extensible-exceptions" "0.1.1.4"
            , extra = H.callHackage "extra" "1.7.12"
            , expiring-cache-map = H.callHackage "expiring-cache-map" "0.0.6.1"
            , fail = H.callHackage "fail" "4.9.0.0"
            , fast-logger = H.callHackage "fast-logger" "3.1.1"
            , fcf-containers = H.callHackage "fcf-containers" "0.7.1"
            , feedback = H.callHackage "feedback" "0.1.0.1"
            , file-embed-lzma = H.callHackage "file-embed-lzma" "0.0.1"
            , file-embed = H.callHackage "file-embed" "0.0.15.0"
            , filemanip = H.callHackage "filemanip" "0.3.6.3"
            , filepattern = H.callHackage "filepattern" "0.1.3"
            , filtrable = H.callHackage "filtrable" "0.1.6.0"
            , fingertree-psqueue =
                H.callGit
                  "https://gitlab.homotopic.tech/horizon/adopted/fingertree-psqueue"
                  "d466b18e18d706dc1373ed2894c1e20ea2826329"
                  (None Text)
            , fingertree = H.callHackage "fingertree" "0.1.5.0"
            , finite-field = H.callHackage "finite-field" "0.10.0"
            , first-class-families =
                H.callHackage "first-class-families" "0.8.0.1"
            , fin = H.callHackage "fin" "0.2.1"
            , fixed = H.callHackage "fixed" "0.3"
            , fmlist = H.callHackage "fmlist" "0.9.4"
            , foldl = H.callHackage "foldl" "1.4.12"
            , foreign-store = H.callHackage "foreign-store" "0.2"
            , formatting = H.callHackage "formatting" "7.1.3"
            , foundation = H.callHackage "foundation" "0.0.29"
            , free = H.callHackage "free" "5.1.9"
            , freer-simple = H.callHackage "freer-simple" "1.2.1.2"
            , friendly-time = H.callHackage "friendly-time" "0.4.1"
            , fsnotify = H.callHackage "fsnotify" "0.4.1.0"
            , fuzzy-time = H.callHackage "fuzzy-time" "0.2.0.3"
            , generically = H.callHackage "generically" "0.1"
            , generic-deriving = H.callHackage "generic-deriving" "1.14.2"
            , generic-lens-core = H.callHackage "generic-lens-core" "2.2.1.0"
            , generic-lens-lite = H.callHackage "generic-lens-lite" "0.1"
            , generic-monoid = H.callHackage "generic-monoid" "0.1.0.1"
            , generic-optics-lite = H.callHackage "generic-optics-lite" "0.1"
            , generic-optics = H.callHackage "generic-optics" "2.2.1.0"
            , generic-random = H.callHackage "generic-random" "1.5.0.1"
            , generics-sop = H.callHackage "generics-sop" "0.5.1.2"
            , genvalidity = H.callHackage "genvalidity" "1.1.0.0"
            , genvalidity-aeson = H.callHackage "genvalidity-aeson" "1.0.0.1"
            , genvalidity-bytestring =
                H.callHackage "genvalidity-bytestring" "1.0.0.1"
            , genvalidity-case-insensitive =
                H.callHackage "genvalidity-case-insensitive" "0.0.0.1"
            , genvalidity-containers =
                H.callHackage "genvalidity-containers" "1.0.0.1"
            , genvalidity-criterion =
                H.callHackage "genvalidity-criterion" "1.1.0.0"
            , genvalidity-dirforest =
                H.callGit
                  "https://github.com/NorfairKing/dirforest"
                  "69e8ae036b047fae105c1fe990e175a7572a3eba"
                  (Some "genvalidity-dirforest")
            , genvalidity-hspec = H.callHackage "genvalidity-hspec" "1.0.0.2"
            , genvalidity-hspec-aeson =
                H.callHackage "genvalidity-hspec-aeson" "1.0.0.0"
            , genvalidity-hspec-optics =
                H.callHackage "genvalidity-hspec-optics" "1.0.0.0"
            , genvalidity-path = H.callHackage "genvalidity-path" "1.0.0.1"
            , genvalidity-persistent =
                H.callHackage "genvalidity-persistent" "1.0.0.1"
            , genvalidity-property =
                H.callHackage "genvalidity-property" "1.0.0.0"
            , genvalidity-scientific =
                H.callHackage "genvalidity-scientific" "1.0.0.0"
            , genvalidity-sydtest =
                H.callHackage "genvalidity-sydtest" "1.0.0.0"
            , genvalidity-sydtest-aeson =
                H.callHackage "genvalidity-sydtest-aeson" "1.0.0.0"
            , genvalidity-sydtest-hashable =
                H.callHackage "genvalidity-sydtest-hashable" "1.0.0.0"
            , genvalidity-sydtest-lens =
                H.callHackage "genvalidity-sydtest-lens" "1.0.0.0"
            , genvalidity-sydtest-persistent =
                H.callHackage "genvalidity-sydtest-persistent" "1.0.0.0"
            , genvalidity-text = H.callHackage "genvalidity-text" "1.0.0.1"
            , genvalidity-time = H.callHackage "genvalidity-time" "1.0.0.1"
            , genvalidity-unordered-containers =
                H.callHackage "genvalidity-unordered-containers" "1.0.0.0"
            , genvalidity-uuid = H.callHackage "genvalidity-uuid" "1.0.0.1"
            , genvalidity-vector = H.callHackage "genvalidity-vector" "1.0.0.0"
            , ghc-byteorder = H.callHackage "ghc-byteorder" "4.11.0.0.10"
            , ghc-check = H.callHackage "ghc-check" "0.5.0.8"
            , ghc-exactprint = H.callHackage "ghc-exactprint" "1.6.0"
            , ghc-lib-parser = H.callHackage "ghc-lib-parser" "9.4.2.20220822"
            , ghc-lib-parser-ex = H.callHackage "ghc-lib-parser-ex" "9.4.0.0"
            , ghc-paths = H.callHackage "ghc-paths" "0.1.0.12"
            , ghc-tcplugins-extra = H.callHackage "ghc-tcplugins-extra" "0.4.3"
            , ghc-typelits-knownnat =
                H.callHackage "ghc-typelits-knownnat" "0.7.7"
            , ghc-typelits-natnormalise =
                H.callHackage "ghc-typelits-natnormalise" "0.7.7"
            , ghcid = H.callHackage "ghcid" "0.8.8"
            , githash = H.callHackage "githash" "0.1.6.3"
            , gitrev = H.callHackage "gitrev" "1.3.1"
            , gridtables = H.callHackage "gridtables" "0.1.0.0"
            , groups = H.callHackage "groups" "0.5.3"
            , hackage-db = H.callHackage "hackage-db" "2.1.2"
            , hackage-security = H.callHackage "hackage-security" "0.6.2.2"
            , haddock-library = H.callHackage "haddock-library" "1.11.0"
            , half = H.callHackage "half" "0.3.1"
            , happy = H.callHackage "happy" "1.20.0"
            , hashable = H.callHackage "hashable" "1.4.1.0"
            , hashing = H.callHackage "hashing" "0.1.0.1"
            , hashmap = H.callHackage "hashmap" "1.3.3"
            , hashtables = H.callHackage "hashtables" "1.3"
            , haskell-lexer = H.callHackage "haskell-lexer" "1.1"
            , haskell-src-exts = H.callHackage "haskell-src-exts" "1.23.1"
            , haskell-src-meta = H.callHackage "haskell-src-meta" "0.8.11"
            , heaps = H.callHackage "heaps" "0.4"
            , hedgehog-golden =
                H.callGit
                  "https://github.com/maybe-hedgehog-later/hedgehog-golden"
                  "4ab2906b3f0be5e31ee5a8585e45d43392694246"
                  (None Text)
            , hedgehog = H.callHackage "hedgehog" "1.2"
            , hie-bios = H.callHackage "hie-bios" "0.11.0"
            , hie-compat = H.callHackage "hie-compat" "0.3.0.0"
            , hinotify = H.callHackage "hinotify" "0.4.1"
            , hledger-lib = H.callHackage "hledger-lib" "1.27.1"
            , hledger = H.callHackage "hledger" "1.27.1"
            , hlint = H.callHackage "hlint" "3.5"
            , hopenssl = H.callHackage "hopenssl" "2.2.4"
            , horizon-gen-nix = H.callHackage "horizon-gen-nix" "0.4.0"
            , horizon-spec = H.callHackage "horizon-spec" "0.4.1"
            , hosc = H.callHackage "hosc" "0.19.1"
            , hostname = H.callHackage "hostname" "1.0"
            , hourglass = H.callHackage "hourglass" "0.2.12"
            , hpack-dhall = H.callHackage "hpack-dhall" "0.5.7"
            , hpack = H.callHackage "hpack" "0.35.0"
            , hscolour = H.callHackage "hscolour" "1.24.4"
            , hslua-aeson = H.callHackage "hslua-aeson" "2.2.1"
            , hslua-core = H.callHackage "hslua-core" "2.2.1"
            , hslua-classes = H.callHackage "hslua-classes" "2.2.0"
            , hslua-marshalling = H.callHackage "hslua-marshalling" "2.2.1"
            , hslua-module-doclayout =
                H.callHackage "hslua-module-doclayout" "1.0.4"
            , hslua-module-path = H.callHackage "hslua-module-path" "1.0.3"
            , hslua-module-system = H.callHackage "hslua-module-system" "1.0.2"
            , hslua-module-text = H.callHackage "hslua-module-text" "1.0.2"
            , hslua-module-version =
                H.callHackage "hslua-module-version" "1.0.3"
            , hslua-objectorientation =
                H.callHackage "hslua-objectorientation" "2.2.1"
            , hslua-packaging = H.callHackage "hslua-packaging" "2.2.1"
            , hslua = H.callHackage "hslua" "2.2.1"
            , hspec-contrib = H.callHackage "hspec-contrib" "0.5.1.1"
            , hspec-core = H.callHackage "hspec-core" "2.10.0.1"
            , hspec-discover = H.callHackage "hspec-discover" "2.10.0.1"
            , hspec-expectations-lifted =
                H.callHackage "hspec-expectations-lifted" "0.10.0"
            , hspec-expectations = H.callHackage "hspec-expectations" "0.8.2"
            , hspec-hedgehog = H.callHackage "hspec-hedgehog" "0.0.1.2"
            , hspec-megaparsec = H.callHackage "hspec-megaparsec" "2.2.0"
            , hspec-meta = H.callHackage "hspec-meta" "2.9.3"
            , hspec-smallcheck = H.callHackage "hspec-smallcheck" "0.5.3"
            , hspec-wai = H.callHackage "hspec-wai" "0.11.1"
            , hspec = H.callHackage "hspec" "2.10.3"
            , html = H.callHackage "html" "1.0.1.2"
            , httpd-shed = H.callHackage "httpd-shed" "0.4.1.1"
            , http-api-data = H.callHackage "http-api-data" "0.5"
            , http-client-tls = H.callHackage "http-client-tls" "0.3.6.1"
            , http-client = H.callHackage "http-client" "0.7.13.1"
            , http-conduit = H.callHackage "http-conduit" "2.3.8"
            , http-date = H.callHackage "http-date" "0.0.11"
            , http-media = H.callHackage "http-media" "0.8.0.0"
            , http-types = H.callHackage "http-types" "0.12.3"
            , http2 = H.callHackage "http2" "3.0.3"
            , ieee754 = H.callHackage "ieee754" "0.8.0"
            , incipit-base = H.callHackage "incipit-base" "0.3.0.0"
            , incipit-core = H.callHackage "incipit-core" "0.3.0.0"
            , indexed-profunctors = H.callHackage "indexed-profunctors" "0.1.1"
            , indexed-traversable-instances =
                H.callHackage "indexed-traversable-instances" "0.1.1.1"
            , indexed-traversable = H.callHackage "indexed-traversable" "0.1.2"
            , infer-license = H.callHackage "infer-license" "0.2.0"
            , ini = H.callHackage "ini" "0.4.2"
            , insert-ordered-containers =
                H.callHackage "insert-ordered-containers" "0.2.5.1"
            , inspection-testing = H.callHackage "inspection-testing" "0.5"
            , integer-logarithms = H.callHackage "integer-logarithms" "1.0.3.1"
            , interpolate = H.callHackage "interpolate" "0.2.1"
            , invariant = H.callHackage "invariant" "0.6"
            , ipynb = H.callHackage "ipynb" "0.2"
            , iproute = H.callHackage "iproute" "1.7.12"
            , jira-wiki-markup = H.callHackage "jira-wiki-markup" "1.4.0"
            , js-chart = H.callHackage "js-chart" "2.9.4.1"
            , js-dgtable = H.callHackage "js-dgtable" "0.5.2"
            , js-flot = H.callHackage "js-flot" "0.8.3"
            , js-jquery = H.callHackage "js-jquery" "3.3.1"
            , kan-extensions = H.callHackage "kan-extensions" "5.2.5"
            , keys = H.callHackage "keys" "3.12.3"
            , kvstore-effectful =
                H.callGit
                  "https://github.com/haskell-effectful/kvstore-effectful"
                  "3502825423aea3a1af9384e9d751feea4599c60b"
                  (Some "kvstore-effectful")
            , kvstore-effectful-cache =
                H.callGit
                  "https://github.com/haskell-effectful/kvstore-effectful"
                  "3502825423aea3a1af9384e9d751feea4599c60b"
                  (Some "kvstore-effectful-cache")
            , kvstore-effectful-spec =
                H.callGit
                  "https://github.com/haskell-effectful/kvstore-effectful"
                  "3502825423aea3a1af9384e9d751feea4599c60b"
                  (Some "kvstore-effectful-spec")
            , kvstore-effectful-statemap =
                H.callGit
                  "https://github.com/haskell-effectful/kvstore-effectful"
                  "3502825423aea3a1af9384e9d751feea4599c60b"
                  (Some "kvstore-effectful-statemap")
            , language-c = H.callHackage "language-c" "0.9.1"
            , language-haskell-extract =
                H.callGit
                  "https://github.com/chessai/template-helper"
                  "f654f1e7ef47c591bb5ea23f1234289f99d09d05"
                  (None Text)
            , language-nix = H.callHackage "language-nix" "2.2.0"
            , lens-aeson = H.callHackage "lens-aeson" "1.2.1"
            , lens-family-core = H.callHackage "lens-family-core" "2.1.2"
            , lens-family-th = H.callHackage "lens-family-th" "0.5.2.1"
            , lens = H.callHackage "lens" "5.2"
            , libsodium = H.callHackage "libsodium" "1.0.18.2"
            , libxml = H.callHackage "libxml" "0.1.1"
            , libyaml = H.callHackage "libyaml" "0.1.2"
            , lift-type = H.callHackage "lift-type" "0.1.0.1"
            , lifted-async = H.callHackage "lifted-async" "0.10.2.1"
            , lifted-base = H.callHackage "lifted-base" "0.2.3.12"
            , linear = H.callHackage "linear" "1.21.10"
            , logging-facade = H.callHackage "logging-facade" "0.3.1"
            , logict = H.callHackage "logict" "0.8.0.0"
            , log-base = H.callHackage "log-base" "0.12.0.0"
            , log-effectful =
                H.callGit
                  "https://github.com/haskell-effectful/log-effectful/"
                  "910c79e10d5ac3353f2a1551103a2b63229c3f57"
                  (None Text)
            , lpeg = H.callHackage "lpeg" "1.0.3"
            , lsp-types = H.callHackage "lsp-types" "1.6.0.0"
            , lsp = H.callHackage "lsp" "1.6.0.0"
            , lua-arbitrary = H.callHackage "lua-arbitrary" "1.0.1"
            , lua = H.callHackage "lua" "2.2.1"
            , lucid-alpine = H.callHackage "lucid-alpine" "0.1.0.7"
            , lucid-aria = H.callHackage "lucid-aria" "0.1.0.1"
            , lucid-svg = H.callHackage "lucid-svg" "0.7.1"
            , lucid = H.callHackage "lucid" "2.11.1"
            , lukko = H.callHackage "lukko" "0.1.1.3"
            , lzma = H.callHackage "lzma" "0.0.0.4"
            , neat-interpolation = H.callHackage "neat-interpolation" "0.5.1.3"
            , net-mqtt = H.callHackage "net-mqtt" "0.8.2.2"
            , managed = H.callHackage "managed" "1.0.9"
            , markdown-unlit = H.callHackage "markdown-unlit" "0.5.1"
            , math-functions = H.callHackage "math-functions" "0.3.4.2"
            , megaparsec = H.callHackage "megaparsec" "9.2.2"
            , memory = H.callHackage "memory" "0.18.0"
            , mersenne-random = H.callHackage "mersenne-random" "1.0.0.1"
            , microlens-aeson = H.callHackage "microlens-aeson" "2.5.0"
            , microlens-ghc = H.callHackage "microlens-ghc" "0.4.14.0"
            , microlens-mtl = H.callHackage "microlens-mtl" "0.2.0.2"
            , microlens-platform = H.callHackage "microlens-platform" "0.4.3.2"
            , microlens-th = H.callHackage "microlens-th" "0.4.3.10"
            , microlens = H.callHackage "microlens" "0.4.13.0"
            , microspec = H.callHackage "microspec" "0.2.1.3"
            , microstache = H.callHackage "microstache" "1.0.2.2"
            , mime-types = H.callHackage "mime-types" "0.1.1.0"
            , mmorph = H.callHackage "mmorph" "1.2.0"
            , mockery = H.callHackage "mockery" "0.3.5"
            , mod = H.callHackage "mod" "0.1.2.2"
            , monads-tf = H.callHackage "monads-tf" "0.1.0.3"
            , monad-control = H.callHackage "monad-control" "1.0.3.1"
            , monad-logger = H.callHackage "monad-logger" "0.3.37"
            , monad-loops = H.callHackage "monad-loops" "0.4.3"
            , monad-time = H.callHackage "monad-time" "0.4.0.0"
            , monad-parallel = H.callHackage "monad-parallel" "0.8"
            , monad-par-extras = H.callHackage "monad-par-extras" "0.3.3"
            , monad-par = H.callHackage "monad-par" "0.3.5"
            , monad-peel = H.callHackage "monad-peel" "0.2.1.2"
            , mono-traversable = H.callHackage "mono-traversable" "1.0.15.3"
            , monoid-subclasses = H.callHackage "monoid-subclasses" "1.1.3"
            , mtl-compat = H.callHackage "mtl-compat" "0.2.2"
            , mwc-random = H.callHackage "mwc-random" "0.15.0.2"
            , nanospec = H.callHackage "nanospec" "0.2.2"
            , nats = H.callHackage "nats" "1.1.2"
            , natural-transformation =
                H.callHackage "natural-transformation" "0.4"
            , network-bsd = H.callHackage "network-bsd" "2.8.1.0"
            , network-byte-order = H.callHackage "network-byte-order" "0.1.6"
            , network-conduit-tls = H.callHackage "network-conduit-tls" "1.3.2"
            , network-info = H.callHackage "network-info" "0.2.1"
            , network-run = H.callHackage "network-run" "0.2.4"
            , network-uri = H.callHackage "network-uri" "2.6.4.1"
            , network = H.callHackage "network" "3.1.2.7"
            , newtype-generics = H.callHackage "newtype-generics" "0.6.2"
            , nothunks = H.callHackage "nothunks" "0.1.3"
            , numtype-dk = H.callHackage "numtype-dk" "0.5.0.3"
            , odd-jobs =
                H.callGit
                  "https://github.com/saurabhnanda/odd-jobs"
                  "f6c7bbbcdb383d2eb487ad7fe427ec05a747c14f"
                  (None Text)
            , old-locale = H.callHackage "old-locale" "1.0.0.7"
            , old-time = H.callHackage "old-time" "1.1.0.3"
            , optics-core = H.callHackage "optics-core" "0.4.1"
            , optics-extra = H.callHackage "optics-extra" "0.4.2.1"
            , optics-th = H.callHackage "optics-th" "0.4.1"
            , optics = H.callHackage "optics" "0.4.2"
            , optional-args = H.callHackage "optional-args" "1.0.2"
            , options = H.callHackage "options" "1.2.1.1"
            , optparse-applicative =
                H.callHackage "optparse-applicative" "0.17.0.0"
            , ordered-containers = H.callHackage "ordered-containers" "0.2.3"
            , pandoc-lua-marshal = H.callHackage "pandoc-lua-marshal" "0.1.7"
            , pandoc-types = H.callHackage "pandoc-types" "1.22.2.1"
            , pandoc = H.callHackage "pandoc" "2.19.2"
            , parallel = H.callHackage "parallel" "3.2.2.0"
            , parsec-class = H.callHackage "parsec-class" "1.0.0.0"
            , parsec = H.callHackage "parsec" "3.1.15.1"
            , parsers-megaparsec = H.callHackage "parsers-megaparsec" "0.1.0.1"
            , parsers = H.callHackage "parsers" "0.12.11"
            , parser-combinators = H.callHackage "parser-combinators" "1.3.0"
            , password-types = H.callHackage "password-types" "1.0.0.0"
            , password = H.callHackage "password" "3.0.2.0"
            , path-dhall-instance =
                H.callHackage "path-dhall-instance" "0.2.1.0"
            , path-pieces = H.callHackage "path-pieces" "0.2.1"
            , path-io = H.callHackage "path-io" "1.7.0"
            , path = H.callHackage "path" "0.9.2"
            , patience = H.callHackage "patience" "0.3"
            , pcg-random = H.callHackage "pcg-random" "0.1.3.7"
            , pcre-light = H.callHackage "pcre-light" "0.4.1.0"
            , pcre2 = H.callHackage "pcre2" "2.2.1"
            , pem = H.callHackage "pem" "0.2.4"
            , persistent-template =
                H.callHackage "persistent-template" "2.12.0.0"
            , persistent = H.callHackage "persistent" "2.14.3.0"
            , pipes = H.callHackage "pipes" "4.3.16"
            , pg-entity = H.callHackage "pg-entity" "0.0.2.0"
            , pg-transact = H.callHackage "pg-transact" "0.3.2.0"
            , pg-transact-effectful =
                H.callGit
                  "https://github.com/Kleidukos/pg-transact-effectful"
                  "45730b124c7c21f1dcfd85667fda1c19b8ec9723"
                  (None Text)
            , pgp-wordlist = H.callHackage "pgp-wordlist" "0.1.0.3"
            , pointed = H.callHackage "pointed" "5.0.4"
            , polyparse = H.callHackage "polyparse" "1.13"
            , polysemy-extra = H.callHackage "polysemy-extra" "0.2.1.0"
            , polysemy-kvstore = H.callHackage "polysemy-kvstore" "0.1.3.0"
            , polysemy-methodology =
                H.callHackage "polysemy-methodology" "0.2.1.0"
            , polysemy-path = H.callHackage "polysemy-path" "0.2.1.0"
            , polysemy-plugin =
                H.callGit
                  "https://github.com/locallycompact/polysemy"
                  "bd944ca000c1ca69602d4723e3859af431b9d0c4"
                  (Some "polysemy-plugin")
            , polysemy-several = H.callHackage "polysemy-several" "0.1.1.0"
            , polysemy-test = H.callHackage "polysemy-test" "0.6.0.0"
            , polysemy-time = H.callHackage "polysemy-time" "0.5.1.0"
            , polysemy-vinyl = H.callHackage "polysemy-vinyl" "0.1.5.0"
            , polysemy-zoo = H.callHackage "polysemy-zoo" "0.8.0.0"
            , polysemy = H.callHackage "polysemy" "1.7.1.0"
            , port-utils = H.callHackage "port-utils" "0.2.1.0"
            , postgresql-libpq = H.callHackage "postgresql-libpq" "0.9.4.3"
            , postgresql-migration =
                H.callHackage "postgresql-migration" "0.2.1.4"
            , postgresql-simple = H.callHackage "postgresql-simple" "0.6.4"
            , postgresql-simple-migration =
                H.callHackage "postgresql-simple-migration" "0.1.15.0"
            , postgres-options = H.callHackage "postgres-options" "0.2.0.0"
            , pretty-hex = H.callHackage "pretty-hex" "1.1"
            , pretty-show = H.callHackage "pretty-show" "1.10"
            , pretty-simple = H.callHackage "pretty-simple" "4.1.1.0"
            , prettyprinter-ansi-terminal =
                H.callHackage "prettyprinter-ansi-terminal" "1.1.3"
            , prettyprinter = H.callHackage "prettyprinter" "1.7.1"
            , primes = H.callHackage "primes" "0.2.1.0"
            , primitive = H.callHackage "primitive" "0.7.4.0"
            , primitive-addr = H.callHackage "primitive-addr" "0.1.0.2"
            , procex = H.callHackage "procex" "0.3.3"
            , profunctors = H.callHackage "profunctors" "5.6.2"
            , prometheus-client = H.callHackage "prometheus-client" "1.1.0"
            , prometheus-proc = H.callHackage "prometheus-proc" "0.1.4.0"
            , process-extras = H.callHackage "process-extras" "0.7.4"
            , proteaaudio-sdl = H.callHackage "proteaaudio-sdl" "0.9.2"
            , psqueues = H.callHackage "psqueues" "0.2.7.3"
            , pureMD5 = H.callHackage "pureMD5" "2.1.4"
            , quickcheck-assertions =
                H.callHackage "quickcheck-assertions" "0.3.0"
            , quickcheck-classes-base =
                H.callHackage "quickcheck-classes-base" "0.6.2.0"
            , quickcheck-classes = H.callHackage "quickcheck-classes" "0.6.5.0"
            , quickcheck-dynamic = H.callHackage "quickcheck-dynamic" "2.0.0"
            , quickcheck-instances =
                H.callHackage "quickcheck-instances" "0.3.28"
            , quickcheck-io = H.callHackage "quickcheck-io" "0.2.0"
            , quickcheck-text = H.callHackage "quickcheck-text" "0.1.2.1"
            , quickcheck-unicode = H.callHackage "quickcheck-unicode" "1.0.1.0"
            , random-bytestring = H.callHackage "random-bytestring" "0.1.4"
            , random-shuffle = H.callHackage "random-shuffle" "0.0.4"
            , random = H.callHackage "random" "1.2.1.1"
            , raw-strings-qq = H.callHackage "raw-strings-qq" "1.1"
            , rdtsc = H.callHackage "rdtsc" "1.3.0.1"
            , rebase = H.callHackage "rebase" "1.16"
            , reducers = H.callHackage "reducers" "3.12.4"
            , refact = H.callHackage "refact" "0.3.0.2"
            , regex-applicative = H.callHackage "regex-applicative" "0.3.4"
            , regex-base = H.callHackage "regex-base" "0.94.0.2"
            , regex-compat = H.callHackage "regex-compat" "0.95.2.1"
            , regex-pcre-builtin =
                H.callHackage "regex-pcre-builtin" "0.95.2.3.8.44"
            , regex-posix = H.callHackage "regex-posix" "0.96.0.1"
            , regex-tdfa = H.callHackage "regex-tdfa" "1.3.2"
            , refined = H.callHackage "refined" "0.8"
            , reflection = H.callHackage "reflection" "2.1.6"
            , relude = H.callHackage "relude" "1.1.0.0"
            , replace-megaparsec = H.callHackage "replace-megaparsec" "1.4.5.0"
            , repline = H.callHackage "repline" "0.4.2.0"
            , rerebase = H.callHackage "rerebase" "1.15.0.3"
            , rere = H.callHackage "rere" "0.2"
            , resolv = H.callHackage "resolv" "0.1.2.0"
            , resource-pool = H.callHackage "resource-pool" "0.3.1.0"
            , resourcet = H.callHackage "resourcet" "1.3.0"
            , retry = H.callHackage "retry" "0.9.3.0"
            , rope-utf16-splay = H.callHackage "rope-utf16-splay" "0.4.0.0"
            , safe-coloured-text-layout =
                H.callHackage "safe-coloured-text-layout" "0.0.0.0"
            , safe-coloured-text-terminfo =
                H.callHackage "safe-coloured-text-terminfo" "0.1.0.0"
            , safe-coloured-text = H.callHackage "safe-coloured-text" "0.2.0.1"
            , safe-exceptions = H.callHackage "safe-exceptions" "0.1.7.3"
            , safe = H.callHackage "safe" "0.3.19"
            , saltine = H.callHackage "saltine" "0.2.0.1"
            , sandwich = H.callHackage "sandwich" "0.1.1.2"
            , scotty = H.callHackage "scotty" "0.12"
            , scientific = H.callHackage "scientific" "0.3.7.0"
            , sdl2 = H.callHackage "sdl2" "2.5.3.3"
            , sdl2-gfx = H.callHackage "sdl2-gfx" "0.3.0.0"
            , sdl2-image = H.callHackage "sdl2-image" "2.1.0.0"
            , sdl2-mixer = H.callHackage "sdl2-mixer" "1.2.0.0"
            , sdl2-ttf = H.callHackage "sdl2-ttf" "2.1.3"
            , selective = H.callHackage "selective" "0.5"
            , semialign = H.callHackage "semialign" "1.2.0.1"
            , semigroups = H.callHackage "semigroups" "0.20"
            , semigroupoids = H.callHackage "semigroupoids" "5.3.7"
            , semirings = H.callHackage "semirings" "0.6"
            , serialise = H.callHackage "serialise" "0.2.6.0"
            , servant =
                H.callGit
                  "https://github.com/TeofilC/servant"
                  "76fc90a51f915230bbe1e0d1dbe9727fcdc7a0fc"
                  (Some "servant")
            , servant-blaze = H.callHackage "servant-blaze" "0.9.1"
            , servant-client-core =
                H.callGit
                  "https://github.com/TeofilC/servant"
                  "76fc90a51f915230bbe1e0d1dbe9727fcdc7a0fc"
                  (Some "servant-client-core")
            , servant-client =
                H.callGit
                  "https://github.com/TeofilC/servant"
                  "76fc90a51f915230bbe1e0d1dbe9727fcdc7a0fc"
                  (Some "servant-client")
            , servant-docs = H.callHackage "servant-docs" "0.12"
            , servant-effectful =
                H.callGit
                  "https://github.com/kleidukos/servant-effectful"
                  "65e3041c6cfbc315b20ad22ca18f61dda104eec8"
                  (None Text)
            , servant-foreign =
                H.callGit
                  "https://github.com/TeofilC/servant"
                  "76fc90a51f915230bbe1e0d1dbe9727fcdc7a0fc"
                  (Some "servant-foreign")
            , servant-lucid = H.callHackage "servant-lucid" "0.9.0.5"
            , servant-multipart = H.callHackage "servant-multipart" "0.12.1"
            , servant-multipart-api =
                H.callHackage "servant-multipart-api" "0.12.1"
            , servant-polysemy = H.callHackage "servant-polysemy" "0.1.3"
            , servant-server =
                H.callGit
                  "https://github.com/TeofilC/servant"
                  "76fc90a51f915230bbe1e0d1dbe9727fcdc7a0fc"
                  (Some "servant-server")
            , servant-swagger = H.callHackage "servant-swagger" "1.1.11"
            , servant-swagger-ui =
                H.callHackage "servant-swagger-ui" "0.3.5.4.5.0"
            , servant-swagger-ui-core =
                H.callHackage "servant-swagger-ui-core" "0.3.5"
            , servant-static-th = H.callHackage "servant-static-th" "1.0.0.0"
            , setenv = H.callHackage "setenv" "0.1.1.3"
            , setlocale = H.callHackage "setlocale" "1.0.0.10"
            , shakespeare = H.callHackage "shakespeare" "2.0.30"
            , shake = H.callHackage "shake" "0.19.6"
            , shelly = H.callHackage "shelly" "1.10.0"
            , shh = H.callHackage "shh" "0.7.2.0"
            , should-not-typecheck =
                H.callHackage "should-not-typecheck" "2.1.0"
            , silently = H.callHackage "silently" "1.2.5.3"
            , simple-reflect = H.callHackage "simple-reflect" "0.3.3"
            , simple-sendfile = H.callHackage "simple-sendfile" "0.2.30"
            , singleton-bool = H.callHackage "singleton-bool" "0.1.6"
            , singletons = H.callHackage "singletons" "3.0.2"
            , slugify = H.callHackage "slugify" "0.1.0.1"
            , skylighting = H.callHackage "skylighting" "0.13.1.1"
            , skylighting-core = H.callHackage "skylighting-core" "0.13.1.1"
            , skylighting-format-ansi =
                H.callHackage "skylighting-format-ansi" "0.1"
            , skylighting-format-blaze-html =
                H.callHackage "skylighting-format-blaze-html" "0.1"
            , skylighting-format-latex =
                H.callHackage "skylighting-format-latex" "0.1"
            , smallcheck = H.callHackage "smallcheck" "1.2.1"
            , socks = H.callHackage "socks" "0.6.1"
            , some = H.callHackage "some" "1.0.4"
            , sop-core = H.callHackage "sop-core" "0.5.0.1"
            , sorted-list = H.callHackage "sorted-list" "0.2.1.0"
            , souffle-haskell = H.callHackage "souffle-haskell" "3.5.0"
            , special-values = H.callHackage "special-values" "0.1.0.0"
            , splitmix = H.callHackage "splitmix" "0.1.0.4"
            , split = H.callHackage "split" "0.2.3.3"
            , spoon = H.callHackage "spoon" "0.3.1"
            , sqlite-simple = H.callHackage "sqlite-simple" "0.4.18.2"
            , statistics = H.callHackage "statistics" "0.16.1.0"
            , stm-chans = H.callHackage "stm-chans" "3.0.0.6"
            , streaming-commons = H.callHackage "streaming-commons" "0.2.2.4"
            , streaming = H.callHackage "streaming" "0.2.3.1"
            , store-core = H.callHackage "store-core" "0.4.4.4"
            , store = H.callHackage "store" "0.7.16"
            , strict = H.callHackage "strict" "0.4.0.1"
            , string-conversions = H.callHackage "string-conversions" "0.4.0.1"
            , string-conv = H.callHackage "string-conv" "0.2.0"
            , string-interpolate = H.callHackage "string-interpolate" "0.3.1.2"
            , string-qq = H.callHackage "string-qq" "0.0.4"
            , stringbuilder = H.callHackage "stringbuilder" "0.5.1"
            , stringsearch = H.callHackage "stringsearch" "0.3.6.6"
            , swagger2 = H.callHackage "swagger2" "2.8.5"
            , syb = H.callHackage "syb" "0.7.2.1"
            , sydtest = H.callHackage "sydtest" "0.13.0.0"
            , sydtest-discover = H.callHackage "sydtest-discover" "0.0.0.2"
            , system-filepath = H.callHackage "system-filepath" "0.4.14"
            , tabular = H.callHackage "tabular" "0.2.2.8"
            , tagged = H.callHackage "tagged" "0.8.6.1"
            , tagsoup = H.callHackage "tagsoup" "0.14.8"
            , tar =
                H.callGit
                  "https://github.com/locallycompact/tar"
                  "107c0b78524acfd0e77e767b83073492008bea0c"
                  (None Text)
            , tasty =
                H.callGit
                  "https://github.com/UnkindPartition/tasty"
                  "2core =07d3453a64b414593512c1e968171d64a8dbe61"
                  (Some "core")
            , tasty-bench = H.callHackage "tasty-bench" "0.3.2"
            , tasty-discover = H.callHackage "tasty-discover" "5.0.0"
            , tasty-expected-failure =
                H.callHackage "tasty-expected-failure" "0.12.3"
            , tasty-golden = H.callHackage "tasty-golden" "2.3.5"
            , tasty-hedgehog =
                H.callGit
                  "https://github.com/locallycompact/tasty-hedgehog"
                  "4a3477578ed21aa82e5b74f387d08e5d750635d6"
                  (None Text)
            , tasty-hslua = H.callHackage "tasty-hslua" "1.0.2"
            , tasty-hspec = H.callHackage "tasty-hspec" "1.2.0.1"
            , tasty-hunit =
                H.callGit
                  "https://github.com/UnkindPartition/tasty-hunit"
                  "207d3453a64b414593512c1e968171d64a8dbe61"
                  (Some "hunit")
            , tasty-inspection-testing =
                H.callHackage "tasty-inspection-testing" "0.2"
            , tasty-kat = H.callHackage "tasty-kat" "0.0.3"
            , tasty-lua = H.callHackage "tasty-lua" "1.0.2"
            , tasty-silver = H.callHackage "tasty-silver" "3.3.1.1"
            , tasty-smallcheck = H.callHackage "tasty-smallcheck" "0.8.2"
            , tasty-th = H.callHackage "tasty-th" "0.1.7"
            , tasty-quickcheck = H.callHackage "tasty-quickcheck" "0.10.2"
            , tasty-wai = H.callHackage "tasty-wai" "0.1.2.0"
            , tdigest = H.callHackage "tdigest" "0.2.1.1"
            , temporary = H.callHackage "temporary" "1.3"
            , terminal-size = H.callHackage "terminal-size" "0.3.3"
            , test-framework = H.callHackage "test-framework" "0.8.2.0"
            , test-framework-hunit =
                H.callHackage "test-framework-hunit" "0.3.0.2"
            , test-framework-th = H.callHackage "test-framework-th" "0.2.4"
            , test-framework-quickcheck2 =
                H.callHackage "test-framework-quickcheck2" "0.3.0.5"
            , test-framework-smallcheck =
                H.callHackage "test-framework-smallcheck" "0.2"
            , texmath = H.callHackage "texmath" "0.12.5.4"
            , text-conversions = H.callHackage "text-conversions" "0.3.1.1"
            , text-display = H.callHackage "text-display" "0.0.3.0"
            , text-icu = H.callHackage "text-icu" "0.8.0.2"
            , text-manipulate = H.callHackage "text-manipulate" "0.3.1.0"
            , text-metrics = H.callHackage "text-metrics" "0.3.2"
            , text-rope = H.callHackage "text-rope" "0.2"
            , text-short = H.callHackage "text-short" "0.1.5"
            , text-zipper = H.callHackage "text-zipper" "0.12"
            , these = H.callHackage "these" "1.1.1.1"
            , these-skinny = H.callHackage "these-skinny" "0.7.5"
            , tf-random = H.callHackage "tf-random" "0.5"
            , th-abstraction = H.callHackage "th-abstraction" "0.4.5.0"
            , th-compat = H.callHackage "th-compat" "0.1.4"
            , th-env = H.callHackage "th-env" "0.1.1"
            , th-expand-syns = H.callHackage "th-expand-syns" "0.4.10.0"
            , th-extras = H.callHackage "th-extras" "0.0.0.6"
            , th-lift-instances = H.callHackage "th-lift-instances" "0.1.20"
            , th-lift = H.callHackage "th-lift" "0.8.2"
            , th-orphans = H.callHackage "th-orphans" "0.13.14"
            , th-reify-many = H.callHackage "th-reify-many" "0.1.10"
            , th-utilities = H.callHackage "th-utilities" "0.2.5.0"
            , tidal = H.callHackage "tidal" "1.8.1"
            , timing-convenience = H.callHackage "timing-convenience" "0.1"
            , timeit = H.callHackage "timeit" "2.0"
            , time-compat = H.callHackage "time-compat" "1.9.6.1"
            , time-effectful =
                H.callGit
                  "https://github.com/haskell-effectful/time-effectful"
                  "e212239b685e1ecf7ee95dd1e944cc563351907f"
                  (None Text)
            , time-manager = H.callHackage "time-manager" "0.0.0"
            , tls-session-manager = H.callHackage "tls-session-manager" "0.0.4"
            , tls = H.callHackage "tls" "1.6.0"
            , tmp-postgres = H.callHackage "tmp-postgres" "1.34.1.0"
            , torsor = H.callHackage "torsor" "0.1"
            , transformers-base = H.callHackage "transformers-base" "0.4.6"
            , transformers-compat = H.callHackage "transformers-compat" "0.7.2"
            , tree-diff = H.callHackage "tree-diff" "0.2.2"
            , trifecta = H.callHackage "trifecta" "2.1.2"
            , tuple = H.callHackage "tuple" "0.3.0.2"
            , turtle = H.callHackage "turtle" "1.6.1"
            , typed-process = H.callHackage "typed-process" "0.2.10.1"
            , type-errors-pretty = H.callHackage "type-errors-pretty" "0.0.1.2"
            , type-errors = H.callHackage "type-errors" "0.2.0.0"
            , type-equality = H.callHackage "type-equality" "1"
            , typerep-map =
                H.callGit
                  "https://github.com/parsonsmatt/typerep-map"
                  "75b7cd5d45986be07420a6821d352ad2adc0b697"
                  (None Text)
            , uglymemo = H.callHackage "uglymemo" "0.1.0.1"
            , unagi-chan = H.callHackage "unagi-chan" "0.4.1.4"
            , unbounded-delays = H.callHackage "unbounded-delays" "0.1.1.1"
            , unicode-collation = H.callHackage "unicode-collation" "0.1.3.2"
            , unicode-data = H.callHackage "unicode-data" "0.4.0"
            , unicode-transforms = H.callHackage "unicode-transforms" "0.4.0.1"
            , uniplate = H.callHackage "uniplate" "1.6.13"
            , universe-base = H.callHackage "universe-base" "1.1.3"
            , unix-compat = H.callHackage "unix-compat" "0.6"
            , unix-memory = H.callHackage "unix-memory" "0.1.2"
            , unix-time = H.callHackage "unix-time" "0.4.8"
            , unliftio-core = H.callHackage "unliftio-core" "0.2.0.1"
            , unliftio = H.callHackage "unliftio" "0.2.23.0"
            , unordered-containers =
                H.callHackage "unordered-containers" "0.2.19.1"
            , uri-bytestring = H.callHackage "uri-bytestring" "0.3.3.1"
            , uri-encode = H.callHackage "uri-encode" "1.5.0.7"
            , utf8-string = H.callHackage "utf8-string" "1.0.2"
            , utility-ht = H.callHackage "utility-ht" "0.0.16"
            , uuid-types = H.callHackage "uuid-types" "1.0.5"
            , uuid = H.callHackage "uuid" "1.3.15"
            , validity = H.callHackage "validity" "0.12.0.1"
            , validity-aeson = H.callHackage "validity-aeson" "0.2.0.5"
            , validity-bytestring =
                H.callHackage "validity-bytestring" "0.4.1.1"
            , validity-case-insensitive =
                H.callHackage "validity-case-insensitive" "0.0.0.0"
            , validity-containers =
                H.callHackage "validity-containers" "0.5.0.4"
            , validity-path = H.callHackage "validity-path" "0.4.0.1"
            , validity-persistent =
                H.callHackage "validity-persistent" "0.0.0.0"
            , validity-primitive = H.callHackage "validity-primitive" "0.0.0.1"
            , validity-scientific =
                H.callHackage "validity-scientific" "0.2.0.3"
            , validity-text = H.callHackage "validity-text" "0.3.1.3"
            , validity-time = H.callHackage "validity-time" "0.5.0.0"
            , validity-unordered-containers =
                H.callHackage "validity-unordered-containers" "0.2.0.3"
            , validity-uuid = H.callHackage "validity-uuid" "0.1.0.3"
            , validity-vector = H.callHackage "validity-vector" "0.2.0.3"
            , vault = H.callHackage "vault" "0.3.1.5"
            , vector = H.callHackage "vector" "0.13.0.0"
            , vector-algorithms = H.callHackage "vector-algorithms" "0.9.0.1"
            , vector-binary-instances =
                H.callHackage "vector-binary-instances" "0.2.5.2"
            , vector-instances = H.callHackage "vector-instances" "3.4"
            , vector-stream = H.callHackage "vector-stream" "0.1.0.0"
            , vector-th-unbox = H.callHackage "vector-th-unbox" "0.2.2"
            , vec = H.callHackage "vec" "0.4.1"
            , vinyl = H.callHackage "vinyl" "0.14.3"
            , void = H.callHackage "void" "0.7.3"
            , vty = H.callHackage "vty" "5.37"
            , wai-app-static = H.callHackage "wai-app-static" "3.1.7.4"
            , wai-conduit = H.callHackage "wai-conduit" "3.0.0.4"
            , wai-extra = H.callHackage "wai-extra" "3.1.13.0"
            , wai-middleware-heartbeat =
                H.callGit
                  "https://github.com/flora-pm/wai-middleware-heartbeat"
                  "bd7dbbe83d25c00fcd2cf5c77736af904910c596"
                  (None Text)
            , wai-logger = H.callHackage "wai-logger" "2.4.0"
            , wai-middleware-static =
                H.callHackage "wai-middleware-static" "0.9.2"
            , wai = H.callHackage "wai" "3.2.3"
            , warp = H.callHackage "warp" "3.3.22"
            , warp-tls = H.callHackage "warp-tls" "3.3.3"
            , websockets = H.callHackage "websockets" "0.12.7.3"
            , weigh = H.callHackage "weigh" "0.0.16"
            , witherable = H.callHackage "witherable" "0.4.2"
            , with-utf8 = H.callHackage "with-utf8" "1.0.2.3"
            , wizards = H.callHackage "wizards" "1.0.3"
            , wl-pprint-annotated =
                H.callHackage "wl-pprint-annotated" "0.1.0.1"
            , word-wrap = H.callHackage "word-wrap" "0.5"
            , word8 = H.callHackage "word8" "0.1.3"
            , x509-store = H.callHackage "x509-store" "1.6.9"
            , x509-system = H.callHackage "x509-system" "1.6.7"
            , x509-validation = H.callHackage "x509-validation" "1.6.12"
            , x509 = H.callHackage "x509" "1.7.7"
            , xml-conduit = H.callHackage "xml-conduit" "1.9.1.1"
            , xml-types = H.callHackage "xml-types" "0.3.8"
            , xml = H.callHackage "xml" "1.3.14"
            , xmonad-contrib = H.callHackage "xmonad-contrib" "0.17.1"
            , xmonad = H.callHackage "xmonad" "0.17.1"
            , yaml = H.callHackage "yaml" "0.11.8.0"
            , zip-archive = H.callHackage "zip-archive" "0.4.2.2"
            , zlib = H.callHackage "zlib" "0.6.3.0"
            }
        }
      }
