# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

# ebuild generated by hackport 0.2.17.9999

EAPI=5

CABAL_FEATURES="lib profile" #virtual package. no docs
inherit haskell-cabal

DESCRIPTION="A meta-package documenting various packages inspired by category theory"
HOMEPAGE="http://comonad.com/reader/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/adjunctions:=[profile?]
		dev-haskell/bifunctors:=[profile?]
		dev-haskell/categories:=[profile?]
		dev-haskell/comonad:=[profile?]
		dev-haskell/comonad-extras:=[profile?]
		dev-haskell/comonad-transformers:=[profile?]
		dev-haskell/comonads-fd:=[profile?]
		dev-haskell/contravariant:=[profile?]
		dev-haskell/distributive:=[profile?]
		dev-haskell/either:=[profile?]
		dev-haskell/free:=[profile?]
		dev-haskell/groupoids:=[profile?]
		dev-haskell/indexed:=[profile?]
		dev-haskell/indexed-extras:=[profile?]
		dev-haskell/invariant:=[profile?]
		dev-haskell/kan-extensions:=[profile?]
		dev-haskell/keys:=[profile?]
		dev-haskell/monad-products:=[profile?]
		dev-haskell/pointed:=[profile?]
		dev-haskell/profunctor-extras:=[profile?]
		dev-haskell/profunctors:=[profile?]
		dev-haskell/recursion-schemes:=[profile?]
		dev-haskell/reducers:=[profile?]
		dev-haskell/representable-functors:=[profile?]
		dev-haskell/semigroupoid-extras:=[profile?]
		dev-haskell/semigroupoids:=[profile?]
		dev-haskell/semigroups:=[profile?]
		dev-haskell/void:=[profile?]
		>=dev-lang/ghc-6.10.4"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2"

src_prepare() {
	cabal_chdeps \
		'representable-profunctors' 'profunctor-extras'
}
