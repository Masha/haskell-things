# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal eutils elisp-common git-r3

MY_PN="Agda"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A dependently typed functional programming language and proof assistant"
HOMEPAGE="http://wiki.portal.chalmers.se/agda/"
EGIT_REPO_URI="https://github.com/agda/agda.git"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS=""
IUSE="+cpphs uhc +stdlib"

RDEPEND=">=dev-haskell/binary-0.6:=[profile?] <dev-haskell/binary-0.8:=[profile?]
	>=dev-haskell/boxes-0.1.3:=[profile?] <dev-haskell/boxes-0.2:=[profile?]
	>=dev-haskell/data-hash-0.2.0.0:=[profile?]
	>=dev-haskell/edit-distance-0.2.1.2:=[profile?] <dev-haskell/edit-distance-0.3:=[profile?]
	>=dev-haskell/equivalence-0.2.5:=[profile?] <dev-haskell/equivalence-0.4:=[profile?]
	>=dev-haskell/geniplate-mirror-0.6.0.6:=[profile?] <dev-haskell/geniplate-mirror-0.7:=[profile?]
	>=dev-haskell/haskeline-0.7:=[profile?] <dev-haskell/haskeline-0.8:=[profile?]
	>=dev-haskell/haskell-src-exts-1.16.0.1:=[profile?] <dev-haskell/haskell-src-exts-1.17:=[profile?]
	>=dev-haskell/old-time-1.1.0.0:=[profile?] <dev-haskell/old-time-1.2:=[profile?]
	>=dev-haskell/parallel-3.2.0.4:=[profile?] <dev-haskell/parallel-3.3:=[profile?]
	>=dev-haskell/quickcheck-2.8:2=[profile?] <dev-haskell/quickcheck-2.9:2=[profile?]
	>=dev-haskell/strict-0.3.2:=[profile?] <dev-haskell/strict-0.4:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/transformers-compat-0.3.3.2:=[profile?] <dev-haskell/transformers-compat-0.5:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/xhtml-3000.2:=[profile?] <dev-haskell/xhtml-3000.3:=[profile?]
	>=dev-haskell/zlib-0.4.0.1:=[profile?] <dev-haskell/zlib-0.7:=[profile?]
	>=dev-lang/ghc-7.8.1:=
	|| ( ( >=dev-haskell/hashable-1.1.2.3:=[profile?] <dev-haskell/hashable-1.2:=[profile?] )
		( >=dev-haskell/hashable-1.2.1.0:=[profile?] <dev-haskell/hashable-1.3:=[profile?] ) )
	|| ( ( >=dev-haskell/hashtables-1.0:=[profile?] <dev-haskell/hashtables-1.2:=[profile?] )
		( >=dev-haskell/hashtables-1.2.0.2:=[profile?] <dev-haskell/hashtables-1.3:=[profile?] ) )
	|| ( ( >=dev-haskell/mtl-2.1.1:=[profile?] <=dev-haskell/mtl-2.1.3.1:=[profile?] )
		( >=dev-haskell/mtl-2.2.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?] ) )
	|| ( ( >=dev-haskell/transformers-0.3:=[profile?] <dev-haskell/transformers-0.4:=[profile?] )
		( >=dev-haskell/transformers-0.4.1.0:=[profile?] <dev-haskell/transformers-0.5:=[profile?] ) )
	uhc? ( >=dev-haskell/uhc-light-1.1.9.0:=[profile?] <dev-haskell/uhc-light-1.2:=[profile?]
		>=dev-haskell/uhc-util-0.1.5.5:=[profile?]
		>=dev-haskell/uulib-0.9.20:=[profile?] )
"
RDEPEND+="
		app-emacs/haskell-mode
		virtual/emacs
"
PDEPEND="stdlib? ( sci-mathematics/agda-stdlib )"
DEPEND="${RDEPEND}
	dev-haskell/alex
	>=dev-haskell/cabal-1.8
	dev-haskell/happy
	test? ( >=dev-haskell/process-extras-0.2.0 <dev-haskell/process-extras-0.4
		>=dev-haskell/tasty-0.10 <dev-haskell/tasty-0.11
		>=dev-haskell/tasty-silver-3.1.5 <dev-haskell/tasty-silver-3.2
		>=dev-haskell/temporary-1.2.0 <dev-haskell/temporary-1.3 )
	cpphs? ( dev-haskell/cpphs )
"

SITEFILE="50${PN}2-gentoo.el"
S="${WORKDIR}/${P}"

src_prepare() {
	sed -e '/.*emacs-mode.*$/d' \
		-i "${S}/${MY_PN}.cabal" \
		|| die "Could not remove agda-mode from ${MY_PN}.cabal"


	cabal_chdeps \
		'zlib >= 0.4.0.1 && < 0.6.1' 'zlib >= 0.4.0.1'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag cpphs cpphs) \
		$(cabal_flag uhc uhc)
}

src_compile() {
	BYTECOMPFLAGS="-L ./src/data/emacs-mode"
	elisp-compile src/data/emacs-mode/*.el \
		|| die "Failed to compile emacs mode"
	haskell-cabal_src_compile
}

src_test() {
	export LD_LIBRARY_PATH="${S}/dist/build${LD_LIBRARY_PATH+:}${LD_LIBRARY_PATH}"

	dist/build/agda/agda --test +RTS -M1g || die
}

src_install() {
	local add="${ED}"/usr/share/"${P}/ghc-$(ghc-version)"

	haskell-cabal_src_install

	export LD_LIBRARY_PATH="${S}/dist/build${LD_LIBRARY_PATH+:}${LD_LIBRARY_PATH}"
	# generate Primitive.agdai, emulate Setup.hs postinst phase
	Agda_datadir="${add}" \
		"${ED}"/usr/bin/agda "${add}"/lib/prim/Agda/Primitive.agda \
		|| die "Failed to build 'Primitive.agdai'"

	elisp-install ${PN} src/data/emacs-mode/*.el \
		|| die "Failed to install emacs mode"
	elisp-site-file-install "${FILESDIR}/${SITEFILE}" \
		|| die "Failed to install elisp site file"
}

pkg_postinst() {
	elisp-site-regen
}

pkg_postrm() {
	elisp-site-regen
}
