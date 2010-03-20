%{


import random

def new_number():
    ''' Generate a random num in the 
    [-10, 10] interval.
    '''
    return random.randint(-10, 10)


%}

TREE --> BINARY;
TREE --> UNARY;
UNARY --> NUM {new_number() };
UNARY --> VAR;
VAR --> 'x';

BINARY --> '+'(TREE, TREE)
         | '-'(TREE, TREE) 
         | '*'(TREE, NUM)
         | '/'(TREE, TREE)
;

# The following rule will cause an error,
# since NUM has already a defined generator in line #17
TMP --> NUM { new_number2() };

