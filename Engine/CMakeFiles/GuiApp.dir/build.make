# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 4.0

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/darius/Dev/cpp/AppGui

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/darius/Dev/cpp/AppGui

# Include any dependencies generated for this target.
include Engine/CMakeFiles/GuiApp.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Engine/CMakeFiles/GuiApp.dir/compiler_depend.make

# Include the progress variables for this target.
include Engine/CMakeFiles/GuiApp.dir/progress.make

# Include the compile flags for this target's objects.
include Engine/CMakeFiles/GuiApp.dir/flags.make

Engine/CMakeFiles/GuiApp.dir/codegen:
.PHONY : Engine/CMakeFiles/GuiApp.dir/codegen

Engine/CMakeFiles/GuiApp.dir/cmake_pch.hxx.gch: Engine/CMakeFiles/GuiApp.dir/flags.make
Engine/CMakeFiles/GuiApp.dir/cmake_pch.hxx.gch: Engine/CMakeFiles/GuiApp.dir/cmake_pch.hxx.cxx
Engine/CMakeFiles/GuiApp.dir/cmake_pch.hxx.gch: Engine/CMakeFiles/GuiApp.dir/cmake_pch.hxx
Engine/CMakeFiles/GuiApp.dir/cmake_pch.hxx.gch: Engine/CMakeFiles/GuiApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/darius/Dev/cpp/AppGui/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Engine/CMakeFiles/GuiApp.dir/cmake_pch.hxx.gch"
	cd /home/darius/Dev/cpp/AppGui/Engine && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -x c++-header -include /home/darius/Dev/cpp/AppGui/Engine/CMakeFiles/GuiApp.dir/cmake_pch.hxx -MD -MT Engine/CMakeFiles/GuiApp.dir/cmake_pch.hxx.gch -MF CMakeFiles/GuiApp.dir/cmake_pch.hxx.gch.d -o CMakeFiles/GuiApp.dir/cmake_pch.hxx.gch -c /home/darius/Dev/cpp/AppGui/Engine/CMakeFiles/GuiApp.dir/cmake_pch.hxx.cxx

Engine/CMakeFiles/GuiApp.dir/cmake_pch.hxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/GuiApp.dir/cmake_pch.hxx.i"
	cd /home/darius/Dev/cpp/AppGui/Engine && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -x c++-header -include /home/darius/Dev/cpp/AppGui/Engine/CMakeFiles/GuiApp.dir/cmake_pch.hxx -E /home/darius/Dev/cpp/AppGui/Engine/CMakeFiles/GuiApp.dir/cmake_pch.hxx.cxx > CMakeFiles/GuiApp.dir/cmake_pch.hxx.i

Engine/CMakeFiles/GuiApp.dir/cmake_pch.hxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/GuiApp.dir/cmake_pch.hxx.s"
	cd /home/darius/Dev/cpp/AppGui/Engine && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -x c++-header -include /home/darius/Dev/cpp/AppGui/Engine/CMakeFiles/GuiApp.dir/cmake_pch.hxx -S /home/darius/Dev/cpp/AppGui/Engine/CMakeFiles/GuiApp.dir/cmake_pch.hxx.cxx -o CMakeFiles/GuiApp.dir/cmake_pch.hxx.s

Engine/CMakeFiles/GuiApp.dir/src/Application.cpp.o: Engine/CMakeFiles/GuiApp.dir/flags.make
Engine/CMakeFiles/GuiApp.dir/src/Application.cpp.o: Engine/src/Application.cpp
Engine/CMakeFiles/GuiApp.dir/src/Application.cpp.o: Engine/CMakeFiles/GuiApp.dir/cmake_pch.hxx
Engine/CMakeFiles/GuiApp.dir/src/Application.cpp.o: Engine/CMakeFiles/GuiApp.dir/cmake_pch.hxx.gch
Engine/CMakeFiles/GuiApp.dir/src/Application.cpp.o: Engine/CMakeFiles/GuiApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/darius/Dev/cpp/AppGui/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object Engine/CMakeFiles/GuiApp.dir/src/Application.cpp.o"
	cd /home/darius/Dev/cpp/AppGui/Engine && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/darius/Dev/cpp/AppGui/Engine/CMakeFiles/GuiApp.dir/cmake_pch.hxx -MD -MT Engine/CMakeFiles/GuiApp.dir/src/Application.cpp.o -MF CMakeFiles/GuiApp.dir/src/Application.cpp.o.d -o CMakeFiles/GuiApp.dir/src/Application.cpp.o -c /home/darius/Dev/cpp/AppGui/Engine/src/Application.cpp

Engine/CMakeFiles/GuiApp.dir/src/Application.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/GuiApp.dir/src/Application.cpp.i"
	cd /home/darius/Dev/cpp/AppGui/Engine && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/darius/Dev/cpp/AppGui/Engine/CMakeFiles/GuiApp.dir/cmake_pch.hxx -E /home/darius/Dev/cpp/AppGui/Engine/src/Application.cpp > CMakeFiles/GuiApp.dir/src/Application.cpp.i

Engine/CMakeFiles/GuiApp.dir/src/Application.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/GuiApp.dir/src/Application.cpp.s"
	cd /home/darius/Dev/cpp/AppGui/Engine && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/darius/Dev/cpp/AppGui/Engine/CMakeFiles/GuiApp.dir/cmake_pch.hxx -S /home/darius/Dev/cpp/AppGui/Engine/src/Application.cpp -o CMakeFiles/GuiApp.dir/src/Application.cpp.s

Engine/CMakeFiles/GuiApp.dir/src/LayerStack.cpp.o: Engine/CMakeFiles/GuiApp.dir/flags.make
Engine/CMakeFiles/GuiApp.dir/src/LayerStack.cpp.o: Engine/src/LayerStack.cpp
Engine/CMakeFiles/GuiApp.dir/src/LayerStack.cpp.o: Engine/CMakeFiles/GuiApp.dir/cmake_pch.hxx
Engine/CMakeFiles/GuiApp.dir/src/LayerStack.cpp.o: Engine/CMakeFiles/GuiApp.dir/cmake_pch.hxx.gch
Engine/CMakeFiles/GuiApp.dir/src/LayerStack.cpp.o: Engine/CMakeFiles/GuiApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/darius/Dev/cpp/AppGui/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object Engine/CMakeFiles/GuiApp.dir/src/LayerStack.cpp.o"
	cd /home/darius/Dev/cpp/AppGui/Engine && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/darius/Dev/cpp/AppGui/Engine/CMakeFiles/GuiApp.dir/cmake_pch.hxx -MD -MT Engine/CMakeFiles/GuiApp.dir/src/LayerStack.cpp.o -MF CMakeFiles/GuiApp.dir/src/LayerStack.cpp.o.d -o CMakeFiles/GuiApp.dir/src/LayerStack.cpp.o -c /home/darius/Dev/cpp/AppGui/Engine/src/LayerStack.cpp

Engine/CMakeFiles/GuiApp.dir/src/LayerStack.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/GuiApp.dir/src/LayerStack.cpp.i"
	cd /home/darius/Dev/cpp/AppGui/Engine && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/darius/Dev/cpp/AppGui/Engine/CMakeFiles/GuiApp.dir/cmake_pch.hxx -E /home/darius/Dev/cpp/AppGui/Engine/src/LayerStack.cpp > CMakeFiles/GuiApp.dir/src/LayerStack.cpp.i

Engine/CMakeFiles/GuiApp.dir/src/LayerStack.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/GuiApp.dir/src/LayerStack.cpp.s"
	cd /home/darius/Dev/cpp/AppGui/Engine && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/darius/Dev/cpp/AppGui/Engine/CMakeFiles/GuiApp.dir/cmake_pch.hxx -S /home/darius/Dev/cpp/AppGui/Engine/src/LayerStack.cpp -o CMakeFiles/GuiApp.dir/src/LayerStack.cpp.s

Engine/CMakeFiles/GuiApp.dir/Platform/Linux/LinuxWindow.cpp.o: Engine/CMakeFiles/GuiApp.dir/flags.make
Engine/CMakeFiles/GuiApp.dir/Platform/Linux/LinuxWindow.cpp.o: Engine/Platform/Linux/LinuxWindow.cpp
Engine/CMakeFiles/GuiApp.dir/Platform/Linux/LinuxWindow.cpp.o: Engine/CMakeFiles/GuiApp.dir/cmake_pch.hxx
Engine/CMakeFiles/GuiApp.dir/Platform/Linux/LinuxWindow.cpp.o: Engine/CMakeFiles/GuiApp.dir/cmake_pch.hxx.gch
Engine/CMakeFiles/GuiApp.dir/Platform/Linux/LinuxWindow.cpp.o: Engine/CMakeFiles/GuiApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/darius/Dev/cpp/AppGui/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object Engine/CMakeFiles/GuiApp.dir/Platform/Linux/LinuxWindow.cpp.o"
	cd /home/darius/Dev/cpp/AppGui/Engine && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/darius/Dev/cpp/AppGui/Engine/CMakeFiles/GuiApp.dir/cmake_pch.hxx -MD -MT Engine/CMakeFiles/GuiApp.dir/Platform/Linux/LinuxWindow.cpp.o -MF CMakeFiles/GuiApp.dir/Platform/Linux/LinuxWindow.cpp.o.d -o CMakeFiles/GuiApp.dir/Platform/Linux/LinuxWindow.cpp.o -c /home/darius/Dev/cpp/AppGui/Engine/Platform/Linux/LinuxWindow.cpp

Engine/CMakeFiles/GuiApp.dir/Platform/Linux/LinuxWindow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/GuiApp.dir/Platform/Linux/LinuxWindow.cpp.i"
	cd /home/darius/Dev/cpp/AppGui/Engine && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/darius/Dev/cpp/AppGui/Engine/CMakeFiles/GuiApp.dir/cmake_pch.hxx -E /home/darius/Dev/cpp/AppGui/Engine/Platform/Linux/LinuxWindow.cpp > CMakeFiles/GuiApp.dir/Platform/Linux/LinuxWindow.cpp.i

Engine/CMakeFiles/GuiApp.dir/Platform/Linux/LinuxWindow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/GuiApp.dir/Platform/Linux/LinuxWindow.cpp.s"
	cd /home/darius/Dev/cpp/AppGui/Engine && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/darius/Dev/cpp/AppGui/Engine/CMakeFiles/GuiApp.dir/cmake_pch.hxx -S /home/darius/Dev/cpp/AppGui/Engine/Platform/Linux/LinuxWindow.cpp -o CMakeFiles/GuiApp.dir/Platform/Linux/LinuxWindow.cpp.s

# Object files for target GuiApp
GuiApp_OBJECTS = \
"CMakeFiles/GuiApp.dir/src/Application.cpp.o" \
"CMakeFiles/GuiApp.dir/src/LayerStack.cpp.o" \
"CMakeFiles/GuiApp.dir/Platform/Linux/LinuxWindow.cpp.o"

# External object files for target GuiApp
GuiApp_EXTERNAL_OBJECTS =

lib/libGuiApp.a: Engine/CMakeFiles/GuiApp.dir/cmake_pch.hxx.gch
lib/libGuiApp.a: Engine/CMakeFiles/GuiApp.dir/src/Application.cpp.o
lib/libGuiApp.a: Engine/CMakeFiles/GuiApp.dir/src/LayerStack.cpp.o
lib/libGuiApp.a: Engine/CMakeFiles/GuiApp.dir/Platform/Linux/LinuxWindow.cpp.o
lib/libGuiApp.a: Engine/CMakeFiles/GuiApp.dir/build.make
lib/libGuiApp.a: Engine/CMakeFiles/GuiApp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/darius/Dev/cpp/AppGui/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX static library ../lib/libGuiApp.a"
	cd /home/darius/Dev/cpp/AppGui/Engine && $(CMAKE_COMMAND) -P CMakeFiles/GuiApp.dir/cmake_clean_target.cmake
	cd /home/darius/Dev/cpp/AppGui/Engine && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/GuiApp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Engine/CMakeFiles/GuiApp.dir/build: lib/libGuiApp.a
.PHONY : Engine/CMakeFiles/GuiApp.dir/build

Engine/CMakeFiles/GuiApp.dir/clean:
	cd /home/darius/Dev/cpp/AppGui/Engine && $(CMAKE_COMMAND) -P CMakeFiles/GuiApp.dir/cmake_clean.cmake
.PHONY : Engine/CMakeFiles/GuiApp.dir/clean

Engine/CMakeFiles/GuiApp.dir/depend:
	cd /home/darius/Dev/cpp/AppGui && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/darius/Dev/cpp/AppGui /home/darius/Dev/cpp/AppGui/Engine /home/darius/Dev/cpp/AppGui /home/darius/Dev/cpp/AppGui/Engine /home/darius/Dev/cpp/AppGui/Engine/CMakeFiles/GuiApp.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : Engine/CMakeFiles/GuiApp.dir/depend

