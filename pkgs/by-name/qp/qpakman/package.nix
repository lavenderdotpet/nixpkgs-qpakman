{
  lib,
  stdenv,
  fetchFromGitHub,
  pkg-config,
  cmake,
  stb,
  zlib,
}:
stdenv.mkDerivation {
  pname = "qpakman";
  version = "0-unstable-2025-08-30";

  src = fetchFromGitHub {
    owner = "LibreQuake";
    repo = "qpakman";
    rev = "cdc3c7b41bd921307938226d386cb14e62a88416";
    hash = "";
  };

  nativeBuildInputs = [
    cmake
    pkg-config
  ];

  buildInputs = [
    stb
    zlib
  ];

  meta = with lib; {
    homepage = "https://github.com/fhomolka/qpakman";
    description = "command-line tool for managing PAK and WAD files from QuakeI/II & Hexen II";
    license = licenses.gpl2Plus;
    maintainers = [ ];
    platforms = platforms.unix;
    mainProgram = "qpakman";
  };
}
