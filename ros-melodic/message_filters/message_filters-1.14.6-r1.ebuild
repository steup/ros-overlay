# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="A set of message filters which take in messages and may output those messag[...]"
HOMEPAGE="http://ros.org/wiki/message_filters"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/${PN}/1.14.6-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/rosconsole
	ros-melodic/roscpp
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/rostest
	ros-melodic/rosunit
	dev-libs/boost[python]
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
