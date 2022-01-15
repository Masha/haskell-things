# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Lua module for text"
HOMEPAGE="https://github.com/hslua/hslua"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/hslua-core-2.0:=[profile?] <dev-haskell/hslua-core-2.1:=[profile?]
	>=dev-haskell/hslua-marshalling-2.0:=[profile?] <dev-haskell/hslua-marshalling-2.1:=[profile?]
	>=dev-haskell/hslua-packaging-2.0:=[profile?] <dev-haskell/hslua-packaging-2.1:=[profile?]
	>=dev-haskell/text-1.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/tasty-0.11
		>=dev-haskell/tasty-hunit-0.9
		>=dev-haskell/tasty-lua-1.0 <dev-haskell/tasty-lua-1.1 )
"
