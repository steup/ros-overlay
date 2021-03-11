# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="This ROS package wraps documentation tools like doxygen, sphinx,\
	and e[...]"
HOMEPAGE="http://wiki.ros.org/rosdoc_lite"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/kinetic/${PN}/0.2.9-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/genmsg
	dev-python/epydoc
	dev-python/catkin_pkg
	dev-python/kitchen
	dev-python/rospkg
	dev-python/sphinx
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	app-doc/doxygen
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
