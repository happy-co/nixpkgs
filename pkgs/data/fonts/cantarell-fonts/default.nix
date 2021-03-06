{ stdenv, fetchurl }:

stdenv.mkDerivation rec {
  major = "0.0";
  minor = "25";
  name = "cantarell-fonts-${major}.${minor}";

  src = fetchurl {
    url = "mirror://gnome/sources/cantarell-fonts/${major}/${name}.tar.xz";
    sha256 = "0zvkd8cm1cg2919v1js9qmzwa02sjl7qajj3gcvgqvai1fm2i8hl";
  };

  outputHashAlgo = "sha256";
  outputHashMode = "recursive";
  outputHash = "13w5qj1lx4vk875yna35v9lnc80cwmphcafnmp0d5grg4d98cry2";

  meta = {
    description = "Default typeface used in the user interface of GNOME since version 3.0";
    platforms = stdenv.lib.platforms.all;
    license = stdenv.lib.licenses.ofl;
    maintainers = with stdenv.lib.maintainers; [ fuuzetsu ];
  };
}
