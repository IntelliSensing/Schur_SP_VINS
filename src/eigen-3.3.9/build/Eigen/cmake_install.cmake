# Install script for directory: /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/Eigen

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/Eigen" TYPE FILE FILES
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/Eigen/Cholesky"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/Eigen/CholmodSupport"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/Eigen/Core"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/Eigen/Dense"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/Eigen/Eigen"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/Eigen/Eigenvalues"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/Eigen/Geometry"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/Eigen/Householder"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/Eigen/IterativeLinearSolvers"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/Eigen/Jacobi"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/Eigen/LU"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/Eigen/MetisSupport"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/Eigen/OrderingMethods"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/Eigen/PaStiXSupport"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/Eigen/PardisoSupport"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/Eigen/QR"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/Eigen/QtAlignedMalloc"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/Eigen/SPQRSupport"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/Eigen/SVD"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/Eigen/Sparse"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/Eigen/SparseCholesky"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/Eigen/SparseCore"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/Eigen/SparseLU"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/Eigen/SparseQR"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/Eigen/StdDeque"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/Eigen/StdList"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/Eigen/StdVector"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/Eigen/SuperLUSupport"
    "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/Eigen/UmfPackSupport"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/Eigen" TYPE DIRECTORY FILES "/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/Eigen/src" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

