# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="<p>\
	  MoveIt kinematics plugin for industrial robots.\
	</p>\
	<[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/JeroenDM/${PN}-release/archive/release/melodic/${PN}/0.2.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/moveit_core
	ros-melodic/pluginlib
	ros-melodic/roscpp
	test? ( ros-melodic/moveit_resources )
	test? ( ros-melodic/moveit_ros_planning )
	test? ( ros-melodic/rostest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/eigen_conversions
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
