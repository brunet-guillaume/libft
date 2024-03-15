# Libft (42 school)
> ✅ &ensp;**125**/100

First project in 42 school.

## Mandatory part

The idea here, is to recode several functions from the C standard library :

<table style="text-align:center;">
    <tr>
        <td width="150">
            atoi
        </td>
        <td width="150">
            bzero
        </td>
        <td width="150">
            calloc
        </td>
    </tr>
    <tr>
        <td>
            isalnum
        </td>
        <td>
            isalpha
        </td>
        <td>
            isascii
        </td>
    </tr>
    <tr>
        <td>
            isdigit
        </td>
        <td>
            isprint
        </td>
        <td>
            itoa
        </td>
    </tr>
    <tr>
        <td>
            memchr
        </td>
        <td>
            memcmp
        </td>
        <td>
            memcpy
        </td>
    </tr>
    <tr>
        <td>
            memmove
        </td>
        <td>
            memset
        </td>
        <td>
            putchar_fd
        </td>
    </tr>
    <tr>
        <td>
            putendl_fd
        </td>
        <td>
            putnbr_fd
        </td>
        <td>
            putstr_fd
        </td>
    </tr>
    <tr>
        <td>
            split
        </td>
        <td>
            strchr
        </td>
        <td>
            strdup
        </td>
    </tr>
    <tr>
        <td>
            striteri
        </td>
        <td>
            strjoin
        </td>
        <td>
            strlcat
        </td>
    </tr>
    <tr>
        <td>
            strlcpy
        </td>
        <td>
            strlen
        </td>
        <td>
            strmapi
        </td>
    </tr>
    <tr>
        <td>
            strncmp
        </td>
        <td>
            strnstr
        </td>
        <td>
            strrchr
        </td>
    </tr>
    <tr>
        <td>
            strtrim
        </td>
        <td>
            substr
        </td>
        <td>
            tolower
        </td>
    </tr>
    <tr>
        <td>
            toupper
        </td>
        <td>
        </td>
        <td>
        </td>
    </tr>
</table>

## Bonus part

For the bonus part, we created some usefull functions to manipulate lists.

The node of the list :
```c
typedef struct s_list
{
    void            *content;
    struct s_list   *next;
}   t_list;
```
The functions :

<table>
    <tr>
        <td width="150">
            lstadd_back
        </td>
        <td width="150">
            lstadd_front
        </td>
        <td width="150">
            lstclear
        </td>
    </tr>
    <tr>
        <td>
            lstdelone
        </td>
        <td>
            lstiter
        </td>
        <td>
            lstlast
        </td>
    </tr>
    <tr>
        <td>
            lstmap
        </td>
        <td>
            lstnew
        </td>
        <td>
            lstsize
        </td>
    </tr>
</table>