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

# Utility rule file for xela_server_genlisp.

# Include the progress variables for this target.
include xela_server/CMakeFiles/xela_server_genlisp.dir/progress.make

xela_server_genlisp: xela_server/CMakeFiles/xela_server_genlisp.dir/build.make

.PHONY : xela_server_genlisp

# Rule to build all files generated by this target.
xela_server/CMakeFiles/xela_server_genlisp.dir/build: xela_server_genlisp

.PHONY : xela_server/CMakeFiles/xela_server_genlisp.dir/build

xela_server/CMakeFiles/xela_server_genlisp.dir/clean:
	cd /home/jay/xela/build/xela_server && $(CMAKE_COMMAND) -P CMakeFiles/xela_server_genlisp.dir/cmake_clean.cmake
.PHONY : xela_server/CMakeFiles/xela_server_genlisp.dir/clean

xela_server/CMakeFiles/xela_server_genlisp.dir/depend:
	cd /home/jay/xela/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jay/xela/src /home/jay/xela/src/xela_server /home/jay/xela/build /home/jay/xela/build/xela_server /home/jay/xela/build/xela_server/CMakeFiles/xela_server_genlisp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : xela_server/CMakeFiles/xela_server_genlisp.dir/depend

