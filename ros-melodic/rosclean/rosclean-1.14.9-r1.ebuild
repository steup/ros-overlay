# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="rosclean: cleanup filesystem resources \(e.g. log files\)."
HOMEPAGE="http://wiki.ros.org/rosclean"
SRC_URI="https://github.com/ros-gbp/ros-release/archive/release/melodic/${PN}/1.14.9-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	dev-python/rospkg
	dev-python/rospkg
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	dev-python/setuptools
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
