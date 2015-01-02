# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Data encoding library"
HOMEPAGE="http://www.haskell.org/haskellwiki/Library/Data_encoding"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~x86-fbsd ~amd64-linux ~ppc-macos ~x86-macos"
IUSE="test"

RDEPEND=">=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
	test? ( dev-haskell/hunit:=[profile?]
			>=dev-haskell/quickcheck-2.5:2=[profile?] <dev-haskell/quickcheck-2.6:2=[profile?]
			dev-haskell/test-framework:=[profile?]
			dev-haskell/test-framework-hunit:=[profile?]
			dev-haskell/test-framework-quickcheck2:=[profile?]
			dev-haskell/test-framework-th:=[profile?] )
"

src_prepare() {
	cabal_chdeps \
		'base >= 3.0.0 && < 4.8' 'base >= 3.0.0'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag test tests)
}
