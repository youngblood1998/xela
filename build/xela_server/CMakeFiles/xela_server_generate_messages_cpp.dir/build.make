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

# Utility rule file for xela_server_generate_messages_cpp.

# Include the progress variables for this target.
include xela_server/CMakeFiles/xela_server_generate_messages_cpp.dir/progress.make

xela_server/CMakeFiles/xela_server_generate_messages_cpp: /home/jay/xela/devel/include/xela_server/xServerMsg.h
xela_server/CMakeFiles/xela_server_generate_messages_cpp: /home/jay/xela/devel/include/xela_server/xSensorData.h
xela_server/CMakeFiles/xela_server_generate_messages_cpp: /home/jay/xela/devel/include/xela_server/SensPoint.h
xela_server/CMakeFiles/xela_server_generate_messages_cpp: /home/jay/xela/devel/include/xela_server/XelaSensorY.h
xela_server/CMakeFiles/xela_server_generate_messages_cpp: /home/jay/xela/devel/include/xela_server/XelaSensorX.h
xela_server/CMakeFiles/xela_server_generate_messages_cpp: /home/jay/xela/devel/include/xela_server/XelaSensorXY.h
xela_server/CMakeFiles/xela_server_generate_messages_cpp: /home/jay/xela/devel/include/xela_server/XelaSensorXYZ.h
xela_server/CMakeFiles/xela_server_generate_messages_cpp: /home/jay/xela/devel/include/xela_server/XelaSensorZ.h
xela_server/CMakeFiles/xela_server_generate_messages_cpp: /home/jay/xela/devel/include/xela_server/XelaSensorStream.h


/home/jay/xela/devel/include/xela_server/xServerMsg.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/jay/xela/devel/include/xela_server/xServerMsg.h: /home/jay/xela/src/xela_server/msg/xServerMsg.msg
/home/jay/xela/devel/include/xela_server/xServerMsg.h: /home/jay/xela/src/xela_server/msg/xSensorData.msg
/home/jay/xela/devel/include/xela_server/xServerMsg.h: /opt/ros/kinetic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/jay/xela/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating C++ code from xela_server/xServerMsg.msg"
	cd /home/jay/xela/src/xela_server && /home/jay/xela/build/catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/jay/xela/src/xela_server/msg/xServerMsg.msg -Ixela_server:/home/jay/xela/src/xela_server/msg -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -p xela_server -o /home/jay/xela/devel/include/xela_server -e /opt/ros/kinetic/share/gencpp/cmake/..

/home/jay/xela/devel/include/xela_server/xSensorData.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/jay/xela/devel/include/xela_server/xSensorData.h: /home/jay/xela/src/xela_server/msg/xSensorData.msg
/home/jay/xela/devel/include/xela_server/xSensorData.h: /opt/ros/kinetic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/jay/xela/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating C++ code from xela_server/xSensorData.msg"
	cd /home/jay/xela/src/xela_server && /home/jay/xela/build/catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/jay/xela/src/xela_server/msg/xSensorData.msg -Ixela_server:/home/jay/xela/src/xela_server/msg -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -p xela_server -o /home/jay/xela/devel/include/xela_server -e /opt/ros/kinetic/share/gencpp/cmake/..

/home/jay/xela/devel/include/xela_server/SensPoint.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/jay/xela/devel/include/xela_server/SensPoint.h: /home/jay/xela/src/xela_server/msg/SensPoint.msg
/home/jay/xela/devel/include/xela_server/SensPoint.h: /opt/ros/kinetic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/jay/xela/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating C++ code from xela_server/SensPoint.msg"
	cd /home/jay/xela/src/xela_server && /home/jay/xela/build/catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/jay/xela/src/xela_server/msg/SensPoint.msg -Ixela_server:/home/jay/xela/src/xela_server/msg -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -p xela_server -o /home/jay/xela/devel/include/xela_server -e /opt/ros/kinetic/share/gencpp/cmake/..

/home/jay/xela/devel/include/xela_server/XelaSensorY.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/jay/xela/devel/include/xela_server/XelaSensorY.h: /home/jay/xela/src/xela_server/srv/XelaSensorY.srv
/home/jay/xela/devel/include/xela_server/XelaSensorY.h: /opt/ros/kinetic/share/gencpp/msg.h.template
/home/jay/xela/devel/include/xela_server/XelaSensorY.h: /opt/ros/kinetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/jay/xela/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating C++ code from xela_server/XelaSensorY.srv"
	cd /home/jay/xela/src/xela_server && /home/jay/xela/build/catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/jay/xela/src/xela_server/srv/XelaSensorY.srv -Ixela_server:/home/jay/xela/src/xela_server/msg -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -p xela_server -o /home/jay/xela/devel/include/xela_server -e /opt/ros/kinetic/share/gencpp/cmake/..

/home/jay/xela/devel/include/xela_server/XelaSensorX.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/jay/xela/devel/include/xela_server/XelaSensorX.h: /home/jay/xela/src/xela_server/srv/XelaSensorX.srv
/home/jay/xela/devel/include/xela_server/XelaSensorX.h: /opt/ros/kinetic/share/gencpp/msg.h.template
/home/jay/xela/devel/include/xela_server/XelaSensorX.h: /opt/ros/kinetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/jay/xela/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Generating C++ code from xela_server/XelaSensorX.srv"
	cd /home/jay/xela/src/xela_server && /home/jay/xela/build/catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/jay/xela/src/xela_server/srv/XelaSensorX.srv -Ixela_server:/home/jay/xela/src/xela_server/msg -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -p xela_server -o /home/jay/xela/devel/include/xela_server -e /opt/ros/kinetic/share/gencpp/cmake/..

/home/jay/xela/devel/include/xela_server/XelaSensorXY.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/jay/xela/devel/include/xela_server/XelaSensorXY.h: /home/jay/xela/src/xela_server/srv/XelaSensorXY.srv
/home/jay/xela/devel/include/xela_server/XelaSensorXY.h: /opt/ros/kinetic/share/gencpp/msg.h.template
/home/jay/xela/devel/include/xela_server/XelaSensorXY.h: /opt/ros/kinetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/jay/xela/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Generating C++ code from xela_server/XelaSensorXY.srv"
	cd /home/jay/xela/src/xela_server && /home/jay/xela/build/catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/jay/xela/src/xela_server/srv/XelaSensorXY.srv -Ixela_server:/home/jay/xela/src/xela_server/msg -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -p xela_server -o /home/jay/xela/devel/include/xela_server -e /opt/ros/kinetic/share/gencpp/cmake/..

/home/jay/xela/devel/include/xela_server/XelaSensorXYZ.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/jay/xela/devel/include/xela_server/XelaSensorXYZ.h: /home/jay/xela/src/xela_server/srv/XelaSensorXYZ.srv
/home/jay/xela/devel/include/xela_server/XelaSensorXYZ.h: /opt/ros/kinetic/share/gencpp/msg.h.template
/home/jay/xela/devel/include/xela_server/XelaSensorXYZ.h: /opt/ros/kinetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/jay/xela/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Generating C++ code from xela_server/XelaSensorXYZ.srv"
	cd /home/jay/xela/src/xela_server && /home/jay/xela/build/catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/jay/xela/src/xela_server/srv/XelaSensorXYZ.srv -Ixela_server:/home/jay/xela/src/xela_server/msg -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -p xela_server -o /home/jay/xela/devel/include/xela_server -e /opt/ros/kinetic/share/gencpp/cmake/..

/home/jay/xela/devel/include/xela_server/XelaSensorZ.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/jay/xela/devel/include/xela_server/XelaSensorZ.h: /home/jay/xela/src/xela_server/srv/XelaSensorZ.srv
/home/jay/xela/devel/include/xela_server/XelaSensorZ.h: /opt/ros/kinetic/share/gencpp/msg.h.template
/home/jay/xela/devel/include/xela_server/XelaSensorZ.h: /opt/ros/kinetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/jay/xela/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Generating C++ code from xela_server/XelaSensorZ.srv"
	cd /home/jay/xela/src/xela_server && /home/jay/xela/build/catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/jay/xela/src/xela_server/srv/XelaSensorZ.srv -Ixela_server:/home/jay/xela/src/xela_server/msg -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -p xela_server -o /home/jay/xela/devel/include/xela_server -e /opt/ros/kinetic/share/gencpp/cmake/..

/home/jay/xela/devel/include/xela_server/XelaSensorStream.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/jay/xela/devel/include/xela_server/XelaSensorStream.h: /home/jay/xela/src/xela_server/srv/XelaSensorStream.srv
/home/jay/xela/devel/include/xela_server/XelaSensorStream.h: /home/jay/xela/src/xela_server/msg/SensPoint.msg
/home/jay/xela/devel/include/xela_server/XelaSensorStream.h: /opt/ros/kinetic/share/gencpp/msg.h.template
/home/jay/xela/devel/include/xela_server/XelaSensorStream.h: /opt/ros/kinetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/jay/xela/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Generating C++ code from xela_server/XelaSensorStream.srv"
	cd /home/jay/xela/src/xela_server && /home/jay/xela/build/catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/jay/xela/src/xela_server/srv/XelaSensorStream.srv -Ixela_server:/home/jay/xela/src/xela_server/msg -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -p xela_server -o /home/jay/xela/devel/include/xela_server -e /opt/ros/kinetic/share/gencpp/cmake/..

xela_server_generate_messages_cpp: xela_server/CMakeFiles/xela_server_generate_messages_cpp
xela_server_generate_messages_cpp: /home/jay/xela/devel/include/xela_server/xServerMsg.h
xela_server_generate_messages_cpp: /home/jay/xela/devel/include/xela_server/xSensorData.h
xela_server_generate_messages_cpp: /home/jay/xela/devel/include/xela_server/SensPoint.h
xela_server_generate_messages_cpp: /home/jay/xela/devel/include/xela_server/XelaSensorY.h
xela_server_generate_messages_cpp: /home/jay/xela/devel/include/xela_server/XelaSensorX.h
xela_server_generate_messages_cpp: /home/jay/xela/devel/include/xela_server/XelaSensorXY.h
xela_server_generate_messages_cpp: /home/jay/xela/devel/include/xela_server/XelaSensorXYZ.h
xela_server_generate_messages_cpp: /home/jay/xela/devel/include/xela_server/XelaSensorZ.h
xela_server_generate_messages_cpp: /home/jay/xela/devel/include/xela_server/XelaSensorStream.h
xela_server_generate_messages_cpp: xela_server/CMakeFiles/xela_server_generate_messages_cpp.dir/build.make

.PHONY : xela_server_generate_messages_cpp

# Rule to build all files generated by this target.
xela_server/CMakeFiles/xela_server_generate_messages_cpp.dir/build: xela_server_generate_messages_cpp

.PHONY : xela_server/CMakeFiles/xela_server_generate_messages_cpp.dir/build

xela_server/CMakeFiles/xela_server_generate_messages_cpp.dir/clean:
	cd /home/jay/xela/build/xela_server && $(CMAKE_COMMAND) -P CMakeFiles/xela_server_generate_messages_cpp.dir/cmake_clean.cmake
.PHONY : xela_server/CMakeFiles/xela_server_generate_messages_cpp.dir/clean

xela_server/CMakeFiles/xela_server_generate_messages_cpp.dir/depend:
	cd /home/jay/xela/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jay/xela/src /home/jay/xela/src/xela_server /home/jay/xela/build /home/jay/xela/build/xela_server /home/jay/xela/build/xela_server/CMakeFiles/xela_server_generate_messages_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : xela_server/CMakeFiles/xela_server_generate_messages_cpp.dir/depend

