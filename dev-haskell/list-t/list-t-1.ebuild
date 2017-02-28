# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="ListT done right"
HOMEPAGE="https://github.com/nikita-volkov/list-t"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="<dev-haskell/base-prelude-2:=[profile?]
	>=dev-haskell/mmorph-1:=[profile?] <dev-haskell/mmorph-2:=[profile?]
	>=dev-haskell/monad-control-0.3:=[profile?] <dev-haskell/monad-control-2:=[profile?]
	>=dev-haskell/mtl-2:=[profile?] <dev-haskell/mtl-3:=[profile?]
	>=dev-haskell/transformers-base-0.4:=[profile?] <dev-haskell/transformers-base-0.5:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/htf-0.13 <dev-haskell/htf-0.14
		<dev-haskell/mtl-prelude-3 )
"
