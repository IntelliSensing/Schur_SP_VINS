# CMake generated Testfile for 
# Source directory: /home/huanhuan/SchurVINS-ws/src/SchurVINS/vikit/vikit_cameras
# Build directory: /home/huanhuan/SchurVINS-ws/build/vikit_cameras
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_vikit_cameras_gtest_vikit_cameras_tests "/home/huanhuan/SchurVINS-ws/build/vikit_cameras/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/huanhuan/SchurVINS-ws/build/vikit_cameras/test_results/vikit_cameras/gtest-vikit_cameras_tests.xml" "--return-code" "/home/huanhuan/SchurVINS-ws/devel/.private/vikit_cameras/lib/vikit_cameras/vikit_cameras_tests --gtest_output=xml:/home/huanhuan/SchurVINS-ws/build/vikit_cameras/test_results/vikit_cameras/gtest-vikit_cameras_tests.xml")
set_tests_properties(_ctest_vikit_cameras_gtest_vikit_cameras_tests PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;98;catkin_run_tests_target;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;37;_catkin_add_google_test;/home/huanhuan/SchurVINS-ws/src/SchurVINS/vikit/vikit_cameras/CMakeLists.txt;49;catkin_add_gtest;/home/huanhuan/SchurVINS-ws/src/SchurVINS/vikit/vikit_cameras/CMakeLists.txt;0;")
subdirs("gtest")
