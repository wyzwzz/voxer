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
CMAKE_BINARY_DIR = /home/wyz/cad420/voxer/cmake-build-release

# Include any dependencies generated for this target.
include src/Rendering/OpenGL/CMakeFiles/voxer_backend_opengl.dir/depend.make

# Include the progress variables for this target.
include src/Rendering/OpenGL/CMakeFiles/voxer_backend_opengl.dir/progress.make

# Include the compile flags for this target's objects.
include src/Rendering/OpenGL/CMakeFiles/voxer_backend_opengl.dir/flags.make

src/Rendering/OpenGL/CMakeFiles/voxer_backend_opengl.dir/OpenGLVolumeRenderer.cpp.o: src/Rendering/OpenGL/CMakeFiles/voxer_backend_opengl.dir/flags.make
src/Rendering/OpenGL/CMakeFiles/voxer_backend_opengl.dir/OpenGLVolumeRenderer.cpp.o: ../src/Rendering/OpenGL/OpenGLVolumeRenderer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wyz/cad420/voxer/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/Rendering/OpenGL/CMakeFiles/voxer_backend_opengl.dir/OpenGLVolumeRenderer.cpp.o"
	cd /home/wyz/cad420/voxer/cmake-build-release/src/Rendering/OpenGL && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/voxer_backend_opengl.dir/OpenGLVolumeRenderer.cpp.o -c /home/wyz/cad420/voxer/src/Rendering/OpenGL/OpenGLVolumeRenderer.cpp

src/Rendering/OpenGL/CMakeFiles/voxer_backend_opengl.dir/OpenGLVolumeRenderer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/voxer_backend_opengl.dir/OpenGLVolumeRenderer.cpp.i"
	cd /home/wyz/cad420/voxer/cmake-build-release/src/Rendering/OpenGL && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wyz/cad420/voxer/src/Rendering/OpenGL/OpenGLVolumeRenderer.cpp > CMakeFiles/voxer_backend_opengl.dir/OpenGLVolumeRenderer.cpp.i

src/Rendering/OpenGL/CMakeFiles/voxer_backend_opengl.dir/OpenGLVolumeRenderer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/voxer_backend_opengl.dir/OpenGLVolumeRenderer.cpp.s"
	cd /home/wyz/cad420/voxer/cmake-build-release/src/Rendering/OpenGL && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wyz/cad420/voxer/src/Rendering/OpenGL/OpenGLVolumeRenderer.cpp -o CMakeFiles/voxer_backend_opengl.dir/OpenGLVolumeRenderer.cpp.s

src/Rendering/OpenGL/CMakeFiles/voxer_backend_opengl.dir/OpenGLVolumeCache.cpp.o: src/Rendering/OpenGL/CMakeFiles/voxer_backend_opengl.dir/flags.make
src/Rendering/OpenGL/CMakeFiles/voxer_backend_opengl.dir/OpenGLVolumeCache.cpp.o: ../src/Rendering/OpenGL/OpenGLVolumeCache.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wyz/cad420/voxer/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/Rendering/OpenGL/CMakeFiles/voxer_backend_opengl.dir/OpenGLVolumeCache.cpp.o"
	cd /home/wyz/cad420/voxer/cmake-build-release/src/Rendering/OpenGL && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/voxer_backend_opengl.dir/OpenGLVolumeCache.cpp.o -c /home/wyz/cad420/voxer/src/Rendering/OpenGL/OpenGLVolumeCache.cpp

src/Rendering/OpenGL/CMakeFiles/voxer_backend_opengl.dir/OpenGLVolumeCache.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/voxer_backend_opengl.dir/OpenGLVolumeCache.cpp.i"
	cd /home/wyz/cad420/voxer/cmake-build-release/src/Rendering/OpenGL && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wyz/cad420/voxer/src/Rendering/OpenGL/OpenGLVolumeCache.cpp > CMakeFiles/voxer_backend_opengl.dir/OpenGLVolumeCache.cpp.i

src/Rendering/OpenGL/CMakeFiles/voxer_backend_opengl.dir/OpenGLVolumeCache.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/voxer_backend_opengl.dir/OpenGLVolumeCache.cpp.s"
	cd /home/wyz/cad420/voxer/cmake-build-release/src/Rendering/OpenGL && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wyz/cad420/voxer/src/Rendering/OpenGL/OpenGLVolumeCache.cpp -o CMakeFiles/voxer_backend_opengl.dir/OpenGLVolumeCache.cpp.s

src/Rendering/OpenGL/CMakeFiles/voxer_backend_opengl.dir/__/__/__/third_party/glad/src/glad.c.o: src/Rendering/OpenGL/CMakeFiles/voxer_backend_opengl.dir/flags.make
src/Rendering/OpenGL/CMakeFiles/voxer_backend_opengl.dir/__/__/__/third_party/glad/src/glad.c.o: ../third_party/glad/src/glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wyz/cad420/voxer/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object src/Rendering/OpenGL/CMakeFiles/voxer_backend_opengl.dir/__/__/__/third_party/glad/src/glad.c.o"
	cd /home/wyz/cad420/voxer/cmake-build-release/src/Rendering/OpenGL && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/voxer_backend_opengl.dir/__/__/__/third_party/glad/src/glad.c.o -c /home/wyz/cad420/voxer/third_party/glad/src/glad.c

src/Rendering/OpenGL/CMakeFiles/voxer_backend_opengl.dir/__/__/__/third_party/glad/src/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/voxer_backend_opengl.dir/__/__/__/third_party/glad/src/glad.c.i"
	cd /home/wyz/cad420/voxer/cmake-build-release/src/Rendering/OpenGL && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/wyz/cad420/voxer/third_party/glad/src/glad.c > CMakeFiles/voxer_backend_opengl.dir/__/__/__/third_party/glad/src/glad.c.i

src/Rendering/OpenGL/CMakeFiles/voxer_backend_opengl.dir/__/__/__/third_party/glad/src/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/voxer_backend_opengl.dir/__/__/__/third_party/glad/src/glad.c.s"
	cd /home/wyz/cad420/voxer/cmake-build-release/src/Rendering/OpenGL && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/wyz/cad420/voxer/third_party/glad/src/glad.c -o CMakeFiles/voxer_backend_opengl.dir/__/__/__/third_party/glad/src/glad.c.s

# Object files for target voxer_backend_opengl
voxer_backend_opengl_OBJECTS = \
"CMakeFiles/voxer_backend_opengl.dir/OpenGLVolumeRenderer.cpp.o" \
"CMakeFiles/voxer_backend_opengl.dir/OpenGLVolumeCache.cpp.o" \
"CMakeFiles/voxer_backend_opengl.dir/__/__/__/third_party/glad/src/glad.c.o"

# External object files for target voxer_backend_opengl
voxer_backend_opengl_EXTERNAL_OBJECTS =

src/Rendering/OpenGL/libvoxer_backend_opengl.so: src/Rendering/OpenGL/CMakeFiles/voxer_backend_opengl.dir/OpenGLVolumeRenderer.cpp.o
src/Rendering/OpenGL/libvoxer_backend_opengl.so: src/Rendering/OpenGL/CMakeFiles/voxer_backend_opengl.dir/OpenGLVolumeCache.cpp.o
src/Rendering/OpenGL/libvoxer_backend_opengl.so: src/Rendering/OpenGL/CMakeFiles/voxer_backend_opengl.dir/__/__/__/third_party/glad/src/glad.c.o
src/Rendering/OpenGL/libvoxer_backend_opengl.so: src/Rendering/OpenGL/CMakeFiles/voxer_backend_opengl.dir/build.make
src/Rendering/OpenGL/libvoxer_backend_opengl.so: src/libvoxer_core.a
src/Rendering/OpenGL/libvoxer_backend_opengl.so: /usr/lib/libOpenGL.so
src/Rendering/OpenGL/libvoxer_backend_opengl.so: /usr/lib/libEGL.so
src/Rendering/OpenGL/libvoxer_backend_opengl.so: _deps/spdlog-build/libspdlog.a
src/Rendering/OpenGL/libvoxer_backend_opengl.so: _deps/fmt-build/libfmt.so.6.1.2
src/Rendering/OpenGL/libvoxer_backend_opengl.so: /usr/lib/libgomp.so
src/Rendering/OpenGL/libvoxer_backend_opengl.so: /usr/lib/libpthread.so
src/Rendering/OpenGL/libvoxer_backend_opengl.so: /usr/lib/libOpenGL.so
src/Rendering/OpenGL/libvoxer_backend_opengl.so: src/Rendering/OpenGL/CMakeFiles/voxer_backend_opengl.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wyz/cad420/voxer/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared library libvoxer_backend_opengl.so"
	cd /home/wyz/cad420/voxer/cmake-build-release/src/Rendering/OpenGL && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/voxer_backend_opengl.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/Rendering/OpenGL/CMakeFiles/voxer_backend_opengl.dir/build: src/Rendering/OpenGL/libvoxer_backend_opengl.so

.PHONY : src/Rendering/OpenGL/CMakeFiles/voxer_backend_opengl.dir/build

src/Rendering/OpenGL/CMakeFiles/voxer_backend_opengl.dir/clean:
	cd /home/wyz/cad420/voxer/cmake-build-release/src/Rendering/OpenGL && $(CMAKE_COMMAND) -P CMakeFiles/voxer_backend_opengl.dir/cmake_clean.cmake
.PHONY : src/Rendering/OpenGL/CMakeFiles/voxer_backend_opengl.dir/clean

src/Rendering/OpenGL/CMakeFiles/voxer_backend_opengl.dir/depend:
	cd /home/wyz/cad420/voxer/cmake-build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wyz/cad420/voxer /home/wyz/cad420/voxer/src/Rendering/OpenGL /home/wyz/cad420/voxer/cmake-build-release /home/wyz/cad420/voxer/cmake-build-release/src/Rendering/OpenGL /home/wyz/cad420/voxer/cmake-build-release/src/Rendering/OpenGL/CMakeFiles/voxer_backend_opengl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/Rendering/OpenGL/CMakeFiles/voxer_backend_opengl.dir/depend

