# CMake generated Testfile for 
# Source directory: /home/huanhuan/SchurVINS-ws/src/SchurVINS/svo_direct
# Build directory: /home/huanhuan/SchurVINS-ws/build/svo_direct
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_svo_direct_gtest_svo_direct-test-depth-estimation "/home/huanhuan/SchurVINS-ws/build/svo_direct/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/huanhuan/SchurVINS-ws/build/svo_direct/test_results/svo_direct/gtest-svo_direct-test-depth-estimation.xml" "--return-code" "/home/huanhuan/SchurVINS-ws/devel/.private/svo_direct/lib/svo_direct/svo_direct-test-depth-estimation --gtest_output=xml:/home/huanhuan/SchurVINS-ws/build/svo_direct/test_results/svo_direct/gtest-svo_direct-test-depth-estimation.xml")
set_tests_properties(_ctest_svo_direct_gtest_svo_direct-test-depth-estimation PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;98;catkin_run_tests_target;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;37;_catkin_add_google_test;/home/huanhuan/SchurVINS-ws/src/SchurVINS/svo_direct/CMakeLists.txt;71;catkin_add_gtest;/home/huanhuan/SchurVINS-ws/src/SchurVINS/svo_direct/CMakeLists.txt;0;")
subdirs("gtest")
