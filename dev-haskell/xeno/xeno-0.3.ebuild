# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.4

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A fast event-based XML parser in pure Haskell"
HOMEPAGE="https://github.com/ocramz/xeno"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="libxml2"

RDEPEND="dev-haskell/mtl:=[profile?]
	dev-haskell/mutable-containers:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/hexml
		dev-haskell/hspec )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag libxml2 libxml2)
}
