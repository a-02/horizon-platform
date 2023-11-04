{ mkDerivation, aeson, base, bytestring, ghc-prim, http-client
, http-conduit, http-types, lib, mtl, scientific, text, time
, transformers, unordered-containers, vector
}:
mkDerivation {
  pname = "stripeapi";
  version = "3.0.0.0";
  sha256 = "3b6061fc1e6330cb238ab3a8a48191b7f7f6744c8f746a36aab410c8aeef625b";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base bytestring ghc-prim http-client http-conduit http-types
    mtl scientific text time transformers unordered-containers vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/Haskell-OpenAPI-Code-Generator/Stripe-Haskell-Library#readme";
  description = "Stripe-Library";
  license = lib.licenses.mit;
  broken = false;
}