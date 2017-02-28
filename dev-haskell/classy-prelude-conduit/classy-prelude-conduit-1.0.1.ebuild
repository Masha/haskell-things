# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="classy-prelude together with conduit functions"
HOMEPAGE="https://github.com/snoyberg/mono-traversable"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/classy-prelude-1.0.1:=[profile?] <dev-haskell/classy-prelude-1.0.2:=[profile?]
	>=dev-haskell/conduit-1.0:=[profile?] <dev-haskell/conduit-1.3:=[profile?]
	>=dev-haskell/conduit-combinators-0.2.8:=[profile?]
	dev-haskell/monad-control:=[profile?]
	dev-haskell/resourcet:=[profile?]
	dev-haskell/void:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/hspec
		dev-haskell/quickcheck )
"
