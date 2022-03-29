# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Nano syntax highlighting"
HOMEPAGE="https://github.com/scopatz/nanorc"
SRC_URI="https://github.com/scopatz/nanorc/releases/download/${PV}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="app-editors/nano"

src_install() {
	default
	dodoc AUTHORS.rst readme.md
	insinto /usr/share/${PN}
	doins *.nanorc
}

pkg_postinst() {
	elog ""
	elog "*.nanorc files have been installed to /usr/share/${PN}"
	elog ""
	elog "They can be referenced in each user's .nanorc file"
	elog "for syntax highlight by running the following command:"
	elog ""
	elog "echo 'include /usr/share/${PN}/*.nanorc' >> ~/.nanorc"
	elog ""
}
