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
CMAKE_SOURCE_DIR = /home/antronyx/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/antronyx/catkin_ws/build

# Utility rule file for clean_test_results_spacenav_node.

# Include the progress variables for this target.
include joystick_drivers/spacenav_node/CMakeFiles/clean_test_results_spacenav_node.dir/progress.make

joystick_drivers/spacenav_node/CMakeFiles/clean_test_results_spacenav_node:
	cd /home/antronyx/catkin_ws/build/joystick_drivers/spacenav_node && /usr/bin/python3 /opt/ros/noetic/share/catkin/cmake/test/remove_test_results.py /home/antronyx/catkin_ws/build/test_results/spacenav_node

clean_test_results_spacenav_node: joystick_drivers/spacenav_node/CMakeFiles/clean_test_results_spacenav_node
clean_test_results_spacenav_node: joystick_drivers/spacenav_node/CMakeFiles/clean_test_results_spacenav_node.dir/build.make

.PHONY : clean_test_results_spacenav_node

# Rule to build all files generated by this target.
joystick_drivers/spacenav_node/CMakeFiles/clean_test_results_spacenav_node.dir/build: clean_test_results_spacenav_node

.PHONY : joystick_drivers/spacenav_node/CMakeFiles/clean_test_results_spacenav_node.dir/build

joystick_drivers/spacenav_node/CMakeFiles/clean_test_results_spacenav_node.dir/clean:
	cd /home/antronyx/catkin_ws/build/joystick_drivers/spacenav_node && $(CMAKE_COMMAND) -P CMakeFiles/clean_test_results_spacenav_node.dir/cmake_clean.cmake
.PHONY : joystick_drivers/spacenav_node/CMakeFiles/clean_test_results_spacenav_node.dir/clean

joystick_drivers/spacenav_node/CMakeFiles/clean_test_results_spacenav_node.dir/depend:
	cd /home/antronyx/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/antronyx/catkin_ws/src /home/antronyx/catkin_ws/src/joystick_drivers/spacenav_node /home/antronyx/catkin_ws/build /home/antronyx/catkin_ws/build/joystick_drivers/spacenav_node /home/antronyx/catkin_ws/build/joystick_drivers/spacenav_node/CMakeFiles/clean_test_results_spacenav_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : joystick_drivers/spacenav_node/CMakeFiles/clean_test_results_spacenav_node.dir/depend

