# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# ebuild by Karl Hiramoto

DESCRIPTION="libubiqx database libary"
HOMEPAGE="http://ubiqx.org/"
SRC_URI="http://ubiqx.org/pub/libubiqx.tgz"

LICENSE="as-is"
SLOT="0"
KEYWORDS="x86 amd64"

IUSE=""
DEPEND="virtual/libc"

S=${WORKDIR}/ubiqx

src_compile() {
	make 
	make lib
}

src_install() {
	echo
	echo `pwd`
	mkdir -p "${D}"/usr/lib/
	install libubiqx.a  "${D}"/usr/lib/
	mkdir -p "${D}"/usr/include/ubiqx/
	install library/*.h "${D}"/usr/include/ubiqx/

}

