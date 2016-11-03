# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A memcached client library"
HOMEPAGE="https://github.com/dterei/memcache-hs"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/binary-0.6.2.0:=[profile?]
	>=dev-haskell/blaze-builder-0.3.1.0:=[profile?]
	>=dev-haskell/data-default-class-0.1.0:=[profile?]
	>=dev-haskell/hashable-1.2.0.3:=[profile?]
	>=dev-haskell/network-2.4:=[profile?]
	>=dev-haskell/resource-pool-0.2.1.0:=[profile?]
	>=dev-haskell/vector-0.7:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"
