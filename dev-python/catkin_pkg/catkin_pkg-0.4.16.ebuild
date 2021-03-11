EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit distutils-r1

DESCRIPTION="Standalone Python library for the Catkin package system."
HOMEPAGE="http://wiki.ros.org/${PN}"
SRC_URI="https://github.com/ros-infrastructure/${PN}/archive/${PV}.tar.gz -> ${P}-overlay.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm ~arm64"

DEPEND="dev-python/docutils[${PYTHON_USEDEP}]
        dev-python/python-dateutil[${PYTHON_USEDEP}]
                dev-python/pyparsing[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
