{ mkDerivation, Chart, Chart-diagrams, aeson, base, bytestring
, diagrams-contrib, diagrams-core, diagrams-lib, diagrams-svg
, directory, extra, filepath, lens, lens-aeson, lib, mtl, shake
, text
}:
mkDerivation {
  pname = "shake-bench";
  version = "0.2.0.0";
  sha256 = "21f159e881e3bc71406877a51fc40e1c9e7b553bbf376b0400087222f90ddd4b";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base bytestring Chart Chart-diagrams diagrams-contrib
    diagrams-core diagrams-lib diagrams-svg directory extra filepath
    lens lens-aeson mtl shake text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Build rules for historical benchmarking";
  license = lib.licenses.asl20;
  broken = false;
}