# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1.9999

CABAL_FEATURES=""
inherit haskell-cabal

DESCRIPTION="Generates ctags for Haskell, incorporating import lists and qualified imports"
HOMEPAGE="https://github.com/luqui/hothasktags"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/cpphs-1.11:= <dev-haskell/cpphs-1.21:=
	dev-haskell/filemanip:=
	dev-haskell/glob:=
	>=dev-haskell/haskell-src-exts-1.17:= <dev-haskell/haskell-src-exts-1.18:=
	>=dev-haskell/optparse-applicative-0.13:=
	dev-haskell/split:=
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"
