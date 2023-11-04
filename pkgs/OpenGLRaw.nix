{ mkDerivation, base, bytestring, containers, fixed, half, lib
, libGL, text, transformers
}:
mkDerivation {
  pname = "OpenGLRaw";
  version = "3.3.4.1";
  sha256 = "121abdea149ac74514efb2c1c1c319466757242d1b72a8bdf99d49535f06d31e";
  revision = "1";
  editedCabalFile = "15abvqkxc08lx9d44323izccfp7bqfiljnd587zn80vdvmkzs6zc";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring containers fixed half text transformers
  ];
  librarySystemDepends = [ libGL ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://www.haskell.org/haskellwiki/Opengl";
  description = "A raw binding for the OpenGL graphics system";
  license = lib.licenses.bsd3;
  broken = false;
}