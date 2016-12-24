# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="HaRe"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="the Haskell Refactorer"
HOMEPAGE="https://github.com/RefactoringTools/HaRe/wiki"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # tests build a lot of time

RDEPEND=">=app-emacs/ghc-mod-5.6.0.0:=[profile?]
	>=dev-haskell/cabal-1.22:=[profile?]
	dev-haskell/cabal-helper:=[profile?]
	>=dev-haskell/ghc-exactprint-0.5.2.1:=[profile?]
	dev-haskell/ghc-paths:=[profile?]
	dev-haskell/ghc-syb-utils:=[profile?]
	>=dev-haskell/gitrev-1.1:=[profile?]
	dev-haskell/hslogger:=[profile?]
	dev-haskell/monad-control:=[profile?]
	dev-haskell/monoid-extras:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/old-time:=[profile?]
	dev-haskell/optparse-applicative:=[profile?]
	dev-haskell/optparse-simple:=[profile?]
	>=dev-haskell/parsec-3.1.6:=[profile?]
	dev-haskell/rosezipper:=[profile?]
	dev-haskell/semigroups:=[profile?]
	dev-haskell/strafunski-strategylib:=[profile?]
	dev-haskell/syb:=[profile?]
	dev-haskell/syz:=[profile?]
	dev-haskell/transformers-base:=[profile?]
	>=dev-lang/ghc-7.10.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.4.0
	test? ( >=dev-haskell/diff-0.3.0
		dev-haskell/hspec
		dev-haskell/hunit
		>=dev-haskell/quickcheck-2.5
		dev-haskell/silently
		dev-haskell/stringbuilder )
"

S="${WORKDIR}/${MY_P}"

PATCHES=("${FILESDIR}"/${P}-ghc-8.0.2_rc2.patch)

src_prepare() {
	default

	# ghc blows up and does not finish compilation
	[[ $(ghc-version) == 7.10.* ]] && replace-hcflags -O[1-9] -O0
}
