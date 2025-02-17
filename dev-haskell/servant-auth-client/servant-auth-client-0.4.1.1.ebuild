# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="servant-client/servant-auth compatibility"
HOMEPAGE="https://github.com/haskell-servant/servant/tree/master/servant-auth#readme"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/servant-0.13:=[profile?] <dev-haskell/servant-0.21:=[profile?]
	>=dev-haskell/servant-auth-0.4:=[profile?] <dev-haskell/servant-auth-0.5:=[profile?]
	>=dev-haskell/servant-client-core-0.13:=[profile?] <dev-haskell/servant-client-core-0.21:=[profile?]
	>=dev-lang/ghc-8.10.6:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.1.0
	test? ( >=dev-haskell/aeson-1.3.1.1 <dev-haskell/aeson-3
		>=dev-haskell/hspec-2.5.5 <dev-haskell/hspec-2.12
		>=dev-haskell/http-client-0.5.13.1 <dev-haskell/http-client-0.8
		>=dev-haskell/http-types-0.12.2 <dev-haskell/http-types-0.13
		>=dev-haskell/jose-0.10 <dev-haskell/jose-0.11
		>=dev-haskell/quickcheck-2.11.3 <dev-haskell/quickcheck-2.15
		>=dev-haskell/servant-auth-server-0.4.2.0 <dev-haskell/servant-auth-server-0.5
		dev-haskell/servant-client
		>=dev-haskell/servant-server-0.13 <dev-haskell/servant-server-0.21
		>=dev-haskell/wai-3.2.1.2 <dev-haskell/wai-3.3
		>=dev-haskell/warp-3.2.25 <dev-haskell/warp-3.4 )
"
