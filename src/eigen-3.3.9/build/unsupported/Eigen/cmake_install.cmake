# Install script for directory: /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/unsupported/Eigen

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/unsupported/Eigen" TYPE FILE FILES
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/unsupported/Eigen/AdolcForward"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/unsupported/Eigen/AlignedVector3"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/unsupported/Eigen/ArpackSupport"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/unsupported/Eigen/AutoDiff"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/unsupported/Eigen/BVH"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/unsupported/Eigen/EulerAngles"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/unsupported/Eigen/FFT"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/unsupported/Eigen/IterativeSolvers"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/unsupported/Eigen/KroneckerProduct"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/unsupported/Eigen/LevenbergMarquardt"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/unsupported/Eigen/MatrixFunctions"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/unsupported/Eigen/MoreVectorization"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/unsupported/Eigen/MPRealSupport"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/unsupported/Eigen/NonLinearOptimization"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/unsupported/Eigen/NumericalDiff"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/unsupported/Eigen/OpenGLSupport"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/unsupported/Eigen/Polynomials"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/unsupported/Eigen/Skyline"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/unsupported/Eigen/SparseExtra"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/unsupported/Eigen/SpecialFunctions"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/unsupported/Eigen/Splines"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/unsupported/Eigen" TYPE DIRECTORY FILES "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/unsupported/Eigen/src" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/unsupported/Eigen/CXX11/cmake_install.cmake")

endif()

