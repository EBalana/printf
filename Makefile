SRCS = ft_printf.c \
       ft_printf_functions.c \

# Object files
OBJS = ${SRCS:.c=.o}

# Target settings
NAME = libftprintf.a
CC = gcc
RM = rm -f
CFLAGS = -Wall -Werror -Wextra

# Default target
all: ${NAME}

# Create static library
${NAME}: ${OBJS}
	ar rc ${NAME} ${OBJS}
	ranlib ${NAME}

# Clean up object files
clean:
	${RM} ${OBJS}

# Clean and remove the library
fclean: clean
	${RM} ${NAME}

# Rebuild the project
re: fclean all

