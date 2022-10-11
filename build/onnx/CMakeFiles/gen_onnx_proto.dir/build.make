# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/jintian/anaconda3/lib/python3.9/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/jintian/anaconda3/lib/python3.9/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jintian/dev/codes/work/toolchains/wnn/3rd/wnnx/vendor/testonnx

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jintian/dev/codes/work/toolchains/wnn/3rd/wnnx/vendor/testonnx/build

# Utility rule file for gen_onnx_proto.

# Include any custom commands dependencies for this target.
include onnx/CMakeFiles/gen_onnx_proto.dir/compiler_depend.make

# Include the progress variables for this target.
include onnx/CMakeFiles/gen_onnx_proto.dir/progress.make

onnx/CMakeFiles/gen_onnx_proto: onnx/onnx/onnx-ml.pb.cc
onnx/CMakeFiles/gen_onnx_proto: onnx/onnx/onnx-ml.pb.h

onnx/onnx/onnx-ml.pb.cc: onnx/onnx/onnx-ml.proto
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/jintian/dev/codes/work/toolchains/wnn/3rd/wnnx/vendor/testonnx/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running C++ protocol buffer compiler on /home/jintian/dev/codes/work/toolchains/wnn/3rd/wnnx/vendor/testonnx/build/onnx/onnx/onnx-ml.proto"
	cd /home/jintian/dev/codes/work/toolchains/wnn/3rd/wnnx/vendor/testonnx/build/onnx && /usr/bin/protoc /home/jintian/dev/codes/work/toolchains/wnn/3rd/wnnx/vendor/testonnx/build/onnx/onnx/onnx-ml.proto -I /home/jintian/dev/codes/work/toolchains/wnn/3rd/wnnx/vendor/testonnx/build/onnx --cpp_out dllexport_decl=ONNX_API:/home/jintian/dev/codes/work/toolchains/wnn/3rd/wnnx/vendor/testonnx/build/onnx

onnx/onnx/onnx-ml.pb.h: onnx/onnx/onnx-ml.pb.cc
	@$(CMAKE_COMMAND) -E touch_nocreate onnx/onnx/onnx-ml.pb.h

onnx/onnx/onnx-ml.proto: /home/jintian/dev/codes/work/toolchains/wnn/3rd/wnnx/vendor/testonnx/onnx/onnx/onnx.in.proto
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/jintian/dev/codes/work/toolchains/wnn/3rd/wnnx/vendor/testonnx/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Running gen_proto.py on onnx/onnx.in.proto"
	cd /home/jintian/dev/codes/work/toolchains/wnn/3rd/wnnx/vendor/testonnx/build/onnx && /home/jintian/anaconda3/bin/python /home/jintian/dev/codes/work/toolchains/wnn/3rd/wnnx/vendor/testonnx/onnx/onnx/gen_proto.py -p onnx -o /home/jintian/dev/codes/work/toolchains/wnn/3rd/wnnx/vendor/testonnx/build/onnx/onnx onnx -m

gen_onnx_proto: onnx/CMakeFiles/gen_onnx_proto
gen_onnx_proto: onnx/onnx/onnx-ml.pb.cc
gen_onnx_proto: onnx/onnx/onnx-ml.pb.h
gen_onnx_proto: onnx/onnx/onnx-ml.proto
gen_onnx_proto: onnx/CMakeFiles/gen_onnx_proto.dir/build.make
.PHONY : gen_onnx_proto

# Rule to build all files generated by this target.
onnx/CMakeFiles/gen_onnx_proto.dir/build: gen_onnx_proto
.PHONY : onnx/CMakeFiles/gen_onnx_proto.dir/build

onnx/CMakeFiles/gen_onnx_proto.dir/clean:
	cd /home/jintian/dev/codes/work/toolchains/wnn/3rd/wnnx/vendor/testonnx/build/onnx && $(CMAKE_COMMAND) -P CMakeFiles/gen_onnx_proto.dir/cmake_clean.cmake
.PHONY : onnx/CMakeFiles/gen_onnx_proto.dir/clean

onnx/CMakeFiles/gen_onnx_proto.dir/depend:
	cd /home/jintian/dev/codes/work/toolchains/wnn/3rd/wnnx/vendor/testonnx/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jintian/dev/codes/work/toolchains/wnn/3rd/wnnx/vendor/testonnx /home/jintian/dev/codes/work/toolchains/wnn/3rd/wnnx/vendor/testonnx/onnx /home/jintian/dev/codes/work/toolchains/wnn/3rd/wnnx/vendor/testonnx/build /home/jintian/dev/codes/work/toolchains/wnn/3rd/wnnx/vendor/testonnx/build/onnx /home/jintian/dev/codes/work/toolchains/wnn/3rd/wnnx/vendor/testonnx/build/onnx/CMakeFiles/gen_onnx_proto.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : onnx/CMakeFiles/gen_onnx_proto.dir/depend

