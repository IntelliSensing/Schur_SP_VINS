# CMake generated Testfile for 
# Source directory: /home/huanhuan/SchurVINS-ws/src/SchurVINS/svo
# Build directory: /home/huanhuan/SchurVINS-ws/build/svo
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_svo_gtest_svo-test-frame "/home/huanhuan/SchurVINS-ws/build/svo/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/huanhuan/SchurVINS-ws/build/svo/test_results/svo/gtest-svo-test-frame.xml" "--return-code" "/home/huanhuan/SchurVINS-ws/devel/.private/svo/lib/svo/svo-test-frame --gtest_output=xml:/home/huanhuan/SchurVINS-ws/build/svo/test_results/svo/gtest-svo-test-frame.xml")
set_tests_properties(_ctest_svo_gtest_svo-test-frame PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;98;catkin_run_tests_target;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;37;_catkin_add_google_test;/home/huanhuan/SchurVINS-ws/src/SchurVINS/svo/CMakeLists.txt;54;catkin_add_gtest;/home/huanhuan/SchurVINS-ws/src/SchurVINS/svo/CMakeLists.txt;0;")
subdirs("gtest")
