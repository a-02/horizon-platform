{ pkgs, ... }:

final: prev: with pkgs.haskell.lib; {
  BNFC = final.callPackage (./pkgs/BNFC.nix) { };

  Boolean = final.callPackage (./pkgs/Boolean.nix) { };

  Chart = final.callPackage (./pkgs/Chart.nix) { };

  Chart-diagrams = final.callPackage (./pkgs/Chart-diagrams.nix) { };

  Decimal = final.callPackage (./pkgs/Decimal.nix) { };

  HTF = final.callPackage (./pkgs/HTF.nix) { };

  HTTP = final.callPackage (./pkgs/HTTP.nix) { };

  HUnit = final.callPackage (./pkgs/HUnit.nix) { };

  HaskellNet = final.callPackage (./pkgs/HaskellNet.nix) { };

  Hclip = final.callPackage (./pkgs/Hclip.nix) { };

  HsOpenSSL = final.callPackage (./pkgs/HsOpenSSL.nix) { };

  HsYAML = final.callPackage (./pkgs/HsYAML.nix) { };

  JuicyPixels = final.callPackage (./pkgs/JuicyPixels.nix) { };

  ListLike = final.callPackage (./pkgs/ListLike.nix) { };

  MemoTrie = final.callPackage (./pkgs/MemoTrie.nix) { };

  MonadPrompt = final.callPackage (./pkgs/MonadPrompt.nix) { };

  NumInstances = final.callPackage (./pkgs/NumInstances.nix) { };

  Only = final.callPackage (./pkgs/Only.nix) { };

  OpenGLRaw = final.callPackage (./pkgs/OpenGLRaw.nix) { };

  PSQueue = final.callPackage (./pkgs/PSQueue.nix) { };

  PyF = final.callPackage (./pkgs/PyF.nix) { };

  QuickCheck = final.callPackage (./pkgs/QuickCheck.nix) { };

  RSA = final.callPackage (./pkgs/RSA.nix) { };

  SVGFonts = final.callPackage (./pkgs/SVGFonts.nix) { };

  Stream = final.callPackage (./pkgs/Stream.nix) { };

  Unique = final.callPackage (./pkgs/Unique.nix) { };

  Unixutils = final.callPackage (./pkgs/Unixutils.nix) { };

  X11 = final.callPackage (./pkgs/X11.nix) { };

  X11-xft = final.callPackage (./pkgs/X11-xft.nix) { };

  abstract-deque-tests = final.callPackage (./pkgs/abstract-deque-tests.nix) { };

  active = final.callPackage (./pkgs/active.nix) { };

  aeson-qq = final.callPackage (./pkgs/aeson-qq.nix) { };

  aeson-yaml = final.callPackage (./pkgs/aeson-yaml.nix) { };

  alex = final.callPackage (./pkgs/alex.nix) { };

  algebraic-graphs = final.callPackage (./pkgs/algebraic-graphs.nix) { };

  alsa-core = final.callPackage (./pkgs/alsa-core.nix) { };

  alsa-mixer = final.callPackage (./pkgs/alsa-mixer.nix) { };

  ap-normalize = final.callPackage (./pkgs/ap-normalize.nix) { };

  apecs = final.callPackage (./pkgs/apecs.nix) { };

  apply-refact = final.callPackage (./pkgs/apply-refact.nix) { };

  async-timer = final.callPackage (./pkgs/async-timer.nix) { };

  attoparsec-binary = final.callPackage (./pkgs/attoparsec-binary.nix) { };

  attoparsec-iso8601 = final.callPackage (./pkgs/attoparsec-iso8601.nix) { };

  authenticate-oauth = final.callPackage (./pkgs/authenticate-oauth.nix) { };

  autodocodec-servant-multipart = final.callPackage (./pkgs/autodocodec-servant-multipart.nix) { };

  autoexporter = final.callPackage (./pkgs/autoexporter.nix) { };

  base-prelude = final.callPackage (./pkgs/base-prelude.nix) { };

  base58-bytestring = final.callPackage (./pkgs/base58-bytestring.nix) { };

  base64 = final.callPackage (./pkgs/base64.nix) { };

  base64-bytestring = final.callPackage (./pkgs/base64-bytestring.nix) { };

  base64-bytestring-type = final.callPackage (./pkgs/base64-bytestring-type.nix) { };

  beam-core = final.callPackage (./pkgs/beam-core.nix) { };

  beam-migrate = final.callPackage (./pkgs/beam-migrate.nix) { };

  beam-postgres = final.callPackage (./pkgs/beam-postgres.nix) { };

  beam-sqlite = final.callPackage (./pkgs/beam-sqlite.nix) { };

  bech32 = final.callPackage (./pkgs/bech32.nix) { };

  bech32-th = final.callPackage (./pkgs/bech32-th.nix) { };

  bin = final.callPackage (./pkgs/bin.nix) { };

  binary-orphans = final.callPackage (./pkgs/binary-orphans.nix) { };

  binary-parser = final.callPackage (./pkgs/binary-parser.nix) { };

  blaze-svg = final.callPackage (./pkgs/blaze-svg.nix) { };

  blaze-textual = final.callPackage (./pkgs/blaze-textual.nix) { };

  breakpoint = final.callPackage (./pkgs/breakpoint.nix) { };

  brick = final.callPackage (./pkgs/brick.nix) { };

  bytes = final.callPackage (./pkgs/bytes.nix) { };

  bytestring-strict-builder = final.callPackage (./pkgs/bytestring-strict-builder.nix) { };

  bytestring-tree-builder = final.callPackage (./pkgs/bytestring-tree-builder.nix) { };

  c2hs = final.callPackage (./pkgs/c2hs.nix) { };

  cabal-install = final.callPackage (./pkgs/cabal-install.nix) { };

  cabal-install-solver = final.callPackage (./pkgs/cabal-install-solver.nix) { };

  cache = final.callPackage (./pkgs/cache.nix) { };

  canonical-json = final.callPackage (./pkgs/canonical-json.nix) { };

  casing = final.callPackage (./pkgs/casing.nix) { };

  cassava = final.callPackage (./pkgs/cassava.nix) { };

  cassava-megaparsec = final.callPackage (./pkgs/cassava-megaparsec.nix) { };

  cheapskate = final.callPackage (./pkgs/cheapskate.nix) { };

  checkers = final.callPackage (./pkgs/checkers.nix) { };

  chell = final.callPackage (./pkgs/chell.nix) { };

  chell-quickcheck = final.callPackage (./pkgs/chell-quickcheck.nix) { };

  circle-packing = final.callPackage (./pkgs/circle-packing.nix) { };

  citeproc = final.callPackage (./pkgs/citeproc.nix) { };

  cmark-gfm = final.callPackage (./pkgs/cmark-gfm.nix) { };

  co-log-core = final.callPackage (./pkgs/co-log-core.nix) { };

  co-log-polysemy = final.callPackage (./pkgs/co-log-polysemy.nix) { };

  colourista = final.callPackage (./pkgs/colourista.nix) { };

  commonmark = final.callPackage (./pkgs/commonmark.nix) { };

  commonmark-extensions = final.callPackage (./pkgs/commonmark-extensions.nix) { };

  commonmark-pandoc = final.callPackage (./pkgs/commonmark-pandoc.nix) { };

  commutative-semigroups = final.callPackage (./pkgs/commutative-semigroups.nix) { };

  compact = final.callPackage (./pkgs/compact.nix) { };

  compactable = final.callPackage (./pkgs/compactable.nix) { };

  composite-base = final.callPackage (./pkgs/composite-base.nix) { };

  composite-cassava = final.callPackage (./pkgs/composite-cassava.nix) { };

  composite-dhall = final.callPackage (./pkgs/composite-dhall.nix) { };

  composite-lens-extra = final.callPackage (./pkgs/composite-lens-extra.nix) { };

  composite-tuple = final.callPackage (./pkgs/composite-tuple.nix) { };

  composition-prelude = final.callPackage (./pkgs/composition-prelude.nix) { };

  concise = final.callPackage (./pkgs/concise.nix) { };

  concurrent-extra = final.callPackage (./pkgs/concurrent-extra.nix) { };

  conduit-combinators = final.callPackage (./pkgs/conduit-combinators.nix) { };

  conduit-parse = final.callPackage (./pkgs/conduit-parse.nix) { };

  constraints-extras = final.callPackage (./pkgs/constraints-extras.nix) { };

  contravariant-extras = final.callPackage (./pkgs/contravariant-extras.nix) { };

  control-monad-free = final.callPackage (./pkgs/control-monad-free.nix) { };

  cpphs = final.callPackage (./pkgs/cpphs.nix) { };

  criterion = final.callPackage (./pkgs/criterion.nix) { };

  crypto-pubkey-types = final.callPackage (./pkgs/crypto-pubkey-types.nix) { };

  cryptohash-md5 = final.callPackage (./pkgs/cryptohash-md5.nix) { };

  cryptohash-sha1 = final.callPackage (./pkgs/cryptohash-sha1.nix) { };

  cryptonite-conduit = final.callPackage (./pkgs/cryptonite-conduit.nix) { };

  css-text = final.callPackage (./pkgs/css-text.nix) { };

  cubicbezier = final.callPackage (./pkgs/cubicbezier.nix) { };

  cursor = final.callPackage (./pkgs/cursor.nix) { };

  cursor-brick = final.callPackage (./pkgs/cursor-brick.nix) { };

  cursor-dirforest = final.callPackage (./pkgs/cursor-dirforest.nix) { };

  cursor-dirforest-brick = final.callPackage (./pkgs/cursor-dirforest-brick.nix) { };

  cursor-dirforest-gen = final.callPackage (./pkgs/cursor-dirforest-gen.nix) { };

  cursor-fuzzy-time = final.callPackage (./pkgs/cursor-fuzzy-time.nix) { };

  cursor-gen = final.callPackage (./pkgs/cursor-gen.nix) { };

  data-binary-ieee754 = final.callPackage (./pkgs/data-binary-ieee754.nix) { };

  data-bword = final.callPackage (./pkgs/data-bword.nix) { };

  data-checked = final.callPackage (./pkgs/data-checked.nix) { };

  data-dword = final.callPackage (./pkgs/data-dword.nix) { };

  data-endian = final.callPackage (./pkgs/data-endian.nix) { };

  data-ordlist = final.callPackage (./pkgs/data-ordlist.nix) { };

  data-serializer = final.callPackage (./pkgs/data-serializer.nix) { };

  data-sketches = final.callPackage (./pkgs/data-sketches.nix) { };

  data-sketches-core = final.callPackage (./pkgs/data-sketches-core.nix) { };

  data-textual = final.callPackage (./pkgs/data-textual.nix) { };

  dbus = final.callPackage (./pkgs/dbus.nix) { };

  deepseq-generics = final.callPackage (./pkgs/deepseq-generics.nix) { };

  deferred-folds = final.callPackage (./pkgs/deferred-folds.nix) { };

  dense-linear-algebra = final.callPackage (./pkgs/dense-linear-algebra.nix) { };

  dependent-map = final.callPackage (./pkgs/dependent-map.nix) { };

  dependent-sum = final.callPackage (./pkgs/dependent-sum.nix) { };

  dependent-sum-template = final.callPackage (./pkgs/dependent-sum-template.nix) { };

  deque = final.callPackage (./pkgs/deque.nix) { };

  deriving-aeson = final.callPackage (./pkgs/deriving-aeson.nix) { };

  deriving-compat = final.callPackage (./pkgs/deriving-compat.nix) { };

  dhall-docs = final.callPackage (./pkgs/dhall-docs.nix) { };

  dhall-json = final.callPackage (./pkgs/dhall-json.nix) { };

  dhall-nixpkgs = final.callPackage (./pkgs/dhall-nixpkgs.nix) { };

  diagrams-contrib = final.callPackage (./pkgs/diagrams-contrib.nix) { };

  diagrams-core = final.callPackage (./pkgs/diagrams-core.nix) { };

  diagrams-lib = final.callPackage (./pkgs/diagrams-lib.nix) { };

  diagrams-postscript = final.callPackage (./pkgs/diagrams-postscript.nix) { };

  diagrams-solve = final.callPackage (./pkgs/diagrams-solve.nix) { };

  diagrams-svg = final.callPackage (./pkgs/diagrams-svg.nix) { };

  dictionary-sharing = final.callPackage (./pkgs/dictionary-sharing.nix) { };

  digest = final.callPackage (./pkgs/digest.nix) { };

  dimensional = final.callPackage (./pkgs/dimensional.nix) { };

  direct-sqlite = final.callPackage (./pkgs/direct-sqlite.nix) { };

  dirforest = final.callPackage (./pkgs/dirforest.nix) { };

  dns = final.callPackage (./pkgs/dns.nix) { };

  doclayout = final.callPackage (./pkgs/doclayout.nix) { };

  doctemplates = final.callPackage (./pkgs/doctemplates.nix) { };

  doctest = final.callPackage (./pkgs/doctest.nix) { };

  doctest-discover = final.callPackage (./pkgs/doctest-discover.nix) { };

  dom-lt = final.callPackage (./pkgs/dom-lt.nix) { };

  double-conversion = final.callPackage (./pkgs/double-conversion.nix) { };

  dual-tree = final.callPackage (./pkgs/dual-tree.nix) { };

  echo = final.callPackage (./pkgs/echo.nix) { };

  ed25519 = final.callPackage (./pkgs/ed25519.nix) { };

  edit-distance = final.callPackage (./pkgs/edit-distance.nix) { };

  effectful = final.callPackage (./pkgs/effectful.nix) { };

  effectful-cache = final.callPackage (./pkgs/effectful-cache.nix) { };

  effectful-core = final.callPackage (./pkgs/effectful-core.nix) { };

  effectful-th = final.callPackage (./pkgs/effectful-th.nix) { };

  ekg = final.callPackage (./pkgs/ekg.nix) { };

  ekg-core = final.callPackage (./pkgs/ekg-core.nix) { };

  ekg-json = final.callPackage (./pkgs/ekg-json.nix) { };

  ekg-statsd = final.callPackage (./pkgs/ekg-statsd.nix) { };

  ekg-wai = final.callPackage (./pkgs/ekg-wai.nix) { };

  ema = final.callPackage (./pkgs/ema.nix) { };

  email-validate = final.callPackage (./pkgs/email-validate.nix) { };

  emojis = final.callPackage (./pkgs/emojis.nix) { };

  enclosed-exceptions = final.callPackage (./pkgs/enclosed-exceptions.nix) { };

  enummapset = final.callPackage (./pkgs/enummapset.nix) { };

  errors = final.callPackage (./pkgs/errors.nix) { };

  exact-combinatorics = final.callPackage (./pkgs/exact-combinatorics.nix) { };

  exact-pi = final.callPackage (./pkgs/exact-pi.nix) { };

  expiring-cache-map = final.callPackage (./pkgs/expiring-cache-map.nix) { };

  extended-reals = final.callPackage (./pkgs/extended-reals.nix) { };

  extensible-effects = final.callPackage (./pkgs/extensible-effects.nix) { };

  fast-math = final.callPackage (./pkgs/fast-math.nix) { };

  fcf-containers = final.callPackage (./pkgs/fcf-containers.nix) { };

  feedback = final.callPackage (./pkgs/feedback.nix) { };

  file-embed = final.callPackage (./pkgs/file-embed.nix) { };

  filelock = final.callPackage (./pkgs/filelock.nix) { };

  filemanip = final.callPackage (./pkgs/filemanip.nix) { };

  filepattern = final.callPackage (./pkgs/filepattern.nix) { };

  filtrable = final.callPackage (./pkgs/filtrable.nix) { };

  finite-field = final.callPackage (./pkgs/finite-field.nix) { };

  finite-typelits = final.callPackage (./pkgs/finite-typelits.nix) { };

  fixed = final.callPackage (./pkgs/fixed.nix) { };

  floatshow = final.callPackage (./pkgs/floatshow.nix) { };

  fmt = final.callPackage (./pkgs/fmt.nix) { };

  focus = final.callPackage (./pkgs/focus.nix) { };

  force-layout = final.callPackage (./pkgs/force-layout.nix) { };

  foreign-store = final.callPackage (./pkgs/foreign-store.nix) { };

  formatting = final.callPackage (./pkgs/formatting.nix) { };

  foundation = final.callPackage (./pkgs/foundation.nix) { };

  fourmolu = final.callPackage (./pkgs/fourmolu.nix) { };

  freer-simple = final.callPackage (./pkgs/freer-simple.nix) { };

  friendly-time = final.callPackage (./pkgs/friendly-time.nix) { };

  fsnotify = final.callPackage (./pkgs/fsnotify.nix) { };

  fusion-plugin-types = final.callPackage (./pkgs/fusion-plugin-types.nix) { };

  fuzzy = final.callPackage (./pkgs/fuzzy.nix) { };

  fuzzy-time = final.callPackage (./pkgs/fuzzy-time.nix) { };

  fuzzy-time-gen = final.callPackage (./pkgs/fuzzy-time-gen.nix) { };

  generic-arbitrary = final.callPackage (./pkgs/generic-arbitrary.nix) { };

  generic-data = final.callPackage (./pkgs/generic-data.nix) { };

  generic-lens = final.callPackage (./pkgs/generic-lens.nix) { };

  generic-lens-core = final.callPackage (./pkgs/generic-lens-core.nix) { };

  generic-lens-lite = final.callPackage (./pkgs/generic-lens-lite.nix) { };

  generic-monoid = final.callPackage (./pkgs/generic-monoid.nix) { };

  generic-optics = final.callPackage (./pkgs/generic-optics.nix) { };

  generic-optics-lite = final.callPackage (./pkgs/generic-optics-lite.nix) { };

  generics-sop = final.callPackage (./pkgs/generics-sop.nix) { };

  genvalidity-aeson = final.callPackage (./pkgs/genvalidity-aeson.nix) { };

  genvalidity-bytestring = final.callPackage (./pkgs/genvalidity-bytestring.nix) { };

  genvalidity-case-insensitive = final.callPackage (./pkgs/genvalidity-case-insensitive.nix) { };

  genvalidity-containers = final.callPackage (./pkgs/genvalidity-containers.nix) { };

  genvalidity-criterion = final.callPackage (./pkgs/genvalidity-criterion.nix) { };

  genvalidity-dirforest = final.callPackage (./pkgs/genvalidity-dirforest.nix) { };

  genvalidity-hspec-aeson = final.callPackage (./pkgs/genvalidity-hspec-aeson.nix) { };

  genvalidity-hspec-optics = final.callPackage (./pkgs/genvalidity-hspec-optics.nix) { };

  genvalidity-path = final.callPackage (./pkgs/genvalidity-path.nix) { };

  genvalidity-persistent = final.callPackage (./pkgs/genvalidity-persistent.nix) { };

  genvalidity-scientific = final.callPackage (./pkgs/genvalidity-scientific.nix) { };

  genvalidity-sydtest = final.callPackage (./pkgs/genvalidity-sydtest.nix) { };

  genvalidity-sydtest-aeson = final.callPackage (./pkgs/genvalidity-sydtest-aeson.nix) { };

  genvalidity-sydtest-hashable = final.callPackage (./pkgs/genvalidity-sydtest-hashable.nix) { };

  genvalidity-sydtest-lens = final.callPackage (./pkgs/genvalidity-sydtest-lens.nix) { };

  genvalidity-sydtest-persistent = final.callPackage (./pkgs/genvalidity-sydtest-persistent.nix) { };

  genvalidity-text = final.callPackage (./pkgs/genvalidity-text.nix) { };

  genvalidity-time = final.callPackage (./pkgs/genvalidity-time.nix) { };

  genvalidity-unordered-containers = final.callPackage (./pkgs/genvalidity-unordered-containers.nix) { };

  genvalidity-uuid = final.callPackage (./pkgs/genvalidity-uuid.nix) { };

  genvalidity-vector = final.callPackage (./pkgs/genvalidity-vector.nix) { };

  ghc-check = final.callPackage (./pkgs/ghc-check.nix) { };

  ghc-exactprint = final.callPackage (./pkgs/ghc-exactprint.nix) { };

  ghc-lib-parser = final.callPackage (./pkgs/ghc-lib-parser.nix) { };

  ghc-lib-parser-ex = final.callPackage (./pkgs/ghc-lib-parser-ex.nix) { };

  ghc-tcplugins-extra = final.callPackage (./pkgs/ghc-tcplugins-extra.nix) { };

  ghc-trace-events = final.callPackage (./pkgs/ghc-trace-events.nix) { };

  ghc-typelits-knownnat = final.callPackage (./pkgs/ghc-typelits-knownnat.nix) { };

  ghc-typelits-natnormalise = final.callPackage (./pkgs/ghc-typelits-natnormalise.nix) { };

  ghcid = final.callPackage (./pkgs/ghcid.nix) { };

  ghcide = final.callPackage (./pkgs/ghcide.nix) { };

  ghcide-bench = final.callPackage (./pkgs/ghcide-bench.nix) { };

  ghcide-test-utils = final.callPackage (./pkgs/ghcide-test-utils.nix) { };

  githash = final.callPackage (./pkgs/githash.nix) { };

  gitrev = final.callPackage (./pkgs/gitrev.nix) { };

  gridtables = final.callPackage (./pkgs/gridtables.nix) { };

  groups = final.callPackage (./pkgs/groups.nix) { };

  gtk2hs-buildtools = final.callPackage (./pkgs/gtk2hs-buildtools.nix) { };

  hackage-security = final.callPackage (./pkgs/hackage-security.nix) { };

  haddock-library = final.callPackage (./pkgs/haddock-library.nix) { };

  hashing = final.callPackage (./pkgs/hashing.nix) { };

  hashtables = final.callPackage (./pkgs/hashtables.nix) { };

  haskell-language-server = final.callPackage (./pkgs/haskell-language-server.nix) { };

  haskell-src = final.callPackage (./pkgs/haskell-src.nix) { };

  hasql = final.callPackage (./pkgs/hasql.nix) { };

  hasql-explain-tests = final.callPackage (./pkgs/hasql-explain-tests.nix) { };

  hasql-migration = final.callPackage (./pkgs/hasql-migration.nix) { };

  hasql-th = final.callPackage (./pkgs/hasql-th.nix) { };

  hasql-transaction = final.callPackage (./pkgs/hasql-transaction.nix) { };

  hdaemonize = final.callPackage (./pkgs/hdaemonize.nix) { };

  headed-megaparsec = final.callPackage (./pkgs/headed-megaparsec.nix) { };

  heaps = final.callPackage (./pkgs/heaps.nix) { };

  hedgehog-extras = final.callPackage (./pkgs/hedgehog-extras.nix) { };

  hedgehog-fn = final.callPackage (./pkgs/hedgehog-fn.nix) { };

  hedgehog-golden = final.callPackage (./pkgs/hedgehog-golden.nix) { };

  hedgehog-quickcheck = final.callPackage (./pkgs/hedgehog-quickcheck.nix) { };

  heredoc = final.callPackage (./pkgs/heredoc.nix) { };

  hex-text = final.callPackage (./pkgs/hex-text.nix) { };

  hie-bios = final.callPackage (./pkgs/hie-bios.nix) { };

  hie-compat = final.callPackage (./pkgs/hie-compat.nix) { };

  hiedb = final.callPackage (./pkgs/hiedb.nix) { };

  hinotify = final.callPackage (./pkgs/hinotify.nix) { };

  hint = final.callPackage (./pkgs/hint.nix) { };

  hlint = final.callPackage (./pkgs/hlint.nix) { };

  hls-alternate-number-format-plugin = final.callPackage (./pkgs/hls-alternate-number-format-plugin.nix) { };

  hls-cabal-fmt-plugin = final.callPackage (./pkgs/hls-cabal-fmt-plugin.nix) { };

  hls-cabal-plugin = final.callPackage (./pkgs/hls-cabal-plugin.nix) { };

  hls-call-hierarchy-plugin = final.callPackage (./pkgs/hls-call-hierarchy-plugin.nix) { };

  hls-change-type-signature-plugin = final.callPackage (./pkgs/hls-change-type-signature-plugin.nix) { };

  hls-class-plugin = final.callPackage (./pkgs/hls-class-plugin.nix) { };

  hls-code-range-plugin = final.callPackage (./pkgs/hls-code-range-plugin.nix) { };

  hls-explicit-fixity-plugin = final.callPackage (./pkgs/hls-explicit-fixity-plugin.nix) { };

  hls-explicit-imports-plugin = final.callPackage (./pkgs/hls-explicit-imports-plugin.nix) { };

  hls-explicit-record-fields-plugin = final.callPackage (./pkgs/hls-explicit-record-fields-plugin.nix) { };

  hls-fourmolu-plugin = final.callPackage (./pkgs/hls-fourmolu-plugin.nix) { };

  hls-gadt-plugin = final.callPackage (./pkgs/hls-gadt-plugin.nix) { };

  hls-graph = final.callPackage (./pkgs/hls-graph.nix) { };

  hls-hlint-plugin = final.callPackage (./pkgs/hls-hlint-plugin.nix) { };

  hls-module-name-plugin = final.callPackage (./pkgs/hls-module-name-plugin.nix) { };

  hls-overloaded-record-dot-plugin = final.callPackage (./pkgs/hls-overloaded-record-dot-plugin.nix) { };

  hls-plugin-api = final.callPackage (./pkgs/hls-plugin-api.nix) { };

  hls-pragmas-plugin = final.callPackage (./pkgs/hls-pragmas-plugin.nix) { };

  hls-qualify-imported-names-plugin = final.callPackage (./pkgs/hls-qualify-imported-names-plugin.nix) { };

  hls-refactor-plugin = final.callPackage (./pkgs/hls-refactor-plugin.nix) { };

  hls-refine-imports-plugin = final.callPackage (./pkgs/hls-refine-imports-plugin.nix) { };

  hls-retrie-plugin = final.callPackage (./pkgs/hls-retrie-plugin.nix) { };

  hls-splice-plugin = final.callPackage (./pkgs/hls-splice-plugin.nix) { };

  hls-test-utils = final.callPackage (./pkgs/hls-test-utils.nix) { };

  hnix = final.callPackage (./pkgs/hnix.nix) { };

  hnix-store-core = final.callPackage (./pkgs/hnix-store-core.nix) { };

  hnix-store-remote = final.callPackage (./pkgs/hnix-store-remote.nix) { };

  hosc = final.callPackage (./pkgs/hosc.nix) { };

  hp2pretty = final.callPackage (./pkgs/hp2pretty.nix) { };

  hpack-dhall = final.callPackage (./pkgs/hpack-dhall.nix) { };

  hslogger = final.callPackage (./pkgs/hslogger.nix) { };

  hslua = final.callPackage (./pkgs/hslua.nix) { };

  hslua-aeson = final.callPackage (./pkgs/hslua-aeson.nix) { };

  hslua-classes = final.callPackage (./pkgs/hslua-classes.nix) { };

  hslua-core = final.callPackage (./pkgs/hslua-core.nix) { };

  hslua-list = final.callPackage (./pkgs/hslua-list.nix) { };

  hslua-marshalling = final.callPackage (./pkgs/hslua-marshalling.nix) { };

  hslua-module-doclayout = final.callPackage (./pkgs/hslua-module-doclayout.nix) { };

  hslua-module-path = final.callPackage (./pkgs/hslua-module-path.nix) { };

  hslua-module-system = final.callPackage (./pkgs/hslua-module-system.nix) { };

  hslua-module-text = final.callPackage (./pkgs/hslua-module-text.nix) { };

  hslua-module-version = final.callPackage (./pkgs/hslua-module-version.nix) { };

  hslua-objectorientation = final.callPackage (./pkgs/hslua-objectorientation.nix) { };

  hslua-packaging = final.callPackage (./pkgs/hslua-packaging.nix) { };

  hslua-typing = final.callPackage (./pkgs/hslua-typing.nix) { };

  hspec-attoparsec = final.callPackage (./pkgs/hspec-attoparsec.nix) { };

  hspec-contrib = final.callPackage (./pkgs/hspec-contrib.nix) { };

  hspec-expectations-lifted = final.callPackage (./pkgs/hspec-expectations-lifted.nix) { };

  hspec-golden = final.callPackage (./pkgs/hspec-golden.nix) { };

  hspec-golden-aeson = final.callPackage (./pkgs/hspec-golden-aeson.nix) { };

  hspec-hedgehog = final.callPackage (./pkgs/hspec-hedgehog.nix) { };

  hspec-megaparsec = final.callPackage (./pkgs/hspec-megaparsec.nix) { };

  hspec-wai = final.callPackage (./pkgs/hspec-wai.nix) { };

  hsyslog = final.callPackage (./pkgs/hsyslog.nix) { };

  html = final.callPackage (./pkgs/html.nix) { };

  html-entities = final.callPackage (./pkgs/html-entities.nix) { };

  html-entity-map = final.callPackage (./pkgs/html-entity-map.nix) { };

  http-api-data = final.callPackage (./pkgs/http-api-data.nix) { };

  http-common = final.callPackage (./pkgs/http-common.nix) { };

  http-media = final.callPackage (./pkgs/http-media.nix) { };

  http-streams = final.callPackage (./pkgs/http-streams.nix) { };

  hw-aeson = final.callPackage (./pkgs/hw-aeson.nix) { };

  hw-fingertree = final.callPackage (./pkgs/hw-fingertree.nix) { };

  hw-hedgehog = final.callPackage (./pkgs/hw-hedgehog.nix) { };

  hw-hspec-hedgehog = final.callPackage (./pkgs/hw-hspec-hedgehog.nix) { };

  hw-prim = final.callPackage (./pkgs/hw-prim.nix) { };

  hxt = final.callPackage (./pkgs/hxt.nix) { };

  hxt-charproperties = final.callPackage (./pkgs/hxt-charproperties.nix) { };

  hxt-regex-xmlschema = final.callPackage (./pkgs/hxt-regex-xmlschema.nix) { };

  hxt-unicode = final.callPackage (./pkgs/hxt-unicode.nix) { };

  implicit-hie = final.callPackage (./pkgs/implicit-hie.nix) { };

  implicit-hie-cradle = final.callPackage (./pkgs/implicit-hie-cradle.nix) { };

  incipit-base = final.callPackage (./pkgs/incipit-base.nix) { };

  incipit-core = final.callPackage (./pkgs/incipit-core.nix) { };

  indexed-list-literals = final.callPackage (./pkgs/indexed-list-literals.nix) { };

  indexed-profunctors = final.callPackage (./pkgs/indexed-profunctors.nix) { };

  inline-c = final.callPackage (./pkgs/inline-c.nix) { };

  insert-ordered-containers = final.callPackage (./pkgs/insert-ordered-containers.nix) { };

  int-cast = final.callPackage (./pkgs/int-cast.nix) { };

  integer-logarithms = final.callPackage (./pkgs/integer-logarithms.nix) { };

  integration = final.callPackage (./pkgs/integration.nix) { };

  intervals = final.callPackage (./pkgs/intervals.nix) { };

  io-streams = final.callPackage (./pkgs/io-streams.nix) { };

  io-streams-haproxy = final.callPackage (./pkgs/io-streams-haproxy.nix) { };

  ipynb = final.callPackage (./pkgs/ipynb.nix) { };

  iso8601-time = final.callPackage (./pkgs/iso8601-time.nix) { };

  isomorphism-class = final.callPackage (./pkgs/isomorphism-class.nix) { };

  iwlib = final.callPackage (./pkgs/iwlib.nix) { };

  jira-wiki-markup = final.callPackage (./pkgs/jira-wiki-markup.nix) { };

  jose = final.callPackage (./pkgs/jose.nix) { };

  js-chart = final.callPackage (./pkgs/js-chart.nix) { };

  js-dgtable = final.callPackage (./pkgs/js-dgtable.nix) { };

  katip = final.callPackage (./pkgs/katip.nix) { };

  keys = final.callPackage (./pkgs/keys.nix) { };

  kvstore-effectful = final.callPackage (./pkgs/kvstore-effectful.nix) { };

  kvstore-effectful-cache = final.callPackage (./pkgs/kvstore-effectful-cache.nix) { };

  kvstore-effectful-spec = final.callPackage (./pkgs/kvstore-effectful-spec.nix) { };

  kvstore-effectful-statemap = final.callPackage (./pkgs/kvstore-effectful-statemap.nix) { };

  language-c = final.callPackage (./pkgs/language-c.nix) { };

  lazy-search = final.callPackage (./pkgs/lazy-search.nix) { };

  lazysmallcheck = final.callPackage (./pkgs/lazysmallcheck.nix) { };

  lens-family = final.callPackage (./pkgs/lens-family.nix) { };

  lens-family-th = final.callPackage (./pkgs/lens-family-th.nix) { };

  libsodium = final.callPackage (./pkgs/libsodium.nix) { };

  libsystemd-journal = final.callPackage (./pkgs/libsystemd-journal.nix) { };

  lift-type = final.callPackage (./pkgs/lift-type.nix) { };

  linear = final.callPackage (./pkgs/linear.nix) { };

  linear-base = final.callPackage (./pkgs/linear-base.nix) { };

  linear-generics = final.callPackage (./pkgs/linear-generics.nix) { };

  list-t = final.callPackage (./pkgs/list-t.nix) { };

  list-transformer = final.callPackage (./pkgs/list-transformer.nix) { };

  lockfree-queue = final.callPackage (./pkgs/lockfree-queue.nix) { };

  log-base = final.callPackage (./pkgs/log-base.nix) { };

  log-effectful = final.callPackage (./pkgs/log-effectful.nix) { };

  loop = final.callPackage (./pkgs/loop.nix) { };

  lpeg = final.callPackage (./pkgs/lpeg.nix) { };

  lrucache = final.callPackage (./pkgs/lrucache.nix) { };

  lsp = final.callPackage (./pkgs/lsp.nix) { };

  lsp-test = final.callPackage (./pkgs/lsp-test.nix) { };

  lsp-types = final.callPackage (./pkgs/lsp-types.nix) { };

  lua = final.callPackage (./pkgs/lua.nix) { };

  lua-arbitrary = final.callPackage (./pkgs/lua-arbitrary.nix) { };

  lucid = final.callPackage (./pkgs/lucid.nix) { };

  lucid-alpine = final.callPackage (./pkgs/lucid-alpine.nix) { };

  lucid-aria = final.callPackage (./pkgs/lucid-aria.nix) { };

  lucid-svg = final.callPackage (./pkgs/lucid-svg.nix) { };

  lukko = final.callPackage (./pkgs/lukko.nix) { };

  lvar = final.callPackage (./pkgs/lvar.nix) { };

  markdown = final.callPackage (./pkgs/markdown.nix) { };

  markdown-unlit = final.callPackage (./pkgs/markdown-unlit.nix) { };

  markov-chain-usage-model = final.callPackage (./pkgs/markov-chain-usage-model.nix) { };

  matrices = final.callPackage (./pkgs/matrices.nix) { };

  matrix = final.callPackage (./pkgs/matrix.nix) { };

  mersenne-random-pure64 = final.callPackage (./pkgs/mersenne-random-pure64.nix) { };

  mfsolve = final.callPackage (./pkgs/mfsolve.nix) { };

  microlens-aeson = final.callPackage (./pkgs/microlens-aeson.nix) { };

  microlens-ghc = final.callPackage (./pkgs/microlens-ghc.nix) { };

  microlens-platform = final.callPackage (./pkgs/microlens-platform.nix) { };

  microspec = final.callPackage (./pkgs/microspec.nix) { };

  microstache = final.callPackage (./pkgs/microstache.nix) { };

  mime-mail = final.callPackage (./pkgs/mime-mail.nix) { };

  minio-hs = final.callPackage (./pkgs/minio-hs.nix) { };

  mmark = final.callPackage (./pkgs/mmark.nix) { };

  mod = final.callPackage (./pkgs/mod.nix) { };

  modern-uri = final.callPackage (./pkgs/modern-uri.nix) { };

  monad-logger = final.callPackage (./pkgs/monad-logger.nix) { };

  monad-logger-extras = final.callPackage (./pkgs/monad-logger-extras.nix) { };

  monad-loops = final.callPackage (./pkgs/monad-loops.nix) { };

  monad-primitive = final.callPackage (./pkgs/monad-primitive.nix) { };

  monad-time = final.callPackage (./pkgs/monad-time.nix) { };

  monad-time-effectful = final.callPackage (./pkgs/monad-time-effectful.nix) { };

  monadlist = final.callPackage (./pkgs/monadlist.nix) { };

  monads-tf = final.callPackage (./pkgs/monads-tf.nix) { };

  monoid-extras = final.callPackage (./pkgs/monoid-extras.nix) { };

  monoid-subclasses = final.callPackage (./pkgs/monoid-subclasses.nix) { };

  mtl-compat = final.callPackage (./pkgs/mtl-compat.nix) { };

  mtl-prelude = final.callPackage (./pkgs/mtl-prelude.nix) { };

  multiset = final.callPackage (./pkgs/multiset.nix) { };

  mwc-random-monad = final.callPackage (./pkgs/mwc-random-monad.nix) { };

  natural-arithmetic = final.callPackage (./pkgs/natural-arithmetic.nix) { };

  natural-transformation = final.callPackage (./pkgs/natural-transformation.nix) { };

  neat-interpolation = final.callPackage (./pkgs/neat-interpolation.nix) { };

  net-mqtt = final.callPackage (./pkgs/net-mqtt.nix) { };

  network-conduit-tls = final.callPackage (./pkgs/network-conduit-tls.nix) { };

  network-info = final.callPackage (./pkgs/network-info.nix) { };

  network-ip = final.callPackage (./pkgs/network-ip.nix) { };

  newtype = final.callPackage (./pkgs/newtype.nix) { };

  newtype-generics = final.callPackage (./pkgs/newtype-generics.nix) { };

  nix-derivation = final.callPackage (./pkgs/nix-derivation.nix) { };

  non-negative = final.callPackage (./pkgs/non-negative.nix) { };

  nonempty-vector = final.callPackage (./pkgs/nonempty-vector.nix) { };

  numeric-extras = final.callPackage (./pkgs/numeric-extras.nix) { };

  numeric-prelude = final.callPackage (./pkgs/numeric-prelude.nix) { };

  numtype-dk = final.callPackage (./pkgs/numtype-dk.nix) { };

  odd-jobs = final.callPackage (./pkgs/odd-jobs.nix) { };

  one-liner = final.callPackage (./pkgs/one-liner.nix) { };

  openapi3 = final.callPackage (./pkgs/openapi3.nix) { };

  openssl-streams = final.callPackage (./pkgs/openssl-streams.nix) { };

  opentelemetry = final.callPackage (./pkgs/opentelemetry.nix) { };

  operational = final.callPackage (./pkgs/operational.nix) { };

  optics = final.callPackage (./pkgs/optics.nix) { };

  optics-core = final.callPackage (./pkgs/optics-core.nix) { };

  optics-extra = final.callPackage (./pkgs/optics-extra.nix) { };

  optics-th = final.callPackage (./pkgs/optics-th.nix) { };

  options = final.callPackage (./pkgs/options.nix) { };

  optparse-generic = final.callPackage (./pkgs/optparse-generic.nix) { };

  optparse-simple = final.callPackage (./pkgs/optparse-simple.nix) { };

  ordered-containers = final.callPackage (./pkgs/ordered-containers.nix) { };

  pager = final.callPackage (./pkgs/pager.nix) { };

  pandoc = final.callPackage (./pkgs/pandoc.nix) { };

  pandoc-lua-marshal = final.callPackage (./pkgs/pandoc-lua-marshal.nix) { };

  pandoc-types = final.callPackage (./pkgs/pandoc-types.nix) { };

  parsec-numbers = final.callPackage (./pkgs/parsec-numbers.nix) { };

  parsec1 = final.callPackage (./pkgs/parsec1.nix) { };

  parser-combinators = final.callPackage (./pkgs/parser-combinators.nix) { };

  parsers-megaparsec = final.callPackage (./pkgs/parsers-megaparsec.nix) { };

  partial-order = final.callPackage (./pkgs/partial-order.nix) { };

  password = final.callPackage (./pkgs/password.nix) { };

  password-types = final.callPackage (./pkgs/password-types.nix) { };

  path-pieces = final.callPackage (./pkgs/path-pieces.nix) { };

  pcg-random = final.callPackage (./pkgs/pcg-random.nix) { };

  pcre-heavy = final.callPackage (./pkgs/pcre-heavy.nix) { };

  pcre2 = final.callPackage (./pkgs/pcre2.nix) { };

  persistent = final.callPackage (./pkgs/persistent.nix) { };

  persistent-postgresql = final.callPackage (./pkgs/persistent-postgresql.nix) { };

  persistent-qq = final.callPackage (./pkgs/persistent-qq.nix) { };

  persistent-sqlite = final.callPackage (./pkgs/persistent-sqlite.nix) { };

  persistent-template = final.callPackage (./pkgs/persistent-template.nix) { };

  persistent-test = final.callPackage (./pkgs/persistent-test.nix) { };

  pg-entity = final.callPackage (./pkgs/pg-entity.nix) { };

  pg-transact = final.callPackage (./pkgs/pg-transact.nix) { };

  pg-transact-effectful = final.callPackage (./pkgs/pg-transact-effectful.nix) { };

  pipes = final.callPackage (./pkgs/pipes.nix) { };

  pipes-safe = final.callPackage (./pkgs/pipes-safe.nix) { };

  pointed = final.callPackage (./pkgs/pointed.nix) { };

  polyparse = final.callPackage (./pkgs/polyparse.nix) { };

  polysemy = final.callPackage (./pkgs/polysemy.nix) { };

  polysemy-extra = final.callPackage (./pkgs/polysemy-extra.nix) { };

  polysemy-kvstore = final.callPackage (./pkgs/polysemy-kvstore.nix) { };

  polysemy-methodology = final.callPackage (./pkgs/polysemy-methodology.nix) { };

  polysemy-path = final.callPackage (./pkgs/polysemy-path.nix) { };

  polysemy-plugin = final.callPackage (./pkgs/polysemy-plugin.nix) { };

  polysemy-several = final.callPackage (./pkgs/polysemy-several.nix) { };

  polysemy-test = final.callPackage (./pkgs/polysemy-test.nix) { };

  polysemy-time = final.callPackage (./pkgs/polysemy-time.nix) { };

  polysemy-vinyl = final.callPackage (./pkgs/polysemy-vinyl.nix) { };

  polysemy-zoo = final.callPackage (./pkgs/polysemy-zoo.nix) { };

  port-utils = final.callPackage (./pkgs/port-utils.nix) { };

  postgres-options = final.callPackage (./pkgs/postgres-options.nix) { };

  postgresql-binary = final.callPackage (./pkgs/postgresql-binary.nix) { };

  postgresql-libpq = final.callPackage (./pkgs/postgresql-libpq.nix) { };

  postgresql-migration = final.callPackage (./pkgs/postgresql-migration.nix) { };

  postgresql-simple = final.callPackage (./pkgs/postgresql-simple.nix) { };

  postgresql-simple-migration = final.callPackage (./pkgs/postgresql-simple-migration.nix) { };

  postgresql-syntax = final.callPackage (./pkgs/postgresql-syntax.nix) { };

  pqueue = final.callPackage (./pkgs/pqueue.nix) { };

  pretty-relative-time = final.callPackage (./pkgs/pretty-relative-time.nix) { };

  primes = final.callPackage (./pkgs/primes.nix) { };

  primitive = final.callPackage (./pkgs/primitive.nix) { };

  primitive-addr = final.callPackage (./pkgs/primitive-addr.nix) { };

  primitive-extras = final.callPackage (./pkgs/primitive-extras.nix) { };

  primitive-offset = final.callPackage (./pkgs/primitive-offset.nix) { };

  primitive-unlifted = final.callPackage (./pkgs/primitive-unlifted.nix) { };

  prometheus-client = final.callPackage (./pkgs/prometheus-client.nix) { };

  prometheus-metrics-ghc = final.callPackage (./pkgs/prometheus-metrics-ghc.nix) { };

  prometheus-proc = final.callPackage (./pkgs/prometheus-proc.nix) { };

  proteaaudio-sdl = final.callPackage (./pkgs/proteaaudio-sdl.nix) { };

  protolude = final.callPackage (./pkgs/protolude.nix) { };

  quickcheck-arbitrary-adt = final.callPackage (./pkgs/quickcheck-arbitrary-adt.nix) { };

  quickcheck-assertions = final.callPackage (./pkgs/quickcheck-assertions.nix) { };

  quickcheck-text = final.callPackage (./pkgs/quickcheck-text.nix) { };

  quiet = final.callPackage (./pkgs/quiet.nix) { };

  random-bytestring = final.callPackage (./pkgs/random-bytestring.nix) { };

  random-fu = final.callPackage (./pkgs/random-fu.nix) { };

  raven-haskell = final.callPackage (./pkgs/raven-haskell.nix) { };

  readable = final.callPackage (./pkgs/readable.nix) { };

  rebase = final.callPackage (./pkgs/rebase.nix) { };

  recursion-schemes = final.callPackage (./pkgs/recursion-schemes.nix) { };

  ref-tf = final.callPackage (./pkgs/ref-tf.nix) { };

  refact = final.callPackage (./pkgs/refact.nix) { };

  refined = final.callPackage (./pkgs/refined.nix) { };

  regex-applicative = final.callPackage (./pkgs/regex-applicative.nix) { };

  regex-compat = final.callPackage (./pkgs/regex-compat.nix) { };

  regex-pcre-builtin = final.callPackage (./pkgs/regex-pcre-builtin.nix) { };

  relude = final.callPackage (./pkgs/relude.nix) { };

  replace-megaparsec = final.callPackage (./pkgs/replace-megaparsec.nix) { };

  rerebase = final.callPackage (./pkgs/rerebase.nix) { };

  resolv = final.callPackage (./pkgs/resolv.nix) { };

  resource-pool = final.callPackage (./pkgs/resource-pool.nix) { };

  retrie = final.callPackage (./pkgs/retrie.nix) { };

  retry = final.callPackage (./pkgs/retry.nix) { };

  rope-utf16-splay = final.callPackage (./pkgs/rope-utf16-splay.nix) { };

  row-types = final.callPackage (./pkgs/row-types.nix) { };

  rvar = final.callPackage (./pkgs/rvar.nix) { };

  saltine = final.callPackage (./pkgs/saltine.nix) { };

  sandwich = final.callPackage (./pkgs/sandwich.nix) { };

  say = final.callPackage (./pkgs/say.nix) { };

  scotty = final.callPackage (./pkgs/scotty.nix) { };

  sdl2 = final.callPackage (./pkgs/sdl2.nix) { };

  sdl2-gfx = final.callPackage (./pkgs/sdl2-gfx.nix) { };

  sdl2-image = final.callPackage (./pkgs/sdl2-image.nix) { };

  sdl2-mixer = final.callPackage (./pkgs/sdl2-mixer.nix) { };

  sdl2-ttf = final.callPackage (./pkgs/sdl2-ttf.nix) { };

  selective = final.callPackage (./pkgs/selective.nix) { };

  semver = final.callPackage (./pkgs/semver.nix) { };

  servant = final.callPackage (./pkgs/servant.nix) { };

  servant-auth = final.callPackage (./pkgs/servant-auth.nix) { };

  servant-auth-client = final.callPackage (./pkgs/servant-auth-client.nix) { };

  servant-auth-server = final.callPackage (./pkgs/servant-auth-server.nix) { };

  servant-blaze = final.callPackage (./pkgs/servant-blaze.nix) { };

  servant-client = final.callPackage (./pkgs/servant-client.nix) { };

  servant-client-core = final.callPackage (./pkgs/servant-client-core.nix) { };

  servant-docs = final.callPackage (./pkgs/servant-docs.nix) { };

  servant-effectful = final.callPackage (./pkgs/servant-effectful.nix) { };

  servant-foreign = final.callPackage (./pkgs/servant-foreign.nix) { };

  servant-lucid = final.callPackage (./pkgs/servant-lucid.nix) { };

  servant-multipart = final.callPackage (./pkgs/servant-multipart.nix) { };

  servant-multipart-api = final.callPackage (./pkgs/servant-multipart-api.nix) { };

  servant-openapi3 = final.callPackage (./pkgs/servant-openapi3.nix) { };

  servant-server = final.callPackage (./pkgs/servant-server.nix) { };

  servant-static-th = final.callPackage (./pkgs/servant-static-th.nix) { };

  servant-websockets = final.callPackage (./pkgs/servant-websockets.nix) { };

  setlocale = final.callPackage (./pkgs/setlocale.nix) { };

  shake = final.callPackage (./pkgs/shake.nix) { };

  shake-bench = final.callPackage (./pkgs/shake-bench.nix) { };

  shakespeare = final.callPackage (./pkgs/shakespeare.nix) { };

  shelly = final.callPackage (./pkgs/shelly.nix) { };

  shh = final.callPackage (./pkgs/shh.nix) { };

  should-not-typecheck = final.callPackage (./pkgs/should-not-typecheck.nix) { };

  show-combinators = final.callPackage (./pkgs/show-combinators.nix) { };

  singleton-bool = final.callPackage (./pkgs/singleton-bool.nix) { };

  singletons = final.callPackage (./pkgs/singletons.nix) { };

  size-based = final.callPackage (./pkgs/size-based.nix) { };

  skylighting = final.callPackage (./pkgs/skylighting.nix) { };

  skylighting-core = final.callPackage (./pkgs/skylighting-core.nix) { };

  skylighting-format-ansi = final.callPackage (./pkgs/skylighting-format-ansi.nix) { };

  skylighting-format-blaze-html = final.callPackage (./pkgs/skylighting-format-blaze-html.nix) { };

  skylighting-format-context = final.callPackage (./pkgs/skylighting-format-context.nix) { };

  skylighting-format-latex = final.callPackage (./pkgs/skylighting-format-latex.nix) { };

  slugify = final.callPackage (./pkgs/slugify.nix) { };

  snap-core = final.callPackage (./pkgs/snap-core.nix) { };

  snap-server = final.callPackage (./pkgs/snap-server.nix) { };

  sop-core = final.callPackage (./pkgs/sop-core.nix) { };

  sort = final.callPackage (./pkgs/sort.nix) { };

  sorted-list = final.callPackage (./pkgs/sorted-list.nix) { };

  souffle-haskell = final.callPackage (./pkgs/souffle-haskell.nix) { };

  sqlite-simple = final.callPackage (./pkgs/sqlite-simple.nix) { };

  statestack = final.callPackage (./pkgs/statestack.nix) { };

  statistics = final.callPackage (./pkgs/statistics.nix) { };

  statistics-linreg = final.callPackage (./pkgs/statistics-linreg.nix) { };

  stm-chans = final.callPackage (./pkgs/stm-chans.nix) { };

  stm-containers = final.callPackage (./pkgs/stm-containers.nix) { };

  stm-hamt = final.callPackage (./pkgs/stm-hamt.nix) { };

  streaming = final.callPackage (./pkgs/streaming.nix) { };

  streaming-binary = final.callPackage (./pkgs/streaming-binary.nix) { };

  streaming-bytestring = final.callPackage (./pkgs/streaming-bytestring.nix) { };

  streamly = final.callPackage (./pkgs/streamly.nix) { };

  streamly-core = final.callPackage (./pkgs/streamly-core.nix) { };

  strict-list = final.callPackage (./pkgs/strict-list.nix) { };

  string-conv = final.callPackage (./pkgs/string-conv.nix) { };

  string-conversions = final.callPackage (./pkgs/string-conversions.nix) { };

  string-interpolate = final.callPackage (./pkgs/string-interpolate.nix) { };

  stringsearch = final.callPackage (./pkgs/stringsearch.nix) { };

  stripeapi = final.callPackage (./pkgs/stripeapi.nix) { };

  sundown = final.callPackage (./pkgs/sundown.nix) { };

  svg-builder = final.callPackage (./pkgs/svg-builder.nix) { };

  swagger2 = final.callPackage (./pkgs/swagger2.nix) { };

  system-fileio = final.callPackage (./pkgs/system-fileio.nix) { };

  system-filepath = final.callPackage (./pkgs/system-filepath.nix) { };

  tagsoup = final.callPackage (./pkgs/tagsoup.nix) { };

  tasty-discover = final.callPackage (./pkgs/tasty-discover.nix) { };

  tasty-hslua = final.callPackage (./pkgs/tasty-hslua.nix) { };

  tasty-hspec = final.callPackage (./pkgs/tasty-hspec.nix) { };

  tasty-lua = final.callPackage (./pkgs/tasty-lua.nix) { };

  tasty-rerun = final.callPackage (./pkgs/tasty-rerun.nix) { };

  tasty-wai = final.callPackage (./pkgs/tasty-wai.nix) { };

  tdigest = final.callPackage (./pkgs/tdigest.nix) { };

  template-haskell-compat-v0208 = final.callPackage (./pkgs/template-haskell-compat-v0208.nix) { };

  test-framework-smallcheck = final.callPackage (./pkgs/test-framework-smallcheck.nix) { };

  testing-feat = final.callPackage (./pkgs/testing-feat.nix) { };

  testing-type-modifiers = final.callPackage (./pkgs/testing-type-modifiers.nix) { };

  texmath = final.callPackage (./pkgs/texmath.nix) { };

  text-ansi = final.callPackage (./pkgs/text-ansi.nix) { };

  text-builder = final.callPackage (./pkgs/text-builder.nix) { };

  text-builder-dev = final.callPackage (./pkgs/text-builder-dev.nix) { };

  text-conversions = final.callPackage (./pkgs/text-conversions.nix) { };

  text-display = final.callPackage (./pkgs/text-display.nix) { };

  text-icu = final.callPackage (./pkgs/text-icu.nix) { };

  text-latin1 = final.callPackage (./pkgs/text-latin1.nix) { };

  text-printer = final.callPackage (./pkgs/text-printer.nix) { };

  text-rope = final.callPackage (./pkgs/text-rope.nix) { };

  th-desugar = final.callPackage (./pkgs/th-desugar.nix) { };

  th-env = final.callPackage (./pkgs/th-env.nix) { };

  th-extras = final.callPackage (./pkgs/th-extras.nix) { };

  these-skinny = final.callPackage (./pkgs/these-skinny.nix) { };

  threads = final.callPackage (./pkgs/threads.nix) { };

  tidal = final.callPackage (./pkgs/tidal.nix) { };

  tidal-link = final.callPackage (./pkgs/tidal-link.nix) { };

  time-locale-compat = final.callPackage (./pkgs/time-locale-compat.nix) { };

  time-units = final.callPackage (./pkgs/time-units.nix) { };

  timeit = final.callPackage (./pkgs/timeit.nix) { };

  timing-convenience = final.callPackage (./pkgs/timing-convenience.nix) { };

  tmp-postgres = final.callPackage (./pkgs/tmp-postgres.nix) { };

  torsor = final.callPackage (./pkgs/torsor.nix) { };

  transformers-except = final.callPackage (./pkgs/transformers-except.nix) { };

  tuple = final.callPackage (./pkgs/tuple.nix) { };

  type-errors = final.callPackage (./pkgs/type-errors.nix) { };

  type-errors-pretty = final.callPackage (./pkgs/type-errors-pretty.nix) { };

  type-hint = final.callPackage (./pkgs/type-hint.nix) { };

  typerep-map = final.callPackage (./pkgs/typerep-map.nix) { };

  uglymemo = final.callPackage (./pkgs/uglymemo.nix) { };

  unagi-chan = final.callPackage (./pkgs/unagi-chan.nix) { };

  unicode-collation = final.callPackage (./pkgs/unicode-collation.nix) { };

  unicode-data = final.callPackage (./pkgs/unicode-data.nix) { };

  unicode-transforms = final.callPackage (./pkgs/unicode-transforms.nix) { };

  universe-reverse-instances = final.callPackage (./pkgs/universe-reverse-instances.nix) { };

  unix-bytestring = final.callPackage (./pkgs/unix-bytestring.nix) { };

  unix-memory = final.callPackage (./pkgs/unix-memory.nix) { };

  uri-bytestring = final.callPackage (./pkgs/uri-bytestring.nix) { };

  url-slug = final.callPackage (./pkgs/url-slug.nix) { };

  uuid = final.callPackage (./pkgs/uuid.nix) { };

  validation = final.callPackage (./pkgs/validation.nix) { };

  validation-selective = final.callPackage (./pkgs/validation-selective.nix) { };

  validity-case-insensitive = final.callPackage (./pkgs/validity-case-insensitive.nix) { };

  validity-path = final.callPackage (./pkgs/validity-path.nix) { };

  validity-persistent = final.callPackage (./pkgs/validity-persistent.nix) { };

  validity-primitive = final.callPackage (./pkgs/validity-primitive.nix) { };

  validity-time = final.callPackage (./pkgs/validity-time.nix) { };

  validity-uuid = final.callPackage (./pkgs/validity-uuid.nix) { };

  vector-instances = final.callPackage (./pkgs/vector-instances.nix) { };

  vector-sized = final.callPackage (./pkgs/vector-sized.nix) { };

  vector-space = final.callPackage (./pkgs/vector-space.nix) { };

  version-natural = final.callPackage (./pkgs/version-natural.nix) { };

  version-natural-dhall-instance = final.callPackage (./pkgs/version-natural-dhall-instance.nix) { };

  vinyl = final.callPackage (./pkgs/vinyl.nix) { };

  wai-app-static = final.callPackage (./pkgs/wai-app-static.nix) { };

  wai-extra = final.callPackage (./pkgs/wai-extra.nix) { };

  wai-log = final.callPackage (./pkgs/wai-log.nix) { };

  wai-middleware-heartbeat = final.callPackage (./pkgs/wai-middleware-heartbeat.nix) { };

  wai-middleware-prometheus = final.callPackage (./pkgs/wai-middleware-prometheus.nix) { };

  wai-middleware-static = final.callPackage (./pkgs/wai-middleware-static.nix) { };

  wai-websockets = final.callPackage (./pkgs/wai-websockets.nix) { };

  warp = final.callPackage (./pkgs/warp.nix) { };

  warp-tls = final.callPackage (./pkgs/warp-tls.nix) { };

  websockets = final.callPackage (./pkgs/websockets.nix) { };

  wide-word = final.callPackage (./pkgs/wide-word.nix) { };

  with-utf8 = final.callPackage (./pkgs/with-utf8.nix) { };

  wizards = final.callPackage (./pkgs/wizards.nix) { };

  word-compat = final.callPackage (./pkgs/word-compat.nix) { };

  wreq = final.callPackage (./pkgs/wreq.nix) { };

  wuss = final.callPackage (./pkgs/wuss.nix) { };

  xml-conduit = final.callPackage (./pkgs/xml-conduit.nix) { };

  xml-conduit-writer = final.callPackage (./pkgs/xml-conduit-writer.nix) { };

  xml-types = final.callPackage (./pkgs/xml-types.nix) { };

  xmlgen = final.callPackage (./pkgs/xmlgen.nix) { };

  xss-sanitize = final.callPackage (./pkgs/xss-sanitize.nix) { };

  zip-archive = final.callPackage (./pkgs/zip-archive.nix) { };

  zlib-bindings = final.callPackage (./pkgs/zlib-bindings.nix) { };

}
