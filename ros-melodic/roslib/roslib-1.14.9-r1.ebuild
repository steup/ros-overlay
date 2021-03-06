# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="Base dependencies and support libraries for ROS.\
	roslib contains many [...]"
HOMEPAGE="http://wiki.ros.org/roslib"
SRC_URI="https://github.com/ros-gbp/ros-release/archive/release/melodic/${PN}/1.14.9-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/catkin
	ros-melodic/ros_environment
	ros-melodic/rospack
	test? ( ros-melodic/rosmake )
	dev-python/rospkg
	dev-python/rospkg
	test? ( dev-libs/boost[python] )
"
DEPEND="${RDEPEND}
	dev-libs/boost[threads]
	dev-python/setuptools
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
