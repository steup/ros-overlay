# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="This contains CvBridge, which converts between ROS\
	Image messages and [...]"
HOMEPAGE="http://www.ros.org/wiki/cv_bridge"
SRC_URI="https://github.com/ros-gbp/vision_opencv-release/archive/release/noetic/${PN}/1.15.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/rosconsole
	ros-melodic/sensor_msgs
	test? ( ros-melodic/rostest )
	dev-libs/boost[python]
	media-libs/opencv
	dev-lang/python
	media-libs/opencv[python]
	test? ( dev-python/numpy )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

PATCHES=( "${FILESDIR}/1.15.0-boost-python-detection.patch" )

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
