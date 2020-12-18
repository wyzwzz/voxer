#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Poco::JSON" for configuration "Debug"
set_property(TARGET Poco::JSON APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Poco::JSON PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libPocoJSONd.so.71"
  IMPORTED_SONAME_DEBUG "libPocoJSONd.so.71"
  )

list(APPEND _IMPORT_CHECK_TARGETS Poco::JSON )
list(APPEND _IMPORT_CHECK_FILES_FOR_Poco::JSON "${_IMPORT_PREFIX}/lib/libPocoJSONd.so.71" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
