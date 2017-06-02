# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="ROS driver for the Leap Motion gesture sensor"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/leap_motion-release/archive/release/indigo/leap_motion/0.0.11-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/camera_info_manager
    ros-indigo/rospack
    ros-indigo/rospy
    ros-indigo/image_transport
    ros-indigo/geometry_msgs
    ros-indigo/message_runtime
    ros-indigo/roslib
    ros-indigo/camera_calibration_parsers
    ros-indigo/roscpp
    ros-indigo/std_msgs
    ros-indigo/visualization_msgs
"
DEPEND="${RDEPEND}
    ros-indigo/message_generation
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

src_unpack() {
    wget -O ${P}.tar.gz ${SRC_URI}
    tar -xf ${P}.tar.gz
    rm -f ${P}.tar.gz
    mv *${P}* ${P}
}

src_configure() {
    mkdir ${WORKDIR}/src
    cp -R ${WORKDIR}/${P} ${WORKDIR}/src/${P}
}

src_compile() {
    echo ""
}

src_install() {
    cd ../../work
    source /${ROS_PREFIX}/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}