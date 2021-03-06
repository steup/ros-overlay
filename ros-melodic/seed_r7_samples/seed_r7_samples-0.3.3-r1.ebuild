# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="The seed_r7_samples package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/melodic/${PN}/0.3.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/moveit_commander
	ros-melodic/moveit_simple_controller_manager
	ros-melodic/rviz
	ros-melodic/rviz_plugin_tutorials
	ros-melodic/seed_r7_bringup
	ros-melodic/seed_r7_moveit_config
	ros-melodic/seed_r7_navigation
	ros-melodic/seed_r7_robot_interface
	ros-melodic/seed_r7_ros_controller
	ros-melodic/seed_r7_typef_moveit_config
	ros-melodic/smach_ros
	ros-melodic/smach_viewer
	test? ( ros-melodic/roslaunch )
	test? ( ros-melodic/rostest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
