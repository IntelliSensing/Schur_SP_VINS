cmake_minimum_required(VERSION 2.8.3)
project(svo_benchmarking)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin_simple REQUIRED)
catkin_simple()
set(CMAKE_BUILD_TYPE "Release")
set(CMAKE_CXX_FLAGS "-std=c++11")
set(CMAKE_CXX_FLAGS_RELEASE "-O3 -Wall -g")
# find_package(catkin REQUIRED COMPONENTS
#   rospy
#   roscpp
#   rosbag
# )

## Uncomment this if the package has a setup.py. This macro ensures
## modules and global scripts declared therein get installed
## See http://ros.org/doc/api/catkin/html/user_guide/setup_dot_py.html
catkin_python_setup()

# catkin_package(
# #  INCLUDE_DIRS include
# #  LIBRARIES bag_to_pose
# #  CATKIN_DEPENDS other_catkin_pkg
# #  DEPENDS system_lib
# )
#
# include_directories(
#   ${catkin_INCLUDE_DIRS}
# )


# xinjiade

add_definitions(-DC10_USE_GLOG=0)

# Find OpenCV (OpenCV 3.x)
find_package(OpenCV REQUIRED)

# Find libtorch (PyTorch C++)
set(CMAKE_PREFIX_PATH "/home/huanhuan/libtorch/share/cmake/Torch")  # Replace with your actual libtorch path
find_package(Torch REQUIRED)

# Include directories
include_directories(${OpenCV_INCLUDE_DIRS})
include_directories("/home/huanhuan/libtorch/include")
include_directories("/home/huanhuan/libtorch/include/torch/csrc/api/include")

# Link directories
link_directories("/home/huanhuan/libtorch/lib")


