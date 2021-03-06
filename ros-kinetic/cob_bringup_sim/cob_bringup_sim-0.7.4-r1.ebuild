# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="This package provides launch files for starting a simulated Care-O-bot."
HOMEPAGE="http://ros.org/wiki/cob_bringup_sim"
SRC_URI="https://github.com/ipa320/cob_simulation-release/archive/release/kinetic/${PN}/0.7.4-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/cob_default_env_config
	ros-kinetic/cob_default_robot_config
	ros-kinetic/cob_gazebo
	ros-kinetic/cob_gazebo_worlds
	ros-kinetic/gazebo_ros
	test? ( ros-kinetic/cob_default_env_config )
	test? ( ros-kinetic/cob_supported_robots )
	test? ( ros-kinetic/roslaunch )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
