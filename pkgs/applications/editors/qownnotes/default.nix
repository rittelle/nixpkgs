{ stdenv, fetchurl, qmake,
  qtbase, qtdeclarative, qtsvg, qtxmlpatterns
}:

stdenv.mkDerivation rec {
  version = "18.04.4";
  name = "qownnotes-${version}";
  buildInputs = [
    qtbase qtdeclarative qtsvg qtxmlpatterns
  ];
  nativeBuildInputs = [ qmake ];
  src = fetchurl {
    url = "http://downloads.sourceforge.net/project/qownnotes/src/${name}.tar.xz";
    sha256 = "b1dd7ccc9ac054f2caf20033b1cae45b99274bc70ae8b1ce04304ae2dfe22c4c";
  };
  meta = with stdenv.lib; {
    description = "Plain-text file notepad with markdown support and ownCloud / Nextcloud integration";
    longDescription = "QOwnNotes is a plain-text file notepad and todo-list manager with markdown support and ownCloud / Nextcloud integration.";
    homepage = "http://www.qownnotes.org/";
    license = licenses.gpl2;
    maintainers = maintainers.rittelle;
    platforms = platforms.all;
  };
}
