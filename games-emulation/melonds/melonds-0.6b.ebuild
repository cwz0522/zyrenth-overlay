# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit cmake-utils

DESCRIPTION="Nintendo DS emulator"
HOMEPAGE="https://github.com/StapleButter/melonDS"

COMMIT_ID="2e82a4f26ac99a1a93afdcb6bbfc4095d0933cc6"
SRC_URI="https://github.com/StapleButter/melonDS/archive/${COMMIT_ID}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S="${WORKDIR}/melonDS-${COMMIT_ID}"

RDEPEND="
	x11-libs/gtk+:3
	>=media-libs/libsdl2-2.0.5
"
DEPEND="
	${RDEPEND}
"

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}

pkg_postinst() {
	if [[ "${first_install}" == "1" ]]; then
		ewarn ""
		ewarn "Currently, you need the following files in the folder you execute melonDS from:"
		ewarn "bios7.bin"
		ewarn "bios9.bin"
		ewarn "firmware.bin"
		ewarn ""
	fi
}
