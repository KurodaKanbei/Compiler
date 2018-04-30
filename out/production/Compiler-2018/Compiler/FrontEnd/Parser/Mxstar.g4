grammar Mxstar;

//Lexer

IDENTIFIER :   [a-zA-Z_][a-zA-Z0-9_]*;

INTEGER :   [0-9]+;

STRING  :   '"' (CHAR | .)*? '"';

fragment CHAR : '\\' [btnr"\\] ;

LINECOMMENT :   '//' ~[\n\r]* -> skip;

BLOCKCOMMENT    :   '/*' .*? '*/' -> skip;

WHITESPACE  :   [ \t\r\n]+ -> skip;

//Parser

program : (variableDeclarationStatement | functionDeclaration | classDeclaration)+;

variableDeclarationStatement    :   type IDENTIFIER ('=' expression)?';';

functionDeclaration :   (type | voidType) IDENTIFIER? ('(' (type IDENTIFIER (',' type IDENTIFIER)*)')'| '()') blockStatement;

classDeclaration :  'class' IDENTIFIER '{' (variableDeclarationStatement | functionDeclaration)* '}';

statement   :   blockStatement
            |   expressionStatement
            |   ifStatement
            |   forStatement
            |   whileStatement
            |   continueStatement
            |   breakStatement
            |   returnStatement
            |   variableDeclarationStatement
            ;

blockStatement  :   '{' statement* '}';

expressionStatement :   expression? ';';

ifStatement  :   'if' '(' expression ')' statement ('else' statement)?;

whileStatement  :   'while' '(' expression ')' statement;

forStatement    :   'for' '(' expression? ';' expression? ';' expression? ')' statement;

continueStatement   :   'continue' ';';

breakStatement  :   'break' ';';

returnStatement :   'return' expression? ';';

constant    :   ('true' | 'false')    #boolConstant
            |   INTEGER #intConstant
            |   STRING  #stringConstant
            |   'null'  #nullConstant
            ;

type    :   'int'   #intType
        |   'bool'  #boolType
        |   'string'    #stringType
        |   IDENTIFIER  #classType
        |   type '['']'   #arrayType
        ;

voidType    :   'void';

expression  :   constant    #constantExpression
            |   IDENTIFIER  #identifierExpression
            |   'this'  #thisExpression
            |   '(' expression ')'  #subExpression
            |   'new' type (('[' expression ']') | '[]')+ #newArrayExpression
            |   'new' type '()'? #newClassExpression
            |   expression operator=('++' | '--')   #suffixExpression
            |   expression '[' expression ']'   #subscriptExpression
            |   expression ('(' (expression (',' expression)*)?')'| '()')   #functionCallExpression
            |   expression '.' IDENTIFIER   #memberExpression
            |   operator=('++' | '--') expression   #prefixExpression
            |   operator=('+' | '-' | '!' | '~' ) expression    #unaryExpression
            |   expression operator=('*' | '/' | '%') expression    #multiplicativeExpression
            |   expression operator=('+' | '-') expression  #additiveExpression
            |   expression operator=('<<' | '>>') expression    #shiftExpression
            |   expression operator=('<' | '>' | '<=' | '>=') expression    #relationalExpression
            |   expression operator=('==' | '!=') expression    #equalityExpression
            |   expression '&' expression   #bitAndExpression
            |   expression '^' expression   #bitOrExpression
            |   expression '|' expression   #bitXorExpression
            |   expression '&&' expression  #logicalAndExpression
            |   expression '||' expression  #logicalOrExpression
            |   <assoc=right> expression '=' expression #assignmentExpression
            ;
