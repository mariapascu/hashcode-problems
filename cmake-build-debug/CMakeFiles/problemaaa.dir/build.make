# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.9

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2017.3.3\bin\cmake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2017.3.3\bin\cmake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\maria\Desktop\date d\MARIA\faculty\anul 2\hash code\problemaaa"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\maria\Desktop\date d\MARIA\faculty\anul 2\hash code\problemaaa\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/problemaaa.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/problemaaa.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/problemaaa.dir/flags.make

CMakeFiles/problemaaa.dir/main.cpp.obj: CMakeFiles/problemaaa.dir/flags.make
CMakeFiles/problemaaa.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\maria\Desktop\date d\MARIA\faculty\anul 2\hash code\problemaaa\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/problemaaa.dir/main.cpp.obj"
	C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\problemaaa.dir\main.cpp.obj -c "C:\Users\maria\Desktop\date d\MARIA\faculty\anul 2\hash code\problemaaa\main.cpp"

CMakeFiles/problemaaa.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/problemaaa.dir/main.cpp.i"
	C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\maria\Desktop\date d\MARIA\faculty\anul 2\hash code\problemaaa\main.cpp" > CMakeFiles\problemaaa.dir\main.cpp.i

CMakeFiles/problemaaa.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/problemaaa.dir/main.cpp.s"
	C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\maria\Desktop\date d\MARIA\faculty\anul 2\hash code\problemaaa\main.cpp" -o CMakeFiles\problemaaa.dir\main.cpp.s

CMakeFiles/problemaaa.dir/main.cpp.obj.requires:

.PHONY : CMakeFiles/problemaaa.dir/main.cpp.obj.requires

CMakeFiles/problemaaa.dir/main.cpp.obj.provides: CMakeFiles/problemaaa.dir/main.cpp.obj.requires
	$(MAKE) -f CMakeFiles\problemaaa.dir\build.make CMakeFiles/problemaaa.dir/main.cpp.obj.provides.build
.PHONY : CMakeFiles/problemaaa.dir/main.cpp.obj.provides

CMakeFiles/problemaaa.dir/main.cpp.obj.provides.build: CMakeFiles/problemaaa.dir/main.cpp.obj


# Object files for target problemaaa
problemaaa_OBJECTS = \
"CMakeFiles/problemaaa.dir/main.cpp.obj"

# External object files for target problemaaa
problemaaa_EXTERNAL_OBJECTS =

problemaaa.exe: CMakeFiles/problemaaa.dir/main.cpp.obj
problemaaa.exe: CMakeFiles/problemaaa.dir/build.make
problemaaa.exe: CMakeFiles/problemaaa.dir/linklibs.rsp
problemaaa.exe: CMakeFiles/problemaaa.dir/objects1.rsp
problemaaa.exe: CMakeFiles/problemaaa.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\maria\Desktop\date d\MARIA\faculty\anul 2\hash code\problemaaa\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable problemaaa.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\problemaaa.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/problemaaa.dir/build: problemaaa.exe

.PHONY : CMakeFiles/problemaaa.dir/build

CMakeFiles/problemaaa.dir/requires: CMakeFiles/problemaaa.dir/main.cpp.obj.requires

.PHONY : CMakeFiles/problemaaa.dir/requires

CMakeFiles/problemaaa.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\problemaaa.dir\cmake_clean.cmake
.PHONY : CMakeFiles/problemaaa.dir/clean

CMakeFiles/problemaaa.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\maria\Desktop\date d\MARIA\faculty\anul 2\hash code\problemaaa" "C:\Users\maria\Desktop\date d\MARIA\faculty\anul 2\hash code\problemaaa" "C:\Users\maria\Desktop\date d\MARIA\faculty\anul 2\hash code\problemaaa\cmake-build-debug" "C:\Users\maria\Desktop\date d\MARIA\faculty\anul 2\hash code\problemaaa\cmake-build-debug" "C:\Users\maria\Desktop\date d\MARIA\faculty\anul 2\hash code\problemaaa\cmake-build-debug\CMakeFiles\problemaaa.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/problemaaa.dir/depend

