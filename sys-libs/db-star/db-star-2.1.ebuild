# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# ebuild by Karl Hiramoto

DESCRIPTION="db-star lib"
HOMEPAGE="http://www.ittia.com"
SRC_URI="http://www.ittia.com/support/download/dbstar/db-star-2.1.tar.gz"

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
