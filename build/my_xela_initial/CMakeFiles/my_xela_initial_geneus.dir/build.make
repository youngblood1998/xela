# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/jay/xela/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jay/xela/build

# Utility rule file for my_xela_initial_geneus.

# Include the progress variables for this target.
include my_xela_initial/CMakeFiles/my_xela_initial_geneus.dir/progress.make

my_xela_initial_geneus: my_xela_initial/CMakeFiles/my_xela_initial_geneus.dir/build.make

.PHONY : my_xela_initial_geneus

# Rule to build all files generated by this target.
my_xela_initial/CMakeFiles/my_xela_initial_geneus.dir/build: my_xela_initial_geneus

.PHONY : my_xela_initial/CMakeFiles/my_xela_initial_geneus.dir/build

my_xela_initial/CMakeFiles/my_xela_initial_geneus.dir/clean:
	cd /home/jay/xela/build/my_xela_initial && $(CMAKE_COMMAND) -P CMakeFiles/my_xela_initial_geneus.dir/cmake_clean.cmake
.PHONY : my_xela_initial/CMakeFiles/my_xela_initial_geneus.dir/clean

my_xela_initial/CMakeFiles/my_xela_initial_geneus.dir/depend:
	cd /home/jay/xela/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jay/xela/src /home/jay/xela/src/my_xela_initial /home/jay/xela/build /home/jay/xela/build/my_xela_initial /home/jay/xela/build/my_xela_initial/CMakeFiles/my_xela_initial_geneus.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : my_xela_initial/CMakeFiles/my_xela_initial_geneus.dir/depend

