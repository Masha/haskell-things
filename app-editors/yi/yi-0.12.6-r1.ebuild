# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.9999
#hackport: flags: pango:gtk,-scion

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="The Haskell-Scriptable Editor"
HOMEPAGE="https://yi-editor.github.io"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="eventlog gtk +hint profiling +testing +vty"

RDEPEND=">=dev-haskell/binary-0.7:=[profile?]
	>=dev-haskell/cabal-1.10:=[profile?]
	dev-haskell/data-default:=[profile?]
	>=dev-haskell/dlist-0.4.1:=[profile?]
	>=dev-haskell/dynamic-state-0.1.0.5:=[profile?]
	>=dev-haskell/dyre-0.8.11:=[profile?]
	dev-haskell/exceptions:=[profile?]
	>=dev-haskell/hashable-1.1.2.5:=[profile?]
	>=dev-haskell/hclip-3:=[profile?]
	>=dev-haskell/lens-4.7:=[profile?]
	>=dev-haskell/mtl-0.1.0.1:=[profile?]
	dev-haskell/old-locale:=[profile?]
	dev-haskell/oo-prototypes:=[profile?]
	>=dev-haskell/parsec-3.0:=[profile?]
	>=dev-haskell/pointedlist-0.5:=[profile?]
	>=dev-haskell/safe-0.3.4:=[profile?] <dev-haskell/safe-0.4:=[profile?]
	dev-haskell/semigroups:=[profile?]
	>=dev-haskell/split-0.1:=[profile?] <dev-haskell/split-0.3:=[profile?]
	>=dev-haskell/text-1.1.1.3:=[profile?]
	>=dev-haskell/text-icu-0.7:=[profile?]
	dev-haskell/transformers-base:=[profile?]
	>=dev-haskell/unix-compat-0.1:=[profile?] <dev-haskell/unix-compat-0.5:=[profile?]
	>=dev-haskell/unordered-containers-0.1.3:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/word-trie-0.2.0.4:=[profile?]
	>=dev-haskell/xdg-basedir-0.2.1:=[profile?] <dev-haskell/xdg-basedir-0.3:=[profile?]
	>=dev-haskell/yi-language-0.1.1.0:=[profile?]
	>=dev-haskell/yi-rope-0.7.0.0:=[profile?] <dev-haskell/yi-rope-0.8:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	gtk? ( >=dev-haskell/glib-0.13:=[profile?] <dev-haskell/glib-0.14:=[profile?]
		>=dev-haskell/gtk-0.13:=[profile?] <dev-haskell/gtk-0.15:=[profile?]
		>=dev-haskell/pango-0.13:=[profile?] <dev-haskell/pango-0.14:=[profile?] )
	hint? ( >dev-haskell/hint-0.3.1:=[profile?] )
	testing? ( >=dev-haskell/quickcheck-2.7:2=[profile?]
			dev-haskell/random:=[profile?] )
	vty? ( >=dev-haskell/stm-2.2:=[profile?]
		>=dev-haskell/vty-5.4:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.20
	test? ( dev-haskell/hunit
		dev-haskell/tasty
		dev-haskell/tasty-hunit
		dev-haskell/tasty-quickcheck
		!testing? ( dev-haskell/quickcheck ) )
"

PATCHES=(
	"${FILESDIR}"/${P}-ghc-8.0.2_rc1.patch
	"${FILESDIR}"/${P}-vty-5.15.patch
)

src_prepare() {
	default

	cabal_chdeps \
		'QuickCheck >= 2.7 && < 2.9' 'QuickCheck >= 2.7'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag eventlog eventlog) \
		$(cabal_flag hint hint) \
		$(cabal_flag gtk pango) \
		$(cabal_flag profiling profiling) \
		--flag=-scion \
		$(cabal_flag testing testing) \
		$(cabal_flag vty vty)
}
