# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Utilities for vinyl"
HOMEPAGE="https://github.com/marcinmrotek/vinyl-utils"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="devel"

RDEPEND=">=dev-haskell/contravariant-1.3:=[profile?] <dev-haskell/contravariant-1.5:=[profile?]
	>=dev-haskell/vinyl-0.5:=[profile?] <dev-haskell/vinyl-0.6:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag devel devel)
}
