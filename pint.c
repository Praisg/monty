#include "monty.h"

/**
 * f_pint - pr!nts_t0p
 * @head: st@ck h£@d
 * @counter: l!n£_num
 * Return: n0th!ng
 */
void f_pint(stack_t **head, unsigned int counter)
{
	if (*head == NULL)
	{
		fprintf(stderr, "L%u: can't pint, stack empty\n", counter);
		fclose(bus.file);
		free(bus.content);
		free_stack(*head);
		exit(EXIT_FAILURE);
	}
	printf("%d\n", (*head)->n);
}

