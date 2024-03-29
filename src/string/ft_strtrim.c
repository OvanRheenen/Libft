/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   ft_strtrim.c                                       :+:    :+:            */
/*                                                     +:+                    */
/*   By: ovan-rhe <ovan-rhe@student.codam.nl>         +#+                     */
/*                                                   +#+                      */
/*   Created: 2022/10/13 16:10:59 by ovan-rhe      #+#    #+#                 */
/*   Updated: 2022/10/19 15:40:44 by ovan-rhe      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/**
 * @brief Allocates (with malloc(3)) and returns a copy of ’s1’ with the
 * characters specified in ’set’ removed from the beginning and the end of the
 * string.
 * @param s1 The string to be trimmed
 * @param set The reference set of characters to trim
 * @return The trimmed string. NULL if the allocation fails.
 */
char	*ft_strtrim(char const *s1, char const *set)
{
	char	*str_result;
	size_t	start;
	size_t	end;

	if (ft_strlen(s1) == 0 || ft_strlen(set) == 0)
		return (ft_strdup(s1));
	start = 0;
	end = ft_strlen(s1);
	while (ft_strchr((char *)set, s1[start]) != 0 && s1[start])
		start++;
	while (ft_strrchr((char *)set, s1[end - 1]) != 0 && end > start)
		end--;
	str_result = (char *)malloc(sizeof(char) * (end - start + 1));
	if (str_result == 0)
		return (NULL);
	ft_strlcpy(str_result, s1 + start, end - start + 1);
	return (str_result);
}
