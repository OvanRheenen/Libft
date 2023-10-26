/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   ft_iswhitespace.c                                  :+:    :+:            */
/*                                                     +:+                    */
/*   By: ovan-rhe <ovan-rhe@student.codam.nl>         +#+                     */
/*                                                   +#+                      */
/*   Created: 2023/10/26 15:02:35 by ovan-rhe      #+#    #+#                 */
/*   Updated: 2023/10/26 15:02:35 by ovan-rhe      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_iswhitespace(int c)
{
	if (c == '\f' || c == '\n' || c == '\r' || \
		c == '\t' || c == '\v' || c == ' ')
		return (1);
	return (0);
}
