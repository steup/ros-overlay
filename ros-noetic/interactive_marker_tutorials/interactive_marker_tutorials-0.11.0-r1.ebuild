# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="The interactive_marker_tutorials package"
HOMEPAGE="http://ros.org/wiki/interactive_marker_tutorials"
SRC_URI="https://github.com/ros-gbp/visualization_tutorials-release/archive/release/noetic/${PN}/0.11.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/interactive_markers
	ros-noetic/roscpp
	ros-noetic/tf
	ros-noetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
