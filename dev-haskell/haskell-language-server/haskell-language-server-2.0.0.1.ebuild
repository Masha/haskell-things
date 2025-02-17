# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

#hackport: flags: cabalfmt:hls_formatters_cabal-fmt,floskell:hls_formatters_floskell,fourmolu:hls_formatters_fourmolu,ormolu:hls_formatters_ormolu,refactor:hls_formatters_refactor,stylishhaskell:hls_formatters_stylish-haskell,alternateNumberFormat:hls_plugins_alternate-number-format,cabal:hls_plugins_cabal,callHierarchy:hls_plugins_call-hierarchy,changeTypeSignature:hls_plugins_change-type-signature,class:hls_plugins_class,codeRange:hls_plugins_code-range,eval:hls_plugins_eval,explicitFields:hls_plugins_explicit-fields,explicitFixity:hls_plugins_explicit-fixity,gadt:hls_plugins_gadt,haddockComments:hls_plugins_haddock-comments,hlint:hls_plugins_hlint,importLens:hls_plugins_import-lens,moduleName:hls_plugins_module-name,overloadedRecordDot:hls_plugins_overloaded-record-dot,pragmas:hls_plugins_pragmas,qualifyImportedNames:hls_plugins_qualify-imported-names,refineImports:hls_plugins_refine-imports,rename:hls_plugins_rename,retrie:hls_plugins_retrie,splice:hls_plugins_splice,stan:hls_plugins_stan,tactic:hls_plugins_wingman,-dynamic,+ignore-plugins-ghc-bounds,-pedantic

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="LSP server for GHC"
HOMEPAGE="https://github.com/haskell/haskell-language-server#readme"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"

# TODO: Failing tests
RESTRICT="test" # 2 of 91 tests fail

# Disabled:
# - hls_plugins_class: Requires ghc-exactprint < 1.1
# - hls_plugins_haddock-comments: Requires ghc < 9.2.1
# - hls_plugins_stan: Requires ghc < 9
# - hls_plugins_wingman: Requires ghc < 9.2.1
IUSE_HLS_PLUGINS="
	+hls_plugins_alternate-number-format
	+hls_plugins_cabal
	+hls_plugins_call-hierarchy
	+hls_plugins_change-type-signature
	+hls_plugins_code-range
	+hls_plugins_eval
	+hls_plugins_explicit-fields
	+hls_plugins_explicit-fixity
	+hls_plugins_hlint
	+hls_plugins_import-lens
	+hls_plugins_gadt
	+hls_plugins_module-name
	+hls_plugins_overloaded-record-dot
	+hls_plugins_pragmas
	+hls_plugins_qualify-imported-names
	+hls_plugins_refine-imports
	+hls_plugins_rename
	+hls_plugins_retrie
	+hls_plugins_splice
"

# Disabled:
# - hls_formatters_fourmolu: Requires masked package fourmolu
# - hls_formatters_ormolu: Requires masked package ormolu
IUSE_HLS_FORMATTERS="
	+hls_formatters_cabal-fmt
	+hls_formatters_floskell
	+hls_formatters_refactor
	+hls_formatters_stylish-haskell
"

IUSE="
	${IUSE_HLS_PLUGINS}
	${IUSE_HLS_FORMATTERS}
"

CABAL_TEST_REQUIRED_BINS=(
	haskell-language-server
)

# Disabled:
# hls_formatters_fourmolu? ( ~dev-haskell/hls-fourmolu-plugin-2.0.0.1:=[profile?] )
# hls_formatters_ormolu? ( ~dev-haskell/hls-ormolu-plugin-2.0.0.1:=[profile?] )
# hls_plugins_class? ( ~dev-haskell/hls-class-plugin-2.0.0.1:=[profile?] )
# hls_plugins_haddock-comments? ( ~dev-haskell/hls-haddock-comments-plugin-2.0.0.1:=[profile?] )
# hls_plugins_stan? ( >=dev-haskell/hls-stan-plugin-1.0:=[profile?] <dev-haskell/hls-stan-plugin-1.1:=[profile?] )
# hls_plugins_wingman? ( ~dev-haskell/hls-tactics-plugin-2.0.0.1:=[profile?] )
RDEPEND="
	dev-haskell/aeson:=[profile?]
	dev-haskell/aeson-pretty:=[profile?]
	dev-haskell/async:=[profile?]
	dev-haskell/base16-bytestring:=[profile?]
	dev-haskell/cryptohash-sha1:=[profile?]
	dev-haskell/data-default:=[profile?]
	dev-haskell/extra:=[profile?]
	dev-haskell/ghc-paths:=[profile?]
	~dev-haskell/ghcide-2.0.0.1:=[profile?]
	dev-haskell/gitrev:=[profile?]
	dev-haskell/githash:=[profile?]
	dev-haskell/hashable:=[profile?]
	dev-haskell/hie-bios:=[profile?]
	dev-haskell/hiedb:=[profile?]
	>dev-haskell/hls-graph-1.7.0.0:=[profile?]
	~dev-haskell/hls-plugin-api-2.0.0.1:=[profile?]
	dev-haskell/lens:=[profile?]
	dev-haskell/lsp:=[profile?]
	dev-haskell/lsp-types:=[profile?]
	dev-haskell/optparse-applicative:=[profile?]
	dev-haskell/optparse-simple:=[profile?]
	dev-haskell/regex-tdfa:=[profile?]
	dev-haskell/safe-exceptions:=[profile?]
	dev-haskell/sqlite-simple:=[profile?]
	dev-haskell/stm:=[profile?]
	dev-haskell/temporary:=[profile?]
	dev-haskell/unliftio-core:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-8.6.3:=
	hls_formatters_cabal-fmt? ( ~dev-haskell/hls-cabal-fmt-plugin-2.0.0.1:=[profile?] )
	hls_formatters_floskell? ( ~dev-haskell/hls-floskell-plugin-2.0.0.1:=[profile?] )
	hls_formatters_refactor? ( ~dev-haskell/hls-refactor-plugin-2.0.0.1:=[profile?] )
	hls_formatters_stylish-haskell? ( ~dev-haskell/hls-stylish-haskell-plugin-2.0.0.1:=[profile?] )
	hls_plugins_alternate-number-format? ( ~dev-haskell/hls-alternate-number-format-plugin-2.0.0.1:=[profile?] )
	hls_plugins_cabal? ( ~dev-haskell/hls-cabal-plugin-2.0.0.1:=[profile?] )
	hls_plugins_call-hierarchy? ( ~dev-haskell/hls-call-hierarchy-plugin-2.0.0.1:=[profile?] )
	hls_plugins_change-type-signature? ( ~dev-haskell/hls-change-type-signature-plugin-2.0.0.1:=[profile?] )
	hls_plugins_code-range? ( ~dev-haskell/hls-code-range-plugin-2.0.0.1:=[profile?] )
	hls_plugins_eval? ( ~dev-haskell/hls-eval-plugin-2.0.0.1:=[profile?] )
	hls_plugins_explicit-fields? ( ~dev-haskell/hls-explicit-record-fields-plugin-2.0.0.1:=[profile?] )
	hls_plugins_explicit-fixity? ( ~dev-haskell/hls-explicit-fixity-plugin-2.0.0.1:=[profile?] )
	hls_plugins_gadt? ( ~dev-haskell/hls-gadt-plugin-2.0.0.1:=[profile?] )
	hls_plugins_hlint? ( ~dev-haskell/hls-hlint-plugin-2.0.0.1:=[profile?] )
	hls_plugins_import-lens? ( ~dev-haskell/hls-explicit-imports-plugin-2.0.0.1:=[profile?] )
	hls_plugins_module-name? ( ~dev-haskell/hls-module-name-plugin-2.0.0.1:=[profile?] )
	hls_plugins_overloaded-record-dot? ( ~dev-haskell/hls-overloaded-record-dot-plugin-2.0.0.1:=[profile?] )
	hls_plugins_pragmas? ( ~dev-haskell/hls-pragmas-plugin-2.0.0.1:=[profile?] )
	hls_plugins_qualify-imported-names? ( ~dev-haskell/hls-qualify-imported-names-plugin-2.0.0.1:=[profile?] )
	hls_plugins_refine-imports? ( ~dev-haskell/hls-refine-imports-plugin-2.0.0.1:=[profile?] )
	hls_plugins_rename? ( ~dev-haskell/hls-rename-plugin-2.0.0.1:=[profile?] )
	hls_plugins_retrie? ( ~dev-haskell/hls-retrie-plugin-2.0.0.1:=[profile?] )
	hls_plugins_splice? ( ~dev-haskell/hls-splice-plugin-2.0.0.1:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
	test? (
		dev-haskell/ghcide
		dev-haskell/ghcide-test-utils
		~dev-haskell/hls-test-utils-2.0.0.1
		dev-haskell/hspec-expectations
		dev-haskell/lens-aeson
		dev-haskell/lsp-test
		dev-haskell/lsp-types
	)
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag hls_formatters_cabal-fmt cabalfmt) \
		$(cabal_flag hls_formatters_floskell floskell) \
		$(cabal_flag hls_formatters_refactor refactor) \
		$(cabal_flag hls_formatters_stylish-haskell stylishhaskell) \
		$(cabal_flag hls_plugins_alternate-number-format alternateNumberFormat) \
		$(cabal_flag hls_plugins_cabal cabal) \
		$(cabal_flag hls_plugins_call-hierarchy callHierarchy) \
		$(cabal_flag hls_plugins_change-type-signature changeTypeSignature) \
		$(cabal_flag hls_plugins_code-range codeRange) \
		$(cabal_flag hls_plugins_eval eval) \
		$(cabal_flag hls_plugins_explicit-fields explicitFields) \
		$(cabal_flag hls_plugins_explicit-fixity explicitFixity) \
		$(cabal_flag hls_plugins_gadt gadt) \
		$(cabal_flag hls_plugins_hlint hlint) \
		$(cabal_flag hls_plugins_import-lens importLens) \
		$(cabal_flag hls_plugins_module-name moduleName) \
		$(cabal_flag hls_plugins_overloaded-record-dot overloadedRecordDot) \
		$(cabal_flag hls_plugins_pragmas pragmas) \
		$(cabal_flag hls_plugins_qualify-imported-names qualifyImportedNames) \
		$(cabal_flag hls_plugins_refine-imports refineImports) \
		$(cabal_flag hls_plugins_rename rename) \
		$(cabal_flag hls_plugins_retrie retrie) \
		$(cabal_flag hls_plugins_splice splice) \
		--flag=-fourmolu \
		--flag=-ormolu \
		--flag=-class \
		--flag=-haddockComments \
		--flag=-stan \
		--flag=-tactic \
		--flag=-dynamic \
		--flag=ignore-plugins-ghc-bounds \
		--flag=-pedantic
}
