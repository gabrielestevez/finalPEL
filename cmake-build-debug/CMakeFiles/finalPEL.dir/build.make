# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/gabrielestevez/CLionProjects/finalPEL

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/gabrielestevez/CLionProjects/finalPEL/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/finalPEL.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/finalPEL.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/finalPEL.dir/flags.make

CMakeFiles/finalPEL.dir/main.cpp.o: CMakeFiles/finalPEL.dir/flags.make
CMakeFiles/finalPEL.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/gabrielestevez/CLionProjects/finalPEL/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/finalPEL.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/finalPEL.dir/main.cpp.o -c /Users/gabrielestevez/CLionProjects/finalPEL/main.cpp

CMakeFiles/finalPEL.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/finalPEL.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/gabrielestevez/CLionProjects/finalPEL/main.cpp > CMakeFiles/finalPEL.dir/main.cpp.i

CMakeFiles/finalPEL.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/finalPEL.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/gabrielestevez/CLionProjects/finalPEL/main.cpp -o CMakeFiles/finalPEL.dir/main.cpp.s

# Object files for target finalPEL
finalPEL_OBJECTS = \
"CMakeFiles/finalPEL.dir/main.cpp.o"

# External object files for target finalPEL
finalPEL_EXTERNAL_OBJECTS =

finalPEL: CMakeFiles/finalPEL.dir/main.cpp.o
finalPEL: CMakeFiles/finalPEL.dir/build.make
finalPEL: CMakeFiles/finalPEL.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/gabrielestevez/CLionProjects/finalPEL/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable finalPEL"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/finalPEL.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/finalPEL.dir/build: finalPEL

.PHONY : CMakeFiles/finalPEL.dir/build

CMakeFiles/finalPEL.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/finalPEL.dir/cmake_clean.cmake
.PHONY : CMakeFiles/finalPEL.dir/clean

CMakeFiles/finalPEL.dir/depend:
	cd /Users/gabrielestevez/CLionProjects/finalPEL/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/gabrielestevez/CLionProjects/finalPEL /Users/gabrielestevez/CLionProjects/finalPEL /Users/gabrielestevez/CLionProjects/finalPEL/cmake-build-debug /Users/gabrielestevez/CLionProjects/finalPEL/cmake-build-debug /Users/gabrielestevez/CLionProjects/finalPEL/cmake-build-debug/CMakeFiles/finalPEL.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/finalPEL.dir/depend

