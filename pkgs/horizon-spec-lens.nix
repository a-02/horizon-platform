{ mkDerivation, base, fetchzip, horizon-spec, lens, lib }:
mkDerivation {
  pname = "horizon-spec-lens";
  version = "0.2.0";
  src = fetchzip {
    url = "https://gitlab.horizon-haskell.net/haskell/horizon-spec-lens/-/archive/0.2.0/horizon-spec-lens-0.2.0.tar.gz";
    sha256 = "0iqpvid9p6gyvbmc45cry2fafmg9khl0wkpn4sc9gfhgxhl2a6gm";
  };
  postUnpack = "sourceRoot+=/horizon-spec-lens/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base horizon-spec lens ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://horizon-haskell.net";
  description = "Horizon Stable Package Set Lenses";
  license = lib.licenses.mit;
  broken = false;
}
