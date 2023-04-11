# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: ovan-rhe <ovan-rhe@student.codam.nl>         +#+                      #
#                                                    +#+                       #
#    Created: 2022/10/06 13:32:03 by ovan-rhe      #+#    #+#                  #
#    Updated: 2023/04/05 14:56:33 by ovan-rhe      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

NAME 	= libft.a

SRC_FILES =	free_double_array.c \
			ft_atoi_safe.c \
			ft_atoi.c \
			ft_atol.c \
			ft_bzero.c \
			ft_calloc.c \
			ft_isalnum.c \
			ft_isalpha.c \
			ft_isascii.c \
			ft_isdigit.c \
			ft_isprint.c \
			ft_memchr.c \
			ft_memcmp.c \
			ft_memcpy.c \
			ft_memmove.c \
			ft_memset.c \
			ft_strchr.c \
			ft_strdup.c \
			ft_strlcat.c \
			ft_strlcpy.c \
			ft_strlen.c \
			ft_strncmp.c \
			ft_strnstr.c \
			ft_strrchr.c \
			ft_tolower.c \
			ft_toupper.c \
			ft_substr.c \
			ft_strjoin.c \
			ft_strjoin_free.c \
			ft_strtrim.c \
			ft_split.c \
			ft_itoa.c \
			ft_putchar_fd.c \
			ft_putstr_fd.c \
			ft_putendl_fd.c \
			ft_putnbr_fd.c \
			ft_striteri.c \
			ft_strmapi.c \
			get_next_line.c \
			get_next_line_utils.c \
			ft_printf.c \
			ft_printnbr.c \
			ft_printstr.c \
			print_hex.c \
			ft_printchar.c \
			ft_lstnew.c \
			ft_lstadd_front.c \
			ft_lstsize.c \
			ft_lstlast.c \
			ft_lstadd_back.c \
			ft_lstdelone.c \
			ft_lstclear.c \
			ft_lstiter.c \
			ft_lstmap.c \
			ft_word_counter.c

SRC 	= $(addprefix src/, $(SRC_FILES))
OBJS 	= $(SRC:.c=.o)
		
CFLAGS	= -Wall -Wextra -Werror
HEADERS	= -I include
CC		= gcc
RM		= rm -f

BOLD	= \033[1m
BLACK	= \033[30;1m
RED		= \033[31;1m
GREEN	= \033[32;1m
YELLOW	= \033[33;1m
BLUE	= \033[34;1m
MAGENTA	= \033[35;1m
CYAN	= \033[36;1m
WHITE	= \033[37;0m
RESET	= \033[0m

all: $(NAME)

$(NAME): $(OBJS)
	@ar -rcs $@ $^
	@printf "$(WHITE)$(BOLD)\n\r$(NAME) $(GREEN)created\n\n$(RESET)"

%.o: %.c
	@$(CC) $(CFLAGS) $(HEADERS) -o $@ -c $<
	@printf "$(BLACK)\r$(notdir $<)\r\e[35C$(GREEN)[OK]\n$(RESET)"

clean:
	@$(RM) $(OBJS)

fclean: clean
	@$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re