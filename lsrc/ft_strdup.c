/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strdup.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vhavryle <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/10/26 12:08:30 by vhavryle          #+#    #+#             */
/*   Updated: 2017/10/26 12:08:32 by vhavryle         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libftprintf.h"

char		*ft_strdup(const char *src)
{
	char	*copy;
	int		i;
	int		l;

	l = ft_strlen(src);
	i = 0;
	copy = NULL;
	if (src)
	{
		if (NULL == (copy = (char*)malloc(l + 1)))
			return (NULL);
		while (l--)
		{
			copy[i] = src[i];
			i++;
		}
		copy[i] = '\0';
	}
	return (copy);
}
