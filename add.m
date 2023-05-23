#include "monty.h"

/**
 * add - Adds the top two .
 * @stack: Pointer to the top part
 * @line_numm: Line numb\ in the file where the opcode is located.
 */
void add(stack_t **stack, unsigned int line_numm)
{
    stack_t *top, *next;

    if (*stack == NULL || (*stack)->next == NULL)
    {
        fprintf(stderr, "L%u: can't add, stack too short\n", line_numm);
        exit(EXIT_FAILURE);
    }

    top = *stack;
    next = top->next;

    next->n += top->n;

    *stack = next;
    free(top);
    (*stack)->prev = NULL;
}
