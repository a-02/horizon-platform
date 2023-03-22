{ mkDerivation, base, lib }:
mkDerivation {
  pname = "heaps";
  version = "0.4";
  sha256 = "89329df8b95ae99ef272e41e7a2d0fe2f1bb7eacfcc34bc01664414b33067cfd";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/ekmett/heaps/";
  description = "Asymptotically optimal Brodal/Okasaki heaps";
  license = lib.licenses.bsd3;
  broken = false;
}