# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/wyz/cad420/voxer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wyz/cad420/voxer/cmake-build-debug

# Include any dependencies generated for this target.
include apps/VolumeToVideo/CMakeFiles/VolumeToVideo.dir/depend.make

# Include the progress variables for this target.
include apps/VolumeToVideo/CMakeFiles/VolumeToVideo.dir/progress.make

# Include the compile flags for this target's objects.
include apps/VolumeToVideo/CMakeFiles/VolumeToVideo.dir/flags.make

apps/VolumeToVideo/CMakeFiles/VolumeToVideo.dir/src/VideoCapture.cpp.o: apps/VolumeToVideo/CMakeFiles/VolumeToVideo.dir/flags.make
apps/VolumeToVideo/CMakeFiles/VolumeToVideo.dir/src/VideoCapture.cpp.o: ../apps/VolumeToVideo/src/VideoCapture.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wyz/cad420/voxer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object apps/VolumeToVideo/CMakeFiles/VolumeToVideo.dir/src/VideoCapture.cpp.o"
	cd /home/wyz/cad420/voxer/cmake-build-debug/apps/VolumeToVideo && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/VolumeToVideo.dir/src/VideoCapture.cpp.o -c /home/wyz/cad420/voxer/apps/VolumeToVideo/src/VideoCapture.cpp

apps/VolumeToVideo/CMakeFiles/VolumeToVideo.dir/src/VideoCapture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/VolumeToVideo.dir/src/VideoCapture.cpp.i"
	cd /home/wyz/cad420/voxer/cmake-build-debug/apps/VolumeToVideo && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wyz/cad420/voxer/apps/VolumeToVideo/src/VideoCapture.cpp > CMakeFiles/VolumeToVideo.dir/src/VideoCapture.cpp.i

apps/VolumeToVideo/CMakeFiles/VolumeToVideo.dir/src/VideoCapture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/VolumeToVideo.dir/src/VideoCapture.cpp.s"
	cd /home/wyz/cad420/voxer/cmake-build-debug/apps/VolumeToVideo && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wyz/cad420/voxer/apps/VolumeToVideo/src/VideoCapture.cpp -o CMakeFiles/VolumeToVideo.dir/src/VideoCapture.cpp.s

apps/VolumeToVideo/CMakeFiles/VolumeToVideo.dir/src/VolumeRaw2Video.cpp.o: apps/VolumeToVideo/CMakeFiles/VolumeToVideo.dir/flags.make
apps/VolumeToVideo/CMakeFiles/VolumeToVideo.dir/src/VolumeRaw2Video.cpp.o: ../apps/VolumeToVideo/src/VolumeRaw2Video.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wyz/cad420/voxer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object apps/VolumeToVideo/CMakeFiles/VolumeToVideo.dir/src/VolumeRaw2Video.cpp.o"
	cd /home/wyz/cad420/voxer/cmake-build-debug/apps/VolumeToVideo && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/VolumeToVideo.dir/src/VolumeRaw2Video.cpp.o -c /home/wyz/cad420/voxer/apps/VolumeToVideo/src/VolumeRaw2Video.cpp

apps/VolumeToVideo/CMakeFiles/VolumeToVideo.dir/src/VolumeRaw2Video.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/VolumeToVideo.dir/src/VolumeRaw2Video.cpp.i"
	cd /home/wyz/cad420/voxer/cmake-build-debug/apps/VolumeToVideo && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wyz/cad420/voxer/apps/VolumeToVideo/src/VolumeRaw2Video.cpp > CMakeFiles/VolumeToVideo.dir/src/VolumeRaw2Video.cpp.i

apps/VolumeToVideo/CMakeFiles/VolumeToVideo.dir/src/VolumeRaw2Video.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/VolumeToVideo.dir/src/VolumeRaw2Video.cpp.s"
	cd /home/wyz/cad420/voxer/cmake-build-debug/apps/VolumeToVideo && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wyz/cad420/voxer/apps/VolumeToVideo/src/VolumeRaw2Video.cpp -o CMakeFiles/VolumeToVideo.dir/src/VolumeRaw2Video.cpp.s

apps/VolumeToVideo/CMakeFiles/VolumeToVideo.dir/src/main.cpp.o: apps/VolumeToVideo/CMakeFiles/VolumeToVideo.dir/flags.make
apps/VolumeToVideo/CMakeFiles/VolumeToVideo.dir/src/main.cpp.o: ../apps/VolumeToVideo/src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wyz/cad420/voxer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object apps/VolumeToVideo/CMakeFiles/VolumeToVideo.dir/src/main.cpp.o"
	cd /home/wyz/cad420/voxer/cmake-build-debug/apps/VolumeToVideo && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/VolumeToVideo.dir/src/main.cpp.o -c /home/wyz/cad420/voxer/apps/VolumeToVideo/src/main.cpp

apps/VolumeToVideo/CMakeFiles/VolumeToVideo.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/VolumeToVideo.dir/src/main.cpp.i"
	cd /home/wyz/cad420/voxer/cmake-build-debug/apps/VolumeToVideo && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wyz/cad420/voxer/apps/VolumeToVideo/src/main.cpp > CMakeFiles/VolumeToVideo.dir/src/main.cpp.i

apps/VolumeToVideo/CMakeFiles/VolumeToVideo.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/VolumeToVideo.dir/src/main.cpp.s"
	cd /home/wyz/cad420/voxer/cmake-build-debug/apps/VolumeToVideo && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wyz/cad420/voxer/apps/VolumeToVideo/src/main.cpp -o CMakeFiles/VolumeToVideo.dir/src/main.cpp.s

# Object files for target VolumeToVideo
VolumeToVideo_OBJECTS = \
"CMakeFiles/VolumeToVideo.dir/src/VideoCapture.cpp.o" \
"CMakeFiles/VolumeToVideo.dir/src/VolumeRaw2Video.cpp.o" \
"CMakeFiles/VolumeToVideo.dir/src/main.cpp.o"

# External object files for target VolumeToVideo
VolumeToVideo_EXTERNAL_OBJECTS =

apps/VolumeToVideo/VolumeToVideo: apps/VolumeToVideo/CMakeFiles/VolumeToVideo.dir/src/VideoCapture.cpp.o
apps/VolumeToVideo/VolumeToVideo: apps/VolumeToVideo/CMakeFiles/VolumeToVideo.dir/src/VolumeRaw2Video.cpp.o
apps/VolumeToVideo/VolumeToVideo: apps/VolumeToVideo/CMakeFiles/VolumeToVideo.dir/src/main.cpp.o
apps/VolumeToVideo/VolumeToVideo: apps/VolumeToVideo/CMakeFiles/VolumeToVideo.dir/build.make
apps/VolumeToVideo/VolumeToVideo: src/libvoxer_cored.a
apps/VolumeToVideo/VolumeToVideo: _deps/spdlog-build/libspdlogd.a
apps/VolumeToVideo/VolumeToVideo: _deps/fmt-build/libfmtd.so.6.1.2
apps/VolumeToVideo/VolumeToVideo: /usr/lib/libgomp.so
apps/VolumeToVideo/VolumeToVideo: /usr/lib/libpthread.so
apps/VolumeToVideo/VolumeToVideo: apps/VolumeToVideo/CMakeFiles/VolumeToVideo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wyz/cad420/voxer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable VolumeToVideo"
	cd /home/wyz/cad420/voxer/cmake-build-debug/apps/VolumeToVideo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/VolumeToVideo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/VolumeToVideo/CMakeFiles/VolumeToVideo.dir/build: apps/VolumeToVideo/VolumeToVideo

.PHONY : apps/VolumeToVideo/CMakeFiles/VolumeToVideo.dir/build

apps/VolumeToVideo/CMakeFiles/VolumeToVideo.dir/clean:
	cd /home/wyz/cad420/voxer/cmake-build-debug/apps/VolumeToVideo && $(CMAKE_COMMAND) -P CMakeFiles/VolumeToVideo.dir/cmake_clean.cmake
.PHONY : apps/VolumeToVideo/CMakeFiles/VolumeToVideo.dir/clean

apps/VolumeToVideo/CMakeFiles/VolumeToVideo.dir/depend:
	cd /home/wyz/cad420/voxer/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wyz/cad420/voxer /home/wyz/cad420/voxer/apps/VolumeToVideo /home/wyz/cad420/voxer/cmake-build-debug /home/wyz/cad420/voxer/cmake-build-debug/apps/VolumeToVideo /home/wyz/cad420/voxer/cmake-build-debug/apps/VolumeToVideo/CMakeFiles/VolumeToVideo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/VolumeToVideo/CMakeFiles/VolumeToVideo.dir/depend

