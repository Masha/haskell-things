# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.4.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Handling of MIDI messages and files"
HOMEPAGE="http://www.haskell.org/haskellwiki/MIDI"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/binary-0.4.2:=[profile?] <dev-haskell/binary-0.9:=[profile?]
	>=dev-haskell/event-list-0.0.9:=[profile?] <dev-haskell/event-list-0.2:=[profile?]
	>=dev-haskell/explicit-exception-0.1:=[profile?] <dev-haskell/explicit-exception-0.2:=[profile?]
	>=dev-haskell/monoid-transformer-0.0.1:=[profile?] <dev-haskell/monoid-transformer-0.1:=[profile?]
	>=dev-haskell/non-negative-0.0.1:=[profile?] <dev-haskell/non-negative-0.2:=[profile?]
	>=dev-haskell/quickcheck-2.1:2=[profile?] <dev-haskell/quickcheck-3:2=[profile?]
	>=dev-haskell/random-1:=[profile?] <dev-haskell/random-2:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?] <dev-haskell/transformers-0.6:=[profile?]
	>=dev-haskell/utility-ht-0.0.10:=[profile?] <dev-haskell/utility-ht-0.1:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.14
"
