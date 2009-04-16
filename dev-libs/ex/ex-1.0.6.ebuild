# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# ebuild by Karl Hiramoto

inherit libtool flag-o-matic eutils

DESCRIPTION="exception libary"
HOMEPAGE="http://www.ossp.org/pkg/lib/ex/"
SRC_URI="ftp://ftp.ossp.org/pkg/lib/ex/ex-1.0.6.tar.gz"

LICENSE="as-is"
SLOT="0"
KEYWORDS="x86"

IUSE=""
DEPEND="virtual/libc"
S="${WORKDIR}"/ex-${PV}

# src_configure() {
# 	echo "${WORKDIR}"/ex-${PV}
# 	cd "${WORKDIR}"/ex-${PV}
# 	
# }

src_compile() {
	echo "${S}"
	echo "${WORKDIR}"/ex-${PV}
	cd "${WORKDIR}"/ex-${PV}
	econf || die "Configure failed"
	emake || die "Copilation failed"

}


src_install() {
	make DESTDIR="${D}" install || die "Installation failed"
}
