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
CMAKE_SOURCE_DIR = /root/geant4-exercises/B4a

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/geant4-exercises/B4a-build

# Include any dependencies generated for this target.
include CMakeFiles/exampleB4a.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/exampleB4a.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/exampleB4a.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/exampleB4a.dir/flags.make

CMakeFiles/exampleB4a.dir/codegen:
.PHONY : CMakeFiles/exampleB4a.dir/codegen

CMakeFiles/exampleB4a.dir/exampleB4a.cc.o: CMakeFiles/exampleB4a.dir/flags.make
CMakeFiles/exampleB4a.dir/exampleB4a.cc.o: /root/geant4-exercises/B4a/exampleB4a.cc
CMakeFiles/exampleB4a.dir/exampleB4a.cc.o: CMakeFiles/exampleB4a.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/root/geant4-exercises/B4a-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/exampleB4a.dir/exampleB4a.cc.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/exampleB4a.dir/exampleB4a.cc.o -MF CMakeFiles/exampleB4a.dir/exampleB4a.cc.o.d -o CMakeFiles/exampleB4a.dir/exampleB4a.cc.o -c /root/geant4-exercises/B4a/exampleB4a.cc

CMakeFiles/exampleB4a.dir/exampleB4a.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/exampleB4a.dir/exampleB4a.cc.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/geant4-exercises/B4a/exampleB4a.cc > CMakeFiles/exampleB4a.dir/exampleB4a.cc.i

CMakeFiles/exampleB4a.dir/exampleB4a.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/exampleB4a.dir/exampleB4a.cc.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/geant4-exercises/B4a/exampleB4a.cc -o CMakeFiles/exampleB4a.dir/exampleB4a.cc.s

CMakeFiles/exampleB4a.dir/src/ActionInitialization.cc.o: CMakeFiles/exampleB4a.dir/flags.make
CMakeFiles/exampleB4a.dir/src/ActionInitialization.cc.o: /root/geant4-exercises/B4a/src/ActionInitialization.cc
CMakeFiles/exampleB4a.dir/src/ActionInitialization.cc.o: CMakeFiles/exampleB4a.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/root/geant4-exercises/B4a-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/exampleB4a.dir/src/ActionInitialization.cc.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/exampleB4a.dir/src/ActionInitialization.cc.o -MF CMakeFiles/exampleB4a.dir/src/ActionInitialization.cc.o.d -o CMakeFiles/exampleB4a.dir/src/ActionInitialization.cc.o -c /root/geant4-exercises/B4a/src/ActionInitialization.cc

CMakeFiles/exampleB4a.dir/src/ActionInitialization.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/exampleB4a.dir/src/ActionInitialization.cc.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/geant4-exercises/B4a/src/ActionInitialization.cc > CMakeFiles/exampleB4a.dir/src/ActionInitialization.cc.i

CMakeFiles/exampleB4a.dir/src/ActionInitialization.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/exampleB4a.dir/src/ActionInitialization.cc.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/geant4-exercises/B4a/src/ActionInitialization.cc -o CMakeFiles/exampleB4a.dir/src/ActionInitialization.cc.s

CMakeFiles/exampleB4a.dir/src/DetectorConstruction.cc.o: CMakeFiles/exampleB4a.dir/flags.make
CMakeFiles/exampleB4a.dir/src/DetectorConstruction.cc.o: /root/geant4-exercises/B4a/src/DetectorConstruction.cc
CMakeFiles/exampleB4a.dir/src/DetectorConstruction.cc.o: CMakeFiles/exampleB4a.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/root/geant4-exercises/B4a-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/exampleB4a.dir/src/DetectorConstruction.cc.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/exampleB4a.dir/src/DetectorConstruction.cc.o -MF CMakeFiles/exampleB4a.dir/src/DetectorConstruction.cc.o.d -o CMakeFiles/exampleB4a.dir/src/DetectorConstruction.cc.o -c /root/geant4-exercises/B4a/src/DetectorConstruction.cc

CMakeFiles/exampleB4a.dir/src/DetectorConstruction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/exampleB4a.dir/src/DetectorConstruction.cc.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/geant4-exercises/B4a/src/DetectorConstruction.cc > CMakeFiles/exampleB4a.dir/src/DetectorConstruction.cc.i

CMakeFiles/exampleB4a.dir/src/DetectorConstruction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/exampleB4a.dir/src/DetectorConstruction.cc.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/geant4-exercises/B4a/src/DetectorConstruction.cc -o CMakeFiles/exampleB4a.dir/src/DetectorConstruction.cc.s

CMakeFiles/exampleB4a.dir/src/EventAction.cc.o: CMakeFiles/exampleB4a.dir/flags.make
CMakeFiles/exampleB4a.dir/src/EventAction.cc.o: /root/geant4-exercises/B4a/src/EventAction.cc
CMakeFiles/exampleB4a.dir/src/EventAction.cc.o: CMakeFiles/exampleB4a.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/root/geant4-exercises/B4a-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/exampleB4a.dir/src/EventAction.cc.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/exampleB4a.dir/src/EventAction.cc.o -MF CMakeFiles/exampleB4a.dir/src/EventAction.cc.o.d -o CMakeFiles/exampleB4a.dir/src/EventAction.cc.o -c /root/geant4-exercises/B4a/src/EventAction.cc

CMakeFiles/exampleB4a.dir/src/EventAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/exampleB4a.dir/src/EventAction.cc.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/geant4-exercises/B4a/src/EventAction.cc > CMakeFiles/exampleB4a.dir/src/EventAction.cc.i

CMakeFiles/exampleB4a.dir/src/EventAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/exampleB4a.dir/src/EventAction.cc.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/geant4-exercises/B4a/src/EventAction.cc -o CMakeFiles/exampleB4a.dir/src/EventAction.cc.s

CMakeFiles/exampleB4a.dir/src/PrimaryGeneratorAction.cc.o: CMakeFiles/exampleB4a.dir/flags.make
CMakeFiles/exampleB4a.dir/src/PrimaryGeneratorAction.cc.o: /root/geant4-exercises/B4a/src/PrimaryGeneratorAction.cc
CMakeFiles/exampleB4a.dir/src/PrimaryGeneratorAction.cc.o: CMakeFiles/exampleB4a.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/root/geant4-exercises/B4a-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/exampleB4a.dir/src/PrimaryGeneratorAction.cc.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/exampleB4a.dir/src/PrimaryGeneratorAction.cc.o -MF CMakeFiles/exampleB4a.dir/src/PrimaryGeneratorAction.cc.o.d -o CMakeFiles/exampleB4a.dir/src/PrimaryGeneratorAction.cc.o -c /root/geant4-exercises/B4a/src/PrimaryGeneratorAction.cc

CMakeFiles/exampleB4a.dir/src/PrimaryGeneratorAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/exampleB4a.dir/src/PrimaryGeneratorAction.cc.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/geant4-exercises/B4a/src/PrimaryGeneratorAction.cc > CMakeFiles/exampleB4a.dir/src/PrimaryGeneratorAction.cc.i

CMakeFiles/exampleB4a.dir/src/PrimaryGeneratorAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/exampleB4a.dir/src/PrimaryGeneratorAction.cc.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/geant4-exercises/B4a/src/PrimaryGeneratorAction.cc -o CMakeFiles/exampleB4a.dir/src/PrimaryGeneratorAction.cc.s

CMakeFiles/exampleB4a.dir/src/RunAction.cc.o: CMakeFiles/exampleB4a.dir/flags.make
CMakeFiles/exampleB4a.dir/src/RunAction.cc.o: /root/geant4-exercises/B4a/src/RunAction.cc
CMakeFiles/exampleB4a.dir/src/RunAction.cc.o: CMakeFiles/exampleB4a.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/root/geant4-exercises/B4a-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/exampleB4a.dir/src/RunAction.cc.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/exampleB4a.dir/src/RunAction.cc.o -MF CMakeFiles/exampleB4a.dir/src/RunAction.cc.o.d -o CMakeFiles/exampleB4a.dir/src/RunAction.cc.o -c /root/geant4-exercises/B4a/src/RunAction.cc

CMakeFiles/exampleB4a.dir/src/RunAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/exampleB4a.dir/src/RunAction.cc.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/geant4-exercises/B4a/src/RunAction.cc > CMakeFiles/exampleB4a.dir/src/RunAction.cc.i

CMakeFiles/exampleB4a.dir/src/RunAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/exampleB4a.dir/src/RunAction.cc.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/geant4-exercises/B4a/src/RunAction.cc -o CMakeFiles/exampleB4a.dir/src/RunAction.cc.s

CMakeFiles/exampleB4a.dir/src/SteppingAction.cc.o: CMakeFiles/exampleB4a.dir/flags.make
CMakeFiles/exampleB4a.dir/src/SteppingAction.cc.o: /root/geant4-exercises/B4a/src/SteppingAction.cc
CMakeFiles/exampleB4a.dir/src/SteppingAction.cc.o: CMakeFiles/exampleB4a.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/root/geant4-exercises/B4a-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/exampleB4a.dir/src/SteppingAction.cc.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/exampleB4a.dir/src/SteppingAction.cc.o -MF CMakeFiles/exampleB4a.dir/src/SteppingAction.cc.o.d -o CMakeFiles/exampleB4a.dir/src/SteppingAction.cc.o -c /root/geant4-exercises/B4a/src/SteppingAction.cc

CMakeFiles/exampleB4a.dir/src/SteppingAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/exampleB4a.dir/src/SteppingAction.cc.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/geant4-exercises/B4a/src/SteppingAction.cc > CMakeFiles/exampleB4a.dir/src/SteppingAction.cc.i

CMakeFiles/exampleB4a.dir/src/SteppingAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/exampleB4a.dir/src/SteppingAction.cc.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/geant4-exercises/B4a/src/SteppingAction.cc -o CMakeFiles/exampleB4a.dir/src/SteppingAction.cc.s

# Object files for target exampleB4a
exampleB4a_OBJECTS = \
"CMakeFiles/exampleB4a.dir/exampleB4a.cc.o" \
"CMakeFiles/exampleB4a.dir/src/ActionInitialization.cc.o" \
"CMakeFiles/exampleB4a.dir/src/DetectorConstruction.cc.o" \
"CMakeFiles/exampleB4a.dir/src/EventAction.cc.o" \
"CMakeFiles/exampleB4a.dir/src/PrimaryGeneratorAction.cc.o" \
"CMakeFiles/exampleB4a.dir/src/RunAction.cc.o" \
"CMakeFiles/exampleB4a.dir/src/SteppingAction.cc.o"

# External object files for target exampleB4a
exampleB4a_EXTERNAL_OBJECTS =

exampleB4a: CMakeFiles/exampleB4a.dir/exampleB4a.cc.o
exampleB4a: CMakeFiles/exampleB4a.dir/src/ActionInitialization.cc.o
exampleB4a: CMakeFiles/exampleB4a.dir/src/DetectorConstruction.cc.o
exampleB4a: CMakeFiles/exampleB4a.dir/src/EventAction.cc.o
exampleB4a: CMakeFiles/exampleB4a.dir/src/PrimaryGeneratorAction.cc.o
exampleB4a: CMakeFiles/exampleB4a.dir/src/RunAction.cc.o
exampleB4a: CMakeFiles/exampleB4a.dir/src/SteppingAction.cc.o
exampleB4a: CMakeFiles/exampleB4a.dir/build.make
exampleB4a: /opt/geant4/lib/libG4Tree.so
exampleB4a: /opt/geant4/lib/libG4FR.so
exampleB4a: /opt/geant4/lib/libG4GMocren.so
exampleB4a: /opt/geant4/lib/libG4visHepRep.so
exampleB4a: /opt/geant4/lib/libG4RayTracer.so
exampleB4a: /opt/geant4/lib/libG4VRML.so
exampleB4a: /opt/geant4/lib/libG4ToolsSG.so
exampleB4a: /opt/geant4/lib/libG4OpenGL.so
exampleB4a: /opt/geant4/lib/libG4visQt3D.so
exampleB4a: /opt/geant4/lib/libG4vis_management.so
exampleB4a: /opt/geant4/lib/libG4modeling.so
exampleB4a: /opt/geant4/lib/libG4interfaces.so
exampleB4a: /opt/geant4/lib/libG4mctruth.so
exampleB4a: /opt/geant4/lib/libG4geomtext.so
exampleB4a: /opt/geant4/lib/libG4gdml.so
exampleB4a: /opt/geant4/lib/libG4error_propagation.so
exampleB4a: /opt/geant4/lib/libG4readout.so
exampleB4a: /opt/geant4/lib/libG4physicslists.so
exampleB4a: /opt/geant4/lib/libG4run.so
exampleB4a: /opt/geant4/lib/libG4event.so
exampleB4a: /opt/geant4/lib/libG4tracking.so
exampleB4a: /opt/geant4/lib/libG4parmodels.so
exampleB4a: /opt/geant4/lib/libG4processes.so
exampleB4a: /opt/geant4/lib/libG4digits_hits.so
exampleB4a: /opt/geant4/lib/libG4track.so
exampleB4a: /opt/geant4/lib/libG4particles.so
exampleB4a: /opt/geant4/lib/libG4geometry.so
exampleB4a: /opt/geant4/lib/libG4materials.so
exampleB4a: /opt/geant4/lib/libG4graphics_reps.so
exampleB4a: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.15.3
exampleB4a: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.15.3
exampleB4a: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.15.3
exampleB4a: /usr/lib/x86_64-linux-gnu/libxerces-c.so
exampleB4a: /opt/geant4/lib/libG4analysis.so
exampleB4a: /usr/lib/x86_64-linux-gnu/libexpat.so
exampleB4a: /opt/geant4/lib/libG4zlib.so
exampleB4a: /opt/geant4/lib/libG4intercoms.so
exampleB4a: /opt/geant4/lib/libG4global.so
exampleB4a: /opt/geant4/lib/libG4clhep.so
exampleB4a: /opt/geant4/lib/libG4ptl.so.3.0.0
exampleB4a: CMakeFiles/exampleB4a.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/root/geant4-exercises/B4a-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable exampleB4a"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/exampleB4a.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/exampleB4a.dir/build: exampleB4a
.PHONY : CMakeFiles/exampleB4a.dir/build

CMakeFiles/exampleB4a.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/exampleB4a.dir/cmake_clean.cmake
.PHONY : CMakeFiles/exampleB4a.dir/clean

CMakeFiles/exampleB4a.dir/depend:
	cd /root/geant4-exercises/B4a-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/geant4-exercises/B4a /root/geant4-exercises/B4a /root/geant4-exercises/B4a-build /root/geant4-exercises/B4a-build /root/geant4-exercises/B4a-build/CMakeFiles/exampleB4a.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/exampleB4a.dir/depend

