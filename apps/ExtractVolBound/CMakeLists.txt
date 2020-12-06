aux_source_directory(./src SRC)
find_package(GDAL REQUIRED)
add_executable(ExtractVolBound ${SRC})
target_link_libraries(ExtractVolBound PRIVATE gdal)