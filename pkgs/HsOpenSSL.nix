{ mkDerivation, Cabal, base, bytestring, lib, network, openssl
, time
}:
mkDerivation {
  pname = "HsOpenSSL";
  version = "0.11.7.6";
  sha256 = "662de291bb4aaac1183b0e4e15345cc1f40e64f293f2ba9513f441ec1cf4c7a2";
  revision = "1";
  editedCabalFile = "0nqvb9g1wxz7ydpx9qc9lq9piwsy5zfk454v7mxlwng4i1jsgpk1";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  setupHaskellDepends = [ base Cabal ];
  libraryHaskellDepends = [ base bytestring network time ];
  librarySystemDepends = [ openssl ];
  testHaskellDepends = [ base bytestring ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-cryptography/HsOpenSSL";
  description = "Partial OpenSSL binding for Haskell";
  license = lib.licenses.publicDomain;
  broken = false;
}