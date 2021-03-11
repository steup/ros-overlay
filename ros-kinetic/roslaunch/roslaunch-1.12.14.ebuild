# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="roslaunch is a tool for easily launching multiple ROS <a href=\"http://ros.[...]"
HOMEPAGE="http://ros.org/wiki/roslaunch"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/${PN}/1.12.14-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/rosclean
	ros-kinetic/rosgraph_msgs
	ros-kinetic/roslib
	ros-kinetic/rosmaster
	ros-kinetic/rosout
	ros-kinetic/rosparam
	ros-kinetic/rosunit
	test? ( ros-kinetic/rosbuild )
	dev-python/paramiko
	dev-python/rospkg
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
