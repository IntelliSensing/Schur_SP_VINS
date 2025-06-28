cmake_minimum_required(VERSION 2.8.3)
project(rpg_trajectory_evaluation)

find_package(catkin_simple REQUIRED)
catkin_simple()

catkin_python_setup()

catkin_install_python(PROGRAMS
  scripts/analyze_trajectory_single.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

cs_install()
cs_export()
