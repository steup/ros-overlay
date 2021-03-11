# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="Interaction management for human interactive agents in the concert."
HOMEPAGE="http://ros.org/wiki/rocon_interactions"
SRC_URI="https://github.com/yujinrobot-release/rocon_tools-release/archive/release/melodic/${PN}/0.3.2-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/genpy
	ros-melodic/rocon_app_manager_msgs
	ros-melodic/rocon_bubble_icons
	ros-melodic/rocon_console
	ros-melodic/rocon_icons
	ros-melodic/rocon_interaction_msgs
	ros-melodic/rocon_python_comms
	ros-melodic/rocon_python_utils
	ros-melodic/rocon_std_msgs
	ros-melodic/rocon_uri
	ros-melodic/rospy
	ros-melodic/std_msgs
	ros-melodic/unique_id
	test? ( ros-melodic/rosunit )
	dev-python/rospkg
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roslint
	ros-melodic/rostest
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
