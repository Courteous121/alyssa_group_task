# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

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
CMAKE_COMMAND = /devdata/Software/cmake-3.23.2/bin/cmake

# The command to remove a file.
RM = /devdata/Software/cmake-3.23.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/duke/任务3.7/YOLOX/demo/TensorRT/cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/duke/任务3.7/YOLOX/demo/TensorRT/cpp/build

# Include any dependencies generated for this target.
include CMakeFiles/yolox.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/yolox.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/yolox.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/yolox.dir/flags.make

CMakeFiles/yolox.dir/yolox.cpp.o: CMakeFiles/yolox.dir/flags.make
CMakeFiles/yolox.dir/yolox.cpp.o: ../yolox.cpp
CMakeFiles/yolox.dir/yolox.cpp.o: CMakeFiles/yolox.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/duke/任务3.7/YOLOX/demo/TensorRT/cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/yolox.dir/yolox.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/yolox.dir/yolox.cpp.o -MF CMakeFiles/yolox.dir/yolox.cpp.o.d -o CMakeFiles/yolox.dir/yolox.cpp.o -c /home/duke/任务3.7/YOLOX/demo/TensorRT/cpp/yolox.cpp

CMakeFiles/yolox.dir/yolox.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/yolox.dir/yolox.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/duke/任务3.7/YOLOX/demo/TensorRT/cpp/yolox.cpp > CMakeFiles/yolox.dir/yolox.cpp.i

CMakeFiles/yolox.dir/yolox.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/yolox.dir/yolox.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/duke/任务3.7/YOLOX/demo/TensorRT/cpp/yolox.cpp -o CMakeFiles/yolox.dir/yolox.cpp.s

# Object files for target yolox
yolox_OBJECTS = \
"CMakeFiles/yolox.dir/yolox.cpp.o"

# External object files for target yolox
yolox_EXTERNAL_OBJECTS =

yolox: CMakeFiles/yolox.dir/yolox.cpp.o
yolox: CMakeFiles/yolox.dir/build.make
yolox: /devdata/opencv-4.5.0/build/lib/libopencv_dnn.so.4.5.0
yolox: /devdata/opencv-4.5.0/build/lib/libopencv_gapi.so.4.5.0
yolox: /devdata/opencv-4.5.0/build/lib/libopencv_highgui.so.4.5.0
yolox: /devdata/opencv-4.5.0/build/lib/libopencv_ml.so.4.5.0
yolox: /devdata/opencv-4.5.0/build/lib/libopencv_objdetect.so.4.5.0
yolox: /devdata/opencv-4.5.0/build/lib/libopencv_photo.so.4.5.0
yolox: /devdata/opencv-4.5.0/build/lib/libopencv_stitching.so.4.5.0
yolox: /devdata/opencv-4.5.0/build/lib/libopencv_video.so.4.5.0
yolox: /devdata/opencv-4.5.0/build/lib/libopencv_videoio.so.4.5.0
yolox: /devdata/opencv-4.5.0/build/lib/libopencv_imgcodecs.so.4.5.0
yolox: /devdata/opencv-4.5.0/build/lib/libopencv_calib3d.so.4.5.0
yolox: /devdata/opencv-4.5.0/build/lib/libopencv_features2d.so.4.5.0
yolox: /devdata/opencv-4.5.0/build/lib/libopencv_flann.so.4.5.0
yolox: /devdata/opencv-4.5.0/build/lib/libopencv_imgproc.so.4.5.0
yolox: /devdata/opencv-4.5.0/build/lib/libopencv_core.so.4.5.0
yolox: CMakeFiles/yolox.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/duke/任务3.7/YOLOX/demo/TensorRT/cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable yolox"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/yolox.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/yolox.dir/build: yolox
.PHONY : CMakeFiles/yolox.dir/build

CMakeFiles/yolox.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/yolox.dir/cmake_clean.cmake
.PHONY : CMakeFiles/yolox.dir/clean

CMakeFiles/yolox.dir/depend:
	cd /home/duke/任务3.7/YOLOX/demo/TensorRT/cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/duke/任务3.7/YOLOX/demo/TensorRT/cpp /home/duke/任务3.7/YOLOX/demo/TensorRT/cpp /home/duke/任务3.7/YOLOX/demo/TensorRT/cpp/build /home/duke/任务3.7/YOLOX/demo/TensorRT/cpp/build /home/duke/任务3.7/YOLOX/demo/TensorRT/cpp/build/CMakeFiles/yolox.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/yolox.dir/depend

