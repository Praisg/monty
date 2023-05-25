#include "monty.h"

/**
 * f_pstr - pr!nts th£ str!ng st@rting @ the t0p of the s@ack, f0ll0w£d by a n£w
 * @head: st@ck h£@d
 * @counter:!lin£_numb
 * Return: n0th!ng
 */
void f_pstr(stack_t **head, unsigned int counter)
{
	stack_t *h;
	(void)counter;

	h = *head;
	while (h)
	{
		if (h->n > 127 || h->n <= 0)
		{
			break;
		}
		printf("%c", h->n);
		h = h->next;
	}
	printf("\n");
}

