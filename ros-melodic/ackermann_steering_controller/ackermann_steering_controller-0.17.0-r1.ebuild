# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="Controller for a steer drive mobile base."
HOMEPAGE="https://github.com/ros-controls/ros_controllers/issues"
SRC_URI="https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/${PN}/0.17.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/controller_interface
	ros-melodic/diff_drive_controller
	ros-melodic/hardware_interface
	ros-melodic/nav_msgs
	ros-melodic/pluginlib
	ros-melodic/realtime_tools
	ros-melodic/roscpp
	ros-melodic/tf
	ros-melodic/urdf
	test? ( ros-melodic/controller_manager )
	test? ( ros-melodic/geometry_msgs )
	test? ( ros-melodic/rostest )
	test? ( ros-melodic/rosunit )
	test? ( ros-melodic/std_msgs )
	test? ( ros-melodic/std_srvs )
	test? ( ros-melodic/xacro )
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
