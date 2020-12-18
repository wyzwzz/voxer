#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "voxer::voxer_backend_opengl" for configuration "Release"
set_property(TARGET voxer::voxer_backend_opengl APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(voxer::voxer_backend_opengl PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libvoxer_backend_opengl.so"
  IMPORTED_SONAME_RELEASE "libvoxer_backend_opengl.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS voxer::voxer_backend_opengl )
list(APPEND _IMPORT_CHECK_FILES_FOR_voxer::voxer_backend_opengl "${_IMPORT_PREFIX}/lib/libvoxer_backend_opengl.so" )

# Import target "voxer::voxer_core" for configuration "Release"
set_property(TARGET voxer::voxer_core APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(voxer::voxer_core PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libvoxer_core.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS voxer::voxer_core )
list(APPEND _IMPORT_CHECK_FILES_FOR_voxer::voxer_core "${_IMPORT_PREFIX}/lib/libvoxer_core.a" )

# Import target "voxer::fmt" for configuration "Release"
set_property(TARGET voxer::fmt APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(voxer::fmt PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libfmt.so.6.1.2"
  IMPORTED_SONAME_RELEASE "libfmt.so.6"
  )

list(APPEND _IMPORT_CHECK_TARGETS voxer::fmt )
list(APPEND _IMPORT_CHECK_FILES_FOR_voxer::fmt "${_IMPORT_PREFIX}/lib/libfmt.so.6.1.2" )

# Import target "voxer::spdlog" for configuration "Release"
set_property(TARGET voxer::spdlog APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(voxer::spdlog PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libspdlog.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS voxer::spdlog )
list(APPEND _IMPORT_CHECK_FILES_FOR_voxer::spdlog "${_IMPORT_PREFIX}/lib/libspdlog.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
