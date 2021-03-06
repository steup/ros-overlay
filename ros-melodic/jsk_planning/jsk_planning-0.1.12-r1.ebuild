# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="<p>Metapackage that contains planning package for jsk-ros-pkg</p>"
HOMEPAGE="http://ros.org/wiki/jsk_planning"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/melodic/${PN}/0.1.12-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/pddl_msgs
	ros-melodic/pddl_planner
	ros-melodic/pddl_planner_viewer
	ros-melodic/task_compiler
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
