cmake_minimum_required (VERSION 3.1)
project(boost_beast_test)

if (EXISTS "$ENV{WORKSPACE}/sysconfig/cmake/physycom_config.cmake")
   message(STATUS "Enabling physycom settings")
   include("$ENV{WORKSPACE}/sysconfig/cmake/physycom_config.cmake")
else()
   message(STATUS "Unable to find physycom settings file")
endif()

find_package(Boost COMPONENTS system)
include_directories(${Boost_INCLUDE_DIRS})

add_executable(ws_sync_client         "${CMAKE_SOURCE_DIR}/ws_sync_client.cpp")
target_link_libraries(ws_sync_client  Boost::system)

add_executable(ws_sync_server         "${CMAKE_SOURCE_DIR}/ws_sync_server.cpp")
target_link_libraries(ws_sync_server  Boost::system)