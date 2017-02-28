# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A library for various character encodings"
HOMEPAGE="http://code.haskell.org/encoding/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+systemencoding"

RDEPEND="<dev-haskell/binary-0.8:=[profile?]
	dev-haskell/extensible-exceptions:=[profile?]
	>=dev-haskell/haxml-1.22:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/regex-compat:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

src_prepare() {
	cabal_chdeps \
		'HaXml >= 1.22 && < 1.25' 'HaXml >= 1.22'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag systemencoding systemencoding)
}
