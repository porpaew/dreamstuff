# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.6

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/local/bin/cmake

# The command to remove a file.
RM = /opt/local/bin/cmake -E remove -f

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /opt/local/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/mac/MeshDeformer/trunk

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/mac/MeshDeformer/trunk/build

# Include any dependencies generated for this target.
include MainWindow/CMakeFiles/MainWindow.dir/depend.make

# Include the progress variables for this target.
include MainWindow/CMakeFiles/MainWindow.dir/progress.make

# Include the compile flags for this target's objects.
include MainWindow/CMakeFiles/MainWindow.dir/flags.make

MainWindow/CMakeFiles/MainWindow.dir/main_window.cpp.o: MainWindow/CMakeFiles/MainWindow.dir/flags.make
MainWindow/CMakeFiles/MainWindow.dir/main_window.cpp.o: ../MainWindow/main_window.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/mac/MeshDeformer/trunk/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object MainWindow/CMakeFiles/MainWindow.dir/main_window.cpp.o"
	cd /Users/mac/MeshDeformer/trunk/build/MainWindow && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/MainWindow.dir/main_window.cpp.o -c /Users/mac/MeshDeformer/trunk/MainWindow/main_window.cpp

MainWindow/CMakeFiles/MainWindow.dir/main_window.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MainWindow.dir/main_window.cpp.i"
	cd /Users/mac/MeshDeformer/trunk/build/MainWindow && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/mac/MeshDeformer/trunk/MainWindow/main_window.cpp > CMakeFiles/MainWindow.dir/main_window.cpp.i

MainWindow/CMakeFiles/MainWindow.dir/main_window.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MainWindow.dir/main_window.cpp.s"
	cd /Users/mac/MeshDeformer/trunk/build/MainWindow && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/mac/MeshDeformer/trunk/MainWindow/main_window.cpp -o CMakeFiles/MainWindow.dir/main_window.cpp.s

MainWindow/CMakeFiles/MainWindow.dir/main_window.cpp.o.requires:
.PHONY : MainWindow/CMakeFiles/MainWindow.dir/main_window.cpp.o.requires

MainWindow/CMakeFiles/MainWindow.dir/main_window.cpp.o.provides: MainWindow/CMakeFiles/MainWindow.dir/main_window.cpp.o.requires
	$(MAKE) -f MainWindow/CMakeFiles/MainWindow.dir/build.make MainWindow/CMakeFiles/MainWindow.dir/main_window.cpp.o.provides.build
.PHONY : MainWindow/CMakeFiles/MainWindow.dir/main_window.cpp.o.provides

MainWindow/CMakeFiles/MainWindow.dir/main_window.cpp.o.provides.build: MainWindow/CMakeFiles/MainWindow.dir/main_window.cpp.o
.PHONY : MainWindow/CMakeFiles/MainWindow.dir/main_window.cpp.o.provides.build

MainWindow/CMakeFiles/MainWindow.dir/main_widget.cpp.o: MainWindow/CMakeFiles/MainWindow.dir/flags.make
MainWindow/CMakeFiles/MainWindow.dir/main_widget.cpp.o: ../MainWindow/main_widget.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/mac/MeshDeformer/trunk/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object MainWindow/CMakeFiles/MainWindow.dir/main_widget.cpp.o"
	cd /Users/mac/MeshDeformer/trunk/build/MainWindow && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/MainWindow.dir/main_widget.cpp.o -c /Users/mac/MeshDeformer/trunk/MainWindow/main_widget.cpp

MainWindow/CMakeFiles/MainWindow.dir/main_widget.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MainWindow.dir/main_widget.cpp.i"
	cd /Users/mac/MeshDeformer/trunk/build/MainWindow && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/mac/MeshDeformer/trunk/MainWindow/main_widget.cpp > CMakeFiles/MainWindow.dir/main_widget.cpp.i

MainWindow/CMakeFiles/MainWindow.dir/main_widget.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MainWindow.dir/main_widget.cpp.s"
	cd /Users/mac/MeshDeformer/trunk/build/MainWindow && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/mac/MeshDeformer/trunk/MainWindow/main_widget.cpp -o CMakeFiles/MainWindow.dir/main_widget.cpp.s

MainWindow/CMakeFiles/MainWindow.dir/main_widget.cpp.o.requires:
.PHONY : MainWindow/CMakeFiles/MainWindow.dir/main_widget.cpp.o.requires

MainWindow/CMakeFiles/MainWindow.dir/main_widget.cpp.o.provides: MainWindow/CMakeFiles/MainWindow.dir/main_widget.cpp.o.requires
	$(MAKE) -f MainWindow/CMakeFiles/MainWindow.dir/build.make MainWindow/CMakeFiles/MainWindow.dir/main_widget.cpp.o.provides.build
.PHONY : MainWindow/CMakeFiles/MainWindow.dir/main_widget.cpp.o.provides

MainWindow/CMakeFiles/MainWindow.dir/main_widget.cpp.o.provides.build: MainWindow/CMakeFiles/MainWindow.dir/main_widget.cpp.o
.PHONY : MainWindow/CMakeFiles/MainWindow.dir/main_widget.cpp.o.provides.build

MainWindow/CMakeFiles/MainWindow.dir/app_data.cpp.o: MainWindow/CMakeFiles/MainWindow.dir/flags.make
MainWindow/CMakeFiles/MainWindow.dir/app_data.cpp.o: ../MainWindow/app_data.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/mac/MeshDeformer/trunk/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object MainWindow/CMakeFiles/MainWindow.dir/app_data.cpp.o"
	cd /Users/mac/MeshDeformer/trunk/build/MainWindow && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/MainWindow.dir/app_data.cpp.o -c /Users/mac/MeshDeformer/trunk/MainWindow/app_data.cpp

MainWindow/CMakeFiles/MainWindow.dir/app_data.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MainWindow.dir/app_data.cpp.i"
	cd /Users/mac/MeshDeformer/trunk/build/MainWindow && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/mac/MeshDeformer/trunk/MainWindow/app_data.cpp > CMakeFiles/MainWindow.dir/app_data.cpp.i

MainWindow/CMakeFiles/MainWindow.dir/app_data.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MainWindow.dir/app_data.cpp.s"
	cd /Users/mac/MeshDeformer/trunk/build/MainWindow && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/mac/MeshDeformer/trunk/MainWindow/app_data.cpp -o CMakeFiles/MainWindow.dir/app_data.cpp.s

MainWindow/CMakeFiles/MainWindow.dir/app_data.cpp.o.requires:
.PHONY : MainWindow/CMakeFiles/MainWindow.dir/app_data.cpp.o.requires

MainWindow/CMakeFiles/MainWindow.dir/app_data.cpp.o.provides: MainWindow/CMakeFiles/MainWindow.dir/app_data.cpp.o.requires
	$(MAKE) -f MainWindow/CMakeFiles/MainWindow.dir/build.make MainWindow/CMakeFiles/MainWindow.dir/app_data.cpp.o.provides.build
.PHONY : MainWindow/CMakeFiles/MainWindow.dir/app_data.cpp.o.provides

MainWindow/CMakeFiles/MainWindow.dir/app_data.cpp.o.provides.build: MainWindow/CMakeFiles/MainWindow.dir/app_data.cpp.o
.PHONY : MainWindow/CMakeFiles/MainWindow.dir/app_data.cpp.o.provides.build

MainWindow/CMakeFiles/MainWindow.dir/moc_main_widget.cxx.o: MainWindow/CMakeFiles/MainWindow.dir/flags.make
MainWindow/CMakeFiles/MainWindow.dir/moc_main_widget.cxx.o: MainWindow/moc_main_widget.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/mac/MeshDeformer/trunk/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object MainWindow/CMakeFiles/MainWindow.dir/moc_main_widget.cxx.o"
	cd /Users/mac/MeshDeformer/trunk/build/MainWindow && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/MainWindow.dir/moc_main_widget.cxx.o -c /Users/mac/MeshDeformer/trunk/build/MainWindow/moc_main_widget.cxx

MainWindow/CMakeFiles/MainWindow.dir/moc_main_widget.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MainWindow.dir/moc_main_widget.cxx.i"
	cd /Users/mac/MeshDeformer/trunk/build/MainWindow && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/mac/MeshDeformer/trunk/build/MainWindow/moc_main_widget.cxx > CMakeFiles/MainWindow.dir/moc_main_widget.cxx.i

MainWindow/CMakeFiles/MainWindow.dir/moc_main_widget.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MainWindow.dir/moc_main_widget.cxx.s"
	cd /Users/mac/MeshDeformer/trunk/build/MainWindow && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/mac/MeshDeformer/trunk/build/MainWindow/moc_main_widget.cxx -o CMakeFiles/MainWindow.dir/moc_main_widget.cxx.s

MainWindow/CMakeFiles/MainWindow.dir/moc_main_widget.cxx.o.requires:
.PHONY : MainWindow/CMakeFiles/MainWindow.dir/moc_main_widget.cxx.o.requires

MainWindow/CMakeFiles/MainWindow.dir/moc_main_widget.cxx.o.provides: MainWindow/CMakeFiles/MainWindow.dir/moc_main_widget.cxx.o.requires
	$(MAKE) -f MainWindow/CMakeFiles/MainWindow.dir/build.make MainWindow/CMakeFiles/MainWindow.dir/moc_main_widget.cxx.o.provides.build
.PHONY : MainWindow/CMakeFiles/MainWindow.dir/moc_main_widget.cxx.o.provides

MainWindow/CMakeFiles/MainWindow.dir/moc_main_widget.cxx.o.provides.build: MainWindow/CMakeFiles/MainWindow.dir/moc_main_widget.cxx.o
.PHONY : MainWindow/CMakeFiles/MainWindow.dir/moc_main_widget.cxx.o.provides.build

MainWindow/CMakeFiles/MainWindow.dir/moc_main_window.cxx.o: MainWindow/CMakeFiles/MainWindow.dir/flags.make
MainWindow/CMakeFiles/MainWindow.dir/moc_main_window.cxx.o: MainWindow/moc_main_window.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/mac/MeshDeformer/trunk/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object MainWindow/CMakeFiles/MainWindow.dir/moc_main_window.cxx.o"
	cd /Users/mac/MeshDeformer/trunk/build/MainWindow && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/MainWindow.dir/moc_main_window.cxx.o -c /Users/mac/MeshDeformer/trunk/build/MainWindow/moc_main_window.cxx

MainWindow/CMakeFiles/MainWindow.dir/moc_main_window.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MainWindow.dir/moc_main_window.cxx.i"
	cd /Users/mac/MeshDeformer/trunk/build/MainWindow && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/mac/MeshDeformer/trunk/build/MainWindow/moc_main_window.cxx > CMakeFiles/MainWindow.dir/moc_main_window.cxx.i

MainWindow/CMakeFiles/MainWindow.dir/moc_main_window.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MainWindow.dir/moc_main_window.cxx.s"
	cd /Users/mac/MeshDeformer/trunk/build/MainWindow && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/mac/MeshDeformer/trunk/build/MainWindow/moc_main_window.cxx -o CMakeFiles/MainWindow.dir/moc_main_window.cxx.s

MainWindow/CMakeFiles/MainWindow.dir/moc_main_window.cxx.o.requires:
.PHONY : MainWindow/CMakeFiles/MainWindow.dir/moc_main_window.cxx.o.requires

MainWindow/CMakeFiles/MainWindow.dir/moc_main_window.cxx.o.provides: MainWindow/CMakeFiles/MainWindow.dir/moc_main_window.cxx.o.requires
	$(MAKE) -f MainWindow/CMakeFiles/MainWindow.dir/build.make MainWindow/CMakeFiles/MainWindow.dir/moc_main_window.cxx.o.provides.build
.PHONY : MainWindow/CMakeFiles/MainWindow.dir/moc_main_window.cxx.o.provides

MainWindow/CMakeFiles/MainWindow.dir/moc_main_window.cxx.o.provides.build: MainWindow/CMakeFiles/MainWindow.dir/moc_main_window.cxx.o
.PHONY : MainWindow/CMakeFiles/MainWindow.dir/moc_main_window.cxx.o.provides.build

MainWindow/moc_main_widget.cxx: ../MainWindow/main_widget.h
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/mac/MeshDeformer/trunk/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating moc_main_widget.cxx"
	cd /Users/mac/MeshDeformer/trunk/build/MainWindow && /Developer/Tools/Qt/moc -I/usr/include -I/Users/mac/MeshDeformer/trunk/optimized -I/Library/Frameworks/QtCore.framework -I/Users/mac/MeshDeformer/trunk/debug -I/Library/Frameworks/QtOpenGL.framework/Headers -I/Library/Frameworks/QtGui.framework/Headers -I/Library/Frameworks/QtCore.framework/Headers -I/opt/local/include -I/Users/mac/MeshDeformer/trunk/MainWindow -I/Users/mac/MeshDeformer/trunk/MainWindow/optimized -I/Users/mac/MeshDeformer/trunk/MainWindow/debug -DQT_DLL -DQT_OPENGL_LIB -DQT_GUI_LIB -DQT_CORE_LIB -DQT_DLL -DQT_OPENGL_LIB -DQT_GUI_LIB -DQT_CORE_LIB -o /Users/mac/MeshDeformer/trunk/build/MainWindow/moc_main_widget.cxx /Users/mac/MeshDeformer/trunk/MainWindow/main_widget.h

MainWindow/moc_main_window.cxx: ../MainWindow/main_window.h
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/mac/MeshDeformer/trunk/build/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating moc_main_window.cxx"
	cd /Users/mac/MeshDeformer/trunk/build/MainWindow && /Developer/Tools/Qt/moc -I/usr/include -I/Users/mac/MeshDeformer/trunk/optimized -I/Library/Frameworks/QtCore.framework -I/Users/mac/MeshDeformer/trunk/debug -I/Library/Frameworks/QtOpenGL.framework/Headers -I/Library/Frameworks/QtGui.framework/Headers -I/Library/Frameworks/QtCore.framework/Headers -I/opt/local/include -I/Users/mac/MeshDeformer/trunk/MainWindow -I/Users/mac/MeshDeformer/trunk/MainWindow/optimized -I/Users/mac/MeshDeformer/trunk/MainWindow/debug -DQT_DLL -DQT_OPENGL_LIB -DQT_GUI_LIB -DQT_CORE_LIB -DQT_DLL -DQT_OPENGL_LIB -DQT_GUI_LIB -DQT_CORE_LIB -o /Users/mac/MeshDeformer/trunk/build/MainWindow/moc_main_window.cxx /Users/mac/MeshDeformer/trunk/MainWindow/main_window.h

# Object files for target MainWindow
MainWindow_OBJECTS = \
"CMakeFiles/MainWindow.dir/main_window.cpp.o" \
"CMakeFiles/MainWindow.dir/main_widget.cpp.o" \
"CMakeFiles/MainWindow.dir/app_data.cpp.o" \
"CMakeFiles/MainWindow.dir/moc_main_widget.cxx.o" \
"CMakeFiles/MainWindow.dir/moc_main_window.cxx.o"

# External object files for target MainWindow
MainWindow_EXTERNAL_OBJECTS =

lib/libMainWindow.a: MainWindow/CMakeFiles/MainWindow.dir/main_window.cpp.o
lib/libMainWindow.a: MainWindow/CMakeFiles/MainWindow.dir/main_widget.cpp.o
lib/libMainWindow.a: MainWindow/CMakeFiles/MainWindow.dir/app_data.cpp.o
lib/libMainWindow.a: MainWindow/CMakeFiles/MainWindow.dir/moc_main_widget.cxx.o
lib/libMainWindow.a: MainWindow/CMakeFiles/MainWindow.dir/moc_main_window.cxx.o
lib/libMainWindow.a: MainWindow/CMakeFiles/MainWindow.dir/build.make
lib/libMainWindow.a: MainWindow/CMakeFiles/MainWindow.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library ../lib/libMainWindow.a"
	cd /Users/mac/MeshDeformer/trunk/build/MainWindow && $(CMAKE_COMMAND) -P CMakeFiles/MainWindow.dir/cmake_clean_target.cmake
	cd /Users/mac/MeshDeformer/trunk/build/MainWindow && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MainWindow.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
MainWindow/CMakeFiles/MainWindow.dir/build: lib/libMainWindow.a
.PHONY : MainWindow/CMakeFiles/MainWindow.dir/build

MainWindow/CMakeFiles/MainWindow.dir/requires: MainWindow/CMakeFiles/MainWindow.dir/main_window.cpp.o.requires
MainWindow/CMakeFiles/MainWindow.dir/requires: MainWindow/CMakeFiles/MainWindow.dir/main_widget.cpp.o.requires
MainWindow/CMakeFiles/MainWindow.dir/requires: MainWindow/CMakeFiles/MainWindow.dir/app_data.cpp.o.requires
MainWindow/CMakeFiles/MainWindow.dir/requires: MainWindow/CMakeFiles/MainWindow.dir/moc_main_widget.cxx.o.requires
MainWindow/CMakeFiles/MainWindow.dir/requires: MainWindow/CMakeFiles/MainWindow.dir/moc_main_window.cxx.o.requires
.PHONY : MainWindow/CMakeFiles/MainWindow.dir/requires

MainWindow/CMakeFiles/MainWindow.dir/clean:
	cd /Users/mac/MeshDeformer/trunk/build/MainWindow && $(CMAKE_COMMAND) -P CMakeFiles/MainWindow.dir/cmake_clean.cmake
.PHONY : MainWindow/CMakeFiles/MainWindow.dir/clean

MainWindow/CMakeFiles/MainWindow.dir/depend: MainWindow/moc_main_widget.cxx
MainWindow/CMakeFiles/MainWindow.dir/depend: MainWindow/moc_main_window.cxx
	cd /Users/mac/MeshDeformer/trunk/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/mac/MeshDeformer/trunk /Users/mac/MeshDeformer/trunk/MainWindow /Users/mac/MeshDeformer/trunk/build /Users/mac/MeshDeformer/trunk/build/MainWindow /Users/mac/MeshDeformer/trunk/build/MainWindow/CMakeFiles/MainWindow.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : MainWindow/CMakeFiles/MainWindow.dir/depend

