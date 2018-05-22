cmake_minimum_required(VERSION 3.1)
project(VovisRenderer)

set(CMAKE_CXX_STANDARD 11)
set(CONFIGURATION_TYPES "Debug;Release;RelWithDebInfo")
IF(NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE "DEBUG" CACHE STRING "Options: Debug Release RelWithDebInfo." FORCE)
ENDIF()
set_property(CACHE CMAKE_BUILD_TYPE PROPERTY STRINGS ${CONFIGURATION_TYPES})
set(OSPRAY_LIB_PATH "/usr/local/lib" CACHE PATH "Path of ospray library.")
set(OSPRAY_INCLUDE_PATH "/usr/local/include/ospray/" CACHE PATH "Path of ospray header files.")
set(EMBREE_LIB_PATH "${embree_DIR}/lib" CACHE PATH "Path of embree library.")
set(TBB_LIB_PATH "${TBB_ROOT}/lib/intel64/gcc4.7/" CACHE PATH "Path of tbb library.")
set(MPI_LIB_PATH "/usr/lib" CACHE PATH "Path of mpi library.")
set(MPI_INCLUDE_PATH "/usr/lib/mpich/include" CACHE PATH "Path of mpi header files.")
set(POCO_INCLUDE_PATH "/usr/local/include/Poco" CACHE PATH "Path of poco header files.")
set(POCO_LIB_PATH "/usr/local/lib" CACHE PATH "Path of poco library.")

find_library(
  OSPRAY_LIB
  NAMES ospray ospray_common ospray_mpi_common
  HINTS "${CMAKE_PREFIX_PATH}/lib" ${OSPRAY_LIB}
)
find_library(
  OSPRAY_LIB_COMMON
  NAMES ospray_common
  HINTS "${CMAKE_PREFIX_PATH}/lib" ${OSPRAY_LIB}
)
find_library(
  OSPRAY_LIB_MPI
  NAMES ospray_mpi_common
  HINTS "${CMAKE_PREFIX_PATH}/lib" ${OSPRAY_LIB}
)
find_library(
  MPI_LIB
  NAMES mpi
  HINTS "${CMAKE_PREFIX_PATH}/lib" ${MPI_LIB_PATH}
)
find_library(
  EMBREE_LIB
  NAMES embree3
  HINTS "${CMAKE_PREFIX_PATH}/lib" ${EMBREE_LIB_PATH}
)
find_library(
  TBB_LIB
  NAMES tbb
  HINTS "${CMAKE_PREFIX_PATH}/lib" ${TBB_LIB_PATH}
)
find_library(
  TBB_MALLOC_LIB
  NAMES tbbmalloc
  HINTS "${CMAKE_PREFIX_PATH}/lib" ${TBB_LIB_PATH}
)
find_library(
  POCO_FOUNDATION_LIB
  NAMES PocoFoundation
  HINTS "${CMAKE_PREFIX_PATH}/lib" ${POCO_LIB}
)
find_library(
  POCO_NET_LIB
  NAMES PocoNet
  HINTS "${CMAKE_PREFIX_PATH}/lib" ${POCO_LIB}
)
find_library(
  POCO_UTIL_LIB
  NAMES PocoUtil
  HINTS "${CMAKE_PREFIX_PATH}/lib" ${POCO_LIB}
)

if (NOT OSPRAY_LIB)
  unset(OSPRAY_LIB CACHE)
  message(FATAL_ERROR "ospray not found, please set OSPRAY_LIB_PATH.")
else()
  unset(OSPRAY_LIB_PATH CACHE)
endif()

if (NOT MPI_LIB)
  unset(MPI_LIB CACHE)
  message(FATAL_ERROR "mpi not found, please set MPI_LIB_PATH.")
else()
  unset(MPI_LIB_PATH CACHE)
endif()

if (NOT EMBREE_LIB)
  unset(EMBREE_LIB CACHE)
  message(FATAL_ERROR "embree not found, please set EMBREE_LIB_PATH.")
else()
  unset(EMBREE_LIB_PATH CACHE)
endif()

if (NOT TBB_LIB)
  unset(TBB_LIB CACHE)
  message(FATAL_ERROR "tbb not found, please set TBB_LIB_PATH.")
else()
  unset(TBB_LIB_PATH CACHE)
endif()

if (NOT POCO_NET_LIB)
  unset(POCO_NET_LIB CACHE)
  message(FATAL_ERROR "Poco not found, please set POCO_LIB_PATH.")
else()
  unset(POCO_LIB_PATH CACHE)
endif()

file(GLOB_RECURSE VOVIS_FILES ${PROJECT_SOURCE_DIR}/ParallelRenderer/*.cpp)
file(GLOB_RECURSE RAWREADER_FILES ${PROJECT_SOURCE_DIR}/third_party/RawReader/*.cpp)
add_executable(VovisRenderer ${VOVIS_FILES} ${RAWREADER_FILES})
target_include_directories(
  VovisRenderer
  PUBLIC
  ${OSPRAY_INCLUDE_PATH}
  ${MPI_INCLUDE_PATH}
  ${POCO_INCLUDE_PATH}
  ${PROJECT_SOURCE_DIR}
)
target_link_libraries(
  VovisRenderer
  ${OSPRAY_LIB}
  ${OSPRAY_LIB_COMMON}
  ${OSPRAY_LIB_MPI}
  ${EMBREE_LIB}
  ${TBB_LIB}
  ${TBB_MALLOC_LIB}
  ${MPI_LIB}
  ${POCO_FOUNDATION_LIB}
  ${POCO_NET_LIB}
  ${POCO_UTIL_LIB}
)