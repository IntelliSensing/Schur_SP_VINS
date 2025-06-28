# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "cv_bridge;eigen_catkin;eigen_checks;image_transport;nodelet;roscpp;minkindr;nav_msgs;pcl_ros;rpg_common;sensor_msgs;std_msgs;svo;svo_cmake;svo_common;svo_msgs;svo_tracker;svo_ceres_backend;svo_online_loopclosing;tf;vikit_common;vikit_ros;visualization_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lsvo_ros;-lsvo_nodelet".split(';') if "-lsvo_ros;-lsvo_nodelet" != "" else []
PROJECT_NAME = "svo_ros"
PROJECT_SPACE_DIR = "/home/huanhuan/SchurVINS-ws/install"
PROJECT_VERSION = "0.1.0"
