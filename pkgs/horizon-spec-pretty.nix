{ mkDerivation
, base
, bytestring
, containers
, dhall
, fetchzip
, horizon-spec
, lib
, path
, text
}:
mkDerivation {
  pname = "horizon-spec-pretty";
  version = "0.1.0";
  src = fetchzip {
    url = "https://gitlab.horizon-haskell.net/haskell/horizon-spec-pretty/-/archive/0.1.0/horizon-spec-pretty-0.1.0.tar.gz";
    sha256 = "0sa90d981qig9qlf260d82kkbdjan4501briv3wd15h2nzzd4faz";
  };
  postUnpack = "sourceRoot+=/horizon-spec-pretty/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    containers
    dhall
    horizon-spec
    path
    text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://horizon-haskell.net";
  description = "Horizon Stable Package Set Pretty Printer";
  license = lib.licenses.mit;
  broken = false;
}
