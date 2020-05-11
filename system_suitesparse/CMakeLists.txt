cmake_minimum_required(VERSION 2.8.3)
project(system_suitesparse)

find_package(catkin_simple REQUIRED)

find_package(catkin REQUIRED)

cs_export(CFG_EXTRAS suitesparse-extras.cmake)

## Install all cmake files
install(DIRECTORY cmake/Modules
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/cmake)

cs_export(INCLUDE_DIRS ${SUITESPARSE_INCLUDE_DIRS}
          CFG_EXTRAS suitesparse-extras.cmake)
