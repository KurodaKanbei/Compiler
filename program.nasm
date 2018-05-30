global __global_init
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
__global_init:
    push                  rbp
     mov                  rbp,                  rsp
__global_init_0_block_enter:
__global_init_1_block_exit:
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call        __global_init
     sub                  rsp,                   24
    push                  r12
    push                  r14
    push                  r13
    push                  rbx
main_0_block_enter:
     mov                  r10,                    0
     mov                  rbx,              1000000
main_1_loop_condition:
     cmp                  r10,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     main_2_loop_body
     jmp    main_13_loop_exit
main_2_loop_body:
     mov                  rsi,                  r10
     add                  rsi,                    1
     mov       qword [@A + 0],                  rsi
     mov                  rsi,                  r10
     add                  rsi,                    1
     mov       qword [@B + 0],                  rsi
     mov                  rsi,                  r10
     add                  rsi,                    1
     mov       qword [@C + 0],                  rsi
main_3_loop_condition:
     cmp       qword [@C + 0],            536870912
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
     jne main_5_logical_false
main_4_logical_true:
     mov                  rsi,            536870912
     neg                  rsi
     cmp       qword [@C + 0],                  rsi
     mov                  rsi,                    0
    setg                  sil
     jmp  main_6_logical_exit
main_5_logical_false:
     mov                  rsi,                    0
main_6_logical_exit:
     cmp                  rsi,                    1
      je     main_7_loop_body
     jmp     main_8_loop_exit
main_7_loop_body:
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     sub                  rdi,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  r12,       qword [@A + 0]
     add                  r12,       qword [@B + 0]
     sub                  rsi,                  r12
     mov                   r8,                  rdi
     add                   r8,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                  r12,                  rsi
     sub                  r12,                  rdi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  rdi,                  r12
     add                  rdi,                  rsi
     mov                  r12,                   r8
     add                  r12,                  rdi
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                  rdi,                  rsi
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     sub                  rdi,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                   r8,       qword [@A + 0]
     add                   r8,       qword [@B + 0]
     mov                  r13,                  rsi
     sub                  r13,                   r8
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                   r8,                  r13
     add                   r8,                  rsi
     mov                  rsi,                  rdi
     add                  rsi,                   r8
     mov                   r8,                  r12
     sub                   r8,                  rsi
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  r12,                  rdi
     add                  r12,                  rsi
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  rdi,       qword [@C + 0]
     sub                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     add                  rsi,                  rdi
     sub                  r12,                  rsi
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  rdi,       qword [@C + 0]
     sub                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     add                  rsi,                  rdi
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     sub                  rsi,                  rdi
     mov                  r13,                  r12
     sub                  r13,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                  r12,                  rsi
     sub                  r12,                  rdi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                  r12,                  rsi
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  rdi,       qword [@C + 0]
     sub                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     add                  rsi,                  rdi
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     sub                  rsi,                  rdi
     mov                  rdi,                  r12
     sub                  rdi,                  rsi
     mov                  rsi,                  r13
     add                  rsi,                  rdi
     mov                  r13,                   r8
     sub                  r13,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     sub                  rdi,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  r12,       qword [@A + 0]
     add                  r12,       qword [@B + 0]
     sub                  rsi,                  r12
     mov                  r12,                  rdi
     add                  r12,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     sub                  rdi,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                  rdi,                  rsi
     add                  r12,                  rdi
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                  rdi,                  rsi
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                   r8,                  rdi
     sub                   r8,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                   r9,                  rsi
     sub                   r9,                  rdi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B + 0]
     mov                  rsi,                   r9
     add                  rsi,                  rdi
     mov                  rdi,                   r8
     add                  rdi,                  rsi
     sub                  r12,                  rdi
     mov                   r8,       qword [@A + 0]
     add                   r8,       qword [@B + 0]
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B + 0]
     mov                  rsi,                   r8
     add                  rsi,                  rdi
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     sub                  rsi,                  rdi
     mov                  rdi,       qword [@C + 0]
     sub                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                   r8,       qword [@A + 0]
     add                   r8,       qword [@B + 0]
     sub                  rdi,                   r8
     mov                   r8,       qword [@C + 0]
     sub                   r8,       qword [@A + 0]
     add                   r8,       qword [@B + 0]
     add                  rdi,                   r8
     mov                   r9,                  rsi
     add                   r9,                  rdi
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                  rdi,                  rsi
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                   r8,                  rdi
     sub                   r8,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     sub                  rdi,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                  rdi,                  rsi
     mov                  rsi,                   r8
     add                  rsi,                  rdi
     mov                  rdi,                   r9
     sub                  rdi,                  rsi
     mov                  rsi,                  r12
     sub                  rsi,                  rdi
     add                  r13,                  rsi
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                  rdi,                  rsi
     mov                  r12,       qword [@A + 0]
     add                  r12,       qword [@B + 0]
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                  r12,                  rsi
     mov                  rsi,                  rdi
     sub                  rsi,                  r12
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                  r12,       qword [@C + 0]
     sub                  r12,       qword [@A + 0]
     add                  r12,       qword [@B + 0]
     add                  rdi,                  r12
     mov                  r12,       qword [@A + 0]
     add                  r12,       qword [@B + 0]
     sub                  rdi,                  r12
     mov                   r8,                  rsi
     sub                   r8,                  rdi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     sub                  rdi,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                   r9,                  rdi
     add                   r9,                  rsi
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  rdi,       qword [@C + 0]
     sub                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     add                  rsi,                  rdi
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                  r12,                  rsi
     sub                  r12,                  rdi
     mov                  rsi,                   r9
     sub                  rsi,                  r12
     mov                  rdi,                   r8
     add                  rdi,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                   r8,       qword [@A + 0]
     add                   r8,       qword [@B + 0]
     mov                  r12,                  rsi
     sub                  r12,                   r8
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                  r12,                  rsi
     mov                   r9,       qword [@A + 0]
     add                   r9,       qword [@B + 0]
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                   r8,                  rsi
     add                   r8,       qword [@B + 0]
     mov                  rsi,                   r9
     add                  rsi,                   r8
     mov                   r8,       qword [@A + 0]
     add                   r8,       qword [@B + 0]
     sub                  rsi,                   r8
     sub                  r12,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                   r8,                  rsi
     add                   r8,       qword [@B + 0]
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     sub                   r8,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                   r8,                  rsi
     mov                   r9,       qword [@A + 0]
     add                   r9,       qword [@B + 0]
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  r14,                   r9
     add                  r14,                  rsi
     mov                   r9,       qword [@A + 0]
     add                   r9,       qword [@B + 0]
     mov                  rsi,                  r14
     sub                  rsi,                   r9
     sub                   r8,                  rsi
     mov                  rsi,                  r12
     add                  rsi,                   r8
     mov                  r14,                  rdi
     add                  r14,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                  r12,                  rsi
     sub                  r12,                  rdi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     sub                  rdi,                  rsi
     add                  r12,                  rdi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     sub                  rdi,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                  rdi,                  rsi
     mov                   r8,                  r12
     add                   r8,                  rdi
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                  rdi,                  rsi
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  r12,                  rdi
     sub                  r12,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     sub                  rdi,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r12
     add                  rsi,                  rdi
     mov                   r9,                   r8
     sub                   r9,                  rsi
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                  rdi,                  rsi
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     sub                  rdi,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  r12,       qword [@A + 0]
     add                  r12,       qword [@B + 0]
     mov                   r8,                  rsi
     sub                   r8,                  r12
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  r12,                  rsi
     add                  r12,       qword [@B + 0]
     mov                  rsi,                   r8
     add                  rsi,                  r12
     add                  rdi,                  rsi
     mov                   r8,       qword [@A + 0]
     add                   r8,       qword [@B + 0]
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  r12,                  rsi
     add                  r12,       qword [@B + 0]
     mov                  rsi,                   r8
     add                  rsi,                  r12
     mov                  r12,       qword [@A + 0]
     add                  r12,       qword [@B + 0]
     mov                   r8,                  rsi
     sub                   r8,                  r12
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  r12,                  rsi
     add                  r12,       qword [@B + 0]
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     sub                  r12,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                  r12,                  rsi
     mov                  rsi,                   r8
     add                  rsi,                  r12
     mov                  r12,                  rdi
     sub                  r12,                  rsi
     mov                  rdi,                   r9
     sub                  rdi,                  r12
     mov                  rsi,                  r14
     add                  rsi,                  rdi
     mov                  rdi,                  r13
     sub                  rdi,                  rsi
     mov       qword [@A + 0],                  rdi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                  r12,                  rsi
     sub                  r12,                  rdi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     sub                  rsi,                  rdi
     mov                  rdi,                  r12
     add                  rdi,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  r12,                  rsi
     add                  r12,       qword [@B + 0]
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                   r8,                  r12
     sub                   r8,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  r12,                  rsi
     add                  r12,       qword [@B + 0]
     mov                  rsi,                   r8
     add                  rsi,                  r12
     mov                   r8,                  rdi
     add                   r8,                  rsi
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                  rdi,                  rsi
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  r12,                  rdi
     sub                  r12,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     sub                  rdi,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  r13,                  rsi
     add                  r13,       qword [@B + 0]
     mov                  rsi,                  rdi
     add                  rsi,                  r13
     mov                  rdi,                  r12
     add                  rdi,                  rsi
     sub                   r8,                  rdi
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  rdi,       qword [@C + 0]
     sub                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                  r12,                  rsi
     add                  r12,                  rdi
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  rdi,       qword [@C + 0]
     sub                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     add                  rsi,                  rdi
     sub                  r12,                  rsi
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  rdi,       qword [@C + 0]
     sub                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     add                  rsi,                  rdi
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     sub                  rsi,                  rdi
     mov                  r13,                  r12
     sub                  r13,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  r12,       qword [@A + 0]
     add                  r12,       qword [@B + 0]
     mov                  rdi,                  rsi
     sub                  rdi,                  r12
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  r12,                  rdi
     add                  r12,                  rsi
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                  rdi,                  rsi
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     sub                  rdi,                  rsi
     sub                  r12,                  rdi
     mov                  rsi,                  r13
     add                  rsi,                  r12
     mov                   r9,                   r8
     sub                   r9,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  r12,                  rdi
     sub                  r12,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     sub                  rdi,                  rsi
     add                  r12,                  rdi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                   r8,       qword [@A + 0]
     add                   r8,       qword [@B + 0]
     mov                  rdi,                  rsi
     sub                  rdi,                   r8
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                  rdi,                  rsi
     mov                   r8,                  r12
     add                   r8,                  rdi
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                  rdi,                  rsi
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     sub                  rdi,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  r12,                  rsi
     add                  r12,       qword [@B + 0]
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     sub                  r12,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                  r12,                  rsi
     mov                  rsi,                  rdi
     add                  rsi,                  r12
     mov                  r14,                   r8
     sub                  r14,                  rsi
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                  rdi,                  rsi
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  r12,                  rdi
     sub                  r12,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     sub                  rdi,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                  rdi,                  rsi
     add                  r12,                  rdi
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                  rdi,                  rsi
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     sub                  rdi,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                   r8,                  rsi
     add                   r8,       qword [@B + 0]
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     sub                   r8,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  r13,                  rsi
     add                  r13,       qword [@B + 0]
     mov                  rsi,                   r8
     add                  rsi,                  r13
     add                  rdi,                  rsi
     sub                  r12,                  rdi
     mov                  rsi,                  r14
     sub                  rsi,                  r12
     mov                  r12,                   r9
     add                  r12,                  rsi
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                  rdi,                  rsi
     mov                   r8,       qword [@A + 0]
     add                   r8,       qword [@B + 0]
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  r13,                  rsi
     add                  r13,       qword [@B + 0]
     mov                  rsi,                   r8
     add                  rsi,                  r13
     mov                  r13,                  rdi
     sub                  r13,                  rsi
     mov                   r8,       qword [@A + 0]
     add                   r8,       qword [@B + 0]
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B + 0]
     mov                  rsi,                   r8
     add                  rsi,                  rdi
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     sub                  rsi,                  rdi
     mov                   r8,                  r13
     sub                   r8,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     sub                  rdi,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  r13,                  rdi
     add                  r13,                  rsi
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                  rdi,                  rsi
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     sub                  rdi,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                  rdi
     mov                   r9,                   r8
     add                   r9,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     sub                  rdi,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                  rdi,                  rsi
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                   r8,       qword [@C + 0]
     sub                   r8,       qword [@A + 0]
     add                   r8,       qword [@B + 0]
     add                  rsi,                   r8
     mov                   r8,       qword [@A + 0]
     add                   r8,       qword [@B + 0]
     sub                  rsi,                   r8
     mov                  r13,                  rdi
     sub                  r13,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                   r8,                  rsi
     sub                   r8,                  rdi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B + 0]
     mov                  rsi,                   r8
     add                  rsi,                  rdi
     mov                   r8,       qword [@A + 0]
     add                   r8,       qword [@B + 0]
     mov                  rdi,       qword [@C + 0]
     sub                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     add                   r8,                  rdi
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     sub                   r8,                  rdi
     mov                  rdi,                  rsi
     sub                  rdi,                   r8
     mov                  rsi,                  r13
     add                  rsi,                  rdi
     mov                  r14,                   r9
     add                  r14,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                   r8,                  rdi
     sub                   r8,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     sub                  rsi,                  rdi
     add                   r8,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     sub                  rsi,                  rdi
     mov                  rdi,       qword [@C + 0]
     sub                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     add                  rsi,                  rdi
     add                   r8,                  rsi
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                  rdi,                  rsi
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  r13,                  rdi
     sub                  r13,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     sub                  rdi,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     add                  rsi,                  rdi
     mov                  r13,                   r8
     sub                  r13,                  rsi
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                  rdi,                  rsi
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                   r9,                  rdi
     sub                   r9,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                   r8,                  rsi
     sub                   r8,                  rdi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B + 0]
     mov                  rsi,                   r8
     add                  rsi,                  rdi
     add                   r9,                  rsi
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                  rdi,                  rsi
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     sub                  rdi,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                   r8,                  rsi
     add                   r8,       qword [@B + 0]
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     sub                   r8,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                   r8,                  rsi
     add                  rdi,                   r8
     mov                  rsi,                   r9
     sub                  rsi,                  rdi
     mov                  rdi,                  r13
     sub                  rdi,                  rsi
     mov                  rsi,                  r14
     add                  rsi,                  rdi
     mov                  rdi,                  r12
     sub                  rdi,                  rsi
     mov       qword [@B + 0],                  rdi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  r12,       qword [@A + 0]
     add                  r12,       qword [@B + 0]
     mov                  rdi,                  rsi
     sub                  rdi,                  r12
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  r12,                  rsi
     add                  r12,       qword [@B + 0]
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     sub                  r12,                  rsi
     mov                   r8,                  rdi
     add                   r8,                  r12
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  r12,       qword [@A + 0]
     add                  r12,       qword [@B + 0]
     mov                  rdi,                  rsi
     sub                  rdi,                  r12
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  r12,                  rsi
     add                  r12,       qword [@B + 0]
     mov                  rsi,                  rdi
     add                  rsi,                  r12
     add                   r8,                  rsi
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  rdi,       qword [@C + 0]
     sub                  rdi,       qword [@A + 0]
     mov                  r12,                  rdi
     add                  r12,       qword [@B + 0]
     mov                  rdi,                  rsi
     add                  rdi,                  r12
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     sub                  rdi,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  r12,                  rsi
     add                  r12,       qword [@B + 0]
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  r13,                  r12
     sub                  r13,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  r12,                  rsi
     add                  r12,       qword [@B + 0]
     mov                  rsi,                  r13
     add                  rsi,                  r12
     add                  rdi,                  rsi
     sub                   r8,                  rdi
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  rdi,       qword [@C + 0]
     sub                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                  r12,                  rsi
     add                  r12,                  rdi
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  rdi,       qword [@C + 0]
     sub                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     add                  rsi,                  rdi
     sub                  r12,                  rsi
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  rdi,       qword [@C + 0]
     sub                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                  r13,                  rsi
     add                  r13,                  rdi
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  rdi,                  r13
     sub                  rdi,                  rsi
     sub                  r12,                  rdi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     sub                  rdi,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                  rdi,                  rsi
     mov                  r13,       qword [@A + 0]
     add                  r13,       qword [@B + 0]
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                   r9,                  rsi
     add                   r9,       qword [@B + 0]
     mov                  rsi,                  r13
     add                  rsi,                   r9
     mov                  r13,       qword [@A + 0]
     add                  r13,       qword [@B + 0]
     sub                  rsi,                  r13
     sub                  rdi,                  rsi
     mov                  rsi,                  r12
     add                  rsi,                  rdi
     mov                   r9,                   r8
     sub                   r9,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  r12,                  rdi
     sub                  r12,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     sub                  rdi,                  rsi
     mov                   r8,                  r12
     add                   r8,                  rdi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  r12,                  rdi
     sub                  r12,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B + 0]
     mov                  rsi,                  r12
     add                  rsi,                  rdi
     add                   r8,                  rsi
     mov                  r12,       qword [@A + 0]
     add                  r12,       qword [@B + 0]
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B + 0]
     mov                  rsi,                  r12
     add                  rsi,                  rdi
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                  r12,                  rsi
     sub                  r12,                  rdi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     sub                  rsi,                  rdi
     mov                  rdi,       qword [@C + 0]
     sub                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r12
     add                  rdi,                  rsi
     sub                   r8,                  rdi
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  rdi,       qword [@C + 0]
     sub                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     add                  rsi,                  rdi
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     sub                  rsi,                  rdi
     mov                  rdi,       qword [@C + 0]
     sub                  rdi,       qword [@A + 0]
     mov                  r12,                  rdi
     add                  r12,       qword [@B + 0]
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                  r13,                  r12
     sub                  r13,                  rdi
     mov                  rdi,       qword [@C + 0]
     sub                  rdi,       qword [@A + 0]
     mov                  r12,                  rdi
     add                  r12,       qword [@B + 0]
     mov                  rdi,                  r13
     add                  rdi,                  r12
     mov                  r13,                  rsi
     add                  r13,                  rdi
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                  rdi,                  rsi
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  r12,                  rdi
     sub                  r12,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     sub                  rsi,                  rdi
     mov                  rdi,       qword [@C + 0]
     sub                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r12
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                  rdi
     mov                  rdi,                   r8
     sub                  rdi,                  rsi
     mov                  r13,                   r9
     add                  r13,                  rdi
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  rdi,       qword [@C + 0]
     sub                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                  r12,                  rsi
     add                  r12,                  rdi
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  rdi,       qword [@C + 0]
     sub                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r12
     sub                  rdi,                  rsi
     mov                  r12,       qword [@A + 0]
     add                  r12,       qword [@B + 0]
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                  r12,                  rsi
     mov                   r8,       qword [@A + 0]
     add                   r8,       qword [@B + 0]
     mov                  rsi,                  r12
     sub                  rsi,                   r8
     mov                   r8,                  rdi
     sub                   r8,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                  r12,                  rsi
     sub                  r12,                  rdi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                  r12,                  rsi
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                   r9,                  rdi
     add                   r9,                  rsi
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                  rsi,                   r9
     sub                  rsi,                  rdi
     mov                  rdi,                  r12
     sub                  rdi,                  rsi
     add                   r8,                  rdi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     sub                  rdi,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  r12,                  rdi
     add                  r12,                  rsi
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                  rdi,                  rsi
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     sub                  rdi,                  rsi
     mov                  r14,                  r12
     sub                  r14,                  rdi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     sub                  rdi,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                  rdi,                  rsi
     mov                  r12,       qword [@A + 0]
     add                  r12,       qword [@B + 0]
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                   r9,                  rsi
     add                   r9,       qword [@B + 0]
     mov                  rsi,                  r12
     add                  rsi,                   r9
     mov                  r12,       qword [@A + 0]
     add                  r12,       qword [@B + 0]
     sub                  rsi,                  r12
     sub                  rdi,                  rsi
     mov                  rsi,                  r14
     add                  rsi,                  rdi
     mov                  r14,                   r8
     add                  r14,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     sub                  rdi,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  r12,       qword [@A + 0]
     add                  r12,       qword [@B + 0]
     sub                  rsi,                  r12
     add                  rdi,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  r12,                  rsi
     add                  r12,       qword [@B + 0]
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     sub                  r12,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                   r8,                  r12
     add                   r8,                  rsi
     mov                  r12,                  rdi
     add                  r12,                   r8
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                  rdi,                  rsi
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                   r8,                  rdi
     sub                   r8,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     sub                  rdi,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     mov                   r9,                  rsi
     add                   r9,       qword [@B + 0]
     mov                  rsi,                  rdi
     add                  rsi,                   r9
     mov                  rdi,                   r8
     add                  rdi,                  rsi
     mov                   r9,                  r12
     sub                   r9,                  rdi
     mov                  rdi,       qword [@A + 0]
     add                  rdi,       qword [@B + 0]
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                  rdi,                  rsi
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     sub                  rdi,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  r12,       qword [@A + 0]
     add                  r12,       qword [@B + 0]
     mov                   r8,                  rsi
     sub                   r8,                  r12
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  r12,                   r8
     add                  r12,                  rsi
     add                  rdi,                  r12
     mov                  r12,       qword [@A + 0]
     add                  r12,       qword [@B + 0]
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     add                  r12,                  rsi
     mov                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                   r8,                  r12
     sub                   r8,                  rsi
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,       qword [@A + 0]
     add                  rsi,       qword [@B + 0]
     mov                  r12,       qword [@A + 0]
     add                  r12,       qword [@B + 0]
     sub                  rsi,                  r12
     mov                  r12,       qword [@C + 0]
     sub                  r12,       qword [@A + 0]
     add                  r12,       qword [@B + 0]
     add                  rsi,                  r12
     mov                  r12,                   r8
     add                  r12,                  rsi
     sub                  rdi,                  r12
     mov                  rsi,                   r9
     sub                  rsi,                  rdi
     mov                  rdi,                  r14
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                  rdi
     mov       qword [@C + 0],                  rsi
     jmp main_3_loop_condition
main_8_loop_exit:
     mov                  rsi,                  r10
     mov                  rax,                  rsi
     mov                  rcx,                 1000
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     cmp                  rsi,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je       main_9_if_true
     jmp     main_10_if_false
main_9_if_true:
     mov                  rdi,       qword [@A + 0]
    push                  r10
    call             toString
     pop                  r10
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_0
    push                  r10
    call  __string_connection
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,       qword [@B + 0]
    push                  r10
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     mov                  r12,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  r12
    push                  r10
    call  __string_connection
     pop                  r10
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_1
    push                  r10
    call  __string_connection
     pop                  r10
     mov                  r12,                  rax
     mov                  rdi,       qword [@C + 0]
    push                  r10
    call             toString
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  r12
    push                  r10
    call  __string_connection
     pop                  r10
     mov                  rdi,                  rax
    push                  r10
    call              println
     pop                  r10
     jmp      main_11_if_exit
main_10_if_false:
main_11_if_exit:
main_12_loop_increment:
     add                  r10,                    1
     jmp main_1_loop_condition
main_13_loop_exit:
     mov                  rax,                    0
main_14_block_exit:
     pop                  rbx
     pop                  r13
     pop                  r14
     pop                  r12
     add                  rsp,                   24
     pop                  rbp
     ret
SECTION .data
      dq                    1
__const_string_0:
	db  32,   0
      dq                    1
__const_string_1:
	db  32,   0
SECTION .bss
@A:
    resq                    1
@B:
    resq                    1
@C:
    resq                    1
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
