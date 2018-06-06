global p
global __global_init
global f
global g
global h
global main
global print_Int
global println_Int
global print
global println
global getInt
global getString
global toString
global __array_size
global __string_substring
global __string_length
global __string_parseInt
global __string_ord
global __string_connection
global __string_LE
global __string_LEEQ
global __string_GR
global __string_GREQ
global __string_EQ
global __string_NEQ
extern printf, malloc, strcpy, scanf, strlen, sscanf, sprintf, memcpy, strcmp, puts
SECTION .text
p:
    push                  rbp
     mov                  rbp,                  rsp
p_0_block_enter:
     mov                   r8,                  rdi
     mov                  rsi,                   r8
     dec                  rsi
     mov                   r9,                   r8
     mov                  eax,                  r9d
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                   r9,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                    2
     mov                  rsi,                   r9
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                    3
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                    4
     mov                   r9,                  rsi
     mov                  eax,                  r9d
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                   r9,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    5
     mov                  rdi,                   r9
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                   r9,                   r8
     sub                   r9,                    6
     mov                  rsi,                  rdi
     mov                  eax,                  esi
     mov                  ecx,                  r9d
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                    7
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                    8
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                    9
     mov                   r9,                  rsi
     mov                  eax,                  r9d
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                   r9,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   10
     mov                  eax,                  r9d
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                   r9,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                   11
     mov                  rsi,                   r9
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                   r9,                   r8
     sub                   r9,                   12
     mov                  rdi,                  rsi
     mov                  eax,                  edi
     mov                  ecx,                  r9d
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   13
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   14
     mov                   r9,                  rdi
     mov                  eax,                  r9d
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                   r9,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                   15
     mov                  rsi,                   r9
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                   16
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                   17
     mov                   r9,                  rsi
     mov                  eax,                  r9d
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                   r9,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   18
     mov                  rdi,                   r9
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   19
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     sub                   r8,                   20
     mov                  rsi,                  rdi
     mov                  eax,                  esi
     mov                  ecx,                  r8d
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rax,                  rsi
p_1_block_exit:
     pop                  rbp
     ret
__global_init:
    push                  rbp
     mov                  rbp,                  rsp
__global_init_1_block_exit:
     pop                  rbp
     ret
f:
    push                  rbp
     mov                  rbp,                  rsp
f_0_block_enter:
     mov                   r8,                  rdi
     mov                  rsi,                   r8
     dec                  rsi
     mov                  rdi,                   r8
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    2
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    3
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    4
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    5
     mov                   r9,                  rdi
     mov                  eax,                  r9d
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                   r9,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                    6
     mov                  rsi,                   r9
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                    7
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                    8
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                   r9,                   r8
     sub                   r9,                    9
     mov                  rdi,                  rsi
     mov                  eax,                  edi
     mov                  ecx,                  r9d
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   10
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   11
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   12
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   13
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   14
     mov                   r9,                  rdi
     mov                  eax,                  r9d
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                   r9,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                   15
     mov                  rsi,                   r9
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                   r9,                   r8
     sub                   r9,                   16
     mov                  rdi,                  rsi
     mov                  eax,                  edi
     mov                  ecx,                  r9d
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   17
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   18
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   19
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   20
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  rdi
     mov                  rax,                  rsi
     jmp       f_1_block_exit
f_2_inline_enter:
     mov                  rsi,                   r8
     dec                  rsi
     mov                  rdi,                   r8
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    2
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    3
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    4
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    5
     mov                   r9,                  rdi
     mov                  eax,                  r9d
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                   r9,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                    6
     mov                  rsi,                   r9
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                    7
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                    8
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                   r9,                   r8
     sub                   r9,                    9
     mov                  rdi,                  rsi
     mov                  eax,                  edi
     mov                  ecx,                  r9d
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   10
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   11
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   12
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   13
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   14
     mov                   r9,                  rdi
     mov                  eax,                  r9d
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                   r9,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                   15
     mov                  rsi,                   r9
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                   r9,                   r8
     sub                   r9,                   16
     mov                  rdi,                  rsi
     mov                  eax,                  edi
     mov                  ecx,                  r9d
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   17
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   18
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   19
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   20
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  rdi
     mov                  rax,                  rsi
     jmp       f_1_block_exit
f_3_inline_exit:
     mov                  rax,                  rsi
f_1_block_exit:
     pop                  rbp
     ret
g:
    push                  rbp
     mov                  rbp,                  rsp
g_0_block_enter:
     mov                   r8,                  rdi
     mov                  rdi,                   r8
     dec                  rdi
     mov                  rsi,                   r8
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                    2
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                    3
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                    4
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                    5
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                    6
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                    7
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                    8
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                    9
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                   10
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                   11
     mov                   r9,                  rsi
     mov                  eax,                  r9d
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                   r9,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   12
     mov                  rdi,                   r9
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   13
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   14
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   15
     mov                   r9,                  rdi
     mov                  eax,                  r9d
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                   r9,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                   16
     mov                  rsi,                   r9
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                   17
     mov                   r9,                  rsi
     mov                  eax,                  r9d
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                   r9,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   18
     mov                  rdi,                   r9
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   19
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   20
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  rdi
     mov                  rax,                  rsi
     jmp       g_1_block_exit
g_2_inline_enter:
     mov                  rdi,                   r8
     dec                  rdi
     mov                  rsi,                   r8
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                    2
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                    3
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                    4
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                    5
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                    6
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                    7
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                    8
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                    9
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                   10
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                   11
     mov                   r9,                  rsi
     mov                  eax,                  r9d
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                   r9,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   12
     mov                  rdi,                   r9
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   13
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   14
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   15
     mov                   r9,                  rdi
     mov                  eax,                  r9d
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                   r9,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                   16
     mov                  rsi,                   r9
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                   17
     mov                   r9,                  rsi
     mov                  eax,                  r9d
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                   r9,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   18
     mov                  rdi,                   r9
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   19
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   20
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  rdi
     mov                  rax,                  rsi
     jmp       g_1_block_exit
g_3_inline_exit:
     mov                  rax,                  rsi
g_1_block_exit:
     pop                  rbp
     ret
h:
    push                  rbp
     mov                  rbp,                  rsp
h_0_block_enter:
     mov                   r8,                  rdi
     mov                  rsi,                   r8
     dec                  rsi
     mov                  rdi,                   r8
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    2
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    3
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                   r9,                   r8
     sub                   r9,                    4
     mov                  rsi,                  rdi
     mov                  eax,                  esi
     mov                  ecx,                  r9d
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                    5
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                    6
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                    7
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                    8
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                    9
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                   r9,                   r8
     sub                   r9,                   10
     mov                  rdi,                  rsi
     mov                  eax,                  edi
     mov                  ecx,                  r9d
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   11
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   12
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   13
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   14
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   15
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   16
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   17
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   18
     mov                   r9,                  rdi
     mov                  eax,                  r9d
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                   r9,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                   19
     mov                  rsi,                   r9
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                   20
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rax,                  rsi
     jmp       h_1_block_exit
h_2_inline_enter:
     mov                  rsi,                   r8
     dec                  rsi
     mov                  rdi,                   r8
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    2
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    3
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                   r9,                   r8
     sub                   r9,                    4
     mov                  rsi,                  rdi
     mov                  eax,                  esi
     mov                  ecx,                  r9d
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                    5
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                    6
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                    7
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                    8
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                    9
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                   r9,                   r8
     sub                   r9,                   10
     mov                  rdi,                  rsi
     mov                  eax,                  edi
     mov                  ecx,                  r9d
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   11
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   12
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   13
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   14
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   15
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   16
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   17
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   18
     mov                   r9,                  rdi
     mov                  eax,                  r9d
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                   r9,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                   19
     mov                  rsi,                   r9
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     sub                  rdi,                   20
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rax,                  rsi
     jmp       h_1_block_exit
h_3_inline_exit:
     mov                  rax,                  rsi
h_1_block_exit:
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call        __global_init
    push                  r12
    push                  r14
    push                  r13
    push                  r15
    push                  rbx
main_0_block_enter:
    push                  r11
    push                  rsi
    push                  rsi
    push                  rsi
    push                  rsi
    push                   r9
    push                  rsi
    push                  rdi
    push                   r8
    call               getInt
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                   r9
     pop                  rsi
     pop                  rsi
     pop                  rsi
     pop                  rsi
     pop                  r11
     mov                  rbx,                  rax
     xor                  rdi,                  rdi
     xor                   r9,                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_1_loop_condition:
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_2_loop_body:
     xor                   r8,                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_3_loop_condition:
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_4_loop_body:
     xor                  r11,                  r11
     cmp                  r11,                  rbx
      jl     main_6_loop_body
     inc                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_5_loop_condition:
     cmp                  r11,                  rbx
      jl     main_6_loop_body
     inc                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_6_loop_body:
     cmp                   r9,                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
     jne main_8_logical_false
     mov                  rsi,                   r9
     mov                  rax,                  rsi
     mov                  rcx,                  199
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     cmp                  rsi,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
     jne main_11_logical_false
     mov                  rsi,                    1
     mov                  r14,                  rsi
     mov                  r10,                  rsi
     mov                  r13,                  rsi
     mov                  r12,                  rsi
     mov                  r15,                  rsi
     cmp                  r14,                    1
      je      main_34_if_true
     cmp                  rsi,                    1
      je      main_37_if_true
     cmp                  r10,                    1
      je      main_40_if_true
     cmp                  r13,                    1
      je      main_43_if_true
     cmp                  r12,                    1
      je      main_46_if_true
     cmp                  r15,                    1
      je      main_49_if_true
     inc                  r11
     cmp                  r11,                  rbx
      jl     main_6_loop_body
     inc                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_7_logical_true:
     mov                  rsi,                   r9
     mov                  rax,                  rsi
     mov                  rcx,                  199
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     cmp                  rsi,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
     jne main_11_logical_false
     mov                  rsi,                    1
     mov                  r14,                  rsi
     mov                  r10,                  rsi
     mov                  r13,                  rsi
     mov                  r12,                  rsi
     mov                  r15,                  rsi
     cmp                  r14,                    1
      je      main_34_if_true
     cmp                  rsi,                    1
      je      main_37_if_true
     cmp                  r10,                    1
      je      main_40_if_true
     cmp                  r13,                    1
      je      main_43_if_true
     cmp                  r12,                    1
      je      main_46_if_true
     cmp                  r15,                    1
      je      main_49_if_true
     inc                  r11
     cmp                  r11,                  rbx
      jl     main_6_loop_body
     inc                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_8_logical_false:
     xor                  rsi,                  rsi
     cmp                  rsi,                    1
     jne main_11_logical_false
     mov                  rsi,                    1
     mov                  r14,                  rsi
     mov                  r10,                  rsi
     mov                  r13,                  rsi
     mov                  r12,                  rsi
     mov                  r15,                  rsi
     cmp                  r14,                    1
      je      main_34_if_true
     cmp                  rsi,                    1
      je      main_37_if_true
     cmp                  r10,                    1
      je      main_40_if_true
     cmp                  r13,                    1
      je      main_43_if_true
     cmp                  r12,                    1
      je      main_46_if_true
     cmp                  r15,                    1
      je      main_49_if_true
     inc                  r11
     cmp                  r11,                  rbx
      jl     main_6_loop_body
     inc                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_9_logical_exit:
     cmp                  rsi,                    1
     jne main_11_logical_false
     mov                  rsi,                    1
     mov                  r14,                  rsi
     mov                  r10,                  rsi
     mov                  r13,                  rsi
     mov                  r12,                  rsi
     mov                  r15,                  rsi
     cmp                  r14,                    1
      je      main_34_if_true
     cmp                  rsi,                    1
      je      main_37_if_true
     cmp                  r10,                    1
      je      main_40_if_true
     cmp                  r13,                    1
      je      main_43_if_true
     cmp                  r12,                    1
      je      main_46_if_true
     cmp                  r15,                    1
      je      main_49_if_true
     inc                  r11
     cmp                  r11,                  rbx
      jl     main_6_loop_body
     inc                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_10_logical_true:
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne main_17_logical_false
     mov                  rsi,                    1
     mov                  r14,                  rsi
     mov                  r10,                  rsi
     mov                  r13,                  rsi
     mov                  r12,                  rsi
     mov                  r15,                  rsi
     cmp                  r14,                    1
      je      main_34_if_true
     cmp                  rsi,                    1
      je      main_37_if_true
     cmp                  r10,                    1
      je      main_40_if_true
     cmp                  r13,                    1
      je      main_43_if_true
     cmp                  r12,                    1
      je      main_46_if_true
     cmp                  r15,                    1
      je      main_49_if_true
     inc                  r11
     cmp                  r11,                  rbx
      jl     main_6_loop_body
     inc                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_11_logical_false:
     cmp                   r8,                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
     jne main_13_logical_false
     mov                  rsi,                   r8
     mov                  rax,                  rsi
     mov                  rcx,                  199
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     cmp                  rsi,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
     jne main_17_logical_false
     mov                  rsi,                    1
     mov                  r14,                  rsi
     mov                  r10,                  rsi
     mov                  r13,                  rsi
     mov                  r12,                  rsi
     mov                  r15,                  rsi
     cmp                  r14,                    1
      je      main_34_if_true
     cmp                  rsi,                    1
      je      main_37_if_true
     cmp                  r10,                    1
      je      main_40_if_true
     cmp                  r13,                    1
      je      main_43_if_true
     cmp                  r12,                    1
      je      main_46_if_true
     cmp                  r15,                    1
      je      main_49_if_true
     inc                  r11
     cmp                  r11,                  rbx
      jl     main_6_loop_body
     inc                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_12_logical_true:
     mov                  rsi,                   r8
     mov                  rax,                  rsi
     mov                  rcx,                  199
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     cmp                  rsi,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
     jne main_17_logical_false
     mov                  rsi,                    1
     mov                  r14,                  rsi
     mov                  r10,                  rsi
     mov                  r13,                  rsi
     mov                  r12,                  rsi
     mov                  r15,                  rsi
     cmp                  r14,                    1
      je      main_34_if_true
     cmp                  rsi,                    1
      je      main_37_if_true
     cmp                  r10,                    1
      je      main_40_if_true
     cmp                  r13,                    1
      je      main_43_if_true
     cmp                  r12,                    1
      je      main_46_if_true
     cmp                  r15,                    1
      je      main_49_if_true
     inc                  r11
     cmp                  r11,                  rbx
      jl     main_6_loop_body
     inc                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_13_logical_false:
     xor                  rsi,                  rsi
     cmp                  rsi,                    1
     jne main_17_logical_false
     mov                  rsi,                    1
     mov                  r14,                  rsi
     mov                  r10,                  rsi
     mov                  r13,                  rsi
     mov                  r12,                  rsi
     mov                  r15,                  rsi
     cmp                  r14,                    1
      je      main_34_if_true
     cmp                  rsi,                    1
      je      main_37_if_true
     cmp                  r10,                    1
      je      main_40_if_true
     cmp                  r13,                    1
      je      main_43_if_true
     cmp                  r12,                    1
      je      main_46_if_true
     cmp                  r15,                    1
      je      main_49_if_true
     inc                  r11
     cmp                  r11,                  rbx
      jl     main_6_loop_body
     inc                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_15_logical_exit:
     cmp                  rsi,                    1
     jne main_17_logical_false
     mov                  rsi,                    1
     mov                  r14,                  rsi
     mov                  r10,                  rsi
     mov                  r13,                  rsi
     mov                  r12,                  rsi
     mov                  r15,                  rsi
     cmp                  r14,                    1
      je      main_34_if_true
     cmp                  rsi,                    1
      je      main_37_if_true
     cmp                  r10,                    1
      je      main_40_if_true
     cmp                  r13,                    1
      je      main_43_if_true
     cmp                  r12,                    1
      je      main_46_if_true
     cmp                  r15,                    1
      je      main_49_if_true
     inc                  r11
     cmp                  r11,                  rbx
      jl     main_6_loop_body
     inc                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_16_logical_true:
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne main_23_logical_false
     mov                  rsi,                    1
     mov                  r14,                  rsi
     mov                  r10,                  rsi
     mov                  r13,                  rsi
     mov                  r12,                  rsi
     mov                  r15,                  rsi
     cmp                  r14,                    1
      je      main_34_if_true
     cmp                  rsi,                    1
      je      main_37_if_true
     cmp                  r10,                    1
      je      main_40_if_true
     cmp                  r13,                    1
      je      main_43_if_true
     cmp                  r12,                    1
      je      main_46_if_true
     cmp                  r15,                    1
      je      main_49_if_true
     inc                  r11
     cmp                  r11,                  rbx
      jl     main_6_loop_body
     inc                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_17_logical_false:
     cmp                  r11,                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
     jne main_19_logical_false
     mov                  rsi,                  r11
     mov                  rax,                  rsi
     mov                  rcx,                  199
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     cmp                  rsi,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
     jne main_23_logical_false
     mov                  rsi,                    1
     mov                  r14,                  rsi
     mov                  r10,                  rsi
     mov                  r13,                  rsi
     mov                  r12,                  rsi
     mov                  r15,                  rsi
     cmp                  r14,                    1
      je      main_34_if_true
     cmp                  rsi,                    1
      je      main_37_if_true
     cmp                  r10,                    1
      je      main_40_if_true
     cmp                  r13,                    1
      je      main_43_if_true
     cmp                  r12,                    1
      je      main_46_if_true
     cmp                  r15,                    1
      je      main_49_if_true
     inc                  r11
     cmp                  r11,                  rbx
      jl     main_6_loop_body
     inc                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_18_logical_true:
     mov                  rsi,                  r11
     mov                  rax,                  rsi
     mov                  rcx,                  199
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     cmp                  rsi,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
     jne main_23_logical_false
     mov                  rsi,                    1
     mov                  r14,                  rsi
     mov                  r10,                  rsi
     mov                  r13,                  rsi
     mov                  r12,                  rsi
     mov                  r15,                  rsi
     cmp                  r14,                    1
      je      main_34_if_true
     cmp                  rsi,                    1
      je      main_37_if_true
     cmp                  r10,                    1
      je      main_40_if_true
     cmp                  r13,                    1
      je      main_43_if_true
     cmp                  r12,                    1
      je      main_46_if_true
     cmp                  r15,                    1
      je      main_49_if_true
     inc                  r11
     cmp                  r11,                  rbx
      jl     main_6_loop_body
     inc                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_19_logical_false:
     xor                  rsi,                  rsi
     cmp                  rsi,                    1
     jne main_23_logical_false
     mov                  rsi,                    1
     mov                  r14,                  rsi
     mov                  r10,                  rsi
     mov                  r13,                  rsi
     mov                  r12,                  rsi
     mov                  r15,                  rsi
     cmp                  r14,                    1
      je      main_34_if_true
     cmp                  rsi,                    1
      je      main_37_if_true
     cmp                  r10,                    1
      je      main_40_if_true
     cmp                  r13,                    1
      je      main_43_if_true
     cmp                  r12,                    1
      je      main_46_if_true
     cmp                  r15,                    1
      je      main_49_if_true
     inc                  r11
     cmp                  r11,                  rbx
      jl     main_6_loop_body
     inc                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_21_logical_exit:
     cmp                  rsi,                    1
     jne main_23_logical_false
     mov                  rsi,                    1
     mov                  r14,                  rsi
     mov                  r10,                  rsi
     mov                  r13,                  rsi
     mov                  r12,                  rsi
     mov                  r15,                  rsi
     cmp                  r14,                    1
      je      main_34_if_true
     cmp                  rsi,                    1
      je      main_37_if_true
     cmp                  r10,                    1
      je      main_40_if_true
     cmp                  r13,                    1
      je      main_43_if_true
     cmp                  r12,                    1
      je      main_46_if_true
     cmp                  r15,                    1
      je      main_49_if_true
     inc                  r11
     cmp                  r11,                  rbx
      jl     main_6_loop_body
     inc                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_22_logical_true:
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne main_29_logical_false
     mov                  rsi,                    1
     mov                  r14,                  rsi
     mov                  r10,                  rsi
     mov                  r13,                  rsi
     mov                  r12,                  rsi
     mov                  r15,                  rsi
     cmp                  r14,                    1
      je      main_34_if_true
     cmp                  rsi,                    1
      je      main_37_if_true
     cmp                  r10,                    1
      je      main_40_if_true
     cmp                  r13,                    1
      je      main_43_if_true
     cmp                  r12,                    1
      je      main_46_if_true
     cmp                  r15,                    1
      je      main_49_if_true
     inc                  r11
     cmp                  r11,                  rbx
      jl     main_6_loop_body
     inc                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_23_logical_false:
     mov                  rsi,                   r9
     add                  rsi,                   r8
     add                  rsi,                  r11
     cmp                  rsi,                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
     jne main_25_logical_false
     mov                  rsi,                  r11
     mov                  rax,                  rsi
     mov                  rcx,                  199
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     cmp                  rsi,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
     jne main_29_logical_false
     mov                  rsi,                    1
     mov                  r14,                  rsi
     mov                  r10,                  rsi
     mov                  r13,                  rsi
     mov                  r12,                  rsi
     mov                  r15,                  rsi
     cmp                  r14,                    1
      je      main_34_if_true
     cmp                  rsi,                    1
      je      main_37_if_true
     cmp                  r10,                    1
      je      main_40_if_true
     cmp                  r13,                    1
      je      main_43_if_true
     cmp                  r12,                    1
      je      main_46_if_true
     cmp                  r15,                    1
      je      main_49_if_true
     inc                  r11
     cmp                  r11,                  rbx
      jl     main_6_loop_body
     inc                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_24_logical_true:
     mov                  rsi,                  r11
     mov                  rax,                  rsi
     mov                  rcx,                  199
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     cmp                  rsi,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
     jne main_29_logical_false
     mov                  rsi,                    1
     mov                  r14,                  rsi
     mov                  r10,                  rsi
     mov                  r13,                  rsi
     mov                  r12,                  rsi
     mov                  r15,                  rsi
     cmp                  r14,                    1
      je      main_34_if_true
     cmp                  rsi,                    1
      je      main_37_if_true
     cmp                  r10,                    1
      je      main_40_if_true
     cmp                  r13,                    1
      je      main_43_if_true
     cmp                  r12,                    1
      je      main_46_if_true
     cmp                  r15,                    1
      je      main_49_if_true
     inc                  r11
     cmp                  r11,                  rbx
      jl     main_6_loop_body
     inc                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_25_logical_false:
     xor                  rsi,                  rsi
     cmp                  rsi,                    1
     jne main_29_logical_false
     mov                  rsi,                    1
     mov                  r14,                  rsi
     mov                  r10,                  rsi
     mov                  r13,                  rsi
     mov                  r12,                  rsi
     mov                  r15,                  rsi
     cmp                  r14,                    1
      je      main_34_if_true
     cmp                  rsi,                    1
      je      main_37_if_true
     cmp                  r10,                    1
      je      main_40_if_true
     cmp                  r13,                    1
      je      main_43_if_true
     cmp                  r12,                    1
      je      main_46_if_true
     cmp                  r15,                    1
      je      main_49_if_true
     inc                  r11
     cmp                  r11,                  rbx
      jl     main_6_loop_body
     inc                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_27_logical_exit:
     cmp                  rsi,                    1
     jne main_29_logical_false
     mov                  rsi,                    1
     mov                  r14,                  rsi
     mov                  r10,                  rsi
     mov                  r13,                  rsi
     mov                  r12,                  rsi
     mov                  r15,                  rsi
     cmp                  r14,                    1
      je      main_34_if_true
     cmp                  rsi,                    1
      je      main_37_if_true
     cmp                  r10,                    1
      je      main_40_if_true
     cmp                  r13,                    1
      je      main_43_if_true
     cmp                  r12,                    1
      je      main_46_if_true
     cmp                  r15,                    1
      je      main_49_if_true
     inc                  r11
     cmp                  r11,                  rbx
      jl     main_6_loop_body
     inc                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_28_logical_true:
     mov                  rsi,                    1
     mov                  r14,                  rsi
     mov                  r10,                  rsi
     mov                  r13,                  rsi
     mov                  r12,                  rsi
     mov                  r15,                  rsi
     cmp                  r14,                    1
      je      main_34_if_true
     cmp                  rsi,                    1
      je      main_37_if_true
     cmp                  r10,                    1
      je      main_40_if_true
     cmp                  r13,                    1
      je      main_43_if_true
     cmp                  r12,                    1
      je      main_46_if_true
     cmp                  r15,                    1
      je      main_49_if_true
     inc                  r11
     cmp                  r11,                  rbx
      jl     main_6_loop_body
     inc                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_29_logical_false:
     mov                  rsi,                   r9
    imul                  rsi,                   r8
    imul                  rsi,                  r11
     cmp                  rsi,                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
     jne main_31_logical_false
     mov                  rsi,                  r11
     mov                  rax,                  rsi
     mov                  rcx,                  199
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     cmp                  rsi,                    0
     mov                  rsi,                    0
    sete                  sil
     mov                  r14,                  rsi
     mov                  r10,                  rsi
     mov                  r13,                  rsi
     mov                  r12,                  rsi
     mov                  r15,                  rsi
     cmp                  r14,                    1
      je      main_34_if_true
     cmp                  rsi,                    1
      je      main_37_if_true
     cmp                  r10,                    1
      je      main_40_if_true
     cmp                  r13,                    1
      je      main_43_if_true
     cmp                  r12,                    1
      je      main_46_if_true
     cmp                  r15,                    1
      je      main_49_if_true
     inc                  r11
     cmp                  r11,                  rbx
      jl     main_6_loop_body
     inc                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_30_logical_true:
     mov                  rsi,                  r11
     mov                  rax,                  rsi
     mov                  rcx,                  199
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     cmp                  rsi,                    0
     mov                  rsi,                    0
    sete                  sil
     mov                  r14,                  rsi
     mov                  r10,                  rsi
     mov                  r13,                  rsi
     mov                  r12,                  rsi
     mov                  r15,                  rsi
     cmp                  r14,                    1
      je      main_34_if_true
     cmp                  rsi,                    1
      je      main_37_if_true
     cmp                  r10,                    1
      je      main_40_if_true
     cmp                  r13,                    1
      je      main_43_if_true
     cmp                  r12,                    1
      je      main_46_if_true
     cmp                  r15,                    1
      je      main_49_if_true
     inc                  r11
     cmp                  r11,                  rbx
      jl     main_6_loop_body
     inc                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_31_logical_false:
     xor                  rsi,                  rsi
     mov                  r14,                  rsi
     mov                  r10,                  rsi
     mov                  r13,                  rsi
     mov                  r12,                  rsi
     mov                  r15,                  rsi
     cmp                  r14,                    1
      je      main_34_if_true
     cmp                  rsi,                    1
      je      main_37_if_true
     cmp                  r10,                    1
      je      main_40_if_true
     cmp                  r13,                    1
      je      main_43_if_true
     cmp                  r12,                    1
      je      main_46_if_true
     cmp                  r15,                    1
      je      main_49_if_true
     inc                  r11
     cmp                  r11,                  rbx
      jl     main_6_loop_body
     inc                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_33_logical_exit:
     mov                  r14,                  rsi
     mov                  r10,                  rsi
     mov                  r13,                  rsi
     mov                  r12,                  rsi
     mov                  r15,                  rsi
     cmp                  r14,                    1
      je      main_34_if_true
     cmp                  rsi,                    1
      je      main_37_if_true
     cmp                  r10,                    1
      je      main_40_if_true
     cmp                  r13,                    1
      je      main_43_if_true
     cmp                  r12,                    1
      je      main_46_if_true
     cmp                  r15,                    1
      je      main_49_if_true
     inc                  r11
     cmp                  r11,                  rbx
      jl     main_6_loop_body
     inc                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_34_if_true:
     inc                  rdi
     cmp                  rsi,                    1
      je      main_37_if_true
     cmp                  r10,                    1
      je      main_40_if_true
     cmp                  r13,                    1
      je      main_43_if_true
     cmp                  r12,                    1
      je      main_46_if_true
     cmp                  r15,                    1
      je      main_49_if_true
     inc                  r11
     cmp                  r11,                  rbx
      jl     main_6_loop_body
     inc                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_36_if_exit:
     cmp                  rsi,                    1
      je      main_37_if_true
     cmp                  r10,                    1
      je      main_40_if_true
     cmp                  r13,                    1
      je      main_43_if_true
     cmp                  r12,                    1
      je      main_46_if_true
     cmp                  r15,                    1
      je      main_49_if_true
     inc                  r11
     cmp                  r11,                  rbx
      jl     main_6_loop_body
     inc                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_37_if_true:
     inc                  rdi
     cmp                  r10,                    1
      je      main_40_if_true
     cmp                  r13,                    1
      je      main_43_if_true
     cmp                  r12,                    1
      je      main_46_if_true
     cmp                  r15,                    1
      je      main_49_if_true
     inc                  r11
     cmp                  r11,                  rbx
      jl     main_6_loop_body
     inc                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_39_if_exit:
     cmp                  r10,                    1
      je      main_40_if_true
     cmp                  r13,                    1
      je      main_43_if_true
     cmp                  r12,                    1
      je      main_46_if_true
     cmp                  r15,                    1
      je      main_49_if_true
     inc                  r11
     cmp                  r11,                  rbx
      jl     main_6_loop_body
     inc                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_40_if_true:
     inc                  rdi
     cmp                  r13,                    1
      je      main_43_if_true
     cmp                  r12,                    1
      je      main_46_if_true
     cmp                  r15,                    1
      je      main_49_if_true
     inc                  r11
     cmp                  r11,                  rbx
      jl     main_6_loop_body
     inc                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_42_if_exit:
     cmp                  r13,                    1
      je      main_43_if_true
     cmp                  r12,                    1
      je      main_46_if_true
     cmp                  r15,                    1
      je      main_49_if_true
     inc                  r11
     cmp                  r11,                  rbx
      jl     main_6_loop_body
     inc                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_43_if_true:
     inc                  rdi
     cmp                  r12,                    1
      je      main_46_if_true
     cmp                  r15,                    1
      je      main_49_if_true
     inc                  r11
     cmp                  r11,                  rbx
      jl     main_6_loop_body
     inc                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_45_if_exit:
     cmp                  r12,                    1
      je      main_46_if_true
     cmp                  r15,                    1
      je      main_49_if_true
     inc                  r11
     cmp                  r11,                  rbx
      jl     main_6_loop_body
     inc                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_46_if_true:
     inc                  rdi
     cmp                  r15,                    1
      je      main_49_if_true
     inc                  r11
     cmp                  r11,                  rbx
      jl     main_6_loop_body
     inc                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_48_if_exit:
     cmp                  r15,                    1
      je      main_49_if_true
     inc                  r11
     cmp                  r11,                  rbx
      jl     main_6_loop_body
     inc                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_49_if_true:
     inc                  rdi
     inc                  r11
     cmp                  r11,                  rbx
      jl     main_6_loop_body
     inc                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_52_loop_increment:
     inc                  r11
     cmp                  r11,                  rbx
      jl     main_6_loop_body
     inc                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_54_loop_increment:
     inc                   r8
     cmp                   r8,                  rbx
      jl     main_4_loop_body
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_56_loop_increment:
     inc                   r9
     cmp                   r9,                  rbx
      jl     main_2_loop_body
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_57_loop_exit:
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     mov                   r9,                    1
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_58_loop_condition:
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_59_loop_body:
     mov                  rbx,                  100
     mov                  rdi,                  rbx
     dec                  rdi
     mov                  rsi,                  rbx
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rbx
     sub                  rdi,                    2
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r12,                  rbx
     sub                  r12,                    3
     mov                  rdi,                  rsi
     mov                  eax,                  edi
     mov                  ecx,                 r12d
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  rbx
     sub                  rsi,                    4
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  r12,                  rbx
     sub                  r12,                    5
     mov                  rsi,                  rdi
     mov                  eax,                  esi
     mov                  ecx,                 r12d
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rbx
     sub                  rdi,                    6
     mov                  r12,                  rsi
     mov                  eax,                 r12d
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov                  rsi,                  rbx
     sub                  rsi,                    7
     mov                  rdi,                  r12
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  rbx
     sub                  rsi,                    8
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  rbx
     sub                  rsi,                    9
     mov                  r12,                  rdi
     mov                  eax,                 r12d
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov                  rdi,                  rbx
     sub                  rdi,                   10
     mov                  rsi,                  r12
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rbx
     sub                  rdi,                   11
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r12,                  rbx
     sub                  r12,                   12
     mov                  rdi,                  rsi
     mov                  eax,                  edi
     mov                  ecx,                 r12d
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  rbx
     sub                  rsi,                   13
     mov                  r12,                  rdi
     mov                  eax,                 r12d
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov                  rdi,                  rbx
     sub                  rdi,                   14
     mov                  rsi,                  r12
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rbx
     sub                  rdi,                   15
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rbx
     sub                  rdi,                   16
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rbx
     sub                  rdi,                   17
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rbx
     sub                  rdi,                   18
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rbx
     sub                  rdi,                   19
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     sub                  rbx,                   20
     mov                  eax,                  esi
     mov                  ecx,                  ebx
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rbx,                  rsi
     mov                  rsi,                   r9
     mov                  rax,                  rsi
     mov                  rcx,              3000000
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     cmp                  rsi,                    0
      je      main_60_if_true
     inc                   r9
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_66_inline_enter:
     mov                  rdi,                  rbx
     dec                  rdi
     mov                  rsi,                  rbx
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rbx
     sub                  rdi,                    2
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r12,                  rbx
     sub                  r12,                    3
     mov                  rdi,                  rsi
     mov                  eax,                  edi
     mov                  ecx,                 r12d
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  rbx
     sub                  rsi,                    4
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  r12,                  rbx
     sub                  r12,                    5
     mov                  rsi,                  rdi
     mov                  eax,                  esi
     mov                  ecx,                 r12d
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rbx
     sub                  rdi,                    6
     mov                  r12,                  rsi
     mov                  eax,                 r12d
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov                  rsi,                  rbx
     sub                  rsi,                    7
     mov                  rdi,                  r12
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  rbx
     sub                  rsi,                    8
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  rbx
     sub                  rsi,                    9
     mov                  r12,                  rdi
     mov                  eax,                 r12d
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov                  rdi,                  rbx
     sub                  rdi,                   10
     mov                  rsi,                  r12
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rbx
     sub                  rdi,                   11
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r12,                  rbx
     sub                  r12,                   12
     mov                  rdi,                  rsi
     mov                  eax,                  edi
     mov                  ecx,                 r12d
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  rbx
     sub                  rsi,                   13
     mov                  r12,                  rdi
     mov                  eax,                 r12d
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov                  rdi,                  rbx
     sub                  rdi,                   14
     mov                  rsi,                  r12
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rbx
     sub                  rdi,                   15
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rbx
     sub                  rdi,                   16
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rbx
     sub                  rdi,                   17
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rbx
     sub                  rdi,                   18
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rbx
     sub                  rdi,                   19
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     sub                  rbx,                   20
     mov                  eax,                  esi
     mov                  ecx,                  ebx
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rbx,                  rsi
     mov                  rsi,                   r9
     mov                  rax,                  rsi
     mov                  rcx,              3000000
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     cmp                  rsi,                    0
      je      main_60_if_true
     inc                   r9
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_67_inline_exit:
     mov                  rbx,                  rsi
     mov                  rsi,                   r9
     mov                  rax,                  rsi
     mov                  rcx,              3000000
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     cmp                  rsi,                    0
      je      main_60_if_true
     inc                   r9
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_60_if_true:
     mov                  rdi,                  rbx
    push                   r9
    call          println_Int
     pop                   r9
     inc                   r9
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_63_loop_increment:
     inc                   r9
     cmp                   r9,             30000000
     jle    main_59_loop_body
     mov                  rax,                    0
     jmp   main_65_block_exit
main_64_loop_exit:
     mov                  rax,                    0
main_65_block_exit:
     pop                  rbx
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     pop                  rbp
     ret
SECTION .data
SECTION .bss
SECTION .data
__println_int_format:
      db         "%ld", 10, 0
__print_int_format:
      db             "%ld", 0
__print_format:
      db              "%s", 0
__scanf_int_format:
      db             "%ld", 0
__scanf_string_format:
      db              "%s", 0
__toString_format:
      db             "%ld", 0
__parseInt_format:
      db             "%ld", 0
SECTION .bss
__scanf_int_buf:
    resq                    1
__sscanf_int_buf:
    resq                    1
SECTION .text
print_Int:
     mov                  rsi,                  rdi
     mov                  rdi,   __print_int_format
     sub                  rsp,                    8
    call               printf
     add                  rsp,                    8
     ret
println_Int:
     mov                  rsi,                  rdi
     mov                  rdi, __println_int_format
     sub                  rsp,                    8
    call               printf
     add                  rsp,                    8
     ret
print:
     mov                  rsi,                  rdi
     mov                  rdi,       __print_format
     sub                  rsp,                    8
    call               printf
     add                  rsp,                    8
     ret
println:
     sub                  rsp,                    8
    call                 puts
     add                  rsp,                    8
     ret
getInt:
     mov                  rdi,   __scanf_int_format
     mov                  rsi,      __scanf_int_buf
     sub                  rsp,                    8
    call                scanf
     add                  rsp,                    8
     mov                  rax, qword [__scanf_int_buf]
     ret
getString:
    push                  r15
     mov                  rdi,                  300
    call               malloc
     mov                  r15,                  rax
     add                  r15,                    8
     mov                  rdi, __scanf_string_format
     mov                  rsi,                  r15
    call                scanf
     mov                  rdi,                  r15
    call               strlen
     mov      qword [r15 - 8],                  rax
     mov                  rax,                  r15
     pop                  r15
     ret
toString:
    push                  r15
    push                  rdi
     mov                  rdi,                   20
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     mov                  r15,                  rax
     add                  r15,                    8
     mov                  rdi,                  r15
     mov                  rsi,    __toString_format
     pop                  rdx
    call              sprintf
     mov                  rdi,                  r15
    call               strlen
     mov      qword [r15 - 8],                  rax
     mov                  rax,                  r15
     pop                  r15
     ret
__array_size:
     mov                  rax,      qword [rdi - 8]
     ret
__string_length:
     mov                  rax,      qword [rdi - 8]
     ret
__string_parseInt:
     mov                  rsi,   __scanf_int_format
     mov                  rdx,     __sscanf_int_buf
     sub                  rsp,                    8
    call               sscanf
     add                  rsp,                    8
     mov                  rax, qword [__sscanf_int_buf]
     ret
__string_ord:
     add                  rdi,                  rsi
   movsx                  rax,           byte [rdi]
     ret
__string_connection:
    push                  r15
    push                  r14
    push                  r13
     mov                  r15,      qword [rdi - 8]
     add                  r15,      qword [rsi - 8]
     add                  r15,                    9
     mov                  r14,                  rdi
     mov                  r13,                  rsi
     mov                  rdi,                  r15
    call               malloc
     sub                  r15,                    9
     mov          qword [rax],                  r15
     mov                  r15,                  rax
     add                  r15,                    8
     mov                  rdi,                  r15
     mov                  rsi,                  r14
    call               strcpy
     add                  r15,      qword [r14 - 8]
     mov                  r14,                  rax
     mov                  rdi,                  r15
     mov                  rsi,                  r13
    call               strcpy
     mov                  rax,                  r14
     pop                  r13
     pop                  r14
     pop                  r15
     ret
__string_substring:
    push                  r15
    push                  r14
     mov                  r15,                  rdi
     add                  r15,                  rsi
     mov                  r14,                  rdx
     sub                  r14,                  rsi
     add                  r14,                    1
     mov                  rdi,                  r14
     add                  rdi,                    9
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     add                  rax,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  r15
     mov                  rdx,                  r14
     sub                  rsp,                    8
    call               memcpy
     add                  rsp,                    8
     mov      qword [rax - 8],                  r14
     mov                  r15,                  rax
     add                  r15,                  r14
     mov                  r15,                    0
     pop                  r14
     pop                  r15
     ret
__string_LE:
     cmp                  eax,                    0
     mov                  rax,                    0
    setl                   al
     ret
__string_LEEQ:
     cmp                  eax,                    0
     mov                  rax,                    0
   setle                   al
     ret
__string_GR:
     cmp                  eax,                    0
     mov                  rax,                    0
    setg                   al
     ret
__string_GREQ:
     cmp                  eax,                    0
     mov                  rax,                    0
   setge                   al
     ret
__string_EQ:
     cmp                  eax,                    0
     mov                  rax,                    0
    sete                   al
     ret
__string_NEQ:
     cmp                  eax,                    0
     mov                  rax,                    0
   setne                   al
     ret
