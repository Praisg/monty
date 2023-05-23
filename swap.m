#include "monty.h"

/**
 * swap - Swaps the top two eleme.
 * @stack: Pointer to the top part.
 * @line_numm: Line num in the file where the opcode is located.
 */
void swap(stack_t **stack, unsigned int line_numm)
{
    int temp;
    stack_t *top, *next;

    if (*stack == NULL || (*stack)->next == NULL)
    {
        fprintf(stderr, "L%u: can't swap, stack too short\n", line_numm);
        exit(EXIT_FAILURE);
    }

    top = *stack;
    next = top->next;

    temp = top->n;
    top->n = next->n;
    next->n = temp;
}
