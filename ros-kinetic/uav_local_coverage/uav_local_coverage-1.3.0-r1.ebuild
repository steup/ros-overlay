# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="A package that performs local coverage with an unmanned aerial vehicle \(UAV\)."
HOMEPAGE="https://wiki.ros.org/uav_local_coverage"
SRC_URI="https://github.com/cpswarm/swarm_behaviors-release/archive/release/kinetic/${PN}/1.3.0-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/cpswarm_msgs
	ros-kinetic/roscpp
	ros-kinetic/swarm_behaviors_position
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
