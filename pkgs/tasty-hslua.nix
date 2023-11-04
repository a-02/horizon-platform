{ mkDerivation, base, bytestring, hslua-core, lib, tasty
, tasty-hunit
}:
mkDerivation {
  pname = "tasty-hslua";
  version = "1.1.0";
  sha256 = "f53dd79c496effff3be54d5706ecdcf3117d04120795f9e54fc80f5ab0097211";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring hslua-core tasty tasty-hunit
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://hslua.org/";
  description = "Tasty helpers to test HsLua";
  license = lib.licenses.mit;
  broken = false;
}