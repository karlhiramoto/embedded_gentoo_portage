# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# ebuild by Karl Hiramoto

DESCRIPTION="libubiqx database libary"
HOMEPAGE="http://www.ossp.org/pkg/lib/ex/"
SRC_URI="ftp://ftp.ossp.org/pkg/lib/ex/ex-1.0.5.tar.gz"

LICENSE="as-is"
SLOT="0"
KEYWORDS="x86"

IUSE=""
DEPEND="virtual/libc"


src_compile() {
	econf || die "Configure failed"
	emake || die "Copilation failed"

}


src_install() {
	make DESTDIR="${D}" install || die "Installation failed"
}
