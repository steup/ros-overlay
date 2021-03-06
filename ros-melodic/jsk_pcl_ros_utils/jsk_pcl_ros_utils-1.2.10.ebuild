# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python3_8 )

inherit ros-cmake

DESCRIPTION="ROS utility nodelets for pointcloud perception."
HOMEPAGE="http://jsk-docs.readthedocs.io/en/latest/jsk_recognition/doc/jsk_pcl_ros_utils"
SRC_URI="https://github.com/tork-a/jsk_recognition-release/archive/release/melodic/${PN}/1.2.10-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/compressed_depth_image_transport
	ros-melodic/compressed_image_transport
	ros-melodic/cv_bridge
	ros-melodic/diagnostic_msgs
	ros-melodic/diagnostic_updater
	ros-melodic/dynamic_reconfigure
	ros-melodic/eigen_conversions
	ros-melodic/geometry_msgs
	ros-melodic/image_geometry
	ros-melodic/image_transport
	ros-melodic/image_view
	ros-melodic/image_view2
	ros-melodic/interactive_markers
	ros-melodic/jsk_data
	ros-melodic/jsk_footstep_msgs
	ros-melodic/jsk_recognition_msgs
	ros-melodic/jsk_recognition_utils
	ros-melodic/jsk_topic_tools
	ros-melodic/kdl_conversions
	ros-melodic/kdl_parser
	ros-melodic/laser_assembler
	ros-melodic/message_runtime
	ros-melodic/moveit_core
	ros-melodic/moveit_ros_perception
	ros-melodic/nav_msgs
	ros-melodic/nodelet
	ros-melodic/octomap
	ros-melodic/octomap_msgs
	ros-melodic/octomap_ros
	ros-melodic/octomap_server
	ros-melodic/openni2_launch
	ros-melodic/pcl_conversions
	ros-melodic/pcl_msgs
	ros-melodic/pcl_ros
	ros-melodic/robot_self_filter
	ros-melodic/rosbag
	ros-melodic/rosboost_cfg
	ros-melodic/roscpp_tutorials
	ros-melodic/rviz
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/std_srvs
	ros-melodic/stereo_msgs
	ros-melodic/tf
	ros-melodic/tf2_ros
	ros-melodic/tf_conversions
	ros-melodic/visualization_msgs
	test? ( ros-melodic/jsk_tools )
	test? ( ros-melodic/roslaunch )
	test? ( ros-melodic/rostest )
	dev-libs/boost[python]
	sci-libs/scikits_learn
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
