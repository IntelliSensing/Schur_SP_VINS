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
include doc/snippets/CMakeFiles/compile_tut_arithmetic_redux_minmax.dir/depend.make

# Include the progress variables for this target.
include doc/snippets/CMakeFiles/compile_tut_arithmetic_redux_minmax.dir/progress.make

# Include the compile flags for this target's objects.
include doc/snippets/CMakeFiles/compile_tut_arithmetic_redux_minmax.dir/flags.make

doc/snippets/CMakeFiles/compile_tut_arithmetic_redux_minmax.dir/compile_tut_arithmetic_redux_minmax.cpp.o: doc/snippets/CMakeFiles/compile_tut_arithmetic_redux_minmax.dir/flags.make
doc/snippets/CMakeFiles/compile_tut_arithmetic_redux_minmax.dir/compile_tut_arithmetic_redux_minmax.cpp.o: doc/snippets/compile_tut_arithmetic_redux_minmax.cpp
doc/snippets/CMakeFiles/compile_tut_arithmetic_redux_minmax.dir/compile_tut_arithmetic_redux_minmax.cpp.o: ../doc/snippets/tut_arithmetic_redux_minmax.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object doc/snippets/CMakeFiles/compile_tut_arithmetic_redux_minmax.dir/compile_tut_arithmetic_redux_minmax.cpp.o"
	cd /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/doc/snippets && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/compile_tut_arithmetic_redux_minmax.dir/compile_tut_arithmetic_redux_minmax.cpp.o -c /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/doc/snippets/compile_tut_arithmetic_redux_minmax.cpp

doc/snippets/CMakeFiles/compile_tut_arithmetic_redux_minmax.dir/compile_tut_arithmetic_redux_minmax.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/compile_tut_arithmetic_redux_minmax.dir/compile_tut_arithmetic_redux_minmax.cpp.i"
	cd /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/doc/snippets && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/doc/snippets/compile_tut_arithmetic_redux_minmax.cpp > CMakeFiles/compile_tut_arithmetic_redux_minmax.dir/compile_tut_arithmetic_redux_minmax.cpp.i

doc/snippets/CMakeFiles/compile_tut_arithmetic_redux_minmax.dir/compile_tut_arithmetic_redux_minmax.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/compile_tut_arithmetic_redux_minmax.dir/compile_tut_arithmetic_redux_minmax.cpp.s"
	cd /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/doc/snippets && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/doc/snippets/compile_tut_arithmetic_redux_minmax.cpp -o CMakeFiles/compile_tut_arithmetic_redux_minmax.dir/compile_tut_arithmetic_redux_minmax.cpp.s

# Object files for target compile_tut_arithmetic_redux_minmax
compile_tut_arithmetic_redux_minmax_OBJECTS = \
"CMakeFiles/compile_tut_arithmetic_redux_minmax.dir/compile_tut_arithmetic_redux_minmax.cpp.o"

# External object files for target compile_tut_arithmetic_redux_minmax
compile_tut_arithmetic_redux_minmax_EXTERNAL_OBJECTS =

doc/snippets/compile_tut_arithmetic_redux_minmax: doc/snippets/CMakeFiles/compile_tut_arithmetic_redux_minmax.dir/compile_tut_arithmetic_redux_minmax.cpp.o
doc/snippets/compile_tut_arithmetic_redux_minmax: doc/snippets/CMakeFiles/compile_tut_arithmetic_redux_minmax.dir/build.make
doc/snippets/compile_tut_arithmetic_redux_minmax: doc/snippets/CMakeFiles/compile_tut_arithmetic_redux_minmax.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable compile_tut_arithmetic_redux_minmax"
	cd /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/doc/snippets && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/compile_tut_arithmetic_redux_minmax.dir/link.txt --verbose=$(VERBOSE)
	cd /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/doc/snippets && ./compile_tut_arithmetic_redux_minmax >/home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/doc/snippets/tut_arithmetic_redux_minmax.out

# Rule to build all files generated by this target.
doc/snippets/CMakeFiles/compile_tut_arithmetic_redux_minmax.dir/build: doc/snippets/compile_tut_arithmetic_redux_minmax

.PHONY : doc/snippets/CMakeFiles/compile_tut_arithmetic_redux_minmax.dir/build

doc/snippets/CMakeFiles/compile_tut_arithmetic_redux_minmax.dir/clean:
	cd /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/doc/snippets && $(CMAKE_COMMAND) -P CMakeFiles/compile_tut_arithmetic_redux_minmax.dir/cmake_clean.cmake
.PHONY : doc/snippets/CMakeFiles/compile_tut_arithmetic_redux_minmax.dir/clean

doc/snippets/CMakeFiles/compile_tut_arithmetic_redux_minmax.dir/depend:
	cd /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9 /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/doc/snippets /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/doc/snippets /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/doc/snippets/CMakeFiles/compile_tut_arithmetic_redux_minmax.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : doc/snippets/CMakeFiles/compile_tut_arithmetic_redux_minmax.dir/depend

