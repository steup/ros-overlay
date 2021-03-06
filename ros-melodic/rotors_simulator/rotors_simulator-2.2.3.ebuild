# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="RotorS is a MAV gazebo simulator."
HOMEPAGE="https://github.com/ethz-asl/rotors_simulator"
SRC_URI="https://github.com/ethz-asl/${PN}-release/archive/release/melodic/${PN}/2.2.3-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="ASL 2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/rotors_comm
	ros-melodic/rotors_control
	ros-melodic/rotors_description
	ros-melodic/rotors_evaluation
	ros-melodic/rotors_gazebo
	ros-melodic/rotors_gazebo_plugins
	ros-melodic/rotors_hil_interface
	ros-melodic/rotors_joy_interface
	ros-melodic/rqt_rotors
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
