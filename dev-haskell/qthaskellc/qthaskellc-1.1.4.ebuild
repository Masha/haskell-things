# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
inherit multilib qt4-r2

MY_PN="qtHaskell"
MY_P="${MY_PN}-${PV}"
S="${WORKDIR}/${MY_P}/qws"

DESCRIPTION="qtHaskell C bindings. qtHaskell is a set of Haskell bindings for the Qt Widget Library from Nokia."
HOMEPAGE="http://qthaskell.berlios.de/"
SRC_URI="http://download.berlios.de/qthaskell/${MY_P}.1.tar.bz2"

# The license is uncertain, the web site says its currently GPL, while as the LICENSE file looks like BSD.
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="debug"

DOCS="${WORKDIR}/${MY_P}/INSTALL ${WORKDIR}/${MY_P}/LICENSE ${WORKDIR}/${MY_P}/README"

DEPEND="virtual/opengl
		x11-libs/qt-core:4
		x11-libs/qt-gui:4
		x11-libs/qt-opengl:4
		x11-libs/qt-script:4"

RDEPEND="${DEPEND}"

src_prepare() {
	local p
	while read p; do
		sed -i "${p}" -e 's,/usr/local/lib,/usr/'$(get_libdir)',g' || die
	done < <(find "${S}" -name '*.pro')
}

src_configure() {
	eqmake4 "${S}"/qtc.pro
}

pkg_postinst() {
	elog "This is just the C bindings to Qt, now you need to emerge dev-haskell/qt"
}
