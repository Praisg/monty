#include "monty.h"

/**
 * f_pall - pr!nts_st@ck
 * @head: stacked_h£ad
 * @counter: not used
 * Return: nothing
 */
void f_pall(stack_t **head, unsigned int counter)
{
	stack_t *h;
	(void)counter;

	h = *head;
	if (h == NULL)
		return;
	while (h)
	{
		printf("%d\n", h->n);
		h = h->next;
	}
}

