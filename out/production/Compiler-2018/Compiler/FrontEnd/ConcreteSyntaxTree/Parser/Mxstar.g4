grammar Mxstar;

//Lexer

IDENTIFIER :   [a-zA-Z_][a-zA-Z0-9_]*;

INTEGER :   [0-9]+;

STRING  :   '"' (CHAR | .)*? '"';

fragment CHAR : '\\' [btnr"\\] ;

LINECOMMENT :   '//' ~[\r\n] -> skip;

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
            |   iterationStatement
            |   jumpStatement
            |   variableDeclarationStatement
            ;

blockStatement  :   '{' statement* '}';

expressionStatement :   expression? ';';

selectionStatement  :   'if' '(' expression ')' statement ('else' statement)?;

iterationStatement  :   'while' '(' expression ')' statement    #whileStatement
                    |   'for' '(' expression? ';' expression? ';' statement? ')' statement  #forStatement
                    ;

jumpStatement   :   'continue' ';'  #continueStatement
                |   'break' ';' #breakStatement
                |   'return' expression? ';'    #returnStatement
                ;

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
            |   '(' expression ')'  #subExpression
            |   expression operator=('++' | '--')   #postfixExpression
            |   expression '[' expression ']'   #subscriptExpression
            |   expression '(' (expression (',' expression)*)?')'   #functionCallExpression
            |   expression '.' IDENTIFIER   #fieldExpression
            |   operator=('+' | '-' | '!' | '~' | '++' | '--') expression   #unaryExpression
            |   'new' type ('[' expression ']')* ('['']')*  #newExpression
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
