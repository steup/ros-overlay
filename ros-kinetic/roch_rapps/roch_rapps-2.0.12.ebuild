# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="The roch_rapps package for set of \'app manager\' apps definition"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SawYerRobotics-release/roch-release/archive/release/kinetic/roch_rapps/2.0.12-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/compressed_image_transport
	ros-kinetic/nodelet
	ros-kinetic/robot_pose_publisher
	ros-kinetic/roch_bringup
	ros-kinetic/roch_follower
	ros-kinetic/roch_navigation
	ros-kinetic/roch_teleop
	ros-kinetic/tf
	ros-kinetic/topic_tools
	ros-kinetic/warehouse_ros
	ros-kinetic/world_canvas_server
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
