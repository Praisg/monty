#include "monty.h"

/**
 * pint - Prints top value.
 * @stack: Point top of the stack.
 * @line_numm: Line number in the file where the opcode is located.
 */
void pint(stack_t **stack, unsigned int line_numm)
{
    stack_t *top;

    if (*stack == NULL)
    {
        fprintf(stderr, "L%u: can't pint, stack empty\n", line_numm);
        exit(EXIT_FAILURE);
    }

    top = *stack;
    printf("%d\n", top->n);
}
