# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Pagination in Yesod"
HOMEPAGE="https://github.com/joelteon/yesod-pagination"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/esqueleto:=[profile?]
	dev-haskell/yesod:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( dev-haskell/hspec
		dev-haskell/monad-logger
		dev-haskell/persistent
		dev-haskell/persistent-sqlite
		dev-haskell/resource-pool
		dev-haskell/resourcet
		dev-haskell/shakespeare
		dev-haskell/utf8-string
		dev-haskell/wai-test
		dev-haskell/yesod-test )
"
