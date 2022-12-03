#OBJS specifies which files to compile as part of the project
# OBJS = draw.c input.c main.c map.c player.c ray_aux.c ray.c texture.c upng.c wall.c window.c

#CC specifies which compiler we're using
CC = gcc

#INCLUDE_PATHS specifies the additional include paths we'll need
INCLUDE_PATHS = -IC:\mingw_dev_lib\include\SDL2

#LIBRARY_PATHS specifies the additional library paths we'll need
LIBRARY_PATHS = -LC:\mingw_dev_lib\lib

#COMPILER_FLAGS specifies the additional compilation options we're using
# -w suppresses all warnings
# -Wl,-subsystem,windows gets rid of the console window
COMPILER_FLAGS = -w -Wl,-subsystem,windows

#LINKER_FLAGS specifies the libraries we're linking against
LINKER_FLAGS = -lmingw32 -lSDL2main -lSDL2

#OBJ_NAME specifies the name of our exectuable
OBJ_NAME = maze

#This is the target that compiles our executable
all : $(OBJS)
	$(CC) create_maze.c create_world.c dist_checks.c draw.c event_handlers.c free_stuff.c init_instance.c main_maze.c movement.c win.c $(INCLUDE_PATHS) $(LIBRARY_PATHS) $(COMPILER_FLAGS) $(LINKER_FLAGS) -o $(OBJ_NAME)
# # compiler to use
# CC=gcc

# # Flags to create object files with
# CFLAGS=-Wall -Werror -Wextra -pedantic
# # Flags to link the SDL2 library
# SDL_FLAGS=-I/usr/local/include/SDL2 -L/usr/local/lib -lSDL2

# # All C program files
# SRC=create_maze.c create_world.c dist_checks.c draw.c event_handlers.c free_stuff.c init_instance.c main_maze.c movement.c win.c
# # The names of all object files
# OBJ=$(SRC:.c=.o)
# # Executable name
# NAME=maze

# # Removal command
# RM=rm

# # Compile all files into the executable
# # CFLAGS will only be used when creating object files
# # SDL_FLAGS includes necessary libraries to link
# all: $(OBJ)
# 	$(CC) $(SDL_FLAGS) $(OBJ) -o $(NAME)

# # Remove all Emacs temp files (~)
# clean:
# 	$(RM) -f *~

# # Remove all object files (.o)
# oclean:
# 	$(RM) -f $(OBJ)

# # Remove temp files, object files, and executable
# fclean: clean oclean
# 	$(RM) -f $(NAME)

# # Run full clean and recompile all files
# re: fclean all
