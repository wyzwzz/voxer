# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.19.1)

# We name the project and the target for the ExternalProject_Add() call
# to something that will highlight to the user what we are working on if
# something goes wrong and an error message is produced.

project(cimg-populate NONE)

include(ExternalProject)
ExternalProject_Add(cimg-populate
                     "UPDATE_DISCONNECTED" "False" "GIT_REPOSITORY" "https://github.com/dtschump/CImg.git" "GIT_TAG" "2f7a1ebf1b1dcc59d5d2f54c39e291def47b5064" "GIT_SHALLOW" "TRUE" "GIT_PROGRESS" "TRUE"
                    SOURCE_DIR          "/home/wyz/cad420/voxer/cmake-build-debug/_deps/cimg-src"
                    BINARY_DIR          "/home/wyz/cad420/voxer/cmake-build-debug/_deps/cimg-build"
                    CONFIGURE_COMMAND   ""
                    BUILD_COMMAND       ""
                    INSTALL_COMMAND     ""
                    TEST_COMMAND        ""
                    USES_TERMINAL_DOWNLOAD  YES
                    USES_TERMINAL_UPDATE    YES
)


