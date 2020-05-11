cmake_minimum_required(VERSION 2.8.3)
project(system_suitesparse)

find_package(catkin REQUIRED)

list(APPEND CMAKE_MODULE_PATH "${system_suitesparse_SOURCE_DIR}/cmake")

find_package(SUITESPARSE REQUIRED)

install(DIRECTORY ${SUITESPARSE_INCLUDE_DIRS}
        DESTINATION ${CATKIN_GLOBAL_INCLUDE_DESTINATION})

catkin_package(INCLUDE_DIRS ${SUITESPARSE_INCLUDE_DIRS}
          LIBRARIES ${SUITESPARSE_LIBRARIES})
