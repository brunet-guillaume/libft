# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gbrunet <gbrunet@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/03/15 16:51:57 by gbrunet           #+#    #+#              #
#    Updated: 2024/03/15 17:59:14 by gbrunet          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

_BLACK = \033[0;30m
_RED = \033[0;31m
_GREEN = \033[0;32m
_BLUE = \033[0;34m
_YELLOW = \033[0;33m
_PURPLE = \033[0;35m
_CYAN = \033[0;36m
_WHITE = \033[0;37m

_BOLD = \e[1m
_THIN = \e[2m

_END = \033[0m

NAME = libft.a

CC = cc

INCLUDES = includes

CFLAGS = -Wall -Wextra -Werror -I $(INCLUDES)

SRC_DIR = sources/

SOURCES = ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c \
		ft_isascii.c ft_isdigit.c ft_isprint.c ft_itoa.c ft_memchr.c \
		ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c ft_putchar_fd.c \
		ft_putendl_fd.c ft_putnbr_fd.c ft_putstr_fd.c ft_split.c ft_strchr.c \
		ft_strdup.c ft_striteri.c ft_strjoin.c ft_strlcat.c ft_strlcpy.c \
		ft_strlen.c ft_strmapi.c ft_strncmp.c ft_strnstr.c ft_strrchr.c \
		ft_strtrim.c ft_substr.c ft_tolower.c ft_toupper.c

BONUS = ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c \
		ft_lstlast_bonus.c ft_lstadd_back_bonus.c ft_lstdelone_bonus.c \
		ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c

SRC = $(addprefix $(SRC_DIR), $(SOURCES))

ALLSRC = $(addprefix $(SRC_DIR), $(SOURCES)) $(addprefix $(SRC_DIR), $(BONUS))

OBJ = $(SRC:.c=.o)

ALLOBJ = $(ALLSRC:.c=.o)

COMPTEUR = 0

%.o : %.c
	$(eval COMPTEUR=$(shell echo $$(($(COMPTEUR)+1))))
	@printf "\e[?25l"
	@if test $(COMPTEUR) -eq 1;then \
		printf "$(_YELLOW)Compiling $(NAME) binary files...$(_END)\n\n";fi
	@printf "\033[A\33[2K\r$(_CYAN)Binary $(COMPTEUR): $@$(_END)\n"
	@$(CC) $(CFLAGS) -c $< -o $@

.PHONY : all clean fclean re bonus

$(NAME) : message $(OBJ)
	@ar rc $(NAME) $(OBJ)
	@echo "$(_GREEN)$(NAME) created$(_END)"
	@printf "\e[?25h"

bonus : _BONUS

all : $(NAME)

clean :
	@echo "$(_YELLOW)$(NAME): Clean...$(_END)"
	@$(RM) -rf $(ALLOBJ)
	@echo "$(_GREEN)$(NAME): Binaries deleted...$(_END)"

fclean :
	@echo "$(_YELLOW)$(NAME): Full clean...$(_END)"
	@$(RM) -rf $(ALLOBJ)
	@echo "$(_GREEN)$(NAME): Binaries deleted...$(_END)"
	@$(RM) $(NAME)
	@echo "$(_GREEN)$(NAME) deleted...$(_END)"

re : fclean all

_BONUS : $(ALLOBJ)
	@ar rc $(NAME) $(ALLOBJ)
	@echo "$(_GREEN)$(NAME) created$(_END)"
	@printf "\e[?25h"

message :
	@printf "\t┌────────────────────────────────────────┐"
	@printf "\n\t\t        $(_CYAN)$(_THIN)Coded by $(_END)$(_CYAN)$(_BOLD)guillaume brunet$(_END)\n"
	@printf "\t$(_RED)Don't copy$(_END)$(_RED)$(_THIN), "
	@printf "$(_RED)$(_BOLD)learn$(_END)$(_RED)$(_THIN), you'll be "
	@printf "$(_RED)$(_BOLD)better.$(_END)\n\n\n"
