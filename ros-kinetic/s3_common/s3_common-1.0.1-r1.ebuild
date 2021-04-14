# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="Common utilities for interacting with AWS S3"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/aws-gbp/rosbag_uploader-release/archive/release/kinetic/${PN}/1.0.1-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/aws_common
	dev-libs/boost[python]
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"