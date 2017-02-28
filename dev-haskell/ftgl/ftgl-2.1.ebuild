# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="FTGL"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Portable TrueType font rendering for OpenGL using the Freetype2 library"
HOMEPAGE="http://hackage.haskell.org/package/FTGL"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-7.4.1:=
	media-libs/ftgl
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

S="${WORKDIR}/${MY_P}"
