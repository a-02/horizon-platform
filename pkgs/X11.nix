{ mkDerivation, base, data-default-class, lib, libX11
, libXScrnSaver, libXext, libXinerama, libXrandr, libXrender
}:
mkDerivation {
  pname = "X11";
  version = "1.10.3";
  sha256 = "d84ad1b8f5cdb65a0de17f84d765ebbb7aeeab9608c3740804da28100616d242";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base data-default-class ];
  librarySystemDepends = [
    libX11 libXext libXinerama libXrandr libXrender libXScrnSaver
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/xmonad/X11";
  description = "A binding to the X11 graphics library";
  license = lib.licenses.bsd3;
  broken = false;
}