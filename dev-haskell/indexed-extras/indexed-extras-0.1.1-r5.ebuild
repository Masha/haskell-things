# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Indexed functors, monads and comonads that require extensions to Haskell98"
HOMEPAGE="https://github.com/reinerp/indexed-extras"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/bifunctors:=[profile?]
		<dev-haskell/indexed-0.2:=[profile?]
		<dev-haskell/mtl-2.3:=[profile?]
		dev-haskell/pointed:=[profile?]
		>=dev-lang/ghc-6.8.2:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare() {
	cabal_chdeps \
		'bifunctors < 0.2' 'bifunctors' \
		'pointed < 2.2' 'pointed' \
		'mtl < 2.2' 'mtl < 2.3'
}
