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

# Utility rule file for doc.

# Include the progress variables for this target.
include doc/CMakeFiles/doc.dir/progress.make

doc/CMakeFiles/doc:
	cd /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/doc && doxygen
	cd /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/doc && doxygen Doxyfile-unsupported
	cd /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/doc && /usr/bin/cmake -E copy /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/doc/html/group__TopicUnalignedArrayAssert.html /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/doc/html/TopicUnalignedArrayAssert.html
	cd /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/doc && /usr/bin/cmake -E rename html eigen-doc
	cd /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/doc && /usr/bin/cmake -E remove eigen-doc/eigen-doc.tgz
	cd /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/doc && /usr/bin/cmake -E tar cfz eigen-doc.tgz eigen-doc
	cd /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/doc && /usr/bin/cmake -E rename eigen-doc.tgz eigen-doc/eigen-doc.tgz
	cd /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/doc && /usr/bin/cmake -E rename eigen-doc html

doc: doc/CMakeFiles/doc
doc: doc/CMakeFiles/doc.dir/build.make

.PHONY : doc

# Rule to build all files generated by this target.
doc/CMakeFiles/doc.dir/build: doc

.PHONY : doc/CMakeFiles/doc.dir/build

doc/CMakeFiles/doc.dir/clean:
	cd /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/doc && $(CMAKE_COMMAND) -P CMakeFiles/doc.dir/cmake_clean.cmake
.PHONY : doc/CMakeFiles/doc.dir/clean

doc/CMakeFiles/doc.dir/depend:
	cd /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9 /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/doc /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/doc /home/huanhuan/SchurVINS-ws/src/eigen-3.3.9/build/doc/CMakeFiles/doc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : doc/CMakeFiles/doc.dir/depend

