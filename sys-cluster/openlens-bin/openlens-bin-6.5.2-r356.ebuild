# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="8"

DESCRIPTION="The Kubernetes IDE - AppImage version with no forced login"
HOMEPAGE="https://github.com/MuhammedKalkan/OpenLens"
APPIMAGE_FILE="OpenLens-6.5.2-356.x86_64.AppImage"
SRC_URI="https://github.com/MuhammedKalkan/OpenLens/releases/download/v6.5.2-356/OpenLens-6.5.2-356.x86_64.AppImage"
S="${WORKDIR}"
INSTALL_DIR="/opt/openlens"

LICENSE="MIT CC-BY-SA-4.0"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror strip"

RDEPEND="sys-fs/fuse:0"
DEPEND="${RDEPEND}"
BDEPEND=""

src_install() {
	exeinto /opt/openlens
	doexe ${DISTDIR}/${APPIMAGE_FILE}
	dosym /opt/openlens/${APPIMAGE_FILE} /opt/bin/openlens
}

