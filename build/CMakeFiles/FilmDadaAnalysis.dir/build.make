# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.29

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\VSCode\FilmDataAnalysis

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\VSCode\FilmDataAnalysis\build

# Include any dependencies generated for this target.
include CMakeFiles/FilmDadaAnalysis.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/FilmDadaAnalysis.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/FilmDadaAnalysis.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/FilmDadaAnalysis.dir/flags.make

CMakeFiles/FilmDadaAnalysis.dir/main.cpp.obj: CMakeFiles/FilmDadaAnalysis.dir/flags.make
CMakeFiles/FilmDadaAnalysis.dir/main.cpp.obj: CMakeFiles/FilmDadaAnalysis.dir/includes_CXX.rsp
CMakeFiles/FilmDadaAnalysis.dir/main.cpp.obj: D:/VSCode/FilmDataAnalysis/main.cpp
CMakeFiles/FilmDadaAnalysis.dir/main.cpp.obj: CMakeFiles/FilmDadaAnalysis.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\VSCode\FilmDataAnalysis\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/FilmDadaAnalysis.dir/main.cpp.obj"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/FilmDadaAnalysis.dir/main.cpp.obj -MF CMakeFiles\FilmDadaAnalysis.dir\main.cpp.obj.d -o CMakeFiles\FilmDadaAnalysis.dir\main.cpp.obj -c D:\VSCode\FilmDataAnalysis\main.cpp

CMakeFiles/FilmDadaAnalysis.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/FilmDadaAnalysis.dir/main.cpp.i"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\VSCode\FilmDataAnalysis\main.cpp > CMakeFiles\FilmDadaAnalysis.dir\main.cpp.i

CMakeFiles/FilmDadaAnalysis.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/FilmDadaAnalysis.dir/main.cpp.s"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\VSCode\FilmDataAnalysis\main.cpp -o CMakeFiles\FilmDadaAnalysis.dir\main.cpp.s

# Object files for target FilmDadaAnalysis
FilmDadaAnalysis_OBJECTS = \
"CMakeFiles/FilmDadaAnalysis.dir/main.cpp.obj"

# External object files for target FilmDadaAnalysis
FilmDadaAnalysis_EXTERNAL_OBJECTS =

FilmDadaAnalysis.exe: CMakeFiles/FilmDadaAnalysis.dir/main.cpp.obj
FilmDadaAnalysis.exe: CMakeFiles/FilmDadaAnalysis.dir/build.make
FilmDadaAnalysis.exe: CMakeFiles/FilmDadaAnalysis.dir/linkLibs.rsp
FilmDadaAnalysis.exe: CMakeFiles/FilmDadaAnalysis.dir/objects1.rsp
FilmDadaAnalysis.exe: CMakeFiles/FilmDadaAnalysis.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=D:\VSCode\FilmDataAnalysis\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable FilmDadaAnalysis.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\FilmDadaAnalysis.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/FilmDadaAnalysis.dir/build: FilmDadaAnalysis.exe
.PHONY : CMakeFiles/FilmDadaAnalysis.dir/build

CMakeFiles/FilmDadaAnalysis.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\FilmDadaAnalysis.dir\cmake_clean.cmake
.PHONY : CMakeFiles/FilmDadaAnalysis.dir/clean

CMakeFiles/FilmDadaAnalysis.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\VSCode\FilmDataAnalysis D:\VSCode\FilmDataAnalysis D:\VSCode\FilmDataAnalysis\build D:\VSCode\FilmDataAnalysis\build D:\VSCode\FilmDataAnalysis\build\CMakeFiles\FilmDadaAnalysis.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/FilmDadaAnalysis.dir/depend
