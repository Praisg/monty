#include "monty.h"

/**
 * pop - Removes the top element .
 * @stack: Pointer tothe stack.
 * @line_numm: Line num in the file where the opcode is located.
 */
void pop(stack_t **stack, unsigned int line_numm)
{
    stack_t *top;

    if (*stack == NULL)
    {
        fprintf(stderr, "L%u: can't pop an empty stack\n", line_numm);
        exit(EXIT_FAILURE);
    }

    top = *stack;
    *stack = top->next;
    if (*stack != NULL)
        (*stack)->prev = NULL;
    free(top);
}
