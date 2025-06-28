cmake_minimum_required(VERSION 3.16)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

set(CMAKE_CXX_STANDARD 17)

project(GuiApp)

add_subdirectory(vendor/glfw)
add_subdirectory(vendor/ImGui)
add_subdirectory(vendor/glad)

add_library(GuiApp STATIC 
                            src/Application.cpp                           
                            src/LayerStack.cpp 
                            Platform/Linux/LinuxWindow.cpp
)

target_include_directories(GuiApp PUBLIC "src/")

target_precompile_headers(GuiApp PUBLIC "src/pch.h")

target_link_libraries(GuiApp PUBLIC glad glfw imgui)
