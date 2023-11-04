{ mkDerivation, base, bytestring, hashable, hsyslog, lib, pipes
, pipes-safe, semigroups, systemd, text, transformers, uniplate
, unix-bytestring, unordered-containers, uuid, vector
}:
mkDerivation {
  pname = "libsystemd-journal";
  version = "1.4.5.1";
  sha256 = "16da6bd693c0112d2d3567fcc06a65b3e1844eb9c107b5692973216cd1a857b4";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring hashable hsyslog pipes pipes-safe semigroups text
    transformers uniplate unix-bytestring unordered-containers uuid
    vector
  ];
  libraryPkgconfigDepends = [ systemd ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/ocharles/libsystemd-journal";
  description = "Haskell bindings to libsystemd-journal";
  license = lib.licenses.bsd3;
  broken = false;
}