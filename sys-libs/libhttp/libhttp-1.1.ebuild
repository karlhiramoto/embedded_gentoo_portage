# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

inherit eutils flag-o-matic toolchain-funcs

DESCRIPTION="Subsystem command parsing library"
HOMEPAGE="http://www.softorchestra.com/"
SRC_URI="http://www.softorchestra.com/downloads/libhttp-${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 s390 sh sparc x86 ~x86-fbsd"

S=${WORKDIR}/libhttp-${PV}

src_unpack() {
	unpack ${A}
#	cd "${S}"
}

src_compile() {
	econf  || die "Configure failed"
	emake  || die "Compile failed"
}

src_install() {
	make DESTDIR="${D}" install 
}
