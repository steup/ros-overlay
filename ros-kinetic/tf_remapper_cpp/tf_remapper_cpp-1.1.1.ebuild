# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="More efficient version of tf/tf_remap able to handle TFs at kHz with tens o[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/peci1/${PN}-release/archive/release/kinetic/${PN}/1.1.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/roscpp
	ros-kinetic/tf2_msgs
	ros-kinetic/xmlrpcpp
	test? ( ros-kinetic/rostest )
	test? ( ros-kinetic/tf )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
