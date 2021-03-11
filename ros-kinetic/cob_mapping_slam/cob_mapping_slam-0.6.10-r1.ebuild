# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="cob_mapping_slam holds launch files for running SLAM using the <a href=\"ht[...]"
HOMEPAGE="http://ros.org/wiki/cob_mapping_slam"
SRC_URI="https://github.com/ipa320/cob_navigation-release/archive/release/kinetic/${PN}/0.6.10-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/cob_navigation_global
	ros-kinetic/gmapping
	test? ( ros-kinetic/cob_supported_robots )
	test? ( ros-kinetic/roslaunch )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
