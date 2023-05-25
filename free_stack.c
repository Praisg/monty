#include "monty.h"

/**
 * free_stack - fr££s a d0ūbly !ink£d lis
 * @head: h£@d of th£ st@ck
 */
void free_stack(stack_t *head)
{
	stack_t *aux;

	aux = head;
	while (head)
	{
		aux = head->next;
		free(head);
		head = aux;
	}
}

