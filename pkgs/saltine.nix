{ mkDerivation, QuickCheck, base, bytestring, criterion, deepseq
, hashable, lib, libsodium, profunctors, semigroups, test-framework
, test-framework-quickcheck2, text
}:
mkDerivation {
  pname = "saltine";
  version = "0.2.1.0";
  sha256 = "aa8b3d7af6ccf7930e403388782413111b6246206ad772dd982d83551f963cd9";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring deepseq hashable profunctors text
  ];
  libraryPkgconfigDepends = [ libsodium ];
  testHaskellDepends = [
    base bytestring QuickCheck semigroups test-framework
    test-framework-quickcheck2 text
  ];
  benchmarkHaskellDepends = [
    base bytestring criterion deepseq text
  ];
  benchmarkSystemDepends = [ libsodium ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Cryptography that's easy to digest (NaCl/libsodium bindings)";
  license = lib.licenses.mit;
  broken = false;
}