{ mkDerivation, base, bytestring, containers, dhall, fetchzip
, horizon-spec, lib, path, text
}:
mkDerivation {
  pname = "horizon-spec-pretty";
  version = "0.1.0";
  src = fetchzip {
    url = "https://gitlab.horizon-haskell.net/haskell/horizon-spec-pretty/-/archive/0.1.1/horizon-spec-pretty-0.1.1.tar.gz";
    sha256 = "1prv4kykgfv2g319qbr47xs4w8hf4azn7fdykaf0zq5kbwr7j0g4";
  };
  postUnpack = "sourceRoot+=/horizon-spec-pretty/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring containers dhall horizon-spec path text
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