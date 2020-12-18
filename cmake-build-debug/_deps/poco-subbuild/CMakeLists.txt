# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.19.1)

# We name the project and the target for the ExternalProject_Add() call
# to something that will highlight to the user what we are working on if
# something goes wrong and an error message is produced.

project(poco-populate NONE)

include(ExternalProject)
ExternalProject_Add(poco-populate
                     "UPDATE_DISCONNECTED" "False" "URL" "https://pocoproject.org/releases/poco-1.10.1/poco-1.10.1.tar.gz" "URL_HASH" "SHA256=eb2aeecd25d9733d1e223f459560cd285d4cbf60983f96468e6eb0097ac5f4a6"
                    SOURCE_DIR          "/home/wyz/cad420/voxer/cmake-build-debug/_deps/poco-src"
                    BINARY_DIR          "/home/wyz/cad420/voxer/cmake-build-debug/_deps/poco-build"
                    CONFIGURE_COMMAND   ""
                    BUILD_COMMAND       ""
                    INSTALL_COMMAND     ""
                    TEST_COMMAND        ""
                    USES_TERMINAL_DOWNLOAD  YES
                    USES_TERMINAL_UPDATE    YES
)


