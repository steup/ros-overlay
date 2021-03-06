# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="This application allows the PR2 to navigate autonomously while also buildin[...]"
HOMEPAGE="http://ros.org/wiki/pr2_2dnav_slam"
SRC_URI="https://github.com/pr2-gbp/pr2_navigation_apps-release/archive/release/kinetic/${PN}/1.0.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/pr2_machine
	ros-kinetic/pr2_navigation_perception
	ros-kinetic/pr2_navigation_slam
	ros-kinetic/pr2_navigation_teleop
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
