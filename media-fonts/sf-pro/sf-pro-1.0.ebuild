# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit font

DESCRIPTION="Apple SF Pro fonts (Display, Text, Rounded)"
HOMEPAGE="https://developer.apple.com/fonts/"
SRC_URI="https://github.com/vggscqq/gentoo-sf-fonts/releases/download/v${PV}/sf-pro-fonts-${PV}.tar.gz"

LICENSE="all-rights-reserved"
SLOT="0"
KEYWORDS="amd64 arm64 x86"

RESTRICT="mirror"

FONT_SUFFIX="otf ttf"
FONT_S="${S}"
