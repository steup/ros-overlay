# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="ff: pddl planner. see http://www.loria.fr/~hoffmanj/ff.html"
HOMEPAGE="http://ros.org/wiki/ff"
SRC_URI="https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/${PN}/2.1.17-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/mk
	ros-melodic/rosbash
	ros-melodic/rosbuild
	ros-melodic/roslib
	ros-melodic/rospack
	sys-devel/bison
	app-misc/ca-certificates
	sys-devel/flex
	dev-libs/openssl
	app-arch/unzip
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
