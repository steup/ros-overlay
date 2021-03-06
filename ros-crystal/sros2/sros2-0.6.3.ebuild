# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ament-python

DESCRIPTION="Command line tools for managing SROS2 keys"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/crystal/${PN}/0.6.3-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-crystal/ros2cli
	test? ( ros-crystal/ament_copyright )
	test? ( ros-crystal/ament_flake8 )
	test? ( ros-crystal/ament_pep257 )
	dev-libs/openssl
	dev-python/lxml
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
