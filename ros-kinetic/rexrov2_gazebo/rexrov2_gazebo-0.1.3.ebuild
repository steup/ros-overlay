# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="Package with launch files for demonstrations with the RexROV 2 vehicle"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/uuvsimulator/rexrov2-release/archive/release/kinetic/${PN}/0.1.3-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/rexrov2_control
	ros-kinetic/rexrov2_description
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
