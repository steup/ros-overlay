# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package extends the canopen_chain_node with specialized handling for canope"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-industrial-release/ros_canopen-release/archive/release/lunar/canopen_motor_node/0.7.5-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="LGPLv3"

KEYWORDS="x86 amd64 arm arm64"

RDEPEND="
    ros-lunar/canopen_402
    ros-lunar/canopen_chain_node
    ros-lunar/controller_manager
    ros-lunar/controller_manager_msgs
    ros-lunar/filters
    ros-lunar/hardware_interface
    ros-lunar/joint_limits_interface
    ros-lunar/urdf
    dev-cpp/muParser
"
DEPEND="${RDEPEND}
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/lunar"

src_unpack() {
    default
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