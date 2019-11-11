# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="multires_image"
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/swri-robotics-gbp/mapviz-release/archive/release/melodic/${PN}/1.2.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cv_bridge
	ros-melodic/geometry_msgs
	ros-melodic/gps_common
	ros-melodic/libqt_core
	ros-melodic/libqt_opengl
	ros-melodic/mapviz
	ros-melodic/pluginlib
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/swri_math_util
	ros-melodic/swri_transform_util
	ros-melodic/swri_yaml_util
	ros-melodic/tf
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/libqt_dev
	ros-melodic/libqt_opengl_dev
	ros-melodic/qt_qmake
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
