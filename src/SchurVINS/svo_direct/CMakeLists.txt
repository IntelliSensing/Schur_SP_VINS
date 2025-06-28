project(svo_direct)
cmake_minimum_required(VERSION 2.8.3)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(catkin_simple REQUIRED)
catkin_simple(ALL_DEPS_REQUIRED)
set(OpenCV_DIR /usr/share/OpenCV)
find_package(OpenCV REQUIRED)

if(${OpenCV_VERSION} STREQUAL "3.2.0")
  message(STATUS "OpenCV version ${OpenCV_VERSION}")
else()
  message(WARNING "OpenCV version ${OpenCV_VERSION}, OpenCV version must be 3.2.0")
endif()

include(SvoSetup)

set(HEADERS
  include/svo/direct/patch_warp.h
  include/svo/direct/patch_score.h
  include/svo/direct/patch_utils.h
  include/svo/direct/feature_alignment.h
  include/svo/direct/feature_detection_types.h
  include/svo/direct/feature_detection.h
  include/svo/direct/feature_detection_utils.h
  include/svo/direct/matcher.h
  include/svo/direct/depth_filter.h
  include/svo/direct/depth_estimation.h
  include/svo/direct/elder_zucker.h
  
  include/svo/direct/ov_SPextractor.h
  include/svo/direct/ov_SuperPoint.h
)

set(SOURCES
  src/patch_warp.cpp
  src/feature_alignment.cpp
  src/feature_detection.cpp
  src/feature_detection_utils.cpp
  src/matcher.cpp
  src/depth_filter.cpp
  src/depth_estimation.cpp
  src/elder_zucker.cpp
  
  src/ov_SPextractor.cc
  src/ov_SuperPoint.cc
  )

cs_add_library(${PROJECT_NAME} ${SOURCES} ${HEADERS})
target_link_libraries(${PROJECT_NAME} ${OpenCV_LIBRARIES})

cs_add_executable(svo_test_patch_score test/test_patch_score.cpp)
target_link_libraries(svo_test_patch_score ${PROJECT_NAME})

cs_add_executable(svo_test_edgelet_direction test/test_edgelet_direction.cpp)
target_link_libraries(svo_test_edgelet_direction ${PROJECT_NAME})

cs_add_executable(svo_test_edgelet_extraction test/test_edgelet_extraction.cpp)
target_link_libraries(svo_test_edgelet_extraction ${PROJECT_NAME})

cs_add_executable(svo_test_feature_alignment test/test_feature_alignment.cpp)
target_link_libraries(svo_test_feature_alignment ${PROJECT_NAME})

################################################################################
###
### GTEST
###

catkin_add_gtest(${PROJECT_NAME}-test-depth-estimation
  test/test_depth_estimation.cpp
  test/test_utils.h
)
target_link_libraries(${PROJECT_NAME}-test-depth-estimation ${PROJECT_NAME} pthread)


################################################################################
cs_install()
cs_export()








# xinjiade
add_definitions(-DC10_USE_GLOG=0)

# Find libtorch (PyTorch C++)
set(CMAKE_PREFIX_PATH "/home/huanhuan/libtorch/share/cmake/Torch") # Replace with your actual libtorch path
find_package(Torch REQUIRED)

# Include directories
include_directories(${OpenCV_INCLUDE_DIRS})
include_directories("/home/huanhuan/libtorch/include")
include_directories("/home/huanhuan/libtorch/include/torch/csrc/api/include")

# Link directories
link_directories("/home/huanhuan/libtorch/lib")

# Add libtorch to the libraries that need to be linked
target_link_libraries(${PROJECT_NAME} ${OpenCV_LIBRARIES} /home/huanhuan/libtorch/lib/libtorch.so)

# Add libtorch to the libraries for each executable
target_link_libraries(svo_test_patch_score ${PROJECT_NAME} /home/huanhuan/libtorch/lib/libtorch.so)
target_link_libraries(svo_test_edgelet_direction ${PROJECT_NAME} /home/huanhuan/libtorch/lib/libtorch.so)
target_link_libraries(svo_test_edgelet_extraction ${PROJECT_NAME} /home/huanhuan/libtorch/lib/libtorch.so)
target_link_libraries(svo_test_feature_alignment ${PROJECT_NAME} /home/huanhuan/libtorch/lib/libtorch.so)

# Ensure glog is correctly linked
include_directories("/usr/include/glog")
link_directories("/usr/lib/x86_64-linux-gnu")  # 根据实际路径设置
target_link_libraries(${PROJECT_NAME} glog)
target_link_libraries(svo_test_patch_score glog)
target_link_libraries(svo_test_edgelet_direction glog)
target_link_libraries(svo_test_edgelet_extraction glog)
target_link_libraries(svo_test_feature_alignment glog)


target_compile_options(svo_direct PRIVATE
    -Wno-error=init-list-lifetime  # 禁止将此警告视为错误
    #-Wno-init-list-lifetime        # 完全禁用此警告（可选）
)
