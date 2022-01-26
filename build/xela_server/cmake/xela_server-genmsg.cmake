# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "xela_server: 3 messages, 6 services")

set(MSG_I_FLAGS "-Ixela_server:/home/jay/xela/src/xela_server/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(xela_server_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/jay/xela/src/xela_server/srv/XelaSensorY.srv" NAME_WE)
add_custom_target(_xela_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xela_server" "/home/jay/xela/src/xela_server/srv/XelaSensorY.srv" ""
)

get_filename_component(_filename "/home/jay/xela/src/xela_server/msg/xServerMsg.msg" NAME_WE)
add_custom_target(_xela_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xela_server" "/home/jay/xela/src/xela_server/msg/xServerMsg.msg" "xela_server/xSensorData"
)

get_filename_component(_filename "/home/jay/xela/src/xela_server/msg/xSensorData.msg" NAME_WE)
add_custom_target(_xela_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xela_server" "/home/jay/xela/src/xela_server/msg/xSensorData.msg" ""
)

get_filename_component(_filename "/home/jay/xela/src/xela_server/srv/XelaSensorX.srv" NAME_WE)
add_custom_target(_xela_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xela_server" "/home/jay/xela/src/xela_server/srv/XelaSensorX.srv" ""
)

get_filename_component(_filename "/home/jay/xela/src/xela_server/srv/XelaSensorXY.srv" NAME_WE)
add_custom_target(_xela_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xela_server" "/home/jay/xela/src/xela_server/srv/XelaSensorXY.srv" ""
)

get_filename_component(_filename "/home/jay/xela/src/xela_server/msg/SensPoint.msg" NAME_WE)
add_custom_target(_xela_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xela_server" "/home/jay/xela/src/xela_server/msg/SensPoint.msg" ""
)

get_filename_component(_filename "/home/jay/xela/src/xela_server/srv/XelaSensorXYZ.srv" NAME_WE)
add_custom_target(_xela_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xela_server" "/home/jay/xela/src/xela_server/srv/XelaSensorXYZ.srv" ""
)

get_filename_component(_filename "/home/jay/xela/src/xela_server/srv/XelaSensorZ.srv" NAME_WE)
add_custom_target(_xela_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xela_server" "/home/jay/xela/src/xela_server/srv/XelaSensorZ.srv" ""
)

get_filename_component(_filename "/home/jay/xela/src/xela_server/srv/XelaSensorStream.srv" NAME_WE)
add_custom_target(_xela_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xela_server" "/home/jay/xela/src/xela_server/srv/XelaSensorStream.srv" "xela_server/SensPoint"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(xela_server
  "/home/jay/xela/src/xela_server/msg/xServerMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/jay/xela/src/xela_server/msg/xSensorData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xela_server
)
_generate_msg_cpp(xela_server
  "/home/jay/xela/src/xela_server/msg/xSensorData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xela_server
)
_generate_msg_cpp(xela_server
  "/home/jay/xela/src/xela_server/msg/SensPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xela_server
)

### Generating Services
_generate_srv_cpp(xela_server
  "/home/jay/xela/src/xela_server/srv/XelaSensorY.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xela_server
)
_generate_srv_cpp(xela_server
  "/home/jay/xela/src/xela_server/srv/XelaSensorX.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xela_server
)
_generate_srv_cpp(xela_server
  "/home/jay/xela/src/xela_server/srv/XelaSensorXY.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xela_server
)
_generate_srv_cpp(xela_server
  "/home/jay/xela/src/xela_server/srv/XelaSensorXYZ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xela_server
)
_generate_srv_cpp(xela_server
  "/home/jay/xela/src/xela_server/srv/XelaSensorZ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xela_server
)
_generate_srv_cpp(xela_server
  "/home/jay/xela/src/xela_server/srv/XelaSensorStream.srv"
  "${MSG_I_FLAGS}"
  "/home/jay/xela/src/xela_server/msg/SensPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xela_server
)

### Generating Module File
_generate_module_cpp(xela_server
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xela_server
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(xela_server_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(xela_server_generate_messages xela_server_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jay/xela/src/xela_server/srv/XelaSensorY.srv" NAME_WE)
add_dependencies(xela_server_generate_messages_cpp _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/msg/xServerMsg.msg" NAME_WE)
add_dependencies(xela_server_generate_messages_cpp _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/msg/xSensorData.msg" NAME_WE)
add_dependencies(xela_server_generate_messages_cpp _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/srv/XelaSensorX.srv" NAME_WE)
add_dependencies(xela_server_generate_messages_cpp _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/srv/XelaSensorXY.srv" NAME_WE)
add_dependencies(xela_server_generate_messages_cpp _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/msg/SensPoint.msg" NAME_WE)
add_dependencies(xela_server_generate_messages_cpp _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/srv/XelaSensorXYZ.srv" NAME_WE)
add_dependencies(xela_server_generate_messages_cpp _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/srv/XelaSensorZ.srv" NAME_WE)
add_dependencies(xela_server_generate_messages_cpp _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/srv/XelaSensorStream.srv" NAME_WE)
add_dependencies(xela_server_generate_messages_cpp _xela_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xela_server_gencpp)
add_dependencies(xela_server_gencpp xela_server_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xela_server_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(xela_server
  "/home/jay/xela/src/xela_server/msg/xServerMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/jay/xela/src/xela_server/msg/xSensorData.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xela_server
)
_generate_msg_eus(xela_server
  "/home/jay/xela/src/xela_server/msg/xSensorData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xela_server
)
_generate_msg_eus(xela_server
  "/home/jay/xela/src/xela_server/msg/SensPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xela_server
)

### Generating Services
_generate_srv_eus(xela_server
  "/home/jay/xela/src/xela_server/srv/XelaSensorY.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xela_server
)
_generate_srv_eus(xela_server
  "/home/jay/xela/src/xela_server/srv/XelaSensorX.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xela_server
)
_generate_srv_eus(xela_server
  "/home/jay/xela/src/xela_server/srv/XelaSensorXY.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xela_server
)
_generate_srv_eus(xela_server
  "/home/jay/xela/src/xela_server/srv/XelaSensorXYZ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xela_server
)
_generate_srv_eus(xela_server
  "/home/jay/xela/src/xela_server/srv/XelaSensorZ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xela_server
)
_generate_srv_eus(xela_server
  "/home/jay/xela/src/xela_server/srv/XelaSensorStream.srv"
  "${MSG_I_FLAGS}"
  "/home/jay/xela/src/xela_server/msg/SensPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xela_server
)

### Generating Module File
_generate_module_eus(xela_server
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xela_server
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(xela_server_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(xela_server_generate_messages xela_server_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jay/xela/src/xela_server/srv/XelaSensorY.srv" NAME_WE)
add_dependencies(xela_server_generate_messages_eus _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/msg/xServerMsg.msg" NAME_WE)
add_dependencies(xela_server_generate_messages_eus _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/msg/xSensorData.msg" NAME_WE)
add_dependencies(xela_server_generate_messages_eus _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/srv/XelaSensorX.srv" NAME_WE)
add_dependencies(xela_server_generate_messages_eus _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/srv/XelaSensorXY.srv" NAME_WE)
add_dependencies(xela_server_generate_messages_eus _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/msg/SensPoint.msg" NAME_WE)
add_dependencies(xela_server_generate_messages_eus _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/srv/XelaSensorXYZ.srv" NAME_WE)
add_dependencies(xela_server_generate_messages_eus _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/srv/XelaSensorZ.srv" NAME_WE)
add_dependencies(xela_server_generate_messages_eus _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/srv/XelaSensorStream.srv" NAME_WE)
add_dependencies(xela_server_generate_messages_eus _xela_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xela_server_geneus)
add_dependencies(xela_server_geneus xela_server_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xela_server_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(xela_server
  "/home/jay/xela/src/xela_server/msg/xServerMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/jay/xela/src/xela_server/msg/xSensorData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xela_server
)
_generate_msg_lisp(xela_server
  "/home/jay/xela/src/xela_server/msg/xSensorData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xela_server
)
_generate_msg_lisp(xela_server
  "/home/jay/xela/src/xela_server/msg/SensPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xela_server
)

### Generating Services
_generate_srv_lisp(xela_server
  "/home/jay/xela/src/xela_server/srv/XelaSensorY.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xela_server
)
_generate_srv_lisp(xela_server
  "/home/jay/xela/src/xela_server/srv/XelaSensorX.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xela_server
)
_generate_srv_lisp(xela_server
  "/home/jay/xela/src/xela_server/srv/XelaSensorXY.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xela_server
)
_generate_srv_lisp(xela_server
  "/home/jay/xela/src/xela_server/srv/XelaSensorXYZ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xela_server
)
_generate_srv_lisp(xela_server
  "/home/jay/xela/src/xela_server/srv/XelaSensorZ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xela_server
)
_generate_srv_lisp(xela_server
  "/home/jay/xela/src/xela_server/srv/XelaSensorStream.srv"
  "${MSG_I_FLAGS}"
  "/home/jay/xela/src/xela_server/msg/SensPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xela_server
)

### Generating Module File
_generate_module_lisp(xela_server
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xela_server
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(xela_server_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(xela_server_generate_messages xela_server_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jay/xela/src/xela_server/srv/XelaSensorY.srv" NAME_WE)
add_dependencies(xela_server_generate_messages_lisp _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/msg/xServerMsg.msg" NAME_WE)
add_dependencies(xela_server_generate_messages_lisp _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/msg/xSensorData.msg" NAME_WE)
add_dependencies(xela_server_generate_messages_lisp _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/srv/XelaSensorX.srv" NAME_WE)
add_dependencies(xela_server_generate_messages_lisp _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/srv/XelaSensorXY.srv" NAME_WE)
add_dependencies(xela_server_generate_messages_lisp _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/msg/SensPoint.msg" NAME_WE)
add_dependencies(xela_server_generate_messages_lisp _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/srv/XelaSensorXYZ.srv" NAME_WE)
add_dependencies(xela_server_generate_messages_lisp _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/srv/XelaSensorZ.srv" NAME_WE)
add_dependencies(xela_server_generate_messages_lisp _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/srv/XelaSensorStream.srv" NAME_WE)
add_dependencies(xela_server_generate_messages_lisp _xela_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xela_server_genlisp)
add_dependencies(xela_server_genlisp xela_server_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xela_server_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(xela_server
  "/home/jay/xela/src/xela_server/msg/xServerMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/jay/xela/src/xela_server/msg/xSensorData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xela_server
)
_generate_msg_nodejs(xela_server
  "/home/jay/xela/src/xela_server/msg/xSensorData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xela_server
)
_generate_msg_nodejs(xela_server
  "/home/jay/xela/src/xela_server/msg/SensPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xela_server
)

### Generating Services
_generate_srv_nodejs(xela_server
  "/home/jay/xela/src/xela_server/srv/XelaSensorY.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xela_server
)
_generate_srv_nodejs(xela_server
  "/home/jay/xela/src/xela_server/srv/XelaSensorX.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xela_server
)
_generate_srv_nodejs(xela_server
  "/home/jay/xela/src/xela_server/srv/XelaSensorXY.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xela_server
)
_generate_srv_nodejs(xela_server
  "/home/jay/xela/src/xela_server/srv/XelaSensorXYZ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xela_server
)
_generate_srv_nodejs(xela_server
  "/home/jay/xela/src/xela_server/srv/XelaSensorZ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xela_server
)
_generate_srv_nodejs(xela_server
  "/home/jay/xela/src/xela_server/srv/XelaSensorStream.srv"
  "${MSG_I_FLAGS}"
  "/home/jay/xela/src/xela_server/msg/SensPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xela_server
)

### Generating Module File
_generate_module_nodejs(xela_server
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xela_server
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(xela_server_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(xela_server_generate_messages xela_server_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jay/xela/src/xela_server/srv/XelaSensorY.srv" NAME_WE)
add_dependencies(xela_server_generate_messages_nodejs _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/msg/xServerMsg.msg" NAME_WE)
add_dependencies(xela_server_generate_messages_nodejs _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/msg/xSensorData.msg" NAME_WE)
add_dependencies(xela_server_generate_messages_nodejs _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/srv/XelaSensorX.srv" NAME_WE)
add_dependencies(xela_server_generate_messages_nodejs _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/srv/XelaSensorXY.srv" NAME_WE)
add_dependencies(xela_server_generate_messages_nodejs _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/msg/SensPoint.msg" NAME_WE)
add_dependencies(xela_server_generate_messages_nodejs _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/srv/XelaSensorXYZ.srv" NAME_WE)
add_dependencies(xela_server_generate_messages_nodejs _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/srv/XelaSensorZ.srv" NAME_WE)
add_dependencies(xela_server_generate_messages_nodejs _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/srv/XelaSensorStream.srv" NAME_WE)
add_dependencies(xela_server_generate_messages_nodejs _xela_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xela_server_gennodejs)
add_dependencies(xela_server_gennodejs xela_server_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xela_server_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(xela_server
  "/home/jay/xela/src/xela_server/msg/xServerMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/jay/xela/src/xela_server/msg/xSensorData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xela_server
)
_generate_msg_py(xela_server
  "/home/jay/xela/src/xela_server/msg/xSensorData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xela_server
)
_generate_msg_py(xela_server
  "/home/jay/xela/src/xela_server/msg/SensPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xela_server
)

### Generating Services
_generate_srv_py(xela_server
  "/home/jay/xela/src/xela_server/srv/XelaSensorY.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xela_server
)
_generate_srv_py(xela_server
  "/home/jay/xela/src/xela_server/srv/XelaSensorX.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xela_server
)
_generate_srv_py(xela_server
  "/home/jay/xela/src/xela_server/srv/XelaSensorXY.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xela_server
)
_generate_srv_py(xela_server
  "/home/jay/xela/src/xela_server/srv/XelaSensorXYZ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xela_server
)
_generate_srv_py(xela_server
  "/home/jay/xela/src/xela_server/srv/XelaSensorZ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xela_server
)
_generate_srv_py(xela_server
  "/home/jay/xela/src/xela_server/srv/XelaSensorStream.srv"
  "${MSG_I_FLAGS}"
  "/home/jay/xela/src/xela_server/msg/SensPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xela_server
)

### Generating Module File
_generate_module_py(xela_server
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xela_server
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(xela_server_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(xela_server_generate_messages xela_server_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jay/xela/src/xela_server/srv/XelaSensorY.srv" NAME_WE)
add_dependencies(xela_server_generate_messages_py _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/msg/xServerMsg.msg" NAME_WE)
add_dependencies(xela_server_generate_messages_py _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/msg/xSensorData.msg" NAME_WE)
add_dependencies(xela_server_generate_messages_py _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/srv/XelaSensorX.srv" NAME_WE)
add_dependencies(xela_server_generate_messages_py _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/srv/XelaSensorXY.srv" NAME_WE)
add_dependencies(xela_server_generate_messages_py _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/msg/SensPoint.msg" NAME_WE)
add_dependencies(xela_server_generate_messages_py _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/srv/XelaSensorXYZ.srv" NAME_WE)
add_dependencies(xela_server_generate_messages_py _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/srv/XelaSensorZ.srv" NAME_WE)
add_dependencies(xela_server_generate_messages_py _xela_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/xela/src/xela_server/srv/XelaSensorStream.srv" NAME_WE)
add_dependencies(xela_server_generate_messages_py _xela_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xela_server_genpy)
add_dependencies(xela_server_genpy xela_server_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xela_server_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xela_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xela_server
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(xela_server_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xela_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xela_server
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(xela_server_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xela_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xela_server
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(xela_server_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xela_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xela_server
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(xela_server_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xela_server)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xela_server\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xela_server
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(xela_server_generate_messages_py std_msgs_generate_messages_py)
endif()
