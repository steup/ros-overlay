# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ament-python

DESCRIPTION="Bundle python requirements in a ament package via virtualenv."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/esol-community/${PN}-release/archive/release/dashing/${PN}/0.0.5-5.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	test? ( ros-dashing/ament_copyright )
	test? ( ros-dashing/ament_flake8 )
	test? ( ros-dashing/ament_pep257 )
	dev-python/virtualenv
	dev-python/packaging
	test? ( dev-python/virtualenv )
	test? ( dev-python/packaging )
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
