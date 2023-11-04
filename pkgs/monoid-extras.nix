{ mkDerivation, base, criterion, groups, lib, semigroupoids
, semigroups
}:
mkDerivation {
  pname = "monoid-extras";
  version = "0.6.2";
  sha256 = "9ceec9125e4727c40bb1622319fb77f2d2fac39735f533afdb7f33e118b85de1";
  revision = "2";
  editedCabalFile = "08ydfb0n886qzy940lfvyv1pcj51yhpa0kz6pwn7lm22fh1hb5pf";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base groups semigroupoids ];
  benchmarkHaskellDepends = [ base criterion semigroups ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Various extra monoid-related definitions and utilities";
  license = lib.licenses.bsd3;
  broken = false;
}