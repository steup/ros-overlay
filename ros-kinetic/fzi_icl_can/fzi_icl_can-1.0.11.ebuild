# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="The fzi_icl_can package"
HOMEPAGE="http://wiki.ros.org/fzi_icl_can"
SRC_URI="https://github.com/fzi-forschungszentrum-informatik/fzi_icl_can-release/archive/release/kinetic/fzi_icl_can/1.0.11-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="LGPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/catkin
	ros-kinetic/fzi_icl_core
	ros-kinetic/libpcan
	dev-libs/popt
	sys-kernel/linux-headers
	dev-libs/tinyxml
"
DEPEND="${RDEPEND}
	dev-util/cmake
	net-misc/wget
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
