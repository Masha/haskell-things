# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Haskell docs tool"
HOMEPAGE="https://github.com/mvoidex/hdocs"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.7.0:=[profile?]
	>=dev-haskell/aeson-pretty-0.7.0:=[profile?]
	>=dev-haskell/cabal-1.22.2:=[profile?]
	>=dev-haskell/ghc-paths-0.1.0:=[profile?]
	>=dev-haskell/haddock-api-2.16.0:=[profile?]
	>=dev-haskell/haddock-library-1.2:=[profile?]
	>=dev-haskell/mtl-2.1.0:=[profile?]
	>=dev-haskell/network-2.4.0:=[profile?]
	>=dev-haskell/text-1.1.0:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"
