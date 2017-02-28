# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="streamlined html tag parser"
HOMEPAGE="https://github.com/yihuang/tagstream-conduit"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/attoparsec-0.10:=[profile?]
	dev-haskell/blaze-builder:=[profile?]
	dev-haskell/case-insensitive:=[profile?]
	>=dev-haskell/conduit-1.2:=[profile?]
	>=dev-haskell/conduit-extra-1.1.0:=[profile?]
	>=dev-haskell/data-default-0.5.0:=[profile?]
	dev-haskell/resourcet:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?]
	>=dev-haskell/xml-conduit-1.1.0.0:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( >=dev-haskell/hspec-1.3
		dev-haskell/hunit
		dev-haskell/quickcheck )
"
