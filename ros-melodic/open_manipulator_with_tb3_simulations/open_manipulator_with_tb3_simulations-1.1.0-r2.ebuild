# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="Simulation packages for OpenManipulator with TurtleBot3"
HOMEPAGE="http://wiki.ros.org/open_manipulator_with_tb3_simulations"
SRC_URI="https://github.com/ROBOTIS-GIT-release/${PN}-release/archive/release/melodic/${PN}/1.1.0-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/open_manipulator_with_tb3_gazebo
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
