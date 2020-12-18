# Generated by CMake

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.5)
   message(FATAL_ERROR "CMake >= 2.6.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.6...3.17)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

if(CMAKE_VERSION VERSION_LESS 3.0.0)
  message(FATAL_ERROR "This file relies on consumers using CMake 3.0.0 or greater.")
endif()

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_targetsDefined)
set(_targetsNotDefined)
set(_expectedTargets)
foreach(_expectedTarget voxer::voxer_backend_opengl voxer::voxer_core voxer::fmt voxer::spdlog voxer::CImg)
  list(APPEND _expectedTargets ${_expectedTarget})
  if(NOT TARGET ${_expectedTarget})
    list(APPEND _targetsNotDefined ${_expectedTarget})
  endif()
  if(TARGET ${_expectedTarget})
    list(APPEND _targetsDefined ${_expectedTarget})
  endif()
endforeach()
if("${_targetsDefined}" STREQUAL "${_expectedTargets}")
  unset(_targetsDefined)
  unset(_targetsNotDefined)
  unset(_expectedTargets)
  set(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT "${_targetsDefined}" STREQUAL "")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_targetsDefined}\nTargets not yet defined: ${_targetsNotDefined}\n")
endif()
unset(_targetsDefined)
unset(_targetsNotDefined)
unset(_expectedTargets)


# Create imported target voxer::voxer_backend_opengl
add_library(voxer::voxer_backend_opengl SHARED IMPORTED)

set_target_properties(voxer::voxer_backend_opengl PROPERTIES
  INTERFACE_LINK_LIBRARIES "voxer::voxer_core;OpenGL::OpenGL;OpenGL::EGL;dl"
)

# Create imported target voxer::voxer_core
add_library(voxer::voxer_core STATIC IMPORTED)

set_target_properties(voxer::voxer_core PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/home/wyz/cad420/voxer/include"
  INTERFACE_LINK_LIBRARIES "\$<LINK_ONLY:voxer::spdlog>;\$<LINK_ONLY:voxer::CImg>;Threads::Threads;voxer::fmt;OpenMP::OpenMP_CXX;dl;\$<LINK_ONLY:-static-libstdc++>"
)

# Create imported target voxer::fmt
add_library(voxer::fmt SHARED IMPORTED)

set_target_properties(voxer::fmt PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "FMT_SHARED"
  INTERFACE_COMPILE_FEATURES "cxx_auto_type;cxx_variadic_templates"
  INTERFACE_INCLUDE_DIRECTORIES "/home/wyz/cad420/voxer/cmake-build-debug/_deps/fmt-src/include"
  INTERFACE_LINK_LIBRARIES "-Wl,--as-needed"
)

# Create imported target voxer::spdlog
add_library(voxer::spdlog STATIC IMPORTED)

set_target_properties(voxer::spdlog PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "SPDLOG_COMPILED_LIB;SPDLOG_FMT_EXTERNAL"
  INTERFACE_INCLUDE_DIRECTORIES "/home/wyz/cad420/voxer/cmake-build-debug/_deps/spdlog-src/include"
  INTERFACE_LINK_LIBRARIES "Threads::Threads;voxer::fmt"
)

# Create imported target voxer::CImg
add_library(voxer::CImg INTERFACE IMPORTED)

set_target_properties(voxer::CImg PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/home/wyz/cad420/voxer/cmake-build-debug/_deps/cimg-src"
)

# Import target "voxer::voxer_backend_opengl" for configuration "Debug"
set_property(TARGET voxer::voxer_backend_opengl APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(voxer::voxer_backend_opengl PROPERTIES
  IMPORTED_LOCATION_DEBUG "/home/wyz/cad420/voxer/cmake-build-debug/src/Rendering/OpenGL/libvoxer_backend_opengld.so"
  IMPORTED_SONAME_DEBUG "libvoxer_backend_opengld.so"
  )

# Import target "voxer::voxer_core" for configuration "Debug"
set_property(TARGET voxer::voxer_core APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(voxer::voxer_core PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "/home/wyz/cad420/voxer/cmake-build-debug/src/libvoxer_cored.a"
  )

# Import target "voxer::fmt" for configuration "Debug"
set_property(TARGET voxer::fmt APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(voxer::fmt PROPERTIES
  IMPORTED_LOCATION_DEBUG "/home/wyz/cad420/voxer/cmake-build-debug/_deps/fmt-build/libfmtd.so.6.1.2"
  IMPORTED_SONAME_DEBUG "libfmtd.so.6"
  )

# Import target "voxer::spdlog" for configuration "Debug"
set_property(TARGET voxer::spdlog APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(voxer::spdlog PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "/home/wyz/cad420/voxer/cmake-build-debug/_deps/spdlog-build/libspdlogd.a"
  )

# This file does not depend on other imported targets which have
# been exported from the same project but in a separate export set.

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)
