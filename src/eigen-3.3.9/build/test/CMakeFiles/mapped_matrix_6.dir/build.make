# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build

# Include any dependencies generated for this target.
include test/CMakeFiles/mapped_matrix_6.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/mapped_matrix_6.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/mapped_matrix_6.dir/flags.make

test/CMakeFiles/mapped_matrix_6.dir/mapped_matrix.cpp.o: test/CMakeFiles/mapped_matrix_6.dir/flags.make
test/CMakeFiles/mapped_matrix_6.dir/mapped_matrix.cpp.o: ../test/mapped_matrix.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/mapped_matrix_6.dir/mapped_matrix.cpp.o"
	cd /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mapped_matrix_6.dir/mapped_matrix.cpp.o -c /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/test/mapped_matrix.cpp

test/CMakeFiles/mapped_matrix_6.dir/mapped_matrix.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mapped_matrix_6.dir/mapped_matrix.cpp.i"
	cd /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/test/mapped_matrix.cpp > CMakeFiles/mapped_matrix_6.dir/mapped_matrix.cpp.i

test/CMakeFiles/mapped_matrix_6.dir/mapped_matrix.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mapped_matrix_6.dir/mapped_matrix.cpp.s"
	cd /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/test/mapped_matrix.cpp -o CMakeFiles/mapped_matrix_6.dir/mapped_matrix.cpp.s

# Object files for target mapped_matrix_6
mapped_matrix_6_OBJECTS = \
"CMakeFiles/mapped_matrix_6.dir/mapped_matrix.cpp.o"

# External object files for target mapped_matrix_6
mapped_matrix_6_EXTERNAL_OBJECTS =

test/mapped_matrix_6: test/CMakeFiles/mapped_matrix_6.dir/mapped_matrix.cpp.o
test/mapped_matrix_6: test/CMakeFiles/mapped_matrix_6.dir/build.make
test/mapped_matrix_6: test/CMakeFiles/mapped_matrix_6.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable mapped_matrix_6"
	cd /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mapped_matrix_6.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/mapped_matrix_6.dir/build: test/mapped_matrix_6

.PHONY : test/CMakeFiles/mapped_matrix_6.dir/build

test/CMakeFiles/mapped_matrix_6.dir/clean:
	cd /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/test && $(CMAKE_COMMAND) -P CMakeFiles/mapped_matrix_6.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/mapped_matrix_6.dir/clean

test/CMakeFiles/mapped_matrix_6.dir/depend:
	cd /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9 /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/test /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/test /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/test/CMakeFiles/mapped_matrix_6.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/mapped_matrix_6.dir/depend

