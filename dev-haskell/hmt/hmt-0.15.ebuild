# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Haskell Music Theory"
HOMEPAGE="http://rd.slavepianos.org/t/hmt"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/colour:=[profile?]
	dev-haskell/data-ordlist:=[profile?]
	dev-haskell/lazy-csv:=[profile?]
	dev-haskell/logict:=[profile?]
	dev-haskell/multiset-comb:=[profile?]
	dev-haskell/parsec:=[profile?]
	dev-haskell/permutation:=[profile?]
	dev-haskell/primes:=[profile?]
	dev-haskell/safe:=[profile?]
	dev-haskell/split:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"
