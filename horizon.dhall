let H =
      https://gitlab.horizon-haskell.net/dhall/horizon-spec/-/raw/0.10.0/horizon-spec/package.dhall

let packages =
      { BNFC = H.callHackage "BNFC" "2.9.5"
      , Boolean = H.callHackage "Boolean" "0.2.4"
      , Decimal = H.callHackage "Decimal" "0.5.2"
      , HTTP = H.callHackage "HTTP" "4000.4.1"
      , HUnit = H.callHackage "HUnit" "1.6.2.0"
      , HaskellNet = H.callHackage "HaskellNet" "0.6.1.2"
      , Hclip = H.callHackage "Hclip" "3.0.0.4"
      , HsOpenSSL = H.callHackage "HsOpenSSL" "0.11.7.6"
      , HsYAML = H.callHackage "HsYAML" "0.2.1.3"
      , ListLike = H.callHackage "ListLike" "4.7.8.2"
      , MemoTrie = H.callHackage "MemoTrie" "0.6.11"
      , MonadPrompt = H.callHackage "MonadPrompt" "1.0.0.5"
      , NumInstances = H.callHackage "NumInstances" "1.4"
      , OpenGLRaw = H.callHackage "OpenGLRaw" "3.3.4.1"
      , PSQueue = H.callHackage "PSQueue" "1.2.0"
      , PyF = H.callHackage "PyF" "0.11.2.1"
      , QuickCheck = H.callHackage "QuickCheck" "2.14.3"
      , RSA = H.callHackage "RSA" "2.4.1"
      , Stream = H.callHackage "Stream" "0.4.7.2"
      , Unique = H.callHackage "Unique" "0.4.7.9"
      , X11 = H.callHackage "X11" "1.10.3"
      , X11-xft = H.callHackage "X11-xft" "0.3.4"
      , abstract-deque-tests = H.callHackage "abstract-deque-tests" "0.3"
      , active = H.callHackage "active" "0.2.0.18"
      , aeson-qq = H.callHackage "aeson-qq" "0.8.4"
      , aeson-yaml = H.callHackage "aeson-yaml" "1.1.0.1"
      , alex = H.callHackage "alex" "3.4.0.1"
      , algebraic-graphs = H.callHackage "algebraic-graphs" "0.7"
      , alsa-core = H.callHackage "alsa-core" "0.5.0.1"
      , alsa-mixer = H.callHackage "alsa-mixer" "0.3.0"
      , ap-normalize = H.callHackage "ap-normalize" "0.1.0.1"
      , apecs = H.callHackage "apecs" "0.9.5"
      , async-timer = H.callHackage "async-timer" "0.2.0.0"
      , attoparsec-binary = H.callHackage "attoparsec-binary" "0.2"
      , attoparsec-iso8601 = H.callHackage "attoparsec-iso8601" "1.1.0.1"
      , authenticate-oauth = H.callHackage "authenticate-oauth" "1.7"
      , autodocodec-servant-multipart =
          H.callHackage "autodocodec-servant-multipart" "0.0.0.0"
      , autoexporter = H.callHackage "autoexporter" "2.0.0.9"
      , base-prelude = H.callHackage "base-prelude" "1.6.1.1"
      , base58-bytestring = H.callHackage "base58-bytestring" "0.1.0"
      , base64 = H.callHackage "base64" "0.4.2.4"
      , base64-bytestring = H.callHackage "base64-bytestring" "1.2.1.0"
      , base64-bytestring-type = H.callHackage "base64-bytestring-type" "1.0.1"
      , beam-core = H.callHackage "beam-core" "0.10.1.0"
      , beam-migrate = H.callHackage "beam-migrate" "0.5.2.1"
      , beam-postgres = H.callHackage "beam-postgres" "0.5.3.1"
      , beam-sqlite = H.callHackage "beam-sqlite" "0.5.3.0"
      , bech32 = H.callHackage "bech32" "1.1.4"
      , bech32-th = H.callHackage "bech32-th" "1.1.1"
      , bin = H.callHackage "bin" "0.1.3"
      , binary-parser = H.callHackage "binary-parser" "0.5.7.4"
      , blaze-svg = H.callHackage "blaze-svg" "0.3.7"
      , blaze-textual = H.callHackage "blaze-textual" "0.2.3.1"
      , breakpoint = H.callHackage "breakpoint" "0.1.3.0"
      , bytestring-strict-builder =
          H.callHackage "bytestring-strict-builder" "0.4.5.7"
      , bytestring-tree-builder =
          H.callHackage "bytestring-tree-builder" "0.2.7.11"
      , c2hs = H.callHackage "c2hs" "0.28.8"
      , cabal-fmt = H.callHackage "cabal-fmt" "0.1.9"
      , cache = H.callHackage "cache" "0.1.3.0"
      , canonical-json = H.callHackage "canonical-json" "0.6.0.1"
      , casing = H.callHackage "casing" "0.1.4.1"
      , cassava = H.callHackage "cassava" "0.5.3.0"
      , cassava-megaparsec = H.callHackage "cassava-megaparsec" "2.1.0"
      , cheapskate = H.callHackage "cheapskate" "0.1.1.2"
      , checkers = H.callHackage "checkers" "0.6.0"
      , circle-packing = H.callHackage "circle-packing" "0.1.0.6"
      , citeproc = H.callHackage "citeproc" "0.8.1"
      , cmark-gfm = H.callHackage "cmark-gfm" "0.2.6"
      , co-log-core = H.callHackage "co-log-core" "0.3.2.1"
      , co-log-polysemy = H.callHackage "co-log-polysemy" "0.0.1.4"
      , colourista = H.callHackage "colourista" "0.1.0.2"
      , commonmark = H.callHackage "commonmark" "0.2.4"
      , commonmark-extensions = H.callHackage "commonmark-extensions" "0.2.4"
      , commonmark-pandoc = H.callHackage "commonmark-pandoc" "0.2.1.3"
      , commutative-semigroups =
          H.callHackage "commutative-semigroups" "0.1.0.1"
      , compact = H.callHackage "compact" "0.2.0.0"
      , compactable =
          H.callGit
            "https://gitlab.com/fresheyeball/Compactable"
            "f63927b1e438c267f0d12f36e5b3735cfaebeeb4"
            (None H.Subdir)
      , composite-cassava = H.callHackage "composite-cassava" "0.0.3.1"
      , composite-dhall = H.callHackage "composite-dhall" "0.1.0.1"
      , composite-lens-extra = H.callHackage "composite-lens-extra" "0.1.0.0"
      , composite-tuple = H.callHackage "composite-tuple" "0.1.2.0"
      , composition-prelude = H.callHackage "composition-prelude" "3.0.0.2"
      , concise = H.callHackage "concise" "0.1.0.1"
      , concurrent-extra = H.callHackage "concurrent-extra" "0.7.0.12"
      , conduit-combinators = H.callHackage "conduit-combinators" "1.3.0"
      , conduit-parse = H.callHackage "conduit-parse" "0.2.1.1"
      , contravariant-extras = H.callHackage "contravariant-extras" "0.3.5.4"
      , control-monad-free = H.callHackage "control-monad-free" "0.6.2"
      , cpphs = H.callHackage "cpphs" "1.20.9.1"
      , criterion = H.callHackage "criterion" "1.6.3.0"
      , crypto-pubkey-types = H.callHackage "crypto-pubkey-types" "0.4.3"
      , cryptohash-sha1 = H.callHackage "cryptohash-sha1" "0.11.101.0"
      , cryptonite-conduit = H.callHackage "cryptonite-conduit" "0.2.2"
      , cubicbezier = H.callHackage "cubicbezier" "0.6.0.7"
      , cursor = H.callHackage "cursor" "0.3.2.0"
      , cursor-brick = H.callHackage "cursor-brick" "0.1.0.1"
      , cursor-dirforest =
          H.callGit
            "https://github.com/NorfairKing/cursor-dirforest"
            "6ad5b168e26eb4e647df9f007d812aaf59338d40"
            (Some "cursor-dirforest/")
      , cursor-dirforest-brick =
          H.callGit
            "https://github.com/NorfairKing/cursor-dirforest"
            "6ad5b168e26eb4e647df9f007d812aaf59338d40"
            (Some "cursor-dirforest-brick/")
      , cursor-dirforest-gen =
          H.callGit
            "https://github.com/NorfairKing/cursor-dirforest"
            "6ad5b168e26eb4e647df9f007d812aaf59338d40"
            (Some "cursor-dirforest-gen/")
      , cursor-fuzzy-time = H.callHackage "cursor-fuzzy-time" "0.0.0.0"
      , cursor-gen = H.callHackage "cursor-gen" "0.4.0.0"
      , data-bword = H.callHackage "data-bword" "0.1.0.2"
      , data-checked = H.callHackage "data-checked" "0.3"
      , data-dword = H.callHackage "data-dword" "0.3.2.1"
      , data-endian = H.callHackage "data-endian" "0.1.1"
      , data-ordlist = H.callHackage "data-ordlist" "0.4.7.0"
      , data-serializer = H.callHackage "data-serializer" "0.3.5"
      , data-sketches = H.callHackage "data-sketches" "0.3.1.0"
      , data-sketches-core = H.callHackage "data-sketches-core" "0.1.0.0"
      , data-textual = H.callHackage "data-textual" "0.3.0.3"
      , dbus = H.callHackage "dbus" "1.3.1"
      , deferred-folds = H.callHackage "deferred-folds" "0.9.18.5"
      , deque = H.callHackage "deque" "0.4.4.1"
      , deriving-aeson = H.callHackage "deriving-aeson" "0.2.9"
      , dhall-docs = H.callHackage "dhall-docs" "1.0.11"
      , dictionary-sharing = H.callHackage "dictionary-sharing" "0.1.0.0"
      , digits = H.callHackage "digits" "0.3.1"
      , dimensional = H.callHackage "dimensional" "1.5"
      , direct-sqlite = H.callHackage "direct-sqlite" "2.3.28"
      , dirforest =
          H.callGit
            "https://github.com/NorfairKing/dirforest"
            "69e8ae036b047fae105c1fe990e175a7572a3eba"
            (Some "dirforest/")
      , dns = H.callHackage "dns" "4.2.0"
      , doclayout = H.callHackage "doclayout" "0.4.0.1"
      , doctemplates = H.callHackage "doctemplates" "0.11"
      , doctest-discover = H.callHackage "doctest-discover" "0.2.0.0"
      , dom-lt = H.callHackage "dom-lt" "0.2.3"
      , double-conversion = H.callHackage "double-conversion" "2.0.4.2"
      , dual-tree = H.callHackage "dual-tree" "0.2.3.1"
      , echo = H.callHackage "echo" "0.1.4"
      , edit-distance = H.callHackage "edit-distance" "0.2.2.1"
      , effectful = H.callHackage "effectful" "2.3.0.0"
      , effectful-cache =
          H.callGit
            "https://github.com/haskell-effectful/cache-effectful"
            "0a5581da7c21a05a9ab1762a6da6997090fe311d"
            (None H.Subdir)
      , effectful-core = H.callHackage "effectful-core" "2.3.0.1"
      , effectful-th = H.callHackage "effectful-th" "1.0.0.1"
      , ekg = H.callHackage "ekg" "0.4.0.15"
      , ekg-core = H.callHackage "ekg-core" "0.1.1.7"
      , ekg-json =
          H.callGit
            "https://github.com/vshabanov/ekg-json"
            "00ebe7211c981686e65730b7144fbf5350462608"
            (None H.Subdir)
      , ekg-statsd = H.callHackage "ekg-statsd" "0.2.5.0"
      , ekg-wai = H.callHackage "ekg-wai" "0.1.1.0"
      , emojis = H.callHackage "emojis" "0.1.3"
      , enclosed-exceptions = H.callHackage "enclosed-exceptions" "1.0.3"
      , enummapset = H.callHackage "enummapset" "0.7.2.0"
      , exact-combinatorics = H.callHackage "exact-combinatorics" "0.2.0.11"
      , exact-pi = H.callHackage "exact-pi" "0.5.0.2"
      , expiring-cache-map = H.callHackage "expiring-cache-map" "0.0.6.1"
      , extended-reals = H.callHackage "extended-reals" "0.2.4.0"
      , fast-math = H.callHackage "fast-math" "1.0.2"
      , fcf-containers = H.callHackage "fcf-containers" "0.8.2"
      , filelock = H.callHackage "filelock" "0.1.1.7"
      , filemanip = H.callHackage "filemanip" "0.3.6.3"
      , filepattern = H.callHackage "filepattern" "0.1.3"
      , filtrable = H.callHackage "filtrable" "0.1.6.0"
      , finite-field = H.callHackage "finite-field" "0.10.0"
      , finite-typelits = H.callHackage "finite-typelits" "0.1.6.0"
      , fixed = H.callHackage "fixed" "0.3"
      , floatshow = H.callHackage "floatshow" "0.2.4"
      , fmt = H.callHackage "fmt" "0.6.3.0"
      , focus = H.callHackage "focus" "1.0.3.2"
      , force-layout = H.callHackage "force-layout" "0.4.0.6"
      , foreign-store = H.callHackage "foreign-store" "0.2"
      , formatting = H.callHackage "formatting" "7.2.0"
      , foundation = H.callHackage "foundation" "0.0.30"
      , freer-simple = H.callHackage "freer-simple" "1.2.1.2"
      , friendly-time = H.callHackage "friendly-time" "0.4.1"
      , fusion-plugin-types = H.callHackage "fusion-plugin-types" "0.1.0"
      , fuzzy = H.callHackage "fuzzy" "0.1.0.1"
      , fuzzy-time = H.callHackage "fuzzy-time" "0.2.0.3"
      , fuzzy-time-gen = H.callHackage "fuzzy-time-gen" "0.2.0.1"
      , generic-arbitrary = H.callHackage "generic-arbitrary" "1.0.1"
      , generic-data = H.callHackage "generic-data" "1.1.0.0"
      , generic-lens = H.callHackage "generic-lens" "2.2.2.0"
      , generic-lens-core = H.callHackage "generic-lens-core" "2.2.1.0"
      , generic-lens-lite = H.callHackage "generic-lens-lite" "0.1"
      , generic-optics = H.callHackage "generic-optics" "2.2.1.0"
      , generic-optics-lite = H.callHackage "generic-optics-lite" "0.1"
      , genvalidity-aeson = H.callHackage "genvalidity-aeson" "1.0.0.1"
      , genvalidity-bytestring =
          H.callHackage "genvalidity-bytestring" "1.0.0.1"
      , genvalidity-case-insensitive =
          H.callHackage "genvalidity-case-insensitive" "0.0.0.1"
      , genvalidity-containers =
          H.callHackage "genvalidity-containers" "1.0.0.1"
      , genvalidity-criterion = H.callHackage "genvalidity-criterion" "1.1.0.0"
      , genvalidity-dirforest =
          H.callGit
            "https://github.com/NorfairKing/dirforest"
            "69e8ae036b047fae105c1fe990e175a7572a3eba"
            (Some "genvalidity-dirforest/")
      , genvalidity-hspec-aeson =
          H.callHackage "genvalidity-hspec-aeson" "1.0.0.0"
      , genvalidity-hspec-optics =
          H.callHackage "genvalidity-hspec-optics" "1.0.0.0"
      , genvalidity-path = H.callHackage "genvalidity-path" "1.0.0.1"
      , genvalidity-persistent =
          H.callHackage "genvalidity-persistent" "1.0.0.2"
      , genvalidity-scientific =
          H.callHackage "genvalidity-scientific" "1.0.0.0"
      , genvalidity-sydtest = H.callHackage "genvalidity-sydtest" "1.0.0.0"
      , genvalidity-sydtest-aeson =
          H.callHackage "genvalidity-sydtest-aeson" "1.0.0.0"
      , genvalidity-sydtest-hashable =
          H.callHackage "genvalidity-sydtest-hashable" "1.0.0.1"
      , genvalidity-sydtest-lens =
          H.callHackage "genvalidity-sydtest-lens" "1.0.0.0"
      , genvalidity-sydtest-persistent =
          H.callHackage "genvalidity-sydtest-persistent" "1.0.0.0"
      , genvalidity-text = H.callHackage "genvalidity-text" "1.0.0.1"
      , genvalidity-time = H.callHackage "genvalidity-time" "1.0.0.1"
      , genvalidity-unordered-containers =
          H.callHackage "genvalidity-unordered-containers" "1.0.0.1"
      , genvalidity-uuid = H.callHackage "genvalidity-uuid" "1.0.0.1"
      , genvalidity-vector = H.callHackage "genvalidity-vector" "1.0.0.0"
      , ghc-trace-events = H.callHackage "ghc-trace-events" "0.1.2.7"
      , ghc-typelits-knownnat = H.callHackage "ghc-typelits-knownnat" "0.7.10"
      , ghc-typelits-natnormalise =
          H.callHackage "ghc-typelits-natnormalise" "0.7.9"
      , githash = H.callHackage "githash" "0.1.7.0"
      , gitrev = H.callHackage "gitrev" "1.3.1"
      , gridtables = H.callHackage "gridtables" "0.1.0.0"
      , groups = H.callHackage "groups" "0.5.3"
      , gtk2hs-buildtools = H.callHackage "gtk2hs-buildtools" "0.13.10.0"
      , hackage-security = H.callHackage "hackage-security" "0.6.2.3"
      , haddock-library = H.callHackage "haddock-library" "1.11.0"
      , hashing = H.callHackage "hashing" "0.1.1.0"
      , hashtables = H.callHackage "hashtables" "1.3.1"
      , hasql = H.callHackage "hasql" "1.6.3.4"
      , hasql-explain-tests = H.callHackage "hasql-explain-tests" "0.1.0.0"
      , hasql-migration = H.callHackage "hasql-migration" "0.3.0"
      , hasql-th = H.callHackage "hasql-th" "0.4.0.18"
      , hasql-transaction = H.callHackage "hasql-transaction" "1.0.1.2"
      , hdaemonize = H.callHackage "hdaemonize" "0.5.7"
      , headed-megaparsec = H.callHackage "headed-megaparsec" "0.2.1.2"
      , heaps = H.callHackage "heaps" "0.4"
      , hedgehog-extras = H.callHackage "hedgehog-extras" "0.5.0.0"
      , hedgehog-fn = H.callHackage "hedgehog-fn" "1.0"
      , hedgehog-golden =
          H.callGit
            "https://github.com/maybe-hedgehog-later/hedgehog-golden"
            "4ab2906b3f0be5e31ee5a8585e45d43392694246"
            (None H.Subdir)
      , hedgehog-quickcheck = H.callHackage "hedgehog-quickcheck" "0.1.1"
      , heredoc = H.callHackage "heredoc" "0.2.0.0"
      , hex-text = H.callHackage "hex-text" "0.1.0.9"
      , hint =
          H.callGit
            "https://github.com/haskell-hint/hint"
            "7803c34c8ae1d83c0f7c13fe6b30fcb3abd0ac51"
            (None H.Subdir)
      , hoauth2 = H.callHackage "hoauth2" "2.10.0"
      , hosc = H.callHackage "hosc" "0.20"
      , hslogger = H.callHackage "hslogger" "1.3.1.0"
      , hslua = H.callHackage "hslua" "2.3.0"
      , hslua-aeson = H.callHackage "hslua-aeson" "2.3.0.1"
      , hslua-classes = H.callHackage "hslua-classes" "2.3.0"
      , hslua-core = H.callHackage "hslua-core" "2.3.1"
      , hslua-list = H.callHackage "hslua-list" "1.1.1"
      , hslua-marshalling = H.callHackage "hslua-marshalling" "2.3.0"
      , hslua-module-doclayout = H.callHackage "hslua-module-doclayout" "1.1.0"
      , hslua-module-path = H.callHackage "hslua-module-path" "1.1.0"
      , hslua-module-system = H.callHackage "hslua-module-system" "1.1.0.1"
      , hslua-module-text = H.callHackage "hslua-module-text" "1.1.0.1"
      , hslua-module-version = H.callHackage "hslua-module-version" "1.1.0"
      , hslua-objectorientation =
          H.callHackage "hslua-objectorientation" "2.3.0"
      , hslua-packaging = H.callHackage "hslua-packaging" "2.3.0"
      , hslua-typing = H.callHackage "hslua-typing" "0.1.0"
      , hspec-attoparsec = H.callHackage "hspec-attoparsec" "0.1.0.2"
      , hspec-contrib = H.callHackage "hspec-contrib" "0.5.2"
      , hspec-golden = H.callHackage "hspec-golden" "0.2.1.0"
      , hspec-golden-aeson = H.callHackage "hspec-golden-aeson" "0.9.0.0"
      , hspec-hedgehog = H.callHackage "hspec-hedgehog" "0.1.1.0"
      , hspec-megaparsec = H.callHackage "hspec-megaparsec" "2.2.1"
      , hsyslog = H.callHackage "hsyslog" "5.0.2"
      , html = H.callHackage "html" "1.0.1.2"
      , html-entities = H.callHackage "html-entities" "1.1.4.6"
      , html-entity-map = H.callHackage "html-entity-map" "0.1.0.0"
      , http-common = H.callHackage "http-common" "0.8.3.4"
      , http-streams = H.callHackage "http-streams" "0.8.9.9"
      , hw-fingertree = H.callHackage "hw-fingertree" "0.1.2.1"
      , hw-hedgehog = H.callHackage "hw-hedgehog" "0.1.1.1"
      , hw-hspec-hedgehog = H.callHackage "hw-hspec-hedgehog" "0.1.1.1"
      , hw-prim = H.callHackage "hw-prim" "0.6.3.2"
      , incipit-base = H.callHackage "incipit-base" "0.5.1.0"
      , incipit-core = H.callHackage "incipit-core" "0.5.1.0"
      , indexed-list-literals = H.callHackage "indexed-list-literals" "0.2.1.3"
      , inline-c = H.callHackage "inline-c" "0.9.1.10"
      , int-cast = H.callHackage "int-cast" "0.2.0.0"
      , integer-logarithms = H.callHackage "integer-logarithms" "1.0.3.1"
      , integration = H.callHackage "integration" "0.2.1"
      , intervals = H.callHackage "intervals" "0.9.2"
      , io-streams = H.callHackage "io-streams" "1.5.2.2"
      , io-streams-haproxy = H.callHackage "io-streams-haproxy" "1.0.1.0"
      , ipynb = H.callHackage "ipynb" "0.2"
      , iso8601-time = H.callHackage "iso8601-time" "0.1.5"
      , isomorphism-class = H.callHackage "isomorphism-class" "0.1.0.11"
      , iwlib = H.callHackage "iwlib" "0.1.2"
      , jira-wiki-markup = H.callHackage "jira-wiki-markup" "1.5.1"
      , jose = H.callHackage "jose" "0.11"
      , jose-jwt = H.callHackage "jose-jwt" "0.9.6"
      , js-dgtable = H.callHackage "js-dgtable" "0.5.2"
      , katip = H.callHackage "katip" "0.8.8.0"
      , keys = H.callHackage "keys" "3.12.3"
      , kvstore-effectful =
          H.callGit
            "https://github.com/haskell-effectful/kvstore-effectful"
            "3502825423aea3a1af9384e9d751feea4599c60b"
            (Some "kvstore-effectful/")
      , kvstore-effectful-cache =
          H.callGit
            "https://github.com/haskell-effectful/kvstore-effectful"
            "3502825423aea3a1af9384e9d751feea4599c60b"
            (Some "kvstore-effectful-cache/")
      , kvstore-effectful-spec =
          H.callGit
            "https://github.com/haskell-effectful/kvstore-effectful"
            "3502825423aea3a1af9384e9d751feea4599c60b"
            (Some "kvstore-effectful-spec/")
      , kvstore-effectful-statemap =
          H.callGit
            "https://github.com/haskell-effectful/kvstore-effectful"
            "3502825423aea3a1af9384e9d751feea4599c60b"
            (Some "kvstore-effectful-statemap/")
      , language-c = H.callHackage "language-c" "0.9.2"
      , lazy-search = H.callHackage "lazy-search" "0.1.3.0"
      , lazysmallcheck = H.callHackage "lazysmallcheck" "0.6"
      , lens-family = H.callHackage "lens-family" "2.1.2"
      , lens-family-th = H.callHackage "lens-family-th" "0.5.2.1"
      , libsodium = H.callHackage "libsodium" "1.0.18.3"
      , libsystemd-journal = H.callHackage "libsystemd-journal" "1.4.5.1"
      , linear-base = H.callHackage "linear-base" "0.4.0"
      , linear-generics = H.callHackage "linear-generics" "0.2.2"
      , list-transformer = H.callHackage "list-transformer" "1.1.0"
      , lockfree-queue = H.callHackage "lockfree-queue" "0.2.4"
      , log-base = H.callHackage "log-base" "0.12.0.1"
      , log-effectful =
          H.callGit
            "https://github.com/haskell-effectful/log-effectful/"
            "910c79e10d5ac3353f2a1551103a2b63229c3f57"
            (None H.Subdir)
      , loop = H.callHackage "loop" "0.3.0"
      , lpeg = H.callHackage "lpeg" "1.1.0"
      , lrucache = H.callHackage "lrucache" "1.2.0.1"
      , lua = H.callHackage "lua" "2.3.1"
      , lua-arbitrary = H.callHackage "lua-arbitrary" "1.0.1.1"
      , lucid = H.callHackage "lucid" "2.11.20230408"
      , lucid-alpine = H.callHackage "lucid-alpine" "0.1.0.7"
      , lucid-aria = H.callHackage "lucid-aria" "0.1.0.1"
      , lucid-svg = H.callHackage "lucid-svg" "0.7.1.1"
      , lukko = H.callHackage "lukko" "0.1.1.3"
      , lvar = H.callHackage "lvar" "0.1.0.0"
      , markdown = H.callHackage "markdown" "0.1.17.5"
      , markdown-unlit = H.callHackage "markdown-unlit" "0.6.0"
      , markov-chain-usage-model =
          H.callHackage "markov-chain-usage-model" "0.0.0"
      , matrices = H.callHackage "matrices" "0.5.0"
      , matrix = H.callHackage "matrix" "0.3.6.3"
      , mersenne-random-pure64 =
          H.callHackage "mersenne-random-pure64" "0.2.2.0"
      , mfsolve = H.callHackage "mfsolve" "0.3.2.2"
      , microlens-aeson = H.callHackage "microlens-aeson" "2.5.1"
      , microlens-ghc = H.callHackage "microlens-ghc" "0.4.14.2"
      , microlens-platform = H.callHackage "microlens-platform" "0.4.3.4"
      , microspec = H.callHackage "microspec" "0.2.1.3"
      , microstache = H.callHackage "microstache" "1.0.2.3"
      , mime-mail = H.callHackage "mime-mail" "0.5.1"
      , mmark = H.callHackage "mmark" "0.0.7.6"
      , mod = H.callHackage "mod" "0.2.0.1"
      , modern-uri = H.callHackage "modern-uri" "0.3.6.1"
      , monad-logger = H.callHackage "monad-logger" "0.3.40"
      , monad-loops = H.callHackage "monad-loops" "0.4.3"
      , monad-primitive = H.callHackage "monad-primitive" "0.1"
      , monad-time = H.callHackage "monad-time" "0.4.0.0"
      , monad-time-effectful = H.callHackage "monad-time-effectful" "1.0.0.0"
      , monadlist = H.callHackage "monadlist" "0.0.2"
      , monoid-extras = H.callHackage "monoid-extras" "0.6.2"
      , monoid-subclasses = H.callHackage "monoid-subclasses" "1.2.4.1"
      , mtl-prelude = H.callHackage "mtl-prelude" "2.0.3.2"
      , multiset = H.callHackage "multiset" "0.3.4.3"
      , mwc-random-monad = H.callHackage "mwc-random-monad" "0.7.3.1"
      , natural-arithmetic = H.callHackage "natural-arithmetic" "0.1.4.0"
      , natural-transformation = H.callHackage "natural-transformation" "0.4"
      , neat-interpolation = H.callHackage "neat-interpolation" "0.5.1.4"
      , net-mqtt = H.callHackage "net-mqtt" "0.8.6.0"
      , network-conduit-tls = H.callHackage "network-conduit-tls" "1.4.0"
      , network-ip = H.callHackage "network-ip" "0.3.0.3"
      , newtype-generics = H.callHackage "newtype-generics" "0.6.2"
      , nix-derivation = H.callHackage "nix-derivation" "1.1.3"
      , non-negative = H.callHackage "non-negative" "0.1.2"
      , nonempty-vector = H.callHackage "nonempty-vector" "0.2.3"
      , numeric-extras = H.callHackage "numeric-extras" "0.1"
      , numeric-prelude = H.callHackage "numeric-prelude" "0.4.4"
      , numtype-dk = H.callHackage "numtype-dk" "0.5.0.3"
      , odd-jobs =
          H.callGit
            "https://github.com/saurabhnanda/odd-jobs"
            "411d5d0aaeeb96d4b72d0a434b9d2b53c88c2eae"
            (None H.Subdir)
      , one-liner = H.callHackage "one-liner" "2.1"
      , openapi3 = H.callHackage "openapi3" "3.2.4"
      , openssl-streams = H.callHackage "openssl-streams" "1.2.3.0"
      , opentelemetry = H.callHackage "opentelemetry" "0.8.0"
      , operational = H.callHackage "operational" "0.2.4.2"
      , optparse-generic = H.callHackage "optparse-generic" "1.5.2"
      , optparse-simple = H.callHackage "optparse-simple" "0.1.1.4"
      , ordered-containers = H.callHackage "ordered-containers" "0.2.3"
      , pager = H.callHackage "pager" "0.1.1.0"
      , pandoc = H.callHackage "pandoc" "3.1.9"
      , pandoc-lua-marshal = H.callHackage "pandoc-lua-marshal" "0.2.2"
      , pandoc-types = H.callHackage "pandoc-types" "1.23.1"
      , parsec-numbers = H.callHackage "parsec-numbers" "0.1.0"
      , parsec1 = H.callHackage "parsec1" "1.0.0.8"
      , parser-combinators = H.callHackage "parser-combinators" "1.3.0"
      , parsers-megaparsec = H.callHackage "parsers-megaparsec" "0.1.0.2"
      , partial-order = H.callHackage "partial-order" "0.2.0.0"
      , password = H.callHackage "password" "3.0.2.1"
      , password-types = H.callHackage "password-types" "1.0.0.0"
      , pcg-random = H.callHackage "pcg-random" "0.1.4.0"
      , pcre-heavy = H.callHackage "pcre-heavy" "1.0.0.3"
      , pcre2 = H.callHackage "pcre2" "2.2.1"
      , pg-entity = H.callHackage "pg-entity" "0.0.4.3"
      , pg-transact = H.callHackage "pg-transact" "0.3.2.0"
      , pg-transact-effectful =
          H.callGit
            "https://github.com/Kleidukos/pg-transact-effectful"
            "db6fa06"
            (None H.Subdir)
      , pipes = H.callHackage "pipes" "4.3.16"
      , pipes-safe = H.callHackage "pipes-safe" "2.3.5"
      , pointed = H.callHackage "pointed" "5.0.4"
      , polysemy-extra = H.callHackage "polysemy-extra" "0.2.1.0"
      , polysemy-kvstore = H.callHackage "polysemy-kvstore" "0.1.3.0"
      , polysemy-methodology = H.callHackage "polysemy-methodology" "0.2.2.0"
      , polysemy-path = H.callHackage "polysemy-path" "0.2.1.0"
      , polysemy-several = H.callHackage "polysemy-several" "0.1.1.0"
      , polysemy-test = H.callHackage "polysemy-test" "0.9.0.0"
      , polysemy-time = H.callHackage "polysemy-time" "0.6.0.2"
      , polysemy-vinyl = H.callHackage "polysemy-vinyl" "0.1.5.0"
      , polysemy-zoo = H.callHackage "polysemy-zoo" "0.8.2.0"
      , poolboy = H.callHackage "poolboy" "0.2.2.0"
      , postgresql-binary = H.callHackage "postgresql-binary" "0.13.1.1"
      , postgresql-migration = H.callHackage "postgresql-migration" "0.2.1.7"
      , postgresql-simple-migration =
          H.callHackage "postgresql-simple-migration" "0.1.15.0"
      , postgresql-syntax = H.callHackage "postgresql-syntax" "0.4.1"
      , pqueue = H.callHackage "pqueue" "1.5.0.0"
      , pretty-relative-time = H.callHackage "pretty-relative-time" "0.3.0.0"
      , primes = H.callHackage "primes" "0.2.1.0"
      , primitive = H.callHackage "primitive" "0.9.0.0"
      , primitive-addr = H.callHackage "primitive-addr" "0.1.0.2"
      , primitive-offset = H.callHackage "primitive-offset" "0.2.0.0"
      , primitive-unlifted = H.callHackage "primitive-unlifted" "2.1.0.0"
      , prometheus-client = H.callHackage "prometheus-client" "1.1.1"
      , prometheus-metrics-ghc =
          H.callHackage "prometheus-metrics-ghc" "1.0.1.2"
      , prometheus-proc = H.callHackage "prometheus-proc" "0.1.5.0"
      , proteaaudio-sdl = H.callHackage "proteaaudio-sdl" "0.10.1"
      , quickcheck-arbitrary-adt =
          H.callHackage "quickcheck-arbitrary-adt" "0.3.1.0"
      , quickcheck-assertions = H.callHackage "quickcheck-assertions" "0.3.0"
      , quickcheck-text = H.callHackage "quickcheck-text" "0.1.2.1"
      , quote-quot = H.callHackage "quote-quot" "0.2.1.0"
      , random-bytestring = H.callHackage "random-bytestring" "0.1.4"
      , random-fu = H.callHackage "random-fu" "0.3.0.1"
      , raven-haskell = H.callHackage "raven-haskell" "0.1.4.1"
      , readable = H.callHackage "readable" "0.3.1"
      , rebase = H.callHackage "rebase" "1.20.1.1"
      , ref-tf = H.callHackage "ref-tf" "0.5.0.1"
      , refact = H.callHackage "refact" "0.3.0.2"
      , refined =
          H.callGit
            "https://github.com/nikita-volkov/refined"
            "11296288b5e2f2b391ee721b50af3cfe7beaa790"
            (None H.Subdir)
      , regex = H.callHackage "regex" "1.1.0.2"
      , regex-applicative = H.callHackage "regex-applicative" "0.3.4"
      , regex-pcre-builtin = H.callHackage "regex-pcre-builtin" "0.95.2.3.8.44"
      , relude = H.callHackage "relude" "1.2.1.0"
      , replace-megaparsec = H.callHackage "replace-megaparsec" "1.5.0.1"
      , req = H.callHackage "req" "3.13.1"
      , rerebase = H.callHackage "rerebase" "1.20.1.1"
      , resolv = H.callHackage "resolv" "0.2.0.2"
      , retry = H.callHackage "retry" "0.9.3.1"
      , rope-utf16-splay = H.callHackage "rope-utf16-splay" "0.4.0.0"
      , row-types = H.callHackage "row-types" "1.0.1.2"
      , rvar = H.callHackage "rvar" "0.3.0.2"
      , saltine = H.callHackage "saltine" "0.2.1.0"
      , sandwich = H.callHackage "sandwich" "0.2.1.0"
      , say = H.callHackage "say" "0.1.0.1"
      , scotty = H.callHackage "scotty" "0.20.1"
      , selective = H.callHackage "selective" "0.7"
      , semver = H.callHackage "semver" "0.4.0.1"
      , servant-auth = H.callHackage "servant-auth" "0.4.1.0"
      , servant-auth-client = H.callHackage "servant-auth-client" "0.4.1.1"
      , servant-auth-server = H.callHackage "servant-auth-server" "0.4.8.0"
      , servant-blaze = H.callHackage "servant-blaze" "0.9.1"
      , servant-effectful =
          H.callGit
            "https://github.com/kleidukos/servant-effectful"
            "21b5a1d7cb209f3b4594167bb0b5a8d632c8a8e1"
            (None H.Subdir)
      , servant-lucid = H.callHackage "servant-lucid" "0.9.0.6"
      , servant-openapi3 = H.callHackage "servant-openapi3" "2.0.1.6"
      , servant-static-th = H.callHackage "servant-static-th" "1.0.0.0"
      , servant-websockets = H.callHackage "servant-websockets" "2.0.0"
      , setlocale = H.callHackage "setlocale" "1.0.0.10"
      , shake = H.callHackage "shake" "0.19.7"
      , shakespeare = H.callHackage "shakespeare" "2.1.0.1"
      , shelly = H.callHackage "shelly" "1.12.1"
      , shh = H.callHackage "shh" "0.7.2.2"
      , should-not-typecheck = H.callHackage "should-not-typecheck" "2.1.0"
      , show-combinators = H.callHackage "show-combinators" "0.2.0.0"
      , singleton-bool = H.callHackage "singleton-bool" "0.1.7"
      , singletons = H.callHackage "singletons" "3.0.2"
      , size-based = H.callHackage "size-based" "0.1.3.2"
      , skylighting = H.callHackage "skylighting" "0.14"
      , skylighting-core = H.callHackage "skylighting-core" "0.14"
      , skylighting-format-ansi = H.callHackage "skylighting-format-ansi" "0.1"
      , skylighting-format-blaze-html =
          H.callHackage "skylighting-format-blaze-html" "0.1.1.1"
      , skylighting-format-context =
          H.callHackage "skylighting-format-context" "0.1.0.2"
      , skylighting-format-latex =
          H.callHackage "skylighting-format-latex" "0.1"
      , slugify = H.callHackage "slugify" "0.1.0.1"
      , snap-core = H.callHackage "snap-core" "1.0.5.1"
      , snap-server = H.callHackage "snap-server" "1.1.2.1"
      , sort = H.callHackage "sort" "1.0.0.0"
      , sorted-list = H.callHackage "sorted-list" "0.2.2.0"
      , souffle-haskell =
          H.callGit
            "https://github.com/luc-tielen/souffle-haskell"
            "e441c84f1d64890e31c92fbb278c074ae8bcaff5"
            (None H.Subdir)
      , sqlite-simple = H.callHackage "sqlite-simple" "0.4.18.2"
      , statestack = H.callHackage "statestack" "0.3.1.1"
      , statistics-linreg = H.callHackage "statistics-linreg" "0.3"
      , stm-chans = H.callHackage "stm-chans" "3.0.0.9"
      , streaming = H.callHackage "streaming" "0.2.4.0"
      , streaming-binary = H.callHackage "streaming-binary" "0.3.0.1"
      , streaming-bytestring = H.callHackage "streaming-bytestring" "0.3.2"
      , streamly = H.callHackage "streamly" "0.10.0"
      , streamly-core = H.callHackage "streamly-core" "0.2.0"
      , strict-list = H.callHackage "strict-list" "0.1.7.4"
      , string-conv = H.callHackage "string-conv" "0.2.0"
      , string-conversions = H.callHackage "string-conversions" "0.4.0.1"
      , string-interpolate = H.callHackage "string-interpolate" "0.3.2.1"
      , stringsearch = H.callHackage "stringsearch" "0.3.6.6"
      , stripeapi = H.callHackage "stripeapi" "3.0.0.0"
      , sundown = H.callHackage "sundown" "0.6"
      , svg-builder = H.callHackage "svg-builder" "0.1.1"
      , swagger2 = H.callHackage "swagger2" "2.8.7"
      , tasty-discover = H.callHackage "tasty-discover" "5.0.0"
      , tasty-hslua = H.callHackage "tasty-hslua" "1.1.0"
      , tasty-hspec = H.callHackage "tasty-hspec" "1.2.0.4"
      , tasty-lua = H.callHackage "tasty-lua" "1.1.0"
      , tasty-rerun = H.callHackage "tasty-rerun" "1.1.19"
      , tasty-wai = H.callHackage "tasty-wai" "0.1.2.0"
      , tdigest = H.callHackage "tdigest" "0.3"
      , template-haskell-compat-v0208 =
          H.callHackage "template-haskell-compat-v0208" "0.1.9.3"
      , test-framework-smallcheck =
          H.callHackage "test-framework-smallcheck" "0.2"
      , testing-feat = H.callHackage "testing-feat" "1.1.1.1"
      , testing-type-modifiers =
          H.callHackage "testing-type-modifiers" "0.1.0.1"
      , texmath = H.callHackage "texmath" "0.12.8.4"
      , text-ansi = H.callHackage "text-ansi" "0.3.0.1"
      , text-builder = H.callHackage "text-builder" "0.6.7.2"
      , text-builder-dev = H.callHackage "text-builder-dev" "0.3.4.2"
      , text-builder-linear = H.callHackage "text-builder-linear" "0.1.2"
      , text-conversions = H.callHackage "text-conversions" "0.3.1.1"
      , text-display = H.callHackage "text-display" "0.0.5.1"
      , text-icu = H.callHackage "text-icu" "0.8.0.4"
      , text-latin1 = H.callHackage "text-latin1" "0.3.1"
      , text-printer = H.callHackage "text-printer" "0.5.0.2"
      , text-rope = H.callHackage "text-rope" "0.2"
      , th-desugar = H.callHackage "th-desugar" "1.16"
      , th-env = H.callHackage "th-env" "0.1.1"
      , these-skinny = H.callHackage "these-skinny" "0.7.5"
      , threads = H.callHackage "threads" "0.5.1.8"
      , tidal = H.callHackage "tidal" "1.9.4"
      , tidal-link = H.callHackage "tidal-link" "1.0.1"
      , time-locale-compat = H.callHackage "time-locale-compat" "0.1.1.5"
      , time-units = H.callHackage "time-units" "1.0.0"
      , timeit = H.callHackage "timeit" "2.0"
      , timing-convenience = H.callHackage "timing-convenience" "0.1"
      , toml-parser = H.callHackage "toml-parser" "1.3.1.0"
      , torsor = H.callHackage "torsor" "0.1"
      , transformers-except = H.callHackage "transformers-except" "0.1.4"
      , tuple = H.callHackage "tuple" "0.3.0.2"
      , type-errors-pretty = H.callHackage "type-errors-pretty" "0.0.1.2"
      , type-hint = H.callHackage "type-hint" "0.1"
      , typerep-map = H.callHackage "typerep-map" "0.6.0.0"
      , typst = H.callHackage "typst" "0.3.2.1"
      , typst-symbols = H.callHackage "typst-symbols" "0.1.5"
      , uglymemo = H.callHackage "uglymemo" "0.1.0.1"
      , unicode-collation = H.callHackage "unicode-collation" "0.1.3.5"
      , unicode-data = H.callHackage "unicode-data" "0.4.0.1"
      , unicode-transforms = H.callHackage "unicode-transforms" "0.4.0.1"
      , universe-reverse-instances =
          H.callHackage "universe-reverse-instances" "1.1.1"
      , unix-bytestring = H.callHackage "unix-bytestring" "0.4.0"
      , unix-memory = H.callHackage "unix-memory" "0.1.2"
      , uri-bytestring-aeson = H.callHackage "uri-bytestring-aeson" "0.1.0.8"
      , url-slug = H.callHackage "url-slug" "0.1.0.0"
      , validation = H.callHackage "validation" "1.1.3"
      , validation-selective = H.callHackage "validation-selective" "0.2.0.0"
      , validity-case-insensitive =
          H.callHackage "validity-case-insensitive" "0.0.0.0"
      , validity-path = H.callHackage "validity-path" "0.4.0.1"
      , validity-persistent = H.callHackage "validity-persistent" "0.0.0.0"
      , validity-primitive = H.callHackage "validity-primitive" "0.0.0.1"
      , validity-time = H.callHackage "validity-time" "0.5.0.0"
      , validity-uuid = H.callHackage "validity-uuid" "0.1.0.3"
      , vector-instances = H.callHackage "vector-instances" "3.4.2"
      , vector-sized = H.callHackage "vector-sized" "1.5.0"
      , vector-space = H.callHackage "vector-space" "0.16"
      , vty-crossplatform = H.callHackage "vty-crossplatform" "0.4.0.0"
      , vty-unix = H.callHackage "vty-unix" "0.2.0.0"
      , wai-extra = H.callHackage "wai-extra" "3.1.13.0"
      , wai-log = H.callHackage "wai-log" "0.4.0.1"
      , wai-middleware-heartbeat =
          H.callGit
            "https://github.com/flora-pm/wai-middleware-heartbeat"
            "bd7dbbe83d25c00fcd2cf5c77736af904910c596"
            (None H.Subdir)
      , wai-middleware-prometheus =
          H.callHackage "wai-middleware-prometheus" "1.0.0.1"
      , wai-middleware-static = H.callHackage "wai-middleware-static" "0.9.2"
      , wai-websockets = H.callHackage "wai-websockets" "3.0.1.2"
      , warp = H.callHackage "warp" "3.3.31"
      , warp-tls = H.callHackage "warp-tls" "3.4.3"
      , websockets = H.callHackage "websockets" "0.12.7.3"
      , wide-word = H.callHackage "wide-word" "0.1.6.0"
      , with-utf8 = H.callHackage "with-utf8" "1.0.2.4"
      , wizards = H.callHackage "wizards" "1.0.3"
      , word-compat = H.callHackage "word-compat" "0.0.6"
      , wreq = H.callHackage "wreq" "0.5.4.2"
      , wuss = H.callHackage "wuss" "2.0.1.5"
      , xml-conduit-writer = H.callHackage "xml-conduit-writer" "0.1.1.4"
      , xss-sanitize = H.callHackage "xss-sanitize" "0.3.7.2"
      , zlib-bindings = H.callHackage "zlib-bindings" "0.1.1.5"
      }

in  H.HorizonExport.MakeOverlay
      { overlayFile = "overlay.nix"
      , packagesDir = "pkgs/"
      , overlay = { compiler = "ghc-9.6.3", packages = toMap packages }
      }
