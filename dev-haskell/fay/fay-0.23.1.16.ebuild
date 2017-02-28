# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.9999
#hackport: flags: -test

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A compiler for Fay, a Haskell subset that compiles to JavaScript"
HOMEPAGE="https://github.com/faylang/fay/wiki"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">dev-haskell/aeson-0.6:=[profile?] <dev-haskell/aeson-1.1:=[profile?]
	>=dev-haskell/base-compat-0.8:=[profile?] <dev-haskell/base-compat-0.10:=[profile?]
	>=dev-haskell/data-default-0.2:=[profile?] <dev-haskell/data-default-0.8:=[profile?]
	>=dev-haskell/data-lens-light-0.1:=[profile?] <dev-haskell/data-lens-light-0.2:=[profile?]
	>=dev-haskell/ghc-paths-0.1:=[profile?] <dev-haskell/ghc-paths-0.2:=[profile?]
	>=dev-haskell/haskell-src-exts-1.18.1:=[profile?] <dev-haskell/haskell-src-exts-1.19:=[profile?]
	>=dev-haskell/language-ecmascript-0.15:=[profile?] <dev-haskell/language-ecmascript-0.18:=[profile?]
	>=dev-haskell/mtl-2.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/mtl-compat-0.1:=[profile?] <dev-haskell/mtl-compat-0.3:=[profile?]
	>=dev-haskell/optparse-applicative-0.11:=[profile?] <dev-haskell/optparse-applicative-0.14:=[profile?]
	>=dev-haskell/safe-0.2:=[profile?] <dev-haskell/safe-0.4:=[profile?]
	>=dev-haskell/sourcemap-0.1:=[profile?] <dev-haskell/sourcemap-0.2:=[profile?]
	>=dev-haskell/split-0.1:=[profile?] <dev-haskell/split-0.3:=[profile?]
	>=dev-haskell/spoon-0.1:=[profile?] <dev-haskell/spoon-0.4:=[profile?]
	>=dev-haskell/syb-0.3:=[profile?] <dev-haskell/syb-0.7:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/transformers-compat-0.3:=[profile?] <dev-haskell/transformers-compat-0.6:=[profile?]
	>=dev-haskell/traverse-with-class-0.1:=[profile?] <dev-haskell/traverse-with-class-0.3:=[profile?]
	>=dev-haskell/type-eq-0.1:=[profile?] <dev-haskell/type-eq-0.6:=[profile?]
	>=dev-haskell/uniplate-1.6.11:=[profile?] <dev-haskell/uniplate-1.7:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/utf8-string-0.1:=[profile?] <dev-haskell/utf8-string-1.1:=[profile?]
	<dev-haskell/vector-0.12:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"

src_prepare() {
	default

	cabal_chdeps \
		'directory >= 1.1 && < 1.3' 'directory >= 1.1'
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-test
}
