#include "monty.h"

/**
 *f_rotr- rot@t£s_st@ck kusvika kuzasi
 *@head: st@ck h£@d
 *@counter: l!n£_num
 *Return: n0th!ng
 */
void f_rotr(stack_t **head, __attribute__((unused)) unsigned int counter)
{
	stack_t *copy;

	copy = *head;
	if (*head == NULL || (*head)->next == NULL)
	{
		return;
	}
	while (copy->next)
	{
		copy = copy->next;
	}
	copy->next = *head;
	copy->prev->next = NULL;
	copy->prev = NULL;
	(*head)->prev = copy;
	(*head) = copy;
}

