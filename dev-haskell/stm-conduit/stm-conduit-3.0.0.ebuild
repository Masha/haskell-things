# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Introduces conduits to channels, and promotes using conduits concurrently"
HOMEPAGE="https://github.com/cgaebel/stm-conduit"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/async-2.0.1:=[profile?]
	>=dev-haskell/cereal-0.4.0.1:=[profile?]
	>=dev-haskell/cereal-conduit-0.7.2:=[profile?]
	>=dev-haskell/conduit-1.0:=[profile?] <dev-haskell/conduit-1.3:=[profile?]
	>=dev-haskell/conduit-combinators-0.3:=[profile?]
	>=dev-haskell/conduit-extra-1.0:=[profile?] <dev-haskell/conduit-extra-1.2:=[profile?]
	>=dev-haskell/lifted-async-0.1:=[profile?]
	>=dev-haskell/lifted-base-0.2.1:=[profile?]
	>=dev-haskell/monad-control-0.3.2:=[profile?]
	>=dev-haskell/monad-loops-0.4.2:=[profile?]
	>=dev-haskell/resourcet-0.3:=[profile?] <dev-haskell/resourcet-1.2:=[profile?]
	>=dev-haskell/stm-2.4:=[profile?] <dev-haskell/stm-2.5:=[profile?]
	>=dev-haskell/stm-chans-2.0:=[profile?] <dev-haskell/stm-chans-3.1:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?] <dev-haskell/transformers-0.6:=[profile?]
	>=dev-haskell/void-0.7:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( dev-haskell/doctest
		dev-haskell/hunit
		>=dev-haskell/quickcheck-2
		dev-haskell/test-framework
		dev-haskell/test-framework-hunit
		dev-haskell/test-framework-quickcheck2 )
"
