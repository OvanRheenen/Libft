# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: ovan-rhe <ovan-rhe@student.codam.nl>         +#+                      #
#                                                    +#+                       #
#    Created: 2022/10/06 13:32:03 by ovan-rhe      #+#    #+#                  #
#    Updated: 2023/05/08 16:58:24 by ovan-rhe      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

#--VARIABLES--------------------------------------------------------------------

NAME = libft.a

SRC_FILES =	free_double_array.c 												\
			ft_abs.c 															\
			ft_error.c 															\
			\
			ft_atoi_safe.c	ft_atoi.c	ft_atol.c 								\
			\
			ft_bzero.c	ft_calloc.c 											\
			\
			\
			ft_isalnum.c	ft_isalpha.c	ft_isascii.c						\
			ft_isdigit.c	ft_isprint.c	ft_iswhitespace.c					\
			\
			ft_memchr.c	ft_memcmp.c	ft_memcpy.c	ft_memmove.c	ft_memset.c 	\
			\
			ft_strchr.c		ft_strdup.c			ft_strlcat.c	ft_strlcpy.c	\
			ft_strlen.c		ft_strncmp.c		ft_strnstr.c	ft_strrchr.c	\
			ft_strjoin.c	ft_strjoin_free.c	ft_strtrim.c					\
			\
			ft_tolower.c	ft_toupper.c										\
			\
			ft_substr.c 														\
			ft_split.c 															\
			ft_itoa.c 															\
			ft_putchar_fd.c 													\
			ft_putstr_fd.c 														\
			ft_putendl_fd.c 													\
			ft_putnbr_fd.c 														\
			ft_striteri.c 														\
			ft_strmapi.c 														\
			\
			get_next_line.c	get_next_line_utils.c 								\
			\
			ft_printf.c	ft_printnbr.c	ft_printstr.c							\
			print_hex.c	ft_printchar.c 											\
			\
			ft_lstnew.c			ft_lstadd_front.c	ft_lstsize.c				\
			ft_lstlast.c		ft_lstmap.c			ft_lstdelone.c				\
			ft_lstadd_back.c	ft_lstclear.c		ft_lstiter.c

SRC_DIR	= src
OBJ_DIR	= obj
INC_DIR	= include

OBJ_FILES	= $(addprefix $(OBJ_DIR)/, $(SRC_FILES:.c=.o))
DEP_FILES	= $(OBJ_FILES:.o=.d)
		
CC		= cc
CFLAGS	= -Wall -Wextra -Werror -MMD -MP

#### PRINTF ##############
BOLD		= \033[1m	 #
UNDERLINE   = \033[4m	 #
RESET		= \033[0m	 #
                         #
BLACK		= \033[1;30m #
RED			= \033[1;31m #
GREEN		= \033[1;32m #
YELLOW		= \033[1;33m #
BLUE		= \033[1;34m #
MAGENTA		= \033[1;35m #
CYAN		= \033[1;36m #
WHITE		= \033[1;37m #
##########################

#--RULES------------------------------------------------------------------------

all: objdir $(NAME)

$(NAME): $(OBJ_FILES)
	@ar -rcs $@ $^
	@printf "$(WHITE)$(BOLD)\n\r$(NAME)\r\e[33C$(GREEN)[created]\n\n$(RESET)"

objdir:
	@mkdir -p $(OBJ_DIR)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	@$(CC) $(CFLAGS) -I$(INC_DIR) -o $@ -c $<
	@printf "\r$(notdir $<)\r\e[35C$(GREEN)[OK]\n$(RESET)"

-include $(DEP_FILES)

clean:
	@rm -rf $(OBJ_DIR)

fclean: clean
	@rm -rf $(NAME)

re: fclean all

.PHONY: all objdir clean fclean re