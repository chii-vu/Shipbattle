# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.24.3/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.24.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/minh/A5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/minh/A5

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/local/Cellar/cmake/3.24.3/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/local/Cellar/cmake/3.24.3/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/minh/A5/CMakeFiles /Users/minh/A5//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/minh/A5/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named rn

# Build rule for target.
rn: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 rn
.PHONY : rn

# fast build rule for target.
rn/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/rn.dir/build.make CMakeFiles/rn.dir/build
.PHONY : rn/fast

#=============================================================================
# Target rules for targets named shipbattle

# Build rule for target.
shipbattle: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 shipbattle
.PHONY : shipbattle

# fast build rule for target.
shipbattle/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/shipbattle.dir/build.make CMakeFiles/shipbattle.dir/build
.PHONY : shipbattle/fast

gameboard.o: gameboard.c.o
.PHONY : gameboard.o

# target to build an object file
gameboard.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/shipbattle.dir/build.make CMakeFiles/shipbattle.dir/gameboard.c.o
.PHONY : gameboard.c.o

gameboard.i: gameboard.c.i
.PHONY : gameboard.i

# target to preprocess a source file
gameboard.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/shipbattle.dir/build.make CMakeFiles/shipbattle.dir/gameboard.c.i
.PHONY : gameboard.c.i

gameboard.s: gameboard.c.s
.PHONY : gameboard.s

# target to generate assembly for a file
gameboard.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/shipbattle.dir/build.make CMakeFiles/shipbattle.dir/gameboard.c.s
.PHONY : gameboard.c.s

gameplay.o: gameplay.c.o
.PHONY : gameplay.o

# target to build an object file
gameplay.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/shipbattle.dir/build.make CMakeFiles/shipbattle.dir/gameplay.c.o
.PHONY : gameplay.c.o

gameplay.i: gameplay.c.i
.PHONY : gameplay.i

# target to preprocess a source file
gameplay.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/shipbattle.dir/build.make CMakeFiles/shipbattle.dir/gameplay.c.i
.PHONY : gameplay.c.i

gameplay.s: gameplay.c.s
.PHONY : gameplay.s

# target to generate assembly for a file
gameplay.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/shipbattle.dir/build.make CMakeFiles/shipbattle.dir/gameplay.c.s
.PHONY : gameplay.c.s

rand_num.o: rand_num.c.o
.PHONY : rand_num.o

# target to build an object file
rand_num.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/rn.dir/build.make CMakeFiles/rn.dir/rand_num.c.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/shipbattle.dir/build.make CMakeFiles/shipbattle.dir/rand_num.c.o
.PHONY : rand_num.c.o

rand_num.i: rand_num.c.i
.PHONY : rand_num.i

# target to preprocess a source file
rand_num.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/rn.dir/build.make CMakeFiles/rn.dir/rand_num.c.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/shipbattle.dir/build.make CMakeFiles/shipbattle.dir/rand_num.c.i
.PHONY : rand_num.c.i

rand_num.s: rand_num.c.s
.PHONY : rand_num.s

# target to generate assembly for a file
rand_num.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/rn.dir/build.make CMakeFiles/rn.dir/rand_num.c.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/shipbattle.dir/build.make CMakeFiles/shipbattle.dir/rand_num.c.s
.PHONY : rand_num.c.s

shipbattle.o: shipbattle.c.o
.PHONY : shipbattle.o

# target to build an object file
shipbattle.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/shipbattle.dir/build.make CMakeFiles/shipbattle.dir/shipbattle.c.o
.PHONY : shipbattle.c.o

shipbattle.i: shipbattle.c.i
.PHONY : shipbattle.i

# target to preprocess a source file
shipbattle.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/shipbattle.dir/build.make CMakeFiles/shipbattle.dir/shipbattle.c.i
.PHONY : shipbattle.c.i

shipbattle.s: shipbattle.c.s
.PHONY : shipbattle.s

# target to generate assembly for a file
shipbattle.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/shipbattle.dir/build.make CMakeFiles/shipbattle.dir/shipbattle.c.s
.PHONY : shipbattle.c.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... rn"
	@echo "... shipbattle"
	@echo "... gameboard.o"
	@echo "... gameboard.i"
	@echo "... gameboard.s"
	@echo "... gameplay.o"
	@echo "... gameplay.i"
	@echo "... gameplay.s"
	@echo "... rand_num.o"
	@echo "... rand_num.i"
	@echo "... rand_num.s"
	@echo "... shipbattle.o"
	@echo "... shipbattle.i"
	@echo "... shipbattle.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system
