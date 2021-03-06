# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="Components of MoveIt! connecting to perception"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/kinetic/${PN}/0.9.18-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/cv_bridge
	ros-kinetic/image_transport
	ros-kinetic/message_filters
	ros-kinetic/moveit_core
	ros-kinetic/moveit_msgs
	ros-kinetic/octomap
	ros-kinetic/pluginlib
	ros-kinetic/rosconsole
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/tf
	ros-kinetic/tf_conversions
	ros-kinetic/urdf
	test? ( ros-kinetic/rosunit )
	media-libs/freeglut
	media-libs/glew
	virtual/opengl
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/object_recognition_msgs
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
