# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="The cob_object_detection_visualizer package visualizes the object detection[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_perception_common-release/archive/release/melodic/${PN}/0.6.15-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cob_object_detection_msgs
	ros-melodic/cv_bridge
	ros-melodic/eigen_conversions
	ros-melodic/image_transport
	ros-melodic/message_filters
	ros-melodic/pcl_ros
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/visualization_msgs
	dev-libs/boost[python]
	media-libs/opencv
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
