{ mkDerivation, base, bytestring, containers, dhall
, neat-interpolation, optparse-generic, shell-escape, stdenv, text
, text-format, trifecta, vector
}:
mkDerivation {
  pname = "dhall-bash";
  version = "1.0.7";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    base bytestring containers dhall neat-interpolation shell-escape
    text text-format vector
  ];
  executableHaskellDepends = [
    base bytestring dhall optparse-generic text trifecta
  ];
  description = "Compile Dhall to Bash";
  license = stdenv.lib.licenses.bsd3;
}
