# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/ryan/Desktop/SoapySDR

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ryan/Desktop/SoapySDR/build

# Include any dependencies generated for this target.
include apps/CMakeFiles/SoapySDRUtil.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include apps/CMakeFiles/SoapySDRUtil.dir/compiler_depend.make

# Include the progress variables for this target.
include apps/CMakeFiles/SoapySDRUtil.dir/progress.make

# Include the compile flags for this target's objects.
include apps/CMakeFiles/SoapySDRUtil.dir/flags.make

apps/CMakeFiles/SoapySDRUtil.dir/SoapySDRUtil.cpp.o: apps/CMakeFiles/SoapySDRUtil.dir/flags.make
apps/CMakeFiles/SoapySDRUtil.dir/SoapySDRUtil.cpp.o: ../apps/SoapySDRUtil.cpp
apps/CMakeFiles/SoapySDRUtil.dir/SoapySDRUtil.cpp.o: apps/CMakeFiles/SoapySDRUtil.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ryan/Desktop/SoapySDR/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object apps/CMakeFiles/SoapySDRUtil.dir/SoapySDRUtil.cpp.o"
	cd /home/ryan/Desktop/SoapySDR/build/apps && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT apps/CMakeFiles/SoapySDRUtil.dir/SoapySDRUtil.cpp.o -MF CMakeFiles/SoapySDRUtil.dir/SoapySDRUtil.cpp.o.d -o CMakeFiles/SoapySDRUtil.dir/SoapySDRUtil.cpp.o -c /home/ryan/Desktop/SoapySDR/apps/SoapySDRUtil.cpp

apps/CMakeFiles/SoapySDRUtil.dir/SoapySDRUtil.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SoapySDRUtil.dir/SoapySDRUtil.cpp.i"
	cd /home/ryan/Desktop/SoapySDR/build/apps && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ryan/Desktop/SoapySDR/apps/SoapySDRUtil.cpp > CMakeFiles/SoapySDRUtil.dir/SoapySDRUtil.cpp.i

apps/CMakeFiles/SoapySDRUtil.dir/SoapySDRUtil.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SoapySDRUtil.dir/SoapySDRUtil.cpp.s"
	cd /home/ryan/Desktop/SoapySDR/build/apps && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ryan/Desktop/SoapySDR/apps/SoapySDRUtil.cpp -o CMakeFiles/SoapySDRUtil.dir/SoapySDRUtil.cpp.s

apps/CMakeFiles/SoapySDRUtil.dir/SoapySDRProbe.cpp.o: apps/CMakeFiles/SoapySDRUtil.dir/flags.make
apps/CMakeFiles/SoapySDRUtil.dir/SoapySDRProbe.cpp.o: ../apps/SoapySDRProbe.cpp
apps/CMakeFiles/SoapySDRUtil.dir/SoapySDRProbe.cpp.o: apps/CMakeFiles/SoapySDRUtil.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ryan/Desktop/SoapySDR/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object apps/CMakeFiles/SoapySDRUtil.dir/SoapySDRProbe.cpp.o"
	cd /home/ryan/Desktop/SoapySDR/build/apps && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT apps/CMakeFiles/SoapySDRUtil.dir/SoapySDRProbe.cpp.o -MF CMakeFiles/SoapySDRUtil.dir/SoapySDRProbe.cpp.o.d -o CMakeFiles/SoapySDRUtil.dir/SoapySDRProbe.cpp.o -c /home/ryan/Desktop/SoapySDR/apps/SoapySDRProbe.cpp

apps/CMakeFiles/SoapySDRUtil.dir/SoapySDRProbe.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SoapySDRUtil.dir/SoapySDRProbe.cpp.i"
	cd /home/ryan/Desktop/SoapySDR/build/apps && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ryan/Desktop/SoapySDR/apps/SoapySDRProbe.cpp > CMakeFiles/SoapySDRUtil.dir/SoapySDRProbe.cpp.i

apps/CMakeFiles/SoapySDRUtil.dir/SoapySDRProbe.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SoapySDRUtil.dir/SoapySDRProbe.cpp.s"
	cd /home/ryan/Desktop/SoapySDR/build/apps && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ryan/Desktop/SoapySDR/apps/SoapySDRProbe.cpp -o CMakeFiles/SoapySDRUtil.dir/SoapySDRProbe.cpp.s

apps/CMakeFiles/SoapySDRUtil.dir/SoapyRateTest.cpp.o: apps/CMakeFiles/SoapySDRUtil.dir/flags.make
apps/CMakeFiles/SoapySDRUtil.dir/SoapyRateTest.cpp.o: ../apps/SoapyRateTest.cpp
apps/CMakeFiles/SoapySDRUtil.dir/SoapyRateTest.cpp.o: apps/CMakeFiles/SoapySDRUtil.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ryan/Desktop/SoapySDR/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object apps/CMakeFiles/SoapySDRUtil.dir/SoapyRateTest.cpp.o"
	cd /home/ryan/Desktop/SoapySDR/build/apps && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT apps/CMakeFiles/SoapySDRUtil.dir/SoapyRateTest.cpp.o -MF CMakeFiles/SoapySDRUtil.dir/SoapyRateTest.cpp.o.d -o CMakeFiles/SoapySDRUtil.dir/SoapyRateTest.cpp.o -c /home/ryan/Desktop/SoapySDR/apps/SoapyRateTest.cpp

apps/CMakeFiles/SoapySDRUtil.dir/SoapyRateTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SoapySDRUtil.dir/SoapyRateTest.cpp.i"
	cd /home/ryan/Desktop/SoapySDR/build/apps && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ryan/Desktop/SoapySDR/apps/SoapyRateTest.cpp > CMakeFiles/SoapySDRUtil.dir/SoapyRateTest.cpp.i

apps/CMakeFiles/SoapySDRUtil.dir/SoapyRateTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SoapySDRUtil.dir/SoapyRateTest.cpp.s"
	cd /home/ryan/Desktop/SoapySDR/build/apps && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ryan/Desktop/SoapySDR/apps/SoapyRateTest.cpp -o CMakeFiles/SoapySDRUtil.dir/SoapyRateTest.cpp.s

# Object files for target SoapySDRUtil
SoapySDRUtil_OBJECTS = \
"CMakeFiles/SoapySDRUtil.dir/SoapySDRUtil.cpp.o" \
"CMakeFiles/SoapySDRUtil.dir/SoapySDRProbe.cpp.o" \
"CMakeFiles/SoapySDRUtil.dir/SoapyRateTest.cpp.o"

# External object files for target SoapySDRUtil
SoapySDRUtil_EXTERNAL_OBJECTS =

apps/SoapySDRUtil: apps/CMakeFiles/SoapySDRUtil.dir/SoapySDRUtil.cpp.o
apps/SoapySDRUtil: apps/CMakeFiles/SoapySDRUtil.dir/SoapySDRProbe.cpp.o
apps/SoapySDRUtil: apps/CMakeFiles/SoapySDRUtil.dir/SoapyRateTest.cpp.o
apps/SoapySDRUtil: apps/CMakeFiles/SoapySDRUtil.dir/build.make
apps/SoapySDRUtil: lib/libSoapySDR.so.0.8.1
apps/SoapySDRUtil: apps/CMakeFiles/SoapySDRUtil.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ryan/Desktop/SoapySDR/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable SoapySDRUtil"
	cd /home/ryan/Desktop/SoapySDR/build/apps && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SoapySDRUtil.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/CMakeFiles/SoapySDRUtil.dir/build: apps/SoapySDRUtil
.PHONY : apps/CMakeFiles/SoapySDRUtil.dir/build

apps/CMakeFiles/SoapySDRUtil.dir/clean:
	cd /home/ryan/Desktop/SoapySDR/build/apps && $(CMAKE_COMMAND) -P CMakeFiles/SoapySDRUtil.dir/cmake_clean.cmake
.PHONY : apps/CMakeFiles/SoapySDRUtil.dir/clean

apps/CMakeFiles/SoapySDRUtil.dir/depend:
	cd /home/ryan/Desktop/SoapySDR/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ryan/Desktop/SoapySDR /home/ryan/Desktop/SoapySDR/apps /home/ryan/Desktop/SoapySDR/build /home/ryan/Desktop/SoapySDR/build/apps /home/ryan/Desktop/SoapySDR/build/apps/CMakeFiles/SoapySDRUtil.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/CMakeFiles/SoapySDRUtil.dir/depend

