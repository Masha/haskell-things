# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.4.7.9999

CABAL_FEATURES="bin test-suite"
inherit haskell-cabal bash-completion-r1 eutils
if [[ ${PV} == 9999* ]]; then
	LIVE_EBUILD=yes
	inherit git-r3
fi

DESCRIPTION="The command-line interface for Cabal and Hackage"
HOMEPAGE="http://www.haskell.org/cabal/"
EGIT_REPO_URI="https://github.com/haskell/cabal.git"

if [[ -n ${LIVE_EBUILD} ]]; then
	# Cabal's subdir
	S="${S}"/${PN}
else
	SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"
	KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~ppc64 ~sparc ~x86"
fi

LICENSE="BSD"
SLOT="0"
IUSE="+network-uri +noprefs"

RDEPEND=">=dev-haskell/async-2.0:= <dev-haskell/async-3:=
	>=dev-haskell/base16-bytestring-0.1.1:= <dev-haskell/base16-bytestring-0.2:=
	>=dev-haskell/binary-0.5:= <dev-haskell/binary-0.9:=
	>=dev-haskell/bytestring-builder-0.10:= <dev-haskell/bytestring-builder-1:=
	>=dev-haskell/cabal-1.25:= <dev-haskell/cabal-1.26:=
	>=dev-haskell/cryptohash-sha256-0.11:= <dev-haskell/cryptohash-sha256-0.12:=
	>=dev-haskell/hackage-security-0.5:= <dev-haskell/hackage-security-0.6:=
	>=dev-haskell/hashable-1.0:= <dev-haskell/hashable-2:=
	>=dev-haskell/http-4000.1.5:= <dev-haskell/http-4000.4:=
	>=dev-haskell/mtl-2.0:= <dev-haskell/mtl-3:=
	>=dev-haskell/old-time-1:= <dev-haskell/old-time-1.2:=
	>=dev-haskell/random-1:= <dev-haskell/random-1.2:=
	>=dev-haskell/stm-2.0:= <dev-haskell/stm-3:=
	>=dev-haskell/tar-0.5.0.1:= <dev-haskell/tar-0.6:=
	>=dev-haskell/zlib-0.5.3:= <dev-haskell/zlib-0.7:=
	>=dev-lang/ghc-7.4.1:=
	network-uri? ( >=dev-haskell/network-2.6:= <dev-haskell/network-2.7:=
			>=dev-haskell/network-uri-2.6:= <dev-haskell/network-uri-2.7:= )
	!network-uri? ( >=dev-haskell/network-2.4:= <dev-haskell/network-2.6:= )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( dev-haskell/pretty-show
		>=dev-haskell/quickcheck-2.8.2
		dev-haskell/regex-posix
		dev-haskell/tagged
		dev-haskell/tasty
		dev-haskell/tasty-hunit
		dev-haskell/tasty-quickcheck
		!network-uri? ( <dev-haskell/network-uri-2.6 ) )
"

src_prepare() {
	#if use noprefs; then
	#	epatch "${FILESDIR}/${PN}"-0.13.3-nopref.patch
	#fi

	# no chance to link to -threaded on ppc64, alpha and others
	# who use UNREG, not only ARM
	if ! ghc-supports-threaded-runtime; then
		cabal_chdeps '-threaded' ' '
	fi
	eapply_user
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag network-uri network-uri)

	dobashcomp "${S}/bash-completion/cabal"
}
