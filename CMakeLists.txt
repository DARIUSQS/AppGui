cmake_minimum_required(VERSION 3.16)

# set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
# set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

project(sandbox)

add_subdirectory(Engine)

add_executable(sandbox src/main.cpp)

target_include_directories(sandbox PUBLIC "src/")

target_link_libraries(sandbox PUBLIC GuiApp)
