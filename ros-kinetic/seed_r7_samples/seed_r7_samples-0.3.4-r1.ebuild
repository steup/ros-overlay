# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="The seed_r7_samples package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/kinetic/${PN}/0.3.4-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/moveit_commander
	ros-kinetic/moveit_simple_controller_manager
	ros-kinetic/rviz
	ros-kinetic/rviz_plugin_tutorials
	ros-kinetic/seed_r7_bringup
	ros-kinetic/seed_r7_moveit_config
	ros-kinetic/seed_r7_navigation
	ros-kinetic/seed_r7_robot_interface
	ros-kinetic/seed_r7_ros_controller
	ros-kinetic/seed_r7_typef_moveit_config
	ros-kinetic/smach_ros
	ros-kinetic/smach_viewer
	test? ( ros-kinetic/roslaunch )
	test? ( ros-kinetic/rostest )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
