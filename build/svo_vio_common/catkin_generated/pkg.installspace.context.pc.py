# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "eigen_catkin;glog_catkin;gflags_catkin;minkindr;geometry_msgs;std_msgs;svo_common".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lsvo_vio_common".split(';') if "-lsvo_vio_common" != "" else []
PROJECT_NAME = "svo_vio_common"
PROJECT_SPACE_DIR = "/home/huanhuan/SchurVINS-ws/install"
PROJECT_VERSION = "0.1.4"
