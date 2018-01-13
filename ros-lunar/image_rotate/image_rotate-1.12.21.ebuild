# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="p"
HOMEPAGE="http://ros.org/wiki/image_rotate"
SRC_URI="https://github.com/ros-gbp/image_pipeline-release/archive/release/lunar/${PN}/1.12.21-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/cv_bridge
	ros-lunar/dynamic_reconfigure
	ros-lunar/image_transport
	ros-lunar/nodelet
	ros-lunar/roscpp
	ros-lunar/tf2
	ros-lunar/tf2_geometry_msgs
	ros-lunar/tf2_ros
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/cmake_modules
	ros-lunar/geometry_msgs
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"