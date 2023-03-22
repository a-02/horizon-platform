{ mkDerivation, X11, base, lib, libXft, utf8-string }:
mkDerivation {
  pname = "X11-xft";
  version = "0.3.4";
  sha256 = "6200d2deabe9638bad4d1fed4399e3147254c2776a0fae71bf38ca423242a916";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base utf8-string X11 ];
  libraryPkgconfigDepends = [ libXft ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Bindings to the Xft and some Xrender parts";
  license = lib.licenses.bsd3;
  broken = false;
}