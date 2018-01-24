# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Dockerfile parser, pretty-printer and embedded DSL"
HOMEPAGE="https://github.com/hadolint/language-docker#readme"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/aeson:=[profile?]
	dev-haskell/free:=[profile?]
	dev-haskell/glob:=[profile?]
	dev-haskell/mtl:=[profile?]
	>=dev-haskell/parsec-3.1:=[profile?]
	dev-haskell/semigroups:=[profile?]
	>=dev-haskell/split-0.2:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/th-lift:=[profile?]
	dev-haskell/th-lift-instances:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	dev-haskell/yaml:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( dev-haskell/hspec
		>=dev-haskell/hunit-1.2
		dev-haskell/quickcheck )
"
