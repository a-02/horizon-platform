{ mkDerivation, base, constraints-extras, lib, some }:
mkDerivation {
  pname = "dependent-sum";
  version = "0.7.2.0";
  sha256 = "826561ecf285abc857bde043e5aac50cb7a7157aaf24fd1aee26a25d4c2a3cbb";
  revision = "1";
  editedCabalFile = "0qybk8x6gyvg8pgf84mywlfajlcvg9pp4rs1wfn9fa7ns6sms88n";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base constraints-extras some ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/obsidiansystems/dependent-sum";
  description = "Dependent sum type";
  license = lib.licenses.publicDomain;
  broken = false;
}