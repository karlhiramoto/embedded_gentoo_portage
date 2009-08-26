# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# ebuild by Karl Hiramoto

DESCRIPTION="CGI libary"
HOMEPAGE="http://catchen.org/gcgi/"
SRC_URI="http://catchen.org/gcgi/gcgi-0.9.5.tar.gz"

LICENSE="as-is"
SLOT="0"
KEYWORDS="x86"

IUSE=""
DEPEND="virtual/libc"

S="${WORKDIR}/libgcgi.a-0.9.5"


src_unpack() {
	echo "DIR=${S}"
	unpack ${A}
}

src_compile() {
	cd "${S}"
	echo "DIR=${S}"
 	econf || die "Configure failed"
 	emake || die "Copilation failed"
 
 }

src_install() {
 	emake  DESTDIR="${D}" install || die "Install failed"
 
 }

