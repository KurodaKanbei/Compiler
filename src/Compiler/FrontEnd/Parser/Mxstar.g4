grammar Mxstar;

//Lexer

IDENTIFIER :   [a-zA-Z_][a-zA-Z0-9_]*;

INTEGER :   [0-9]+;

STRING  :   '"' (CHAR | .)*? '"';

fragment CHAR : '\\' [btnr"\\] ;

LINECOMMENT :   '//' .*? ('\n' | '\r') -> skip;

BLOCKCOMMENT    :   '/*' .*? '*/' -> skip;

WHITESPACE  :   [ \t\r\n]+ -> skip;

//Parser

program : (variableDeclarationStatement | functionDeclaration | classDeclaration)+;

variableDeclarationStatement    :   type IDENTIFIER ('=' expression)?';';

functionDeclaration :   type IDENTIFIER? '(' (type IDENTIFIER (',' type IDENTIFIER)*)? ')' blockStatement;

classDeclaration :  'class' IDENTIFIER '{' (variableDeclarationStatement | functionDeclaration)* '}';

statement   :   blockStatement
            |   expressionStatement
            |   selectionStatement
            |   forStatement
            |   whileStatement
            |   continueStatement
            |   breakStatement
            |   returnStatement
            |   variableDeclarationStatement
            ;

blockStatement  :   '{' statement* '}';

expressionStatement :   expression? ';';

selectionStatement  :   'if' '(' expression ')' statement ('else' statement)?;

whileStatement  :   'while' '(' expression ')' statement;

forStatement    :   'for' '(' expression? ';' expression? ';' expression? ')' statement;

continueStatement   :   'continue' ';';

breakStatement  :   'break' ';';

returnStatement :   'return' expression? ';';

constant    :   'true' | 'false'    #boolConstant
            |   INTEGER #intConstant
            |   STRING  #stringConstant
            |   'null'  #nullConstant
            ;

type    :   'void'  #voidType
        |   'int'   #intType
        |   'bool'  #boolType
        |   'string'    #stringType
        |   IDENTIFIER  #classType
        |   type '[]'   #arrayType
        ;

expression  :   constant    #constantExpression
            |   IDENTIFIER  #variableExpression
            |   'this'  #thisExpression
            |   '(' expression ')'  #subExpression
            |   expression operator=('++' | '--')   #suffixExpression
            |   expression '[' expression ']'   #subscriptExpression
            |   expression '(' (expression (',' expression)*)?')'   #functionCallExpression
            |   expression '.' IDENTIFIER   #memberExpression
            |   operator=('++' | '--') expression   #prefixExpression
            |   operator=('+' | '-' | '!' | '~' ) expression    #unaryExpression
            |   'new' type ((('[' expression ']')+ ('[]')*) | ('[]')+)  #newArrayExpression
            |   'new' type '()'? #newClassExpression
            |   expression operator=('*' | '/' | '%') expression    #multiplicativeExpression
            |   expression operator=('+' | '-') expression  #additiveExpression
            |   expression operator=('<<' | '>>') expression    #shiftExpression
            |   expression operator=('<' | '>' | '<=' | '>=') expression    #relationalExpression
            |   expression operator=('==' | '!=') expression    #equalityExpression
            |   expression '&' expression   #andExpression
            |   expression '^' expression   #exclusiveOrExpression
            |   expression '|' expression   #inclusiveOrExpression
            |   expression '&&' expression  #logicalAndExpression
            |   expression '||' expression  #logicalOrExpression
            |   <assoc=right> expression '=' expression #assignmentExpression
            ;
