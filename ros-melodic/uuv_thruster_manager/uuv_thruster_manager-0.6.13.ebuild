# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="The thruster manager package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/${PN}/0.6.13-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/message_runtime
	ros-melodic/rospy
	ros-melodic/std_msgs
	ros-melodic/tf
	ros-melodic/uuv_assistants
	ros-melodic/uuv_gazebo_ros_plugins_msgs
	test? ( ros-melodic/geometry_msgs )
	test? ( ros-melodic/joint_state_publisher )
	test? ( ros-melodic/robot_state_publisher )
	test? ( ros-melodic/rostest )
	test? ( ros-melodic/rosunit )
	test? ( ros-melodic/uuv_assistants )
	test? ( ros-melodic/xacro )
	dev-python/pyyaml
	test? ( dev-python/numpy )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
