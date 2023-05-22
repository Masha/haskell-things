# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.2.0.9999
#hackport: flags: have-gio:gio,-have-quartz-gtk

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Binding to the Gtk+ graphical user interface library"
HOMEPAGE="https://projects.haskell.org/gtk2hs/"

LICENSE="LGPL-2.1"
SLOT="2/${PV}" # check SLOT when bumping!
KEYWORDS="~amd64"
IUSE="+deprecated +fmode-binary +gio"

GHC_BOOTSTRAP_PACKAGES=(
	gtk2hs-buildtools
)

RDEPEND=">=dev-haskell/cairo-0.13.0.0:=[profile?] <dev-haskell/cairo-0.14:=[profile?]
	>=dev-haskell/glib-0.13.0.0:=[profile?] <dev-haskell/glib-0.14:=[profile?]
	>=dev-haskell/pango-0.13.0.0:=[profile?] <dev-haskell/pango-0.14:=[profile?]
	>=dev-haskell/text-0.11.0.6:=[profile?] <dev-haskell/text-2.1:=[profile?]
	>=dev-lang/ghc-8.8.1:=
	dev-libs/glib:2
	x11-libs/gtk+:2
	gio? ( >=dev-haskell/gio-0.13.0:=[profile?] <dev-haskell/gio-0.14:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0 <dev-haskell/cabal-3.11
	>=dev-haskell/gtk2hs-buildtools-0.13.2.0 <dev-haskell/gtk2hs-buildtools-0.14
"
BDEPEND="virtual/pkgconfig
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag deprecated deprecated) \
		$(cabal_flag fmode-binary fmode-binary) \
		$(cabal_flag gio have-gio) \
		--flag=-have-quartz-gtk
}
