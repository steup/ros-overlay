# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="Communication types msgs/srvs/actions for robotics in concert aka multimaster"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon_msgs-release/archive/release/kinetic/rocon_msgs/0.9.0-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/concert_msgs
	ros-kinetic/concert_service_msgs
	ros-kinetic/gateway_msgs
	ros-kinetic/rocon_app_manager_msgs
	ros-kinetic/rocon_device_msgs
	ros-kinetic/rocon_interaction_msgs
	ros-kinetic/rocon_service_pair_msgs
	ros-kinetic/rocon_std_msgs
	ros-kinetic/rocon_tutorial_msgs
	ros-kinetic/scheduler_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

