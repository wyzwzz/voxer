
if(NOT "/home/wyz/cad420/voxer/cmake-build-debug/_deps/cimg-subbuild/cimg-populate-prefix/src/cimg-populate-stamp/cimg-populate-gitinfo.txt" IS_NEWER_THAN "/home/wyz/cad420/voxer/cmake-build-debug/_deps/cimg-subbuild/cimg-populate-prefix/src/cimg-populate-stamp/cimg-populate-gitclone-lastrun.txt")
  message(STATUS "Avoiding repeated git clone, stamp file is up to date: '/home/wyz/cad420/voxer/cmake-build-debug/_deps/cimg-subbuild/cimg-populate-prefix/src/cimg-populate-stamp/cimg-populate-gitclone-lastrun.txt'")
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E rm -rf "/home/wyz/cad420/voxer/cmake-build-debug/_deps/cimg-src"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: '/home/wyz/cad420/voxer/cmake-build-debug/_deps/cimg-src'")
endif()

# try the clone 3 times in case there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "/usr/bin/git"  clone --no-checkout --depth 1 --no-single-branch --progress "https://github.com/dtschump/CImg.git" "cimg-src"
    WORKING_DIRECTORY "/home/wyz/cad420/voxer/cmake-build-debug/_deps"
    RESULT_VARIABLE error_code
    )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once:
          ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://github.com/dtschump/CImg.git'")
endif()

execute_process(
  COMMAND "/usr/bin/git"  checkout 2f7a1ebf1b1dcc59d5d2f54c39e291def47b5064 --
  WORKING_DIRECTORY "/home/wyz/cad420/voxer/cmake-build-debug/_deps/cimg-src"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: '2f7a1ebf1b1dcc59d5d2f54c39e291def47b5064'")
endif()

set(init_submodules TRUE)
if(init_submodules)
  execute_process(
    COMMAND "/usr/bin/git"  submodule update --recursive --init 
    WORKING_DIRECTORY "/home/wyz/cad420/voxer/cmake-build-debug/_deps/cimg-src"
    RESULT_VARIABLE error_code
    )
endif()
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: '/home/wyz/cad420/voxer/cmake-build-debug/_deps/cimg-src'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy
    "/home/wyz/cad420/voxer/cmake-build-debug/_deps/cimg-subbuild/cimg-populate-prefix/src/cimg-populate-stamp/cimg-populate-gitinfo.txt"
    "/home/wyz/cad420/voxer/cmake-build-debug/_deps/cimg-subbuild/cimg-populate-prefix/src/cimg-populate-stamp/cimg-populate-gitclone-lastrun.txt"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: '/home/wyz/cad420/voxer/cmake-build-debug/_deps/cimg-subbuild/cimg-populate-prefix/src/cimg-populate-stamp/cimg-populate-gitclone-lastrun.txt'")
endif()

