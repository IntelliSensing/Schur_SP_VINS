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
include test/CMakeFiles/lscg_1.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/lscg_1.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/lscg_1.dir/flags.make

test/CMakeFiles/lscg_1.dir/lscg.cpp.o: test/CMakeFiles/lscg_1.dir/flags.make
test/CMakeFiles/lscg_1.dir/lscg.cpp.o: ../test/lscg.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/lscg_1.dir/lscg.cpp.o"
	cd /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lscg_1.dir/lscg.cpp.o -c /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/test/lscg.cpp

test/CMakeFiles/lscg_1.dir/lscg.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lscg_1.dir/lscg.cpp.i"
	cd /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/test/lscg.cpp > CMakeFiles/lscg_1.dir/lscg.cpp.i

test/CMakeFiles/lscg_1.dir/lscg.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lscg_1.dir/lscg.cpp.s"
	cd /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/test/lscg.cpp -o CMakeFiles/lscg_1.dir/lscg.cpp.s

# Object files for target lscg_1
lscg_1_OBJECTS = \
"CMakeFiles/lscg_1.dir/lscg.cpp.o"

# External object files for target lscg_1
lscg_1_EXTERNAL_OBJECTS =

test/lscg_1: test/CMakeFiles/lscg_1.dir/lscg.cpp.o
test/lscg_1: test/CMakeFiles/lscg_1.dir/build.make
test/lscg_1: test/CMakeFiles/lscg_1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable lscg_1"
	cd /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lscg_1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/lscg_1.dir/build: test/lscg_1

.PHONY : test/CMakeFiles/lscg_1.dir/build

test/CMakeFiles/lscg_1.dir/clean:
	cd /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/test && $(CMAKE_COMMAND) -P CMakeFiles/lscg_1.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/lscg_1.dir/clean

test/CMakeFiles/lscg_1.dir/depend:
	cd /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9 /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/test /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/test /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/test/CMakeFiles/lscg_1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/lscg_1.dir/depend

