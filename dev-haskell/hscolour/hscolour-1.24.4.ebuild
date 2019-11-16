# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.5.9999

CABAL_FEATURES="lib profile haddock hoogle"
# avoid Cabal dependency as it's a dependency of most packages
# including cabal depends.
CABAL_FEATURES+=" nocabaldep"
inherit haskell-cabal

DESCRIPTION="Colourise Haskell code"
HOMEPAGE="http://code.haskell.org/~malcolm/hscolour/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}"

src_configure() {
	# llvm-general-pure passes rtsopts
	haskell-cabal_src_configure --ghc-options=-rtsopts
}

src_install() {
	cabal_src_install
	if use doc; then
		dohtml hscolour.css
	fi
}
