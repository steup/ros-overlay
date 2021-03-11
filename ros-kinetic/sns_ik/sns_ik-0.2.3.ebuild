# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="Metapackage for the Saturation in the Null Space \(SNS\)\
   Inverse Kinema[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/RethinkRobotics-release/sns_ik-release/archive/release/kinetic/sns_ik/0.2.3-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/sns_ik_examples
	ros-kinetic/sns_ik_lib
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
