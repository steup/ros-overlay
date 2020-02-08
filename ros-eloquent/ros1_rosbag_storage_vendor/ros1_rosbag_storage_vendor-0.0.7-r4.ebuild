# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Vendor package for rosbag_storage of ROS1"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosbag2_bag_v2-release/archive/release/eloquent/${PN}/0.0.7-4.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	test? ( ros-eloquent/ament_lint_auto )
	test? ( ros-eloquent/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
	ros-eloquent/pluginlib
	ros-eloquent/ros1_bridge
	dev-libs/boost[python]
	app-arch/bzip2
	dev-vcs/git
	dev-libs/console_bridge
	app-crypt/gpgme
	dev-libs/openssl
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"