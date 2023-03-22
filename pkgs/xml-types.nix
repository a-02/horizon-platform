{ mkDerivation, base, deepseq, lib, text }:
mkDerivation {
  pname = "xml-types";
  version = "0.3.8";
  sha256 = "dad5e4ce602b7d1f4be37c0cfd99a261a4573746bfd80d917dc955b72da84c80";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base deepseq text ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://git.singpolyma.net/xml-types-haskell";
  description = "Basic types for representing XML";
  license = lib.licenses.mit;
  broken = false;
}