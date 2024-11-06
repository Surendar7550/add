# Makefile to compile the C program

CC = gcc                # Compiler
CFLAGS = -Wall -g       # Compiler flags
TARGET = add           # Output executable name

# Source and object files
SRC = add.c
OBJ = $(SRC:.c=.o)

# Default target to build the program
all: $(TARGET)

# Rule to create the executable from object files
$(TARGET): $(OBJ)
	$(CC) $(OBJ) -o $(TARGET)

# Rule to compile C files to object files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean up object files and the executable
clean:
	rm -f $(OBJ) $(TARGET)

# Phony targets
.PHONY: all clean

