{ mkDerivation, array, base, bytestring, containers, directory
, filepath, ghc, ghc-boot, lib, transformers
}:
mkDerivation {
  pname = "hie-compat";
  version = "0.3.1.1";
  sha256 = "5b1a16d4b9171b06868767669eed4c58605466acbbcbc5d16f69efe7354f4737";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array base bytestring containers directory filepath ghc ghc-boot
    transformers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell/haskell-language-server/tree/master/hie-compat#readme";
  description = "HIE files for GHC 8.8 and other HIE file backports";
  license = lib.licenses.asl20;
  broken = false;
}