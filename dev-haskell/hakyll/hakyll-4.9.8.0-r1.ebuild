# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A static website compiler library"
HOMEPAGE="http://jaspervdj.be/hakyll"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+checkexternal +previewserver +watchserver"

RDEPEND=">=app-text/pandoc-1.14:=[profile?] <app-text/pandoc-1.20:=[profile?]
	>=dev-haskell/blaze-html-0.5:=[profile?] <dev-haskell/blaze-html-0.10:=[profile?]
	>=dev-haskell/blaze-markup-0.5.1:=[profile?] <dev-haskell/blaze-markup-0.9:=[profile?]
	>=dev-haskell/cryptohash-0.7:=[profile?] <dev-haskell/cryptohash-0.12:=[profile?]
	>=dev-haskell/data-default-0.4:=[profile?] <dev-haskell/data-default-0.8:=[profile?]
	>=dev-haskell/lrucache-1.1.1:=[profile?] <dev-haskell/lrucache-1.3:=[profile?]
	>=dev-haskell/mtl-1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/network-2.6:=[profile?] <dev-haskell/network-2.7:=[profile?]
	>=dev-haskell/network-uri-2.6:=[profile?] <dev-haskell/network-uri-2.7:=[profile?]
	>=dev-haskell/optparse-applicative-0.12:=[profile?] <dev-haskell/optparse-applicative-0.15:=[profile?]
	>=dev-haskell/pandoc-citeproc-0.10.5:=[profile?]
	>=dev-haskell/parsec-3.0:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-haskell/random-1.0:=[profile?] <dev-haskell/random-1.2:=[profile?]
	>=dev-haskell/regex-base-0.93:=[profile?] <dev-haskell/regex-base-0.94:=[profile?]
	>=dev-haskell/regex-tdfa-1.1:=[profile?] <dev-haskell/regex-tdfa-1.3:=[profile?]
	>=dev-haskell/resourcet-1.1:=[profile?] <dev-haskell/resourcet-1.2:=[profile?]
	>=dev-haskell/scientific-0.3.4:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/tagsoup-0.13.1:=[profile?] <dev-haskell/tagsoup-0.15:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/time-locale-compat-0.1:=[profile?] <dev-haskell/time-locale-compat-0.2:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.11:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-haskell/yaml-0.8.11:=[profile?] <dev-haskell/yaml-0.9:=[profile?]
	>=dev-lang/ghc-7.10.1:=
	checkexternal? ( >=dev-haskell/http-conduit-2.2:=[profile?] <dev-haskell/http-conduit-2.3:=[profile?] )
	previewserver? ( >=dev-haskell/fsnotify-0.2:=[profile?] <dev-haskell/fsnotify-0.3:=[profile?]
				>=dev-haskell/http-types-0.9:=[profile?] <dev-haskell/http-types-0.10:=[profile?]
				>=dev-haskell/system-filepath-0.4.6:=[profile?] <=dev-haskell/system-filepath-0.5:=[profile?]
				>=dev-haskell/wai-3.2:=[profile?] <dev-haskell/wai-3.3:=[profile?]
				>=dev-haskell/wai-app-static-3.1:=[profile?] <dev-haskell/wai-app-static-3.2:=[profile?]
				>=dev-haskell/warp-3.2:=[profile?] <dev-haskell/warp-3.3:=[profile?] )
	!previewserver? ( checkexternal? ( >=dev-haskell/http-types-0.7:=[profile?] <dev-haskell/http-types-0.10:=[profile?] )
				watchserver? ( >=dev-haskell/fsnotify-0.2:=[profile?] <dev-haskell/fsnotify-0.3:=[profile?]
						>=dev-haskell/system-filepath-0.4.6:=[profile?] <=dev-haskell/system-filepath-0.5:=[profile?] ) )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( >=dev-haskell/quickcheck-2.8 <dev-haskell/quickcheck-2.11
		>=dev-haskell/tasty-0.11
		>=dev-haskell/tasty-hunit-0.9
		>=dev-haskell/tasty-quickcheck-0.8 )
"

PATCHES=("${FILESDIR}"/${P}-pandoc-citeproc-0.14.patch)

src_prepare() {
	default

	cabal_chdeps \
		'pandoc-citeproc      >= 0.10.5 && < 0.11' 'pandoc-citeproc      >= 0.10.5' \
		'tasty                      >= 0.11 && < 0.12' 'tasty                      >= 0.11' \
		'tasty-hunit                >= 0.9  && < 0.10' 'tasty-hunit                >= 0.9' \
		'tasty-quickcheck           >= 0.8  && < 0.10' 'tasty-quickcheck           >= 0.8'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag checkexternal checkexternal) \
		$(cabal_flag previewserver previewserver) \
		$(cabal_flag watchserver watchserver)
}
