# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Infer software license from a given license file"
HOMEPAGE="https://hackage.haskell.org/package/infer-license"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/text:=[profile?]
	>=dev-haskell/text-metrics-0.3.0:=[profile?] <dev-haskell/text-metrics-0.4:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
	test? ( >=dev-haskell/hspec-2 <dev-haskell/hspec-3 )
"
