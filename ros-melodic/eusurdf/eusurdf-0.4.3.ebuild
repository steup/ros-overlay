# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="urdf models converted from euslisp"
HOMEPAGE="http://ros.org/wiki/eusurdf"
SRC_URI="https://github.com/tork-a/jsk_model_tools-release/archive/release/melodic/${PN}/0.4.3-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/collada_urdf_jsk_patch
	ros-melodic/gazebo_ros
	ros-melodic/rostest
	dev-python/lxml
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roseus
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
