# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

PYTHON_COMPAT=(python3_6)

inherit git-r3 distutils-r1

DESCRIPTION="Discord Rich Presence based on mpris2 media players"
HOMEPAGE="https://github.com/FichteFoll/discordrp-mpris"
EGIT_REPO_URI="https://github.com/FichteFoll/discordrp-mpris"

LICENSE="MIT"
SLOT="0"
IUSE=""


RDEPEND="
	${PYTHON_DEPS}
	dev-python/DBussy[${PYTHON_USEDEP}]
"
DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	${RDEPEND}
"
