# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="Launch files to open an RGBD device and load all nodelets to \
	 convert[...]"
HOMEPAGE="http://www.ros.org/wiki/rgbd_launch"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/kinetic/${PN}/2.2.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/depth_image_proc
	ros-kinetic/image_proc
	ros-kinetic/nodelet
	ros-kinetic/tf2_ros
	test? ( ros-kinetic/rostest )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
