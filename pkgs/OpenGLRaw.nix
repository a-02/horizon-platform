{ mkDerivation
, base
, bytestring
, containers
, fixed
, half
, lib
, libGL
, text
, transformers
}:
mkDerivation {
  pname = "OpenGLRaw";
  version = "3.3.4.1";
  sha256 = "121abdea149ac74514efb2c1c1c319466757242d1b72a8bdf99d49535f06d31e";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    containers
    fixed
    half
    text
    transformers
  ];
  librarySystemDepends = [ libGL ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://www.haskell.org/haskellwiki/Opengl";
  description = "A raw binding for the OpenGL graphics system";
  license = lib.licenses.bsd3;
  broken = false;
}
