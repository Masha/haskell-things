# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=4

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Convert between datatypes of the midi and the alsa packages"
HOMEPAGE="http://www.haskell.org/haskellwiki/MIDI"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/alsa-seq-0.6*[profile?]
		>=dev-haskell/data-accessor-0.2.1[profile?]
		<dev-haskell/data-accessor-0.3[profile?]
		=dev-haskell/midi-0.2*[profile?]
		>=dev-haskell/utility-ht-0.0.5[profile?]
		<dev-haskell/utility-ht-0.1[profile?]
		>=dev-lang/ghc-6.8.2"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
