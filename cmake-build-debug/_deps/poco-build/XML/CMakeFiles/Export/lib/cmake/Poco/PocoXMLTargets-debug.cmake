#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Poco::XML" for configuration "Debug"
set_property(TARGET Poco::XML APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Poco::XML PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libPocoXMLd.so.71"
  IMPORTED_SONAME_DEBUG "libPocoXMLd.so.71"
  )

list(APPEND _IMPORT_CHECK_TARGETS Poco::XML )
list(APPEND _IMPORT_CHECK_FILES_FOR_Poco::XML "${_IMPORT_PREFIX}/lib/libPocoXMLd.so.71" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
