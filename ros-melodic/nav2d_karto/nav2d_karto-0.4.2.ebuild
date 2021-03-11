# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="Graph-based Simultaneous Localization and Mapping module.\
	Includes Ope[...]"
HOMEPAGE="http://wiki.ros.org/robot_operator"
SRC_URI="https://github.com/skasperski/navigation_2d-release/archive/release/melodic/${PN}/0.4.2-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/nav2d_localizer
	ros-melodic/nav2d_msgs
	ros-melodic/nav_msgs
	ros-melodic/roscpp
	ros-melodic/tf
	ros-melodic/visualization_msgs
	dev-cpp/eigen
	sci-libs/suitesparse
	dev-cpp/tbb
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
