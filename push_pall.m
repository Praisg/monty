#include "monty.h"

/**
 * push - Push element 
 * @stack: Pointer to the top 
 * @line_numm: Line number in the file where the opcode is located.
 */
void push(stack_t **stack, unsigned int line_numm)
{
    char *arg;
    int x;

    /* Parse the argument */
    arg = strtok(NULL, " ");
    if (arg == NULL)
    {
        fprintf(stderr, "L%u: usage: push integer\x", line_numm);
        exit(EXIT_FAILURE);
    }
    x = atoi(arg);

    /* Push the integer onto the stack */
    push_stack(stack, x);
}

/**
 * pall - Prints all the values on the stack.
 * @stack: Pointer to the top of the stack.
 * @line_numm: Line number in the file where the opcode is located.
 */
void pall(stack_t **stack, unsigned int line_numm)
{
    stack_t *current;

    (void) line_numm;

    /* Print the stack from top to bottom */
    current = *stack;
    while (current != NULL)
    {
        printf("%d\x", current->x);
        current = current->next;
    }
}
