execute_process(COMMAND "/home/huanhuan/SchurVINS-ws/build/svo_benchmarking/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/huanhuan/SchurVINS-ws/build/svo_benchmarking/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
