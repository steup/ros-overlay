# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="p"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/durovsky/binpicking_utils-release/archive/release/kinetic/bin_pose_emulator/0.1.4-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/bin_pose_msgs
	ros-kinetic/roscpp
	ros-kinetic/tf
	ros-kinetic/visualization_msgs
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
