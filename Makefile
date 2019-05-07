# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/6im1/cchassig/Documents/OpenGL/Projet/imac-soutien-tower-defense-master/code

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/6im1/cchassig/Documents/OpenGL/Projet/imac-soutien-tower-defense-master/code

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/6im1/cchassig/Documents/OpenGL/Projet/imac-soutien-tower-defense-master/code/CMakeFiles /home/6im1/cchassig/Documents/OpenGL/Projet/imac-soutien-tower-defense-master/code/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/6im1/cchassig/Documents/OpenGL/Projet/imac-soutien-tower-defense-master/code/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named IMGUI

# Build rule for target.
IMGUI: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 IMGUI
.PHONY : IMGUI

# fast build rule for target.
IMGUI/fast:
	$(MAKE) -f CMakeFiles/IMGUI.dir/build.make CMakeFiles/IMGUI.dir/build
.PHONY : IMGUI/fast

#=============================================================================
# Target rules for targets named imac-soutien-tower-defense

# Build rule for target.
imac-soutien-tower-defense: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 imac-soutien-tower-defense
.PHONY : imac-soutien-tower-defense

# fast build rule for target.
imac-soutien-tower-defense/fast:
	$(MAKE) -f CMakeFiles/imac-soutien-tower-defense.dir/build.make CMakeFiles/imac-soutien-tower-defense.dir/build
.PHONY : imac-soutien-tower-defense/fast

#=============================================================================
# Target rules for targets named STB_IMAGE

# Build rule for target.
STB_IMAGE: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 STB_IMAGE
.PHONY : STB_IMAGE

# fast build rule for target.
STB_IMAGE/fast:
	$(MAKE) -f CMakeFiles/STB_IMAGE.dir/build.make CMakeFiles/STB_IMAGE.dir/build
.PHONY : STB_IMAGE/fast

#=============================================================================
# Target rules for targets named GLAD

# Build rule for target.
GLAD: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 GLAD
.PHONY : GLAD

# fast build rule for target.
GLAD/fast:
	$(MAKE) -f CMakeFiles/GLAD.dir/build.make CMakeFiles/GLAD.dir/build
.PHONY : GLAD/fast

lib/glad/src/glad.o: lib/glad/src/glad.c.o

.PHONY : lib/glad/src/glad.o

# target to build an object file
lib/glad/src/glad.c.o:
	$(MAKE) -f CMakeFiles/GLAD.dir/build.make CMakeFiles/GLAD.dir/lib/glad/src/glad.c.o
.PHONY : lib/glad/src/glad.c.o

lib/glad/src/glad.i: lib/glad/src/glad.c.i

.PHONY : lib/glad/src/glad.i

# target to preprocess a source file
lib/glad/src/glad.c.i:
	$(MAKE) -f CMakeFiles/GLAD.dir/build.make CMakeFiles/GLAD.dir/lib/glad/src/glad.c.i
.PHONY : lib/glad/src/glad.c.i

lib/glad/src/glad.s: lib/glad/src/glad.c.s

.PHONY : lib/glad/src/glad.s

# target to generate assembly for a file
lib/glad/src/glad.c.s:
	$(MAKE) -f CMakeFiles/GLAD.dir/build.make CMakeFiles/GLAD.dir/lib/glad/src/glad.c.s
.PHONY : lib/glad/src/glad.c.s

lib/imgui/imgui.o: lib/imgui/imgui.cpp.o

.PHONY : lib/imgui/imgui.o

# target to build an object file
lib/imgui/imgui.cpp.o:
	$(MAKE) -f CMakeFiles/IMGUI.dir/build.make CMakeFiles/IMGUI.dir/lib/imgui/imgui.cpp.o
.PHONY : lib/imgui/imgui.cpp.o

lib/imgui/imgui.i: lib/imgui/imgui.cpp.i

.PHONY : lib/imgui/imgui.i

# target to preprocess a source file
lib/imgui/imgui.cpp.i:
	$(MAKE) -f CMakeFiles/IMGUI.dir/build.make CMakeFiles/IMGUI.dir/lib/imgui/imgui.cpp.i
.PHONY : lib/imgui/imgui.cpp.i

lib/imgui/imgui.s: lib/imgui/imgui.cpp.s

.PHONY : lib/imgui/imgui.s

# target to generate assembly for a file
lib/imgui/imgui.cpp.s:
	$(MAKE) -f CMakeFiles/IMGUI.dir/build.make CMakeFiles/IMGUI.dir/lib/imgui/imgui.cpp.s
.PHONY : lib/imgui/imgui.cpp.s

lib/imgui/imgui_demo.o: lib/imgui/imgui_demo.cpp.o

.PHONY : lib/imgui/imgui_demo.o

# target to build an object file
lib/imgui/imgui_demo.cpp.o:
	$(MAKE) -f CMakeFiles/IMGUI.dir/build.make CMakeFiles/IMGUI.dir/lib/imgui/imgui_demo.cpp.o
.PHONY : lib/imgui/imgui_demo.cpp.o

lib/imgui/imgui_demo.i: lib/imgui/imgui_demo.cpp.i

.PHONY : lib/imgui/imgui_demo.i

# target to preprocess a source file
lib/imgui/imgui_demo.cpp.i:
	$(MAKE) -f CMakeFiles/IMGUI.dir/build.make CMakeFiles/IMGUI.dir/lib/imgui/imgui_demo.cpp.i
.PHONY : lib/imgui/imgui_demo.cpp.i

lib/imgui/imgui_demo.s: lib/imgui/imgui_demo.cpp.s

.PHONY : lib/imgui/imgui_demo.s

# target to generate assembly for a file
lib/imgui/imgui_demo.cpp.s:
	$(MAKE) -f CMakeFiles/IMGUI.dir/build.make CMakeFiles/IMGUI.dir/lib/imgui/imgui_demo.cpp.s
.PHONY : lib/imgui/imgui_demo.cpp.s

lib/imgui/imgui_draw.o: lib/imgui/imgui_draw.cpp.o

.PHONY : lib/imgui/imgui_draw.o

# target to build an object file
lib/imgui/imgui_draw.cpp.o:
	$(MAKE) -f CMakeFiles/IMGUI.dir/build.make CMakeFiles/IMGUI.dir/lib/imgui/imgui_draw.cpp.o
.PHONY : lib/imgui/imgui_draw.cpp.o

lib/imgui/imgui_draw.i: lib/imgui/imgui_draw.cpp.i

.PHONY : lib/imgui/imgui_draw.i

# target to preprocess a source file
lib/imgui/imgui_draw.cpp.i:
	$(MAKE) -f CMakeFiles/IMGUI.dir/build.make CMakeFiles/IMGUI.dir/lib/imgui/imgui_draw.cpp.i
.PHONY : lib/imgui/imgui_draw.cpp.i

lib/imgui/imgui_draw.s: lib/imgui/imgui_draw.cpp.s

.PHONY : lib/imgui/imgui_draw.s

# target to generate assembly for a file
lib/imgui/imgui_draw.cpp.s:
	$(MAKE) -f CMakeFiles/IMGUI.dir/build.make CMakeFiles/IMGUI.dir/lib/imgui/imgui_draw.cpp.s
.PHONY : lib/imgui/imgui_draw.cpp.s

lib/imgui/imgui_impl_opengl3.o: lib/imgui/imgui_impl_opengl3.cpp.o

.PHONY : lib/imgui/imgui_impl_opengl3.o

# target to build an object file
lib/imgui/imgui_impl_opengl3.cpp.o:
	$(MAKE) -f CMakeFiles/IMGUI.dir/build.make CMakeFiles/IMGUI.dir/lib/imgui/imgui_impl_opengl3.cpp.o
.PHONY : lib/imgui/imgui_impl_opengl3.cpp.o

lib/imgui/imgui_impl_opengl3.i: lib/imgui/imgui_impl_opengl3.cpp.i

.PHONY : lib/imgui/imgui_impl_opengl3.i

# target to preprocess a source file
lib/imgui/imgui_impl_opengl3.cpp.i:
	$(MAKE) -f CMakeFiles/IMGUI.dir/build.make CMakeFiles/IMGUI.dir/lib/imgui/imgui_impl_opengl3.cpp.i
.PHONY : lib/imgui/imgui_impl_opengl3.cpp.i

lib/imgui/imgui_impl_opengl3.s: lib/imgui/imgui_impl_opengl3.cpp.s

.PHONY : lib/imgui/imgui_impl_opengl3.s

# target to generate assembly for a file
lib/imgui/imgui_impl_opengl3.cpp.s:
	$(MAKE) -f CMakeFiles/IMGUI.dir/build.make CMakeFiles/IMGUI.dir/lib/imgui/imgui_impl_opengl3.cpp.s
.PHONY : lib/imgui/imgui_impl_opengl3.cpp.s

lib/imgui/imgui_impl_sdl.o: lib/imgui/imgui_impl_sdl.cpp.o

.PHONY : lib/imgui/imgui_impl_sdl.o

# target to build an object file
lib/imgui/imgui_impl_sdl.cpp.o:
	$(MAKE) -f CMakeFiles/IMGUI.dir/build.make CMakeFiles/IMGUI.dir/lib/imgui/imgui_impl_sdl.cpp.o
.PHONY : lib/imgui/imgui_impl_sdl.cpp.o

lib/imgui/imgui_impl_sdl.i: lib/imgui/imgui_impl_sdl.cpp.i

.PHONY : lib/imgui/imgui_impl_sdl.i

# target to preprocess a source file
lib/imgui/imgui_impl_sdl.cpp.i:
	$(MAKE) -f CMakeFiles/IMGUI.dir/build.make CMakeFiles/IMGUI.dir/lib/imgui/imgui_impl_sdl.cpp.i
.PHONY : lib/imgui/imgui_impl_sdl.cpp.i

lib/imgui/imgui_impl_sdl.s: lib/imgui/imgui_impl_sdl.cpp.s

.PHONY : lib/imgui/imgui_impl_sdl.s

# target to generate assembly for a file
lib/imgui/imgui_impl_sdl.cpp.s:
	$(MAKE) -f CMakeFiles/IMGUI.dir/build.make CMakeFiles/IMGUI.dir/lib/imgui/imgui_impl_sdl.cpp.s
.PHONY : lib/imgui/imgui_impl_sdl.cpp.s

lib/imgui/imgui_widgets.o: lib/imgui/imgui_widgets.cpp.o

.PHONY : lib/imgui/imgui_widgets.o

# target to build an object file
lib/imgui/imgui_widgets.cpp.o:
	$(MAKE) -f CMakeFiles/IMGUI.dir/build.make CMakeFiles/IMGUI.dir/lib/imgui/imgui_widgets.cpp.o
.PHONY : lib/imgui/imgui_widgets.cpp.o

lib/imgui/imgui_widgets.i: lib/imgui/imgui_widgets.cpp.i

.PHONY : lib/imgui/imgui_widgets.i

# target to preprocess a source file
lib/imgui/imgui_widgets.cpp.i:
	$(MAKE) -f CMakeFiles/IMGUI.dir/build.make CMakeFiles/IMGUI.dir/lib/imgui/imgui_widgets.cpp.i
.PHONY : lib/imgui/imgui_widgets.cpp.i

lib/imgui/imgui_widgets.s: lib/imgui/imgui_widgets.cpp.s

.PHONY : lib/imgui/imgui_widgets.s

# target to generate assembly for a file
lib/imgui/imgui_widgets.cpp.s:
	$(MAKE) -f CMakeFiles/IMGUI.dir/build.make CMakeFiles/IMGUI.dir/lib/imgui/imgui_widgets.cpp.s
.PHONY : lib/imgui/imgui_widgets.cpp.s

lib/stb_image/stb_image.o: lib/stb_image/stb_image.cpp.o

.PHONY : lib/stb_image/stb_image.o

# target to build an object file
lib/stb_image/stb_image.cpp.o:
	$(MAKE) -f CMakeFiles/STB_IMAGE.dir/build.make CMakeFiles/STB_IMAGE.dir/lib/stb_image/stb_image.cpp.o
.PHONY : lib/stb_image/stb_image.cpp.o

lib/stb_image/stb_image.i: lib/stb_image/stb_image.cpp.i

.PHONY : lib/stb_image/stb_image.i

# target to preprocess a source file
lib/stb_image/stb_image.cpp.i:
	$(MAKE) -f CMakeFiles/STB_IMAGE.dir/build.make CMakeFiles/STB_IMAGE.dir/lib/stb_image/stb_image.cpp.i
.PHONY : lib/stb_image/stb_image.cpp.i

lib/stb_image/stb_image.s: lib/stb_image/stb_image.cpp.s

.PHONY : lib/stb_image/stb_image.s

# target to generate assembly for a file
lib/stb_image/stb_image.cpp.s:
	$(MAKE) -f CMakeFiles/STB_IMAGE.dir/build.make CMakeFiles/STB_IMAGE.dir/lib/stb_image/stb_image.cpp.s
.PHONY : lib/stb_image/stb_image.cpp.s

src/core/debug-draw.o: src/core/debug-draw.cpp.o

.PHONY : src/core/debug-draw.o

# target to build an object file
src/core/debug-draw.cpp.o:
	$(MAKE) -f CMakeFiles/imac-soutien-tower-defense.dir/build.make CMakeFiles/imac-soutien-tower-defense.dir/src/core/debug-draw.cpp.o
.PHONY : src/core/debug-draw.cpp.o

src/core/debug-draw.i: src/core/debug-draw.cpp.i

.PHONY : src/core/debug-draw.i

# target to preprocess a source file
src/core/debug-draw.cpp.i:
	$(MAKE) -f CMakeFiles/imac-soutien-tower-defense.dir/build.make CMakeFiles/imac-soutien-tower-defense.dir/src/core/debug-draw.cpp.i
.PHONY : src/core/debug-draw.cpp.i

src/core/debug-draw.s: src/core/debug-draw.cpp.s

.PHONY : src/core/debug-draw.s

# target to generate assembly for a file
src/core/debug-draw.cpp.s:
	$(MAKE) -f CMakeFiles/imac-soutien-tower-defense.dir/build.make CMakeFiles/imac-soutien-tower-defense.dir/src/core/debug-draw.cpp.s
.PHONY : src/core/debug-draw.cpp.s

src/core/gl-log-handler.o: src/core/gl-log-handler.cpp.o

.PHONY : src/core/gl-log-handler.o

# target to build an object file
src/core/gl-log-handler.cpp.o:
	$(MAKE) -f CMakeFiles/imac-soutien-tower-defense.dir/build.make CMakeFiles/imac-soutien-tower-defense.dir/src/core/gl-log-handler.cpp.o
.PHONY : src/core/gl-log-handler.cpp.o

src/core/gl-log-handler.i: src/core/gl-log-handler.cpp.i

.PHONY : src/core/gl-log-handler.i

# target to preprocess a source file
src/core/gl-log-handler.cpp.i:
	$(MAKE) -f CMakeFiles/imac-soutien-tower-defense.dir/build.make CMakeFiles/imac-soutien-tower-defense.dir/src/core/gl-log-handler.cpp.i
.PHONY : src/core/gl-log-handler.cpp.i

src/core/gl-log-handler.s: src/core/gl-log-handler.cpp.s

.PHONY : src/core/gl-log-handler.s

# target to generate assembly for a file
src/core/gl-log-handler.cpp.s:
	$(MAKE) -f CMakeFiles/imac-soutien-tower-defense.dir/build.make CMakeFiles/imac-soutien-tower-defense.dir/src/core/gl-log-handler.cpp.s
.PHONY : src/core/gl-log-handler.cpp.s

src/tutos/0-empty/entity.o: src/tutos/0-empty/entity.cpp.o

.PHONY : src/tutos/0-empty/entity.o

# target to build an object file
src/tutos/0-empty/entity.cpp.o:
	$(MAKE) -f CMakeFiles/imac-soutien-tower-defense.dir/build.make CMakeFiles/imac-soutien-tower-defense.dir/src/tutos/0-empty/entity.cpp.o
.PHONY : src/tutos/0-empty/entity.cpp.o

src/tutos/0-empty/entity.i: src/tutos/0-empty/entity.cpp.i

.PHONY : src/tutos/0-empty/entity.i

# target to preprocess a source file
src/tutos/0-empty/entity.cpp.i:
	$(MAKE) -f CMakeFiles/imac-soutien-tower-defense.dir/build.make CMakeFiles/imac-soutien-tower-defense.dir/src/tutos/0-empty/entity.cpp.i
.PHONY : src/tutos/0-empty/entity.cpp.i

src/tutos/0-empty/entity.s: src/tutos/0-empty/entity.cpp.s

.PHONY : src/tutos/0-empty/entity.s

# target to generate assembly for a file
src/tutos/0-empty/entity.cpp.s:
	$(MAKE) -f CMakeFiles/imac-soutien-tower-defense.dir/build.make CMakeFiles/imac-soutien-tower-defense.dir/src/tutos/0-empty/entity.cpp.s
.PHONY : src/tutos/0-empty/entity.cpp.s

src/tutos/0-empty/main.o: src/tutos/0-empty/main.cpp.o

.PHONY : src/tutos/0-empty/main.o

# target to build an object file
src/tutos/0-empty/main.cpp.o:
	$(MAKE) -f CMakeFiles/imac-soutien-tower-defense.dir/build.make CMakeFiles/imac-soutien-tower-defense.dir/src/tutos/0-empty/main.cpp.o
.PHONY : src/tutos/0-empty/main.cpp.o

src/tutos/0-empty/main.i: src/tutos/0-empty/main.cpp.i

.PHONY : src/tutos/0-empty/main.i

# target to preprocess a source file
src/tutos/0-empty/main.cpp.i:
	$(MAKE) -f CMakeFiles/imac-soutien-tower-defense.dir/build.make CMakeFiles/imac-soutien-tower-defense.dir/src/tutos/0-empty/main.cpp.i
.PHONY : src/tutos/0-empty/main.cpp.i

src/tutos/0-empty/main.s: src/tutos/0-empty/main.cpp.s

.PHONY : src/tutos/0-empty/main.s

# target to generate assembly for a file
src/tutos/0-empty/main.cpp.s:
	$(MAKE) -f CMakeFiles/imac-soutien-tower-defense.dir/build.make CMakeFiles/imac-soutien-tower-defense.dir/src/tutos/0-empty/main.cpp.s
.PHONY : src/tutos/0-empty/main.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... IMGUI"
	@echo "... imac-soutien-tower-defense"
	@echo "... rebuild_cache"
	@echo "... STB_IMAGE"
	@echo "... GLAD"
	@echo "... lib/glad/src/glad.o"
	@echo "... lib/glad/src/glad.i"
	@echo "... lib/glad/src/glad.s"
	@echo "... lib/imgui/imgui.o"
	@echo "... lib/imgui/imgui.i"
	@echo "... lib/imgui/imgui.s"
	@echo "... lib/imgui/imgui_demo.o"
	@echo "... lib/imgui/imgui_demo.i"
	@echo "... lib/imgui/imgui_demo.s"
	@echo "... lib/imgui/imgui_draw.o"
	@echo "... lib/imgui/imgui_draw.i"
	@echo "... lib/imgui/imgui_draw.s"
	@echo "... lib/imgui/imgui_impl_opengl3.o"
	@echo "... lib/imgui/imgui_impl_opengl3.i"
	@echo "... lib/imgui/imgui_impl_opengl3.s"
	@echo "... lib/imgui/imgui_impl_sdl.o"
	@echo "... lib/imgui/imgui_impl_sdl.i"
	@echo "... lib/imgui/imgui_impl_sdl.s"
	@echo "... lib/imgui/imgui_widgets.o"
	@echo "... lib/imgui/imgui_widgets.i"
	@echo "... lib/imgui/imgui_widgets.s"
	@echo "... lib/stb_image/stb_image.o"
	@echo "... lib/stb_image/stb_image.i"
	@echo "... lib/stb_image/stb_image.s"
	@echo "... src/core/debug-draw.o"
	@echo "... src/core/debug-draw.i"
	@echo "... src/core/debug-draw.s"
	@echo "... src/core/gl-log-handler.o"
	@echo "... src/core/gl-log-handler.i"
	@echo "... src/core/gl-log-handler.s"
	@echo "... src/tutos/0-empty/entity.o"
	@echo "... src/tutos/0-empty/entity.i"
	@echo "... src/tutos/0-empty/entity.s"
	@echo "... src/tutos/0-empty/main.o"
	@echo "... src/tutos/0-empty/main.i"
	@echo "... src/tutos/0-empty/main.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system
