# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="The handeye package"
HOMEPAGE="http://wiki.ros.org/handeye"
SRC_URI="https://github.com/crigroup/${PN}-release/archive/release/melodic/${PN}/0.1.1-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/baldor
	ros-melodic/criutils
	ros-melodic/geometry_msgs
	ros-melodic/message_runtime
	ros-melodic/std_msgs
	test? ( ros-melodic/rostest )
	virtual/python-enum34
	dev-python/matplotlib
	dev-python/numpy
	sci-libs/scipy
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
