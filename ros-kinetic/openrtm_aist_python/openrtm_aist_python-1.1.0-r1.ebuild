# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="p"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/openrtm_aist_python-release/archive/release/kinetic/openrtm_aist_python/1.1.0-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="CC-BY-SA-3.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	net-misc/omniORB[python]
"
DEPEND="${RDEPEND}
	dev-util/cmake
	app-doc/doxygen
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

