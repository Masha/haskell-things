# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.2.1.9999
#hackport: flags: +nointeractivetests

CABAL_HACKAGE_REVISION=2

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Simple, composable, and easy-to-use stream I/O"
HOMEPAGE="https://hackage.haskell.org/package/io-streams"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+network +zlib"

RDEPEND=">=dev-haskell/attoparsec-0.10:=[profile?] <dev-haskell/attoparsec-0.15:=[profile?]
	>=dev-haskell/primitive-0.2:=[profile?] <dev-haskell/primitive-0.8:=[profile?]
	>=dev-haskell/vector-0.7:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-lang/ghc-8.4.3:=
	network? ( >=dev-haskell/network-2.3:=[profile?] <dev-haskell/network-3.2:=[profile?] )
	zlib? ( >=dev-haskell/zlib-bindings-0.1:=[profile?] <dev-haskell/zlib-bindings-0.2:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/hunit-1.2 <dev-haskell/hunit-2
		>=dev-haskell/quickcheck-2.3.0.2 <dev-haskell/quickcheck-3
		>=dev-haskell/test-framework-0.6 <dev-haskell/test-framework-0.9
		>=dev-haskell/test-framework-hunit-0.2.7 <dev-haskell/test-framework-hunit-0.4
		>=dev-haskell/test-framework-quickcheck2-0.2.12.1 <dev-haskell/test-framework-quickcheck2-0.4
		zlib? ( >=dev-haskell/zlib-0.5 <dev-haskell/zlib-0.7 ) )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag network network) \
		--flag=nointeractivetests \
		$(cabal_flag zlib zlib)
}
