# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="An automatically generated package with all the configuration and launch fi[...]"
HOMEPAGE="http://moveit.ros.org/"
SRC_URI="https://github.com/FUJISOFT-Robotics/fsrobo_r-release/archive/release/kinetic/${PN}/0.7.1-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/fsrobo_r_description
	ros-kinetic/joint_state_publisher
	ros-kinetic/moveit_kinematics
	ros-kinetic/moveit_planners_ompl
	ros-kinetic/moveit_ros_move_group
	ros-kinetic/moveit_ros_visualization
	ros-kinetic/robot_state_publisher
	ros-kinetic/xacro
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
