global point_cross
global point_sqrDis
global __global_init
global point_sub
global point_printPoint
global point_set
global point_add
global main
global point_sqrLen
global point_null
global point_dot
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
point_cross:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
point_cross_0_block_enter:
     mov                   r9,                  rdi
     mov                  rbx,                  rsi
    push                  rsi
    push                   r9
     mov                  rdi,                   24
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                    0
     mov      qword [rsi + 8],                    0
     mov     qword [rsi + 16],                    0
     mov                  r11,                  rsi
     mov                  rsi,       qword [r9 + 8]
    imul                  rsi,     qword [rbx + 16]
     mov                  rdi,      qword [r9 + 16]
    imul                  rdi,      qword [rbx + 8]
     sub                  rsi,                  rdi
     mov                  rdi,      qword [r9 + 16]
    imul                  rdi,      qword [rbx + 0]
     mov                  r10,       qword [r9 + 0]
    imul                  r10,     qword [rbx + 16]
     mov                   r8,                  rdi
     sub                   r8,                  r10
     mov                  r10,       qword [r9 + 0]
    imul                  r10,      qword [rbx + 8]
     mov                  rdi,       qword [r9 + 8]
    imul                  rdi,      qword [rbx + 0]
     mov                   r9,                  r10
     sub                   r9,                  rdi
     mov                  rdi,                  r11
     mov                  r10,                  rsi
     mov                  rsi,                   r9
     mov      qword [rdi + 0],                  r10
     mov      qword [rdi + 8],                   r8
     mov     qword [rdi + 16],                  rsi
     mov                  rax,                  r11
     jmp point_cross_1_block_exit
point_cross_2_inline_enter:
     mov      qword [rsi + 0],                    0
     mov      qword [rsi + 8],                    0
     mov     qword [rsi + 16],                    0
     mov                  r11,                  rsi
     mov                  rsi,       qword [r9 + 8]
    imul                  rsi,     qword [rbx + 16]
     mov                  rdi,      qword [r9 + 16]
    imul                  rdi,      qword [rbx + 8]
     sub                  rsi,                  rdi
     mov                  rdi,      qword [r9 + 16]
    imul                  rdi,      qword [rbx + 0]
     mov                  r10,       qword [r9 + 0]
    imul                  r10,     qword [rbx + 16]
     mov                   r8,                  rdi
     sub                   r8,                  r10
     mov                  r10,       qword [r9 + 0]
    imul                  r10,      qword [rbx + 8]
     mov                  rdi,       qword [r9 + 8]
    imul                  rdi,      qword [rbx + 0]
     mov                   r9,                  r10
     sub                   r9,                  rdi
     mov                  rdi,                  r11
     mov                  r10,                  rsi
     mov                  rsi,                   r9
     mov      qword [rdi + 0],                  r10
     mov      qword [rdi + 8],                   r8
     mov     qword [rdi + 16],                  rsi
     mov                  rax,                  r11
     jmp point_cross_1_block_exit
point_cross_3_inline_exit:
     mov                  r11,                  rsi
     mov                  rsi,       qword [r9 + 8]
    imul                  rsi,     qword [rbx + 16]
     mov                  rdi,      qword [r9 + 16]
    imul                  rdi,      qword [rbx + 8]
     sub                  rsi,                  rdi
     mov                  rdi,      qword [r9 + 16]
    imul                  rdi,      qword [rbx + 0]
     mov                  r10,       qword [r9 + 0]
    imul                  r10,     qword [rbx + 16]
     mov                   r8,                  rdi
     sub                   r8,                  r10
     mov                  r10,       qword [r9 + 0]
    imul                  r10,      qword [rbx + 8]
     mov                  rdi,       qword [r9 + 8]
    imul                  rdi,      qword [rbx + 0]
     mov                   r9,                  r10
     sub                   r9,                  rdi
     mov                  rdi,                  r11
     mov                  r10,                  rsi
     mov                  rsi,                   r9
     mov      qword [rdi + 0],                  r10
     mov      qword [rdi + 8],                   r8
     mov     qword [rdi + 16],                  rsi
     mov                  rax,                  r11
     jmp point_cross_1_block_exit
point_cross_4_inline_enter:
     mov      qword [rdi + 0],                  r10
     mov      qword [rdi + 8],                   r8
     mov     qword [rdi + 16],                  rsi
     mov                  rax,                  r11
     jmp point_cross_1_block_exit
point_cross_5_inline_exit:
     mov                  rax,                  r11
point_cross_1_block_exit:
     pop                  rbx
     pop                  rbp
     ret
point_sqrDis:
    push                  rbp
     mov                  rbp,                  rsp
point_sqrDis_0_block_enter:
     mov                   r8,                  rsi
     mov                   r9,      qword [rdi + 0]
     sub                   r9,       qword [r8 + 0]
     mov                  rsi,      qword [rdi + 0]
     sub                  rsi,       qword [r8 + 0]
     mov                  r10,                   r9
    imul                  r10,                  rsi
     mov                  rsi,      qword [rdi + 8]
     sub                  rsi,       qword [r8 + 8]
     mov                   r9,      qword [rdi + 8]
     sub                   r9,       qword [r8 + 8]
    imul                  rsi,                   r9
     mov                   r9,                  r10
     add                   r9,                  rsi
     mov                  rsi,     qword [rdi + 16]
     sub                  rsi,      qword [r8 + 16]
     mov                  rdi,     qword [rdi + 16]
     sub                  rdi,      qword [r8 + 16]
     mov                   r8,                  rsi
    imul                   r8,                  rdi
     mov                  rsi,                   r9
     add                  rsi,                   r8
     mov                  rax,                  rsi
point_sqrDis_1_block_exit:
     pop                  rbp
     ret
__global_init:
    push                  rbp
     mov                  rbp,                  rsp
__global_init_1_block_exit:
     pop                  rbp
     ret
point_sub:
    push                  rbp
     mov                  rbp,                  rsp
point_sub_0_block_enter:
     mov                   r8,                  rsi
     mov                  rsi,      qword [rdi + 0]
     sub                  rsi,       qword [r8 + 0]
     mov      qword [rdi + 0],                  rsi
     mov                  rsi,      qword [rdi + 8]
     sub                  rsi,       qword [r8 + 8]
     mov      qword [rdi + 8],                  rsi
     mov                  rsi,     qword [rdi + 16]
     sub                  rsi,      qword [r8 + 16]
     mov     qword [rdi + 16],                  rsi
     mov                  rax,                  rdi
point_sub_1_block_exit:
     pop                  rbp
     ret
point_printPoint:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r12
    push                  rbx
point_printPoint_0_block_enter:
     mov                  rbx,                  rdi
     mov                  rdi,      qword [rbx + 0]
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  r12,                  rax
     mov                  rdi,      qword [rbx + 8]
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,                  r12
    call  __string_connection
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rsi,                  rax
     mov                  rdi,     qword [rbx + 16]
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    call  __string_connection
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call              println
point_printPoint_1_block_exit:
     pop                  rbx
     pop                  r12
     pop                  rbp
     ret
point_set:
    push                  rbp
     mov                  rbp,                  rsp
point_set_0_block_enter:
     mov                   r8,                  rsi
     mov                  rsi,                  rdx
     mov                   r9,                  rcx
     mov      qword [rdi + 0],                   r8
     mov      qword [rdi + 8],                  rsi
     mov     qword [rdi + 16],                   r9
point_set_1_block_exit:
     pop                  rbp
     ret
point_add:
    push                  rbp
     mov                  rbp,                  rsp
point_add_0_block_enter:
     mov                   r8,                  rsi
     mov                  rsi,      qword [rdi + 0]
     add                  rsi,       qword [r8 + 0]
     mov      qword [rdi + 0],                  rsi
     mov                  rsi,      qword [rdi + 8]
     add                  rsi,       qword [r8 + 8]
     mov      qword [rdi + 8],                  rsi
     mov                  rsi,     qword [rdi + 16]
     add                  rsi,      qword [r8 + 16]
     mov     qword [rdi + 16],                  rsi
     mov                  rax,                  rdi
point_add_1_block_exit:
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call        __global_init
    push                  rbx
    push                  r12
    push                  r14
    push                  r13
    push                  r15
main_0_block_enter:
    push                  rsi
     mov                  rdi,                   24
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                    0
     mov      qword [rsi + 8],                    0
     mov     qword [rsi + 16],                    0
     mov                  r14,                  rsi
    push                  rsi
     mov                  rdi,                   24
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                    0
     mov      qword [rsi + 8],                    0
     mov     qword [rsi + 16],                    0
     mov                  r10,                  rsi
    push                  rsi
    push                  r10
     mov                  rdi,                   24
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                    0
     mov      qword [rsi + 8],                    0
     mov     qword [rsi + 16],                    0
     mov                  r12,                  rsi
    push                  rsi
    push                  r10
     mov                  rdi,                   24
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                    0
     mov      qword [rsi + 8],                    0
     mov     qword [rsi + 16],                    0
     mov                   r8,                  rsi
     mov                  r13,                  r14
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_4
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_5
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                   r8
    push                  r10
    push                  rsi
    call             toString
     pop                  rsi
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_6
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  463
     neg                  rdi
     mov                  rbx,                  r14
     mov                  rsi,                  849
     mov                  r13,                  rdi
     mov                  rdi,                  480
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rsi,                  208
     neg                  rsi
     mov                  rdi,                  150
     neg                  rdi
     mov                  rbx,                  r10
     mov                  r13,                  585
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rdi,                  670
     neg                  rdi
     mov                   r9,                  742
     neg                   r9
     mov                  rbx,                  r12
     mov                  rsi,                  360
     mov                  r13,                  rdi
     mov                  rdi,                   r9
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rsi,                   29
     neg                  rsi
     mov                  r13,                  591
     neg                  r13
     mov                  rdi,                  960
     neg                  rdi
     mov                  rbx,                   r8
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r14
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     jmp  main_33_inline_exit
main_2_inline_enter:
     mov      qword [rsi + 0],                    0
     mov      qword [rsi + 8],                    0
     mov     qword [rsi + 16],                    0
     mov                  r14,                  rsi
    push                  rsi
     mov                  rdi,                   24
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                    0
     mov      qword [rsi + 8],                    0
     mov     qword [rsi + 16],                    0
     mov                  r10,                  rsi
    push                  rsi
    push                  r10
     mov                  rdi,                   24
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                    0
     mov      qword [rsi + 8],                    0
     mov     qword [rsi + 16],                    0
     mov                  r12,                  rsi
    push                  rsi
    push                  r10
     mov                  rdi,                   24
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                    0
     mov      qword [rsi + 8],                    0
     mov     qword [rsi + 16],                    0
     mov                   r8,                  rsi
     mov                  r13,                  r14
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_4
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_5
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                   r8
    push                  r10
    push                  rsi
    call             toString
     pop                  rsi
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_6
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  463
     neg                  rdi
     mov                  rbx,                  r14
     mov                  rsi,                  849
     mov                  r13,                  rdi
     mov                  rdi,                  480
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rsi,                  208
     neg                  rsi
     mov                  rdi,                  150
     neg                  rdi
     mov                  rbx,                  r10
     mov                  r13,                  585
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rdi,                  670
     neg                  rdi
     mov                   r9,                  742
     neg                   r9
     mov                  rbx,                  r12
     mov                  rsi,                  360
     mov                  r13,                  rdi
     mov                  rdi,                   r9
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rsi,                   29
     neg                  rsi
     mov                  r13,                  591
     neg                  r13
     mov                  rdi,                  960
     neg                  rdi
     mov                  rbx,                   r8
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r14
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     jmp main_34_inline_enter
main_3_inline_exit:
     mov                  r14,                  rsi
    push                  rsi
     mov                  rdi,                   24
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                    0
     mov      qword [rsi + 8],                    0
     mov     qword [rsi + 16],                    0
     mov                  r10,                  rsi
    push                  rsi
    push                  r10
     mov                  rdi,                   24
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                    0
     mov      qword [rsi + 8],                    0
     mov     qword [rsi + 16],                    0
     mov                  r12,                  rsi
    push                  rsi
    push                  r10
     mov                  rdi,                   24
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                    0
     mov      qword [rsi + 8],                    0
     mov     qword [rsi + 16],                    0
     mov                   r8,                  rsi
     mov                  r13,                  r14
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_4
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_5
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                   r8
    push                  r10
    push                  rsi
    call             toString
     pop                  rsi
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_6
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  463
     neg                  rdi
     mov                  rbx,                  r14
     mov                  rsi,                  849
     mov                  r13,                  rdi
     mov                  rdi,                  480
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rsi,                  208
     neg                  rsi
     mov                  rdi,                  150
     neg                  rdi
     mov                  rbx,                  r10
     mov                  r13,                  585
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rdi,                  670
     neg                  rdi
     mov                   r9,                  742
     neg                   r9
     mov                  rbx,                  r12
     mov                  rsi,                  360
     mov                  r13,                  rdi
     mov                  rdi,                   r9
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rsi,                   29
     neg                  rsi
     mov                  r13,                  591
     neg                  r13
     mov                  rdi,                  960
     neg                  rdi
     mov                  rbx,                   r8
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r14
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     jmp  main_35_inline_exit
main_4_inline_enter:
     mov      qword [rsi + 0],                    0
     mov      qword [rsi + 8],                    0
     mov     qword [rsi + 16],                    0
     mov                  r10,                  rsi
    push                  rsi
    push                  r10
     mov                  rdi,                   24
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                    0
     mov      qword [rsi + 8],                    0
     mov     qword [rsi + 16],                    0
     mov                  r12,                  rsi
    push                  rsi
    push                  r10
     mov                  rdi,                   24
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                    0
     mov      qword [rsi + 8],                    0
     mov     qword [rsi + 16],                    0
     mov                   r8,                  rsi
     mov                  r13,                  r14
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_4
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_5
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                   r8
    push                  r10
    push                  rsi
    call             toString
     pop                  rsi
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_6
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  463
     neg                  rdi
     mov                  rbx,                  r14
     mov                  rsi,                  849
     mov                  r13,                  rdi
     mov                  rdi,                  480
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rsi,                  208
     neg                  rsi
     mov                  rdi,                  150
     neg                  rdi
     mov                  rbx,                  r10
     mov                  r13,                  585
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rdi,                  670
     neg                  rdi
     mov                   r9,                  742
     neg                   r9
     mov                  rbx,                  r12
     mov                  rsi,                  360
     mov                  r13,                  rdi
     mov                  rdi,                   r9
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rsi,                   29
     neg                  rsi
     mov                  r13,                  591
     neg                  r13
     mov                  rdi,                  960
     neg                  rdi
     mov                  rbx,                   r8
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r14
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r10
     jmp main_36_inline_enter
main_5_inline_exit:
     mov                  r10,                  rsi
    push                  rsi
    push                  r10
     mov                  rdi,                   24
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                    0
     mov      qword [rsi + 8],                    0
     mov     qword [rsi + 16],                    0
     mov                  r12,                  rsi
    push                  rsi
    push                  r10
     mov                  rdi,                   24
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                    0
     mov      qword [rsi + 8],                    0
     mov     qword [rsi + 16],                    0
     mov                   r8,                  rsi
     mov                  r13,                  r14
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_4
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_5
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                   r8
    push                  r10
    push                  rsi
    call             toString
     pop                  rsi
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_6
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  463
     neg                  rdi
     mov                  rbx,                  r14
     mov                  rsi,                  849
     mov                  r13,                  rdi
     mov                  rdi,                  480
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rsi,                  208
     neg                  rsi
     mov                  rdi,                  150
     neg                  rdi
     mov                  rbx,                  r10
     mov                  r13,                  585
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rdi,                  670
     neg                  rdi
     mov                   r9,                  742
     neg                   r9
     mov                  rbx,                  r12
     mov                  rsi,                  360
     mov                  r13,                  rdi
     mov                  rdi,                   r9
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rsi,                   29
     neg                  rsi
     mov                  r13,                  591
     neg                  r13
     mov                  rdi,                  960
     neg                  rdi
     mov                  rbx,                   r8
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r14
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     jmp  main_37_inline_exit
main_6_inline_enter:
     mov      qword [rsi + 0],                    0
     mov      qword [rsi + 8],                    0
     mov     qword [rsi + 16],                    0
     mov                  r12,                  rsi
    push                  rsi
    push                  r10
     mov                  rdi,                   24
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                    0
     mov      qword [rsi + 8],                    0
     mov     qword [rsi + 16],                    0
     mov                   r8,                  rsi
     mov                  r13,                  r14
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_4
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_5
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                   r8
    push                  r10
    push                  rsi
    call             toString
     pop                  rsi
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_6
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  463
     neg                  rdi
     mov                  rbx,                  r14
     mov                  rsi,                  849
     mov                  r13,                  rdi
     mov                  rdi,                  480
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rsi,                  208
     neg                  rsi
     mov                  rdi,                  150
     neg                  rdi
     mov                  rbx,                  r10
     mov                  r13,                  585
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rdi,                  670
     neg                  rdi
     mov                   r9,                  742
     neg                   r9
     mov                  rbx,                  r12
     mov                  rsi,                  360
     mov                  r13,                  rdi
     mov                  rdi,                   r9
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rsi,                   29
     neg                  rsi
     mov                  r13,                  591
     neg                  r13
     mov                  rdi,                  960
     neg                  rdi
     mov                  rbx,                   r8
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r14
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r12
     jmp main_38_inline_enter
main_7_inline_exit:
     mov                  r12,                  rsi
    push                  rsi
    push                  r10
     mov                  rdi,                   24
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                    0
     mov      qword [rsi + 8],                    0
     mov     qword [rsi + 16],                    0
     mov                   r8,                  rsi
     mov                  r13,                  r14
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_4
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_5
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                   r8
    push                  r10
    push                  rsi
    call             toString
     pop                  rsi
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_6
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  463
     neg                  rdi
     mov                  rbx,                  r14
     mov                  rsi,                  849
     mov                  r13,                  rdi
     mov                  rdi,                  480
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rsi,                  208
     neg                  rsi
     mov                  rdi,                  150
     neg                  rdi
     mov                  rbx,                  r10
     mov                  r13,                  585
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rdi,                  670
     neg                  rdi
     mov                   r9,                  742
     neg                   r9
     mov                  rbx,                  r12
     mov                  rsi,                  360
     mov                  r13,                  rdi
     mov                  rdi,                   r9
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rsi,                   29
     neg                  rsi
     mov                  r13,                  591
     neg                  r13
     mov                  rdi,                  960
     neg                  rdi
     mov                  rbx,                   r8
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r14
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     jmp  main_39_inline_exit
main_8_inline_enter:
     mov      qword [rsi + 0],                    0
     mov      qword [rsi + 8],                    0
     mov     qword [rsi + 16],                    0
     mov                   r8,                  rsi
     mov                  r13,                  r14
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_4
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_5
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                   r8
    push                  r10
    push                  rsi
    call             toString
     pop                  rsi
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_6
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  463
     neg                  rdi
     mov                  rbx,                  r14
     mov                  rsi,                  849
     mov                  r13,                  rdi
     mov                  rdi,                  480
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rsi,                  208
     neg                  rsi
     mov                  rdi,                  150
     neg                  rdi
     mov                  rbx,                  r10
     mov                  r13,                  585
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rdi,                  670
     neg                  rdi
     mov                   r9,                  742
     neg                   r9
     mov                  rbx,                  r12
     mov                  rsi,                  360
     mov                  r13,                  rdi
     mov                  rdi,                   r9
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rsi,                   29
     neg                  rsi
     mov                  r13,                  591
     neg                  r13
     mov                  rdi,                  960
     neg                  rdi
     mov                  rbx,                   r8
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r14
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                   r8
     jmp main_40_inline_enter
main_9_inline_exit:
     mov                   r8,                  rsi
     mov                  r13,                  r14
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_4
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_5
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                   r8
    push                  r10
    push                  rsi
    call             toString
     pop                  rsi
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_6
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  463
     neg                  rdi
     mov                  rbx,                  r14
     mov                  rsi,                  849
     mov                  r13,                  rdi
     mov                  rdi,                  480
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rsi,                  208
     neg                  rsi
     mov                  rdi,                  150
     neg                  rdi
     mov                  rbx,                  r10
     mov                  r13,                  585
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rdi,                  670
     neg                  rdi
     mov                   r9,                  742
     neg                   r9
     mov                  rbx,                  r12
     mov                  rsi,                  360
     mov                  r13,                  rdi
     mov                  rdi,                   r9
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rsi,                   29
     neg                  rsi
     mov                  r13,                  591
     neg                  r13
     mov                  rdi,                  960
     neg                  rdi
     mov                  rbx,                   r8
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r14
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     jmp  main_41_inline_exit
main_10_inline_enter:
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_4
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_5
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                   r8
    push                  r10
    push                  rsi
    call             toString
     pop                  rsi
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_6
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  463
     neg                  rdi
     mov                  rbx,                  r14
     mov                  rsi,                  849
     mov                  r13,                  rdi
     mov                  rdi,                  480
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rsi,                  208
     neg                  rsi
     mov                  rdi,                  150
     neg                  rdi
     mov                  rbx,                  r10
     mov                  r13,                  585
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rdi,                  670
     neg                  rdi
     mov                   r9,                  742
     neg                   r9
     mov                  rbx,                  r12
     mov                  rsi,                  360
     mov                  r13,                  rdi
     mov                  rdi,                   r9
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rsi,                   29
     neg                  rsi
     mov                  r13,                  591
     neg                  r13
     mov                  rdi,                  960
     neg                  rdi
     mov                  rbx,                   r8
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r14
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     jmp main_42_inline_enter
main_11_inline_exit:
     mov                  rdi,                  463
     neg                  rdi
     mov                  rbx,                  r14
     mov                  rsi,                  849
     mov                  r13,                  rdi
     mov                  rdi,                  480
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rsi,                  208
     neg                  rsi
     mov                  rdi,                  150
     neg                  rdi
     mov                  rbx,                  r10
     mov                  r13,                  585
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rdi,                  670
     neg                  rdi
     mov                   r9,                  742
     neg                   r9
     mov                  rbx,                  r12
     mov                  rsi,                  360
     mov                  r13,                  rdi
     mov                  rdi,                   r9
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rsi,                   29
     neg                  rsi
     mov                  r13,                  591
     neg                  r13
     mov                  rdi,                  960
     neg                  rdi
     mov                  rbx,                   r8
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r14
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     jmp  main_43_inline_exit
main_12_inline_enter:
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rsi,                  208
     neg                  rsi
     mov                  rdi,                  150
     neg                  rdi
     mov                  rbx,                  r10
     mov                  r13,                  585
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rdi,                  670
     neg                  rdi
     mov                   r9,                  742
     neg                   r9
     mov                  rbx,                  r12
     mov                  rsi,                  360
     mov                  r13,                  rdi
     mov                  rdi,                   r9
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rsi,                   29
     neg                  rsi
     mov                  r13,                  591
     neg                  r13
     mov                  rdi,                  960
     neg                  rdi
     mov                  rbx,                   r8
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r14
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     jmp main_44_inline_enter
main_13_inline_exit:
     mov                  rsi,                  208
     neg                  rsi
     mov                  rdi,                  150
     neg                  rdi
     mov                  rbx,                  r10
     mov                  r13,                  585
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rdi,                  670
     neg                  rdi
     mov                   r9,                  742
     neg                   r9
     mov                  rbx,                  r12
     mov                  rsi,                  360
     mov                  r13,                  rdi
     mov                  rdi,                   r9
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rsi,                   29
     neg                  rsi
     mov                  r13,                  591
     neg                  r13
     mov                  rdi,                  960
     neg                  rdi
     mov                  rbx,                   r8
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r14
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rdi,                  r14
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  r10
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  r10
     mov                  r13,                  r12
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                   r9,      qword [rsi + 0]
     sub                   r9,      qword [r13 + 0]
     mov                  rdi,                  rbx
    imul                  rdi,                   r9
     mov                   r9,      qword [rsi + 8]
     sub                   r9,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                   r9,                  rbx
     add                  rdi,                   r9
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                   r8
     mov                  r13,                  r14
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                  rdi,      qword [rsi + 0]
     sub                  rdi,      qword [r13 + 0]
     mov                   r9,                  rbx
    imul                   r9,                  rdi
     mov                  rdi,      qword [rsi + 8]
     sub                  rdi,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                  rdi,                  rbx
     add                   r9,                  rdi
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  rbx
     jmp  main_53_inline_exit
main_14_inline_enter:
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rdi,                  670
     neg                  rdi
     mov                   r9,                  742
     neg                   r9
     mov                  rbx,                  r12
     mov                  rsi,                  360
     mov                  r13,                  rdi
     mov                  rdi,                   r9
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rsi,                   29
     neg                  rsi
     mov                  r13,                  591
     neg                  r13
     mov                  rdi,                  960
     neg                  rdi
     mov                  rbx,                   r8
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r14
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rdi,                  r14
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  r10
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  r10
     mov                  r13,                  r12
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                   r9,      qword [rsi + 0]
     sub                   r9,      qword [r13 + 0]
     mov                  rdi,                  rbx
    imul                  rdi,                   r9
     mov                   r9,      qword [rsi + 8]
     sub                   r9,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                   r9,                  rbx
     add                  rdi,                   r9
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                   r8
     mov                  r13,                  r14
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                  rdi,      qword [rsi + 0]
     sub                  rdi,      qword [r13 + 0]
     mov                   r9,                  rbx
    imul                   r9,                  rdi
     mov                  rdi,      qword [rsi + 8]
     sub                  rdi,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                  rdi,                  rbx
     add                   r9,                  rdi
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  r12
     mov                  rsi,                  r14
     jmp main_54_inline_enter
main_15_inline_exit:
     mov                  rdi,                  670
     neg                  rdi
     mov                   r9,                  742
     neg                   r9
     mov                  rbx,                  r12
     mov                  rsi,                  360
     mov                  r13,                  rdi
     mov                  rdi,                   r9
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rsi,                   29
     neg                  rsi
     mov                  r13,                  591
     neg                  r13
     mov                  rdi,                  960
     neg                  rdi
     mov                  rbx,                   r8
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r14
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rdi,                  r14
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  r10
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  r10
     mov                  r13,                  r12
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                   r9,      qword [rsi + 0]
     sub                   r9,      qword [r13 + 0]
     mov                  rdi,                  rbx
    imul                  rdi,                   r9
     mov                   r9,      qword [rsi + 8]
     sub                   r9,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                   r9,                  rbx
     add                  rdi,                   r9
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                   r8
     mov                  r13,                  r14
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                  rdi,      qword [rsi + 0]
     sub                  rdi,      qword [r13 + 0]
     mov                   r9,                  rbx
    imul                   r9,                  rdi
     mov                  rdi,      qword [rsi + 8]
     sub                  rdi,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                  rdi,                  rbx
     add                   r9,                  rdi
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  r12
     mov                  rsi,                  r14
     mov                  r13,      qword [rbx + 0]
    imul                  r13,      qword [rsi + 0]
     mov                  rdi,      qword [rbx + 8]
    imul                  rdi,      qword [rsi + 8]
     add                  r13,                  rdi
     mov                  rbx,     qword [rbx + 16]
    imul                  rbx,     qword [rsi + 16]
     mov                  rsi,                  r13
     add                  rsi,                  rbx
     jmp  main_55_inline_exit
main_16_inline_enter:
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rsi,                   29
     neg                  rsi
     mov                  r13,                  591
     neg                  r13
     mov                  rdi,                  960
     neg                  rdi
     mov                  rbx,                   r8
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r14
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rdi,                  r14
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  r10
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  r10
     mov                  r13,                  r12
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                   r9,      qword [rsi + 0]
     sub                   r9,      qword [r13 + 0]
     mov                  rdi,                  rbx
    imul                  rdi,                   r9
     mov                   r9,      qword [rsi + 8]
     sub                   r9,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                   r9,                  rbx
     add                  rdi,                   r9
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                   r8
     mov                  r13,                  r14
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                  rdi,      qword [rsi + 0]
     sub                  rdi,      qword [r13 + 0]
     mov                   r9,                  rbx
    imul                   r9,                  rdi
     mov                  rdi,      qword [rsi + 8]
     sub                  rdi,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                  rdi,                  rbx
     add                   r9,                  rdi
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  r12
     mov                  rsi,                  r14
     mov                  r13,      qword [rbx + 0]
    imul                  r13,      qword [rsi + 0]
     mov                  rdi,      qword [rbx + 8]
    imul                  rdi,      qword [rsi + 8]
     add                  r13,                  rdi
     mov                  rbx,     qword [rbx + 16]
    imul                  rbx,     qword [rsi + 16]
     mov                  rsi,                  r13
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  r13,                  r10
     jmp main_56_inline_enter
main_17_inline_exit:
     mov                  rsi,                   29
     neg                  rsi
     mov                  r13,                  591
     neg                  r13
     mov                  rdi,                  960
     neg                  rdi
     mov                  rbx,                   r8
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r14
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rdi,                  r14
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  r10
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  r10
     mov                  r13,                  r12
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                   r9,      qword [rsi + 0]
     sub                   r9,      qword [r13 + 0]
     mov                  rdi,                  rbx
    imul                  rdi,                   r9
     mov                   r9,      qword [rsi + 8]
     sub                   r9,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                   r9,                  rbx
     add                  rdi,                   r9
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                   r8
     mov                  r13,                  r14
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                  rdi,      qword [rsi + 0]
     sub                  rdi,      qword [r13 + 0]
     mov                   r9,                  rbx
    imul                   r9,                  rdi
     mov                  rdi,      qword [rsi + 8]
     sub                  rdi,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                  rdi,                  rbx
     add                   r9,                  rdi
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  r12
     mov                  rsi,                  r14
     mov                  r13,      qword [rbx + 0]
    imul                  r13,      qword [rsi + 0]
     mov                  rdi,      qword [rbx + 8]
    imul                  rdi,      qword [rsi + 8]
     add                  r13,                  rdi
     mov                  rbx,     qword [rbx + 16]
    imul                  rbx,     qword [rsi + 16]
     mov                  rsi,                  r13
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  r13,                  r10
    push                   r8
    push                   r8
    push                  r10
    push                  rsi
     mov                  rdi,                   24
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r8
    push                  r10
    push                  rsi
     sub                  rsp,                    8
    call           point_null
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r8
     mov                  rbx,                  rsi
     mov                  rdi,      qword [r13 + 8]
    imul                  rdi,      qword [r8 + 16]
     mov                  rsi,     qword [r13 + 16]
    imul                  rsi,       qword [r8 + 8]
     mov                  r15,                  rdi
     sub                  r15,                  rsi
     mov                  rsi,     qword [r13 + 16]
    imul                  rsi,       qword [r8 + 0]
     mov                  rdi,      qword [r13 + 0]
    imul                  rdi,      qword [r8 + 16]
     mov                   r9,                  rsi
     sub                   r9,                  rdi
     mov                  rsi,      qword [r13 + 0]
    imul                  rsi,       qword [r8 + 8]
     mov                  rdi,      qword [r13 + 8]
    imul                  rdi,       qword [r8 + 0]
     mov                  r13,                  rsi
     sub                  r13,                  rdi
     mov                  rdi,                  rbx
     mov                  rsi,                  r15
     mov                  rdx,                   r9
     mov                  rcx,                  r13
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call            point_set
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rbx
     jmp  main_57_inline_exit
main_18_inline_enter:
     mov      qword [rbx + 0],                  rsi
     mov      qword [rbx + 8],                  r13
     mov     qword [rbx + 16],                  rdi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r14
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rdi,                  r14
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  r10
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  r10
     mov                  r13,                  r12
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                   r9,      qword [rsi + 0]
     sub                   r9,      qword [r13 + 0]
     mov                  rdi,                  rbx
    imul                  rdi,                   r9
     mov                   r9,      qword [rsi + 8]
     sub                   r9,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                   r9,                  rbx
     add                  rdi,                   r9
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                   r8
     mov                  r13,                  r14
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                  rdi,      qword [rsi + 0]
     sub                  rdi,      qword [r13 + 0]
     mov                   r9,                  rbx
    imul                   r9,                  rdi
     mov                  rdi,      qword [rsi + 8]
     sub                  rdi,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                  rdi,                  rbx
     add                   r9,                  rdi
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  r12
     mov                  rsi,                  r14
     mov                  r13,      qword [rbx + 0]
    imul                  r13,      qword [rsi + 0]
     mov                  rdi,      qword [rbx + 8]
    imul                  rdi,      qword [rsi + 8]
     add                  r13,                  rdi
     mov                  rbx,     qword [rbx + 16]
    imul                  rbx,     qword [rsi + 16]
     mov                  rsi,                  r13
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  r13,                  r10
    push                   r8
    push                   r8
    push                  r10
    push                  rsi
     mov                  rdi,                   24
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r8
    push                  r10
    push                  rsi
     sub                  rsp,                    8
    call           point_null
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r8
     mov                  rbx,                  rsi
     mov                  rdi,      qword [r13 + 8]
    imul                  rdi,      qword [r8 + 16]
     mov                  rsi,     qword [r13 + 16]
    imul                  rsi,       qword [r8 + 8]
     mov                  r15,                  rdi
     sub                  r15,                  rsi
     mov                  rsi,     qword [r13 + 16]
    imul                  rsi,       qword [r8 + 0]
     mov                  rdi,      qword [r13 + 0]
    imul                  rdi,      qword [r8 + 16]
     mov                   r9,                  rsi
     sub                   r9,                  rdi
     mov                  rsi,      qword [r13 + 0]
    imul                  rsi,       qword [r8 + 8]
     mov                  rdi,      qword [r13 + 8]
    imul                  rdi,       qword [r8 + 0]
     mov                  r13,                  rsi
     sub                  r13,                  rdi
     mov                  rdi,                  rbx
     mov                  rsi,                  r15
     mov                  rdx,                   r9
     mov                  rcx,                  r13
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call            point_set
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rbx
     mov                  r13,                  rsi
     jmp main_58_inline_enter
main_19_inline_exit:
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r14
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rdi,                  r14
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  r10
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  r10
     mov                  r13,                  r12
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                   r9,      qword [rsi + 0]
     sub                   r9,      qword [r13 + 0]
     mov                  rdi,                  rbx
    imul                  rdi,                   r9
     mov                   r9,      qword [rsi + 8]
     sub                   r9,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                   r9,                  rbx
     add                  rdi,                   r9
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                   r8
     mov                  r13,                  r14
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                  rdi,      qword [rsi + 0]
     sub                  rdi,      qword [r13 + 0]
     mov                   r9,                  rbx
    imul                   r9,                  rdi
     mov                  rdi,      qword [rsi + 8]
     sub                  rdi,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                  rdi,                  rbx
     add                   r9,                  rdi
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  r12
     mov                  rsi,                  r14
     mov                  r13,      qword [rbx + 0]
    imul                  r13,      qword [rsi + 0]
     mov                  rdi,      qword [rbx + 8]
    imul                  rdi,      qword [rsi + 8]
     add                  r13,                  rdi
     mov                  rbx,     qword [rbx + 16]
    imul                  rbx,     qword [rsi + 16]
     mov                  rsi,                  r13
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  r13,                  r10
    push                   r8
    push                   r8
    push                  r10
    push                  rsi
     mov                  rdi,                   24
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r8
    push                  r10
    push                  rsi
     sub                  rsp,                    8
    call           point_null
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r8
     mov                  rbx,                  rsi
     mov                  rdi,      qword [r13 + 8]
    imul                  rdi,      qword [r8 + 16]
     mov                  rsi,     qword [r13 + 16]
    imul                  rsi,       qword [r8 + 8]
     mov                  r15,                  rdi
     sub                  r15,                  rsi
     mov                  rsi,     qword [r13 + 16]
    imul                  rsi,       qword [r8 + 0]
     mov                  rdi,      qword [r13 + 0]
    imul                  rdi,      qword [r8 + 16]
     mov                   r9,                  rsi
     sub                   r9,                  rdi
     mov                  rsi,      qword [r13 + 0]
    imul                  rsi,       qword [r8 + 8]
     mov                  rdi,      qword [r13 + 8]
    imul                  rdi,       qword [r8 + 0]
     mov                  r13,                  rsi
     sub                  r13,                  rdi
     mov                  rdi,                  rbx
     mov                  rsi,                  r15
     mov                  rdx,                   r9
     mov                  rcx,                  r13
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call            point_set
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rbx
     mov                  r13,                  rsi
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_8
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_9
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_10
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                  rsi
    push                   r8
    push                  r10
    call             toString
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_11
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     jmp  main_59_inline_exit
main_20_inline_enter:
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r14
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r10
     jmp main_36_inline_enter
main_21_inline_exit:
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r14
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     jmp  main_37_inline_exit
main_22_inline_enter:
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r14
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r12
     jmp main_38_inline_enter
main_23_inline_exit:
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r14
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     jmp  main_39_inline_exit
main_24_inline_enter:
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r14
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                   r8
     jmp main_40_inline_enter
main_25_inline_exit:
     mov                  rbx,                  r12
     mov                  rdi,                  r14
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     jmp  main_41_inline_exit
main_26_inline_enter:
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     jmp main_42_inline_enter
main_27_inline_exit:
     mov                  rbx,                  r10
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     jmp  main_43_inline_exit
main_28_inline_enter:
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     jmp main_44_inline_enter
main_29_inline_exit:
     mov                  rbx,                   r8
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rdi,                  r14
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  r10
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  r10
     mov                  r13,                  r12
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                   r9,      qword [rsi + 0]
     sub                   r9,      qword [r13 + 0]
     mov                  rdi,                  rbx
    imul                  rdi,                   r9
     mov                   r9,      qword [rsi + 8]
     sub                   r9,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                   r9,                  rbx
     add                  rdi,                   r9
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                   r8
     mov                  r13,                  r14
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                  rdi,      qword [rsi + 0]
     sub                  rdi,      qword [r13 + 0]
     mov                   r9,                  rbx
    imul                   r9,                  rdi
     mov                  rdi,      qword [rsi + 8]
     sub                  rdi,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                  rdi,                  rbx
     add                   r9,                  rdi
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  rbx
     jmp  main_53_inline_exit
main_30_inline_enter:
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rdi,                  r14
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  r10
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  r10
     mov                  r13,                  r12
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                   r9,      qword [rsi + 0]
     sub                   r9,      qword [r13 + 0]
     mov                  rdi,                  rbx
    imul                  rdi,                   r9
     mov                   r9,      qword [rsi + 8]
     sub                   r9,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                   r9,                  rbx
     add                  rdi,                   r9
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                   r8
     mov                  r13,                  r14
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                  rdi,      qword [rsi + 0]
     sub                  rdi,      qword [r13 + 0]
     mov                   r9,                  rbx
    imul                   r9,                  rdi
     mov                  rdi,      qword [rsi + 8]
     sub                  rdi,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                  rdi,                  rbx
     add                   r9,                  rdi
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  r12
     mov                  rsi,                  r14
     jmp main_54_inline_enter
main_31_inline_exit:
     mov                  rbx,                  r12
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rdi,                  r14
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  r10
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  r10
     mov                  r13,                  r12
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                   r9,      qword [rsi + 0]
     sub                   r9,      qword [r13 + 0]
     mov                  rdi,                  rbx
    imul                  rdi,                   r9
     mov                   r9,      qword [rsi + 8]
     sub                   r9,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                   r9,                  rbx
     add                  rdi,                   r9
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                   r8
     mov                  r13,                  r14
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                  rdi,      qword [rsi + 0]
     sub                  rdi,      qword [r13 + 0]
     mov                   r9,                  rbx
    imul                   r9,                  rdi
     mov                  rdi,      qword [rsi + 8]
     sub                  rdi,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                  rdi,                  rbx
     add                   r9,                  rdi
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  r12
     mov                  rsi,                  r14
     mov                  r13,      qword [rbx + 0]
    imul                  r13,      qword [rsi + 0]
     mov                  rdi,      qword [rbx + 8]
    imul                  rdi,      qword [rsi + 8]
     add                  r13,                  rdi
     mov                  rbx,     qword [rbx + 16]
    imul                  rbx,     qword [rsi + 16]
     mov                  rsi,                  r13
     add                  rsi,                  rbx
     jmp  main_55_inline_exit
main_32_inline_enter:
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rdi,                  r14
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  r10
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  r10
     mov                  r13,                  r12
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                   r9,      qword [rsi + 0]
     sub                   r9,      qword [r13 + 0]
     mov                  rdi,                  rbx
    imul                  rdi,                   r9
     mov                   r9,      qword [rsi + 8]
     sub                   r9,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                   r9,                  rbx
     add                  rdi,                   r9
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                   r8
     mov                  r13,                  r14
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                  rdi,      qword [rsi + 0]
     sub                  rdi,      qword [r13 + 0]
     mov                   r9,                  rbx
    imul                   r9,                  rdi
     mov                  rdi,      qword [rsi + 8]
     sub                  rdi,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                  rdi,                  rbx
     add                   r9,                  rdi
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  r12
     mov                  rsi,                  r14
     mov                  r13,      qword [rbx + 0]
    imul                  r13,      qword [rsi + 0]
     mov                  rdi,      qword [rbx + 8]
    imul                  rdi,      qword [rsi + 8]
     add                  r13,                  rdi
     mov                  rbx,     qword [rbx + 16]
    imul                  rbx,     qword [rsi + 16]
     mov                  rsi,                  r13
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  r13,                  r10
     jmp main_56_inline_enter
main_33_inline_exit:
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rdi,                  r14
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  r10
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  r10
     mov                  r13,                  r12
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                   r9,      qword [rsi + 0]
     sub                   r9,      qword [r13 + 0]
     mov                  rdi,                  rbx
    imul                  rdi,                   r9
     mov                   r9,      qword [rsi + 8]
     sub                   r9,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                   r9,                  rbx
     add                  rdi,                   r9
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                   r8
     mov                  r13,                  r14
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                  rdi,      qword [rsi + 0]
     sub                  rdi,      qword [r13 + 0]
     mov                   r9,                  rbx
    imul                   r9,                  rdi
     mov                  rdi,      qword [rsi + 8]
     sub                  rdi,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                  rdi,                  rbx
     add                   r9,                  rdi
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  r12
     mov                  rsi,                  r14
     mov                  r13,      qword [rbx + 0]
    imul                  r13,      qword [rsi + 0]
     mov                  rdi,      qword [rbx + 8]
    imul                  rdi,      qword [rsi + 8]
     add                  r13,                  rdi
     mov                  rbx,     qword [rbx + 16]
    imul                  rbx,     qword [rsi + 16]
     mov                  rsi,                  r13
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  r13,                  r10
    push                   r8
    push                   r8
    push                  r10
    push                  rsi
     mov                  rdi,                   24
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r8
    push                  r10
    push                  rsi
     sub                  rsp,                    8
    call           point_null
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r8
     mov                  rbx,                  rsi
     mov                  rdi,      qword [r13 + 8]
    imul                  rdi,      qword [r8 + 16]
     mov                  rsi,     qword [r13 + 16]
    imul                  rsi,       qword [r8 + 8]
     mov                  r15,                  rdi
     sub                  r15,                  rsi
     mov                  rsi,     qword [r13 + 16]
    imul                  rsi,       qword [r8 + 0]
     mov                  rdi,      qword [r13 + 0]
    imul                  rdi,      qword [r8 + 16]
     mov                   r9,                  rsi
     sub                   r9,                  rdi
     mov                  rsi,      qword [r13 + 0]
    imul                  rsi,       qword [r8 + 8]
     mov                  rdi,      qword [r13 + 8]
    imul                  rdi,       qword [r8 + 0]
     mov                  r13,                  rsi
     sub                  r13,                  rdi
     mov                  rdi,                  rbx
     mov                  rsi,                  r15
     mov                  rdx,                   r9
     mov                  rcx,                  r13
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call            point_set
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rbx
     jmp  main_57_inline_exit
main_34_inline_enter:
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rdi,                  r14
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  r10
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  r10
     mov                  r13,                  r12
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                   r9,      qword [rsi + 0]
     sub                   r9,      qword [r13 + 0]
     mov                  rdi,                  rbx
    imul                  rdi,                   r9
     mov                   r9,      qword [rsi + 8]
     sub                   r9,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                   r9,                  rbx
     add                  rdi,                   r9
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                   r8
     mov                  r13,                  r14
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                  rdi,      qword [rsi + 0]
     sub                  rdi,      qword [r13 + 0]
     mov                   r9,                  rbx
    imul                   r9,                  rdi
     mov                  rdi,      qword [rsi + 8]
     sub                  rdi,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                  rdi,                  rbx
     add                   r9,                  rdi
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  r12
     mov                  rsi,                  r14
     mov                  r13,      qword [rbx + 0]
    imul                  r13,      qword [rsi + 0]
     mov                  rdi,      qword [rbx + 8]
    imul                  rdi,      qword [rsi + 8]
     add                  r13,                  rdi
     mov                  rbx,     qword [rbx + 16]
    imul                  rbx,     qword [rsi + 16]
     mov                  rsi,                  r13
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  r13,                  r10
    push                   r8
    push                   r8
    push                  r10
    push                  rsi
     mov                  rdi,                   24
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r8
    push                  r10
    push                  rsi
     sub                  rsp,                    8
    call           point_null
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r8
     mov                  rbx,                  rsi
     mov                  rdi,      qword [r13 + 8]
    imul                  rdi,      qword [r8 + 16]
     mov                  rsi,     qword [r13 + 16]
    imul                  rsi,       qword [r8 + 8]
     mov                  r15,                  rdi
     sub                  r15,                  rsi
     mov                  rsi,     qword [r13 + 16]
    imul                  rsi,       qword [r8 + 0]
     mov                  rdi,      qword [r13 + 0]
    imul                  rdi,      qword [r8 + 16]
     mov                   r9,                  rsi
     sub                   r9,                  rdi
     mov                  rsi,      qword [r13 + 0]
    imul                  rsi,       qword [r8 + 8]
     mov                  rdi,      qword [r13 + 8]
    imul                  rdi,       qword [r8 + 0]
     mov                  r13,                  rsi
     sub                  r13,                  rdi
     mov                  rdi,                  rbx
     mov                  rsi,                  r15
     mov                  rdx,                   r9
     mov                  rcx,                  r13
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call            point_set
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rbx
     mov                  r13,                  rsi
     jmp main_58_inline_enter
main_35_inline_exit:
     mov                  rbx,                  r10
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rdi,                  r14
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  r10
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  r10
     mov                  r13,                  r12
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                   r9,      qword [rsi + 0]
     sub                   r9,      qword [r13 + 0]
     mov                  rdi,                  rbx
    imul                  rdi,                   r9
     mov                   r9,      qword [rsi + 8]
     sub                   r9,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                   r9,                  rbx
     add                  rdi,                   r9
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                   r8
     mov                  r13,                  r14
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                  rdi,      qword [rsi + 0]
     sub                  rdi,      qword [r13 + 0]
     mov                   r9,                  rbx
    imul                   r9,                  rdi
     mov                  rdi,      qword [rsi + 8]
     sub                  rdi,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                  rdi,                  rbx
     add                   r9,                  rdi
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  r12
     mov                  rsi,                  r14
     mov                  r13,      qword [rbx + 0]
    imul                  r13,      qword [rsi + 0]
     mov                  rdi,      qword [rbx + 8]
    imul                  rdi,      qword [rsi + 8]
     add                  r13,                  rdi
     mov                  rbx,     qword [rbx + 16]
    imul                  rbx,     qword [rsi + 16]
     mov                  rsi,                  r13
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  r13,                  r10
    push                   r8
    push                   r8
    push                  r10
    push                  rsi
     mov                  rdi,                   24
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r8
    push                  r10
    push                  rsi
     sub                  rsp,                    8
    call           point_null
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r8
     mov                  rbx,                  rsi
     mov                  rdi,      qword [r13 + 8]
    imul                  rdi,      qword [r8 + 16]
     mov                  rsi,     qword [r13 + 16]
    imul                  rsi,       qword [r8 + 8]
     mov                  r15,                  rdi
     sub                  r15,                  rsi
     mov                  rsi,     qword [r13 + 16]
    imul                  rsi,       qword [r8 + 0]
     mov                  rdi,      qword [r13 + 0]
    imul                  rdi,      qword [r8 + 16]
     mov                   r9,                  rsi
     sub                   r9,                  rdi
     mov                  rsi,      qword [r13 + 0]
    imul                  rsi,       qword [r8 + 8]
     mov                  rdi,      qword [r13 + 8]
    imul                  rdi,       qword [r8 + 0]
     mov                  r13,                  rsi
     sub                  r13,                  rdi
     mov                  rdi,                  rbx
     mov                  rsi,                  r15
     mov                  rdx,                   r9
     mov                  rcx,                  r13
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call            point_set
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rbx
     mov                  r13,                  rsi
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_8
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_9
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_10
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                  rsi
    push                   r8
    push                  r10
    call             toString
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_11
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     jmp  main_59_inline_exit
main_36_inline_enter:
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r12
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rdi,                  r14
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  r10
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  r10
     mov                  r13,                  r12
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                   r9,      qword [rsi + 0]
     sub                   r9,      qword [r13 + 0]
     mov                  rdi,                  rbx
    imul                  rdi,                   r9
     mov                   r9,      qword [rsi + 8]
     sub                   r9,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                   r9,                  rbx
     add                  rdi,                   r9
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                   r8
     mov                  r13,                  r14
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                  rdi,      qword [rsi + 0]
     sub                  rdi,      qword [r13 + 0]
     mov                   r9,                  rbx
    imul                   r9,                  rdi
     mov                  rdi,      qword [rsi + 8]
     sub                  rdi,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                  rdi,                  rbx
     add                   r9,                  rdi
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  r12
     mov                  rsi,                  r14
     mov                  r13,      qword [rbx + 0]
    imul                  r13,      qword [rsi + 0]
     mov                  rdi,      qword [rbx + 8]
    imul                  rdi,      qword [rsi + 8]
     add                  r13,                  rdi
     mov                  rbx,     qword [rbx + 16]
    imul                  rbx,     qword [rsi + 16]
     mov                  rsi,                  r13
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  r13,                  r10
    push                   r8
    push                   r8
    push                  r10
    push                  rsi
     mov                  rdi,                   24
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r8
    push                  r10
    push                  rsi
     sub                  rsp,                    8
    call           point_null
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r8
     mov                  rbx,                  rsi
     mov                  rdi,      qword [r13 + 8]
    imul                  rdi,      qword [r8 + 16]
     mov                  rsi,     qword [r13 + 16]
    imul                  rsi,       qword [r8 + 8]
     mov                  r15,                  rdi
     sub                  r15,                  rsi
     mov                  rsi,     qword [r13 + 16]
    imul                  rsi,       qword [r8 + 0]
     mov                  rdi,      qword [r13 + 0]
    imul                  rdi,      qword [r8 + 16]
     mov                   r9,                  rsi
     sub                   r9,                  rdi
     mov                  rsi,      qword [r13 + 0]
    imul                  rsi,       qword [r8 + 8]
     mov                  rdi,      qword [r13 + 8]
    imul                  rdi,       qword [r8 + 0]
     mov                  r13,                  rsi
     sub                  r13,                  rdi
     mov                  rdi,                  rbx
     mov                  rsi,                  r15
     mov                  rdx,                   r9
     mov                  rcx,                  r13
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call            point_set
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rbx
     mov                  r13,                  rsi
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_8
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_9
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_10
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                  rsi
    push                   r8
    push                  r10
    call             toString
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_11
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  r13,                  r14
     jmp main_60_inline_enter
main_37_inline_exit:
     mov                  rbx,                  r12
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rdi,                  r14
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  r10
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  r10
     mov                  r13,                  r12
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                   r9,      qword [rsi + 0]
     sub                   r9,      qword [r13 + 0]
     mov                  rdi,                  rbx
    imul                  rdi,                   r9
     mov                   r9,      qword [rsi + 8]
     sub                   r9,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                   r9,                  rbx
     add                  rdi,                   r9
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                   r8
     mov                  r13,                  r14
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                  rdi,      qword [rsi + 0]
     sub                  rdi,      qword [r13 + 0]
     mov                   r9,                  rbx
    imul                   r9,                  rdi
     mov                  rdi,      qword [rsi + 8]
     sub                  rdi,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                  rdi,                  rbx
     add                   r9,                  rdi
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  rbx
     jmp  main_53_inline_exit
main_38_inline_enter:
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rdi,                  r14
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  r10
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  r10
     mov                  r13,                  r12
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                   r9,      qword [rsi + 0]
     sub                   r9,      qword [r13 + 0]
     mov                  rdi,                  rbx
    imul                  rdi,                   r9
     mov                   r9,      qword [rsi + 8]
     sub                   r9,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                   r9,                  rbx
     add                  rdi,                   r9
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                   r8
     mov                  r13,                  r14
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                  rdi,      qword [rsi + 0]
     sub                  rdi,      qword [r13 + 0]
     mov                   r9,                  rbx
    imul                   r9,                  rdi
     mov                  rdi,      qword [rsi + 8]
     sub                  rdi,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                  rdi,                  rbx
     add                   r9,                  rdi
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  r12
     mov                  rsi,                  r14
     jmp main_54_inline_enter
main_39_inline_exit:
     mov                  rbx,                  r14
     mov                  rdi,                   r8
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rdi,                  r14
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  r10
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  r10
     mov                  r13,                  r12
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                   r9,      qword [rsi + 0]
     sub                   r9,      qword [r13 + 0]
     mov                  rdi,                  rbx
    imul                  rdi,                   r9
     mov                   r9,      qword [rsi + 8]
     sub                   r9,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                   r9,                  rbx
     add                  rdi,                   r9
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                   r8
     mov                  r13,                  r14
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                  rdi,      qword [rsi + 0]
     sub                  rdi,      qword [r13 + 0]
     mov                   r9,                  rbx
    imul                   r9,                  rdi
     mov                  rdi,      qword [rsi + 8]
     sub                  rdi,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                  rdi,                  rbx
     add                   r9,                  rdi
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  r12
     mov                  rsi,                  r14
     mov                  r13,      qword [rbx + 0]
    imul                  r13,      qword [rsi + 0]
     mov                  rdi,      qword [rbx + 8]
    imul                  rdi,      qword [rsi + 8]
     add                  r13,                  rdi
     mov                  rbx,     qword [rbx + 16]
    imul                  rbx,     qword [rsi + 16]
     mov                  rsi,                  r13
     add                  rsi,                  rbx
     jmp  main_55_inline_exit
main_40_inline_enter:
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rdi,                  r14
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  r10
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  r10
     mov                  r13,                  r12
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                   r9,      qword [rsi + 0]
     sub                   r9,      qword [r13 + 0]
     mov                  rdi,                  rbx
    imul                  rdi,                   r9
     mov                   r9,      qword [rsi + 8]
     sub                   r9,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                   r9,                  rbx
     add                  rdi,                   r9
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                   r8
     mov                  r13,                  r14
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                  rdi,      qword [rsi + 0]
     sub                  rdi,      qword [r13 + 0]
     mov                   r9,                  rbx
    imul                   r9,                  rdi
     mov                  rdi,      qword [rsi + 8]
     sub                  rdi,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                  rdi,                  rbx
     add                   r9,                  rdi
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  r12
     mov                  rsi,                  r14
     mov                  r13,      qword [rbx + 0]
    imul                  r13,      qword [rsi + 0]
     mov                  rdi,      qword [rbx + 8]
    imul                  rdi,      qword [rsi + 8]
     add                  r13,                  rdi
     mov                  rbx,     qword [rbx + 16]
    imul                  rbx,     qword [rsi + 16]
     mov                  rsi,                  r13
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  r13,                  r10
     jmp main_56_inline_enter
main_41_inline_exit:
     mov                  rbx,                  r14
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rdi,                  r14
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  r10
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  r10
     mov                  r13,                  r12
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                   r9,      qword [rsi + 0]
     sub                   r9,      qword [r13 + 0]
     mov                  rdi,                  rbx
    imul                  rdi,                   r9
     mov                   r9,      qword [rsi + 8]
     sub                   r9,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                   r9,                  rbx
     add                  rdi,                   r9
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                   r8
     mov                  r13,                  r14
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                  rdi,      qword [rsi + 0]
     sub                  rdi,      qword [r13 + 0]
     mov                   r9,                  rbx
    imul                   r9,                  rdi
     mov                  rdi,      qword [rsi + 8]
     sub                  rdi,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                  rdi,                  rbx
     add                   r9,                  rdi
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  r12
     mov                  rsi,                  r14
     mov                  r13,      qword [rbx + 0]
    imul                  r13,      qword [rsi + 0]
     mov                  rdi,      qword [rbx + 8]
    imul                  rdi,      qword [rsi + 8]
     add                  r13,                  rdi
     mov                  rbx,     qword [rbx + 16]
    imul                  rbx,     qword [rsi + 16]
     mov                  rsi,                  r13
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  r13,                  r10
    push                   r8
    push                   r8
    push                  r10
    push                  rsi
     mov                  rdi,                   24
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r8
    push                  r10
    push                  rsi
     sub                  rsp,                    8
    call           point_null
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r8
     mov                  rbx,                  rsi
     mov                  rdi,      qword [r13 + 8]
    imul                  rdi,      qword [r8 + 16]
     mov                  rsi,     qword [r13 + 16]
    imul                  rsi,       qword [r8 + 8]
     mov                  r15,                  rdi
     sub                  r15,                  rsi
     mov                  rsi,     qword [r13 + 16]
    imul                  rsi,       qword [r8 + 0]
     mov                  rdi,      qword [r13 + 0]
    imul                  rdi,      qword [r8 + 16]
     mov                   r9,                  rsi
     sub                   r9,                  rdi
     mov                  rsi,      qword [r13 + 0]
    imul                  rsi,       qword [r8 + 8]
     mov                  rdi,      qword [r13 + 8]
    imul                  rdi,       qword [r8 + 0]
     mov                  r13,                  rsi
     sub                  r13,                  rdi
     mov                  rdi,                  rbx
     mov                  rsi,                  r15
     mov                  rdx,                   r9
     mov                  rcx,                  r13
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call            point_set
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rbx
     jmp  main_57_inline_exit
main_42_inline_enter:
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     add                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rdi,                  r14
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  r10
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  r10
     mov                  r13,                  r12
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                   r9,      qword [rsi + 0]
     sub                   r9,      qword [r13 + 0]
     mov                  rdi,                  rbx
    imul                  rdi,                   r9
     mov                   r9,      qword [rsi + 8]
     sub                   r9,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                   r9,                  rbx
     add                  rdi,                   r9
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                   r8
     mov                  r13,                  r14
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                  rdi,      qword [rsi + 0]
     sub                  rdi,      qword [r13 + 0]
     mov                   r9,                  rbx
    imul                   r9,                  rdi
     mov                  rdi,      qword [rsi + 8]
     sub                  rdi,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                  rdi,                  rbx
     add                   r9,                  rdi
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  r12
     mov                  rsi,                  r14
     mov                  r13,      qword [rbx + 0]
    imul                  r13,      qword [rsi + 0]
     mov                  rdi,      qword [rbx + 8]
    imul                  rdi,      qword [rsi + 8]
     add                  r13,                  rdi
     mov                  rbx,     qword [rbx + 16]
    imul                  rbx,     qword [rsi + 16]
     mov                  rsi,                  r13
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  r13,                  r10
    push                   r8
    push                   r8
    push                  r10
    push                  rsi
     mov                  rdi,                   24
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r8
    push                  r10
    push                  rsi
     sub                  rsp,                    8
    call           point_null
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r8
     mov                  rbx,                  rsi
     mov                  rdi,      qword [r13 + 8]
    imul                  rdi,      qword [r8 + 16]
     mov                  rsi,     qword [r13 + 16]
    imul                  rsi,       qword [r8 + 8]
     mov                  r15,                  rdi
     sub                  r15,                  rsi
     mov                  rsi,     qword [r13 + 16]
    imul                  rsi,       qword [r8 + 0]
     mov                  rdi,      qword [r13 + 0]
    imul                  rdi,      qword [r8 + 16]
     mov                   r9,                  rsi
     sub                   r9,                  rdi
     mov                  rsi,      qword [r13 + 0]
    imul                  rsi,       qword [r8 + 8]
     mov                  rdi,      qword [r13 + 8]
    imul                  rdi,       qword [r8 + 0]
     mov                  r13,                  rsi
     sub                  r13,                  rdi
     mov                  rdi,                  rbx
     mov                  rsi,                  r15
     mov                  rdx,                   r9
     mov                  rcx,                  r13
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call            point_set
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rbx
     mov                  r13,                  rsi
     jmp main_58_inline_enter
main_43_inline_exit:
     mov                  rbx,                  r10
     mov                  rdi,                  r12
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rdi,                  r14
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  r10
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  r10
     mov                  r13,                  r12
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                   r9,      qword [rsi + 0]
     sub                   r9,      qword [r13 + 0]
     mov                  rdi,                  rbx
    imul                  rdi,                   r9
     mov                   r9,      qword [rsi + 8]
     sub                   r9,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                   r9,                  rbx
     add                  rdi,                   r9
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                   r8
     mov                  r13,                  r14
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                  rdi,      qword [rsi + 0]
     sub                  rdi,      qword [r13 + 0]
     mov                   r9,                  rbx
    imul                   r9,                  rdi
     mov                  rdi,      qword [rsi + 8]
     sub                  rdi,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                  rdi,                  rbx
     add                   r9,                  rdi
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  r12
     mov                  rsi,                  r14
     mov                  r13,      qword [rbx + 0]
    imul                  r13,      qword [rsi + 0]
     mov                  rdi,      qword [rbx + 8]
    imul                  rdi,      qword [rsi + 8]
     add                  r13,                  rdi
     mov                  rbx,     qword [rbx + 16]
    imul                  rbx,     qword [rsi + 16]
     mov                  rsi,                  r13
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  r13,                  r10
    push                   r8
    push                   r8
    push                  r10
    push                  rsi
     mov                  rdi,                   24
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r8
    push                  r10
    push                  rsi
     sub                  rsp,                    8
    call           point_null
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r8
     mov                  rbx,                  rsi
     mov                  rdi,      qword [r13 + 8]
    imul                  rdi,      qword [r8 + 16]
     mov                  rsi,     qword [r13 + 16]
    imul                  rsi,       qword [r8 + 8]
     mov                  r15,                  rdi
     sub                  r15,                  rsi
     mov                  rsi,     qword [r13 + 16]
    imul                  rsi,       qword [r8 + 0]
     mov                  rdi,      qword [r13 + 0]
    imul                  rdi,      qword [r8 + 16]
     mov                   r9,                  rsi
     sub                   r9,                  rdi
     mov                  rsi,      qword [r13 + 0]
    imul                  rsi,       qword [r8 + 8]
     mov                  rdi,      qword [r13 + 8]
    imul                  rdi,       qword [r8 + 0]
     mov                  r13,                  rsi
     sub                  r13,                  rdi
     mov                  rdi,                  rbx
     mov                  rsi,                  r15
     mov                  rdx,                   r9
     mov                  rcx,                  r13
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call            point_set
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rbx
     mov                  r13,                  rsi
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_8
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_9
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_10
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                  rsi
    push                   r8
    push                  r10
    call             toString
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_11
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     jmp  main_59_inline_exit
main_44_inline_enter:
     mov                  rsi,      qword [rbx + 0]
     sub                  rsi,      qword [rdi + 0]
     mov      qword [rbx + 0],                  rsi
     mov                  rsi,      qword [rbx + 8]
     sub                  rsi,      qword [rdi + 8]
     mov      qword [rbx + 8],                  rsi
     mov                  rsi,     qword [rbx + 16]
     sub                  rsi,     qword [rdi + 16]
     mov     qword [rbx + 16],                  rsi
     mov                  rdi,                  r14
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  r10
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  r10
     mov                  r13,                  r12
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                   r9,      qword [rsi + 0]
     sub                   r9,      qword [r13 + 0]
     mov                  rdi,                  rbx
    imul                  rdi,                   r9
     mov                   r9,      qword [rsi + 8]
     sub                   r9,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                   r9,                  rbx
     add                  rdi,                   r9
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                   r8
     mov                  r13,                  r14
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                  rdi,      qword [rsi + 0]
     sub                  rdi,      qword [r13 + 0]
     mov                   r9,                  rbx
    imul                   r9,                  rdi
     mov                  rdi,      qword [rsi + 8]
     sub                  rdi,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                  rdi,                  rbx
     add                   r9,                  rdi
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  r12
     mov                  rsi,                  r14
     mov                  r13,      qword [rbx + 0]
    imul                  r13,      qword [rsi + 0]
     mov                  rdi,      qword [rbx + 8]
    imul                  rdi,      qword [rsi + 8]
     add                  r13,                  rdi
     mov                  rbx,     qword [rbx + 16]
    imul                  rbx,     qword [rsi + 16]
     mov                  rsi,                  r13
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  r13,                  r10
    push                   r8
    push                   r8
    push                  r10
    push                  rsi
     mov                  rdi,                   24
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r8
    push                  r10
    push                  rsi
     sub                  rsp,                    8
    call           point_null
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r8
     mov                  rbx,                  rsi
     mov                  rdi,      qword [r13 + 8]
    imul                  rdi,      qword [r8 + 16]
     mov                  rsi,     qword [r13 + 16]
    imul                  rsi,       qword [r8 + 8]
     mov                  r15,                  rdi
     sub                  r15,                  rsi
     mov                  rsi,     qword [r13 + 16]
    imul                  rsi,       qword [r8 + 0]
     mov                  rdi,      qword [r13 + 0]
    imul                  rdi,      qword [r8 + 16]
     mov                   r9,                  rsi
     sub                   r9,                  rdi
     mov                  rsi,      qword [r13 + 0]
    imul                  rsi,       qword [r8 + 8]
     mov                  rdi,      qword [r13 + 8]
    imul                  rdi,       qword [r8 + 0]
     mov                  r13,                  rsi
     sub                  r13,                  rdi
     mov                  rdi,                  rbx
     mov                  rsi,                  r15
     mov                  rdx,                   r9
     mov                  rcx,                  r13
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call            point_set
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rbx
     mov                  r13,                  rsi
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_8
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_9
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_10
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                  rsi
    push                   r8
    push                  r10
    call             toString
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_11
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  r13,                  r14
     jmp main_60_inline_enter
main_45_inline_exit:
     mov                  rdi,                  r14
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  r10
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  r10
     mov                  r13,                  r12
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                   r9,      qword [rsi + 0]
     sub                   r9,      qword [r13 + 0]
     mov                  rdi,                  rbx
    imul                  rdi,                   r9
     mov                   r9,      qword [rsi + 8]
     sub                   r9,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                   r9,                  rbx
     add                  rdi,                   r9
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                   r8
     mov                  r13,                  r14
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                  rdi,      qword [rsi + 0]
     sub                  rdi,      qword [r13 + 0]
     mov                   r9,                  rbx
    imul                   r9,                  rdi
     mov                  rdi,      qword [rsi + 8]
     sub                  rdi,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                  rdi,                  rbx
     add                   r9,                  rdi
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  rbx
     jmp  main_53_inline_exit
main_46_inline_enter:
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  r10
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  r10
     mov                  r13,                  r12
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                   r9,      qword [rsi + 0]
     sub                   r9,      qword [r13 + 0]
     mov                  rdi,                  rbx
    imul                  rdi,                   r9
     mov                   r9,      qword [rsi + 8]
     sub                   r9,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                   r9,                  rbx
     add                  rdi,                   r9
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                   r8
     mov                  r13,                  r14
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                  rdi,      qword [rsi + 0]
     sub                  rdi,      qword [r13 + 0]
     mov                   r9,                  rbx
    imul                   r9,                  rdi
     mov                  rdi,      qword [rsi + 8]
     sub                  rdi,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                  rdi,                  rbx
     add                   r9,                  rdi
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  r12
     mov                  rsi,                  r14
     jmp main_54_inline_enter
main_47_inline_exit:
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  r10
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  r10
     mov                  r13,                  r12
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                   r9,      qword [rsi + 0]
     sub                   r9,      qword [r13 + 0]
     mov                  rdi,                  rbx
    imul                  rdi,                   r9
     mov                   r9,      qword [rsi + 8]
     sub                   r9,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                   r9,                  rbx
     add                  rdi,                   r9
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                   r8
     mov                  r13,                  r14
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                  rdi,      qword [rsi + 0]
     sub                  rdi,      qword [r13 + 0]
     mov                   r9,                  rbx
    imul                   r9,                  rdi
     mov                  rdi,      qword [rsi + 8]
     sub                  rdi,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                  rdi,                  rbx
     add                   r9,                  rdi
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  r12
     mov                  rsi,                  r14
     mov                  r13,      qword [rbx + 0]
    imul                  r13,      qword [rsi + 0]
     mov                  rdi,      qword [rbx + 8]
    imul                  rdi,      qword [rsi + 8]
     add                  r13,                  rdi
     mov                  rbx,     qword [rbx + 16]
    imul                  rbx,     qword [rsi + 16]
     mov                  rsi,                  r13
     add                  rsi,                  rbx
     jmp  main_55_inline_exit
main_48_inline_enter:
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                  rbx,      qword [rdi + 8]
    imul                  rbx,      qword [rdi + 8]
     add                  rsi,                  rbx
     mov                  rbx,     qword [rdi + 16]
    imul                  rbx,     qword [rdi + 16]
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  r10
     mov                  r13,                  r12
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                   r9,      qword [rsi + 0]
     sub                   r9,      qword [r13 + 0]
     mov                  rdi,                  rbx
    imul                  rdi,                   r9
     mov                   r9,      qword [rsi + 8]
     sub                   r9,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                   r9,                  rbx
     add                  rdi,                   r9
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                   r8
     mov                  r13,                  r14
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                  rdi,      qword [rsi + 0]
     sub                  rdi,      qword [r13 + 0]
     mov                   r9,                  rbx
    imul                   r9,                  rdi
     mov                  rdi,      qword [rsi + 8]
     sub                  rdi,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                  rdi,                  rbx
     add                   r9,                  rdi
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  r12
     mov                  rsi,                  r14
     mov                  r13,      qword [rbx + 0]
    imul                  r13,      qword [rsi + 0]
     mov                  rdi,      qword [rbx + 8]
    imul                  rdi,      qword [rsi + 8]
     add                  r13,                  rdi
     mov                  rbx,     qword [rbx + 16]
    imul                  rbx,     qword [rsi + 16]
     mov                  rsi,                  r13
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  r13,                  r10
     jmp main_56_inline_enter
main_49_inline_exit:
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  r10
     mov                  r13,                  r12
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                   r9,      qword [rsi + 0]
     sub                   r9,      qword [r13 + 0]
     mov                  rdi,                  rbx
    imul                  rdi,                   r9
     mov                   r9,      qword [rsi + 8]
     sub                   r9,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                   r9,                  rbx
     add                  rdi,                   r9
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                   r8
     mov                  r13,                  r14
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                  rdi,      qword [rsi + 0]
     sub                  rdi,      qword [r13 + 0]
     mov                   r9,                  rbx
    imul                   r9,                  rdi
     mov                  rdi,      qword [rsi + 8]
     sub                  rdi,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                  rdi,                  rbx
     add                   r9,                  rdi
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  r12
     mov                  rsi,                  r14
     mov                  r13,      qword [rbx + 0]
    imul                  r13,      qword [rsi + 0]
     mov                  rdi,      qword [rbx + 8]
    imul                  rdi,      qword [rsi + 8]
     add                  r13,                  rdi
     mov                  rbx,     qword [rbx + 16]
    imul                  rbx,     qword [rsi + 16]
     mov                  rsi,                  r13
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  r13,                  r10
    push                   r8
    push                   r8
    push                  r10
    push                  rsi
     mov                  rdi,                   24
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r8
    push                  r10
    push                  rsi
     sub                  rsp,                    8
    call           point_null
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r8
     mov                  rbx,                  rsi
     mov                  rdi,      qword [r13 + 8]
    imul                  rdi,      qword [r8 + 16]
     mov                  rsi,     qword [r13 + 16]
    imul                  rsi,       qword [r8 + 8]
     mov                  r15,                  rdi
     sub                  r15,                  rsi
     mov                  rsi,     qword [r13 + 16]
    imul                  rsi,       qword [r8 + 0]
     mov                  rdi,      qword [r13 + 0]
    imul                  rdi,      qword [r8 + 16]
     mov                   r9,                  rsi
     sub                   r9,                  rdi
     mov                  rsi,      qword [r13 + 0]
    imul                  rsi,       qword [r8 + 8]
     mov                  rdi,      qword [r13 + 8]
    imul                  rdi,       qword [r8 + 0]
     mov                  r13,                  rsi
     sub                  r13,                  rdi
     mov                  rdi,                  rbx
     mov                  rsi,                  r15
     mov                  rdx,                   r9
     mov                  rcx,                  r13
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call            point_set
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rbx
     jmp  main_57_inline_exit
main_50_inline_enter:
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                   r9,      qword [rsi + 0]
     sub                   r9,      qword [r13 + 0]
     mov                  rdi,                  rbx
    imul                  rdi,                   r9
     mov                   r9,      qword [rsi + 8]
     sub                   r9,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                   r9,                  rbx
     add                  rdi,                   r9
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                   r8
     mov                  r13,                  r14
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                  rdi,      qword [rsi + 0]
     sub                  rdi,      qword [r13 + 0]
     mov                   r9,                  rbx
    imul                   r9,                  rdi
     mov                  rdi,      qword [rsi + 8]
     sub                  rdi,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                  rdi,                  rbx
     add                   r9,                  rdi
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  r12
     mov                  rsi,                  r14
     mov                  r13,      qword [rbx + 0]
    imul                  r13,      qword [rsi + 0]
     mov                  rdi,      qword [rbx + 8]
    imul                  rdi,      qword [rsi + 8]
     add                  r13,                  rdi
     mov                  rbx,     qword [rbx + 16]
    imul                  rbx,     qword [rsi + 16]
     mov                  rsi,                  r13
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  r13,                  r10
    push                   r8
    push                   r8
    push                  r10
    push                  rsi
     mov                  rdi,                   24
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r8
    push                  r10
    push                  rsi
     sub                  rsp,                    8
    call           point_null
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r8
     mov                  rbx,                  rsi
     mov                  rdi,      qword [r13 + 8]
    imul                  rdi,      qword [r8 + 16]
     mov                  rsi,     qword [r13 + 16]
    imul                  rsi,       qword [r8 + 8]
     mov                  r15,                  rdi
     sub                  r15,                  rsi
     mov                  rsi,     qword [r13 + 16]
    imul                  rsi,       qword [r8 + 0]
     mov                  rdi,      qword [r13 + 0]
    imul                  rdi,      qword [r8 + 16]
     mov                   r9,                  rsi
     sub                   r9,                  rdi
     mov                  rsi,      qword [r13 + 0]
    imul                  rsi,       qword [r8 + 8]
     mov                  rdi,      qword [r13 + 8]
    imul                  rdi,       qword [r8 + 0]
     mov                  r13,                  rsi
     sub                  r13,                  rdi
     mov                  rdi,                  rbx
     mov                  rsi,                  r15
     mov                  rdx,                   r9
     mov                  rcx,                  r13
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call            point_set
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rbx
     mov                  r13,                  rsi
     jmp main_58_inline_enter
main_51_inline_exit:
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                   r8
     mov                  r13,                  r14
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                  rdi,      qword [rsi + 0]
     sub                  rdi,      qword [r13 + 0]
     mov                   r9,                  rbx
    imul                   r9,                  rdi
     mov                  rdi,      qword [rsi + 8]
     sub                  rdi,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                  rdi,                  rbx
     add                   r9,                  rdi
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  r12
     mov                  rsi,                  r14
     mov                  r13,      qword [rbx + 0]
    imul                  r13,      qword [rsi + 0]
     mov                  rdi,      qword [rbx + 8]
    imul                  rdi,      qword [rsi + 8]
     add                  r13,                  rdi
     mov                  rbx,     qword [rbx + 16]
    imul                  rbx,     qword [rsi + 16]
     mov                  rsi,                  r13
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  r13,                  r10
    push                   r8
    push                   r8
    push                  r10
    push                  rsi
     mov                  rdi,                   24
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r8
    push                  r10
    push                  rsi
     sub                  rsp,                    8
    call           point_null
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r8
     mov                  rbx,                  rsi
     mov                  rdi,      qword [r13 + 8]
    imul                  rdi,      qword [r8 + 16]
     mov                  rsi,     qword [r13 + 16]
    imul                  rsi,       qword [r8 + 8]
     mov                  r15,                  rdi
     sub                  r15,                  rsi
     mov                  rsi,     qword [r13 + 16]
    imul                  rsi,       qword [r8 + 0]
     mov                  rdi,      qword [r13 + 0]
    imul                  rdi,      qword [r8 + 16]
     mov                   r9,                  rsi
     sub                   r9,                  rdi
     mov                  rsi,      qword [r13 + 0]
    imul                  rsi,       qword [r8 + 8]
     mov                  rdi,      qword [r13 + 8]
    imul                  rdi,       qword [r8 + 0]
     mov                  r13,                  rsi
     sub                  r13,                  rdi
     mov                  rdi,                  rbx
     mov                  rsi,                  r15
     mov                  rdx,                   r9
     mov                  rcx,                  r13
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call            point_set
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rbx
     mov                  r13,                  rsi
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_8
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_9
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_10
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                  rsi
    push                   r8
    push                  r10
    call             toString
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_11
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     jmp  main_59_inline_exit
main_52_inline_enter:
     mov                  rbx,      qword [rsi + 0]
     sub                  rbx,      qword [r13 + 0]
     mov                  rdi,      qword [rsi + 0]
     sub                  rdi,      qword [r13 + 0]
     mov                   r9,                  rbx
    imul                   r9,                  rdi
     mov                  rdi,      qword [rsi + 8]
     sub                  rdi,      qword [r13 + 8]
     mov                  rbx,      qword [rsi + 8]
     sub                  rbx,      qword [r13 + 8]
    imul                  rdi,                  rbx
     add                   r9,                  rdi
     mov                  rbx,     qword [rsi + 16]
     sub                  rbx,     qword [r13 + 16]
     mov                  rsi,     qword [rsi + 16]
     sub                  rsi,     qword [r13 + 16]
    imul                  rbx,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  r12
     mov                  rsi,                  r14
     mov                  r13,      qword [rbx + 0]
    imul                  r13,      qword [rsi + 0]
     mov                  rdi,      qword [rbx + 8]
    imul                  rdi,      qword [rsi + 8]
     add                  r13,                  rdi
     mov                  rbx,     qword [rbx + 16]
    imul                  rbx,     qword [rsi + 16]
     mov                  rsi,                  r13
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  r13,                  r10
    push                   r8
    push                   r8
    push                  r10
    push                  rsi
     mov                  rdi,                   24
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r8
    push                  r10
    push                  rsi
     sub                  rsp,                    8
    call           point_null
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r8
     mov                  rbx,                  rsi
     mov                  rdi,      qword [r13 + 8]
    imul                  rdi,      qword [r8 + 16]
     mov                  rsi,     qword [r13 + 16]
    imul                  rsi,       qword [r8 + 8]
     mov                  r15,                  rdi
     sub                  r15,                  rsi
     mov                  rsi,     qword [r13 + 16]
    imul                  rsi,       qword [r8 + 0]
     mov                  rdi,      qword [r13 + 0]
    imul                  rdi,      qword [r8 + 16]
     mov                   r9,                  rsi
     sub                   r9,                  rdi
     mov                  rsi,      qword [r13 + 0]
    imul                  rsi,       qword [r8 + 8]
     mov                  rdi,      qword [r13 + 8]
    imul                  rdi,       qword [r8 + 0]
     mov                  r13,                  rsi
     sub                  r13,                  rdi
     mov                  rdi,                  rbx
     mov                  rsi,                  r15
     mov                  rdx,                   r9
     mov                  rcx,                  r13
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call            point_set
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rbx
     mov                  r13,                  rsi
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_8
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_9
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_10
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                  rsi
    push                   r8
    push                  r10
    call             toString
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_11
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  r13,                  r14
     jmp main_60_inline_enter
main_53_inline_exit:
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  r12
     mov                  rsi,                  r14
     mov                  r13,      qword [rbx + 0]
    imul                  r13,      qword [rsi + 0]
     mov                  rdi,      qword [rbx + 8]
    imul                  rdi,      qword [rsi + 8]
     add                  r13,                  rdi
     mov                  rbx,     qword [rbx + 16]
    imul                  rbx,     qword [rsi + 16]
     mov                  rsi,                  r13
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  r13,                  r10
    push                   r8
    push                   r8
    push                  r10
    push                  rsi
     mov                  rdi,                   24
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r8
    push                  r10
    push                  rsi
     sub                  rsp,                    8
    call           point_null
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r8
     mov                  rbx,                  rsi
     mov                  rdi,      qword [r13 + 8]
    imul                  rdi,      qword [r8 + 16]
     mov                  rsi,     qword [r13 + 16]
    imul                  rsi,       qword [r8 + 8]
     mov                  r15,                  rdi
     sub                  r15,                  rsi
     mov                  rsi,     qword [r13 + 16]
    imul                  rsi,       qword [r8 + 0]
     mov                  rdi,      qword [r13 + 0]
    imul                  rdi,      qword [r8 + 16]
     mov                   r9,                  rsi
     sub                   r9,                  rdi
     mov                  rsi,      qword [r13 + 0]
    imul                  rsi,       qword [r8 + 8]
     mov                  rdi,      qword [r13 + 8]
    imul                  rdi,       qword [r8 + 0]
     mov                  r13,                  rsi
     sub                  r13,                  rdi
     mov                  rdi,                  rbx
     mov                  rsi,                  r15
     mov                  rdx,                   r9
     mov                  rcx,                  r13
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call            point_set
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rbx
     mov                  r13,                  rsi
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_8
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_9
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_10
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                  rsi
    push                   r8
    push                  r10
    call             toString
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_11
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  r13,                  r14
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_12
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_13
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    push                   r8
    push                  r10
    call             toString
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_14
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_15
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  r13,                  r10
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    call             toString
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_16
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_17
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    push                   r8
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_18
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    call             toString
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_19
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    call              println
     pop                   r8
     mov                  r13,                  r12
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    call             toString
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_20
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_21
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    push                   r8
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_22
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_23
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    call              println
     pop                   r8
     mov                  r13,                   r8
     mov                  rdi,      qword [r13 + 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_24
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_25
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    call             toString
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_26
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                  rsi
    call             toString
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_27
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp    main_1_block_exit
main_54_inline_enter:
     mov                  r13,      qword [rbx + 0]
    imul                  r13,      qword [rsi + 0]
     mov                  rdi,      qword [rbx + 8]
    imul                  rdi,      qword [rsi + 8]
     add                  r13,                  rdi
     mov                  rbx,     qword [rbx + 16]
    imul                  rbx,     qword [rsi + 16]
     mov                  rsi,                  r13
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  r13,                  r10
    push                   r8
    push                   r8
    push                  r10
    push                  rsi
     mov                  rdi,                   24
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r8
    push                  r10
    push                  rsi
     sub                  rsp,                    8
    call           point_null
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r8
     mov                  rbx,                  rsi
     mov                  rdi,      qword [r13 + 8]
    imul                  rdi,      qword [r8 + 16]
     mov                  rsi,     qword [r13 + 16]
    imul                  rsi,       qword [r8 + 8]
     mov                  r15,                  rdi
     sub                  r15,                  rsi
     mov                  rsi,     qword [r13 + 16]
    imul                  rsi,       qword [r8 + 0]
     mov                  rdi,      qword [r13 + 0]
    imul                  rdi,      qword [r8 + 16]
     mov                   r9,                  rsi
     sub                   r9,                  rdi
     mov                  rsi,      qword [r13 + 0]
    imul                  rsi,       qword [r8 + 8]
     mov                  rdi,      qword [r13 + 8]
    imul                  rdi,       qword [r8 + 0]
     mov                  r13,                  rsi
     sub                  r13,                  rdi
     mov                  rdi,                  rbx
     mov                  rsi,                  r15
     mov                  rdx,                   r9
     mov                  rcx,                  r13
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call            point_set
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rbx
     mov                  r13,                  rsi
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_8
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_9
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_10
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                  rsi
    push                   r8
    push                  r10
    call             toString
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_11
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  r13,                  r14
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_12
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_13
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    push                   r8
    push                  r10
    call             toString
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_14
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_15
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  r13,                  r10
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    call             toString
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_16
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_17
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    push                   r8
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_18
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    call             toString
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_19
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    call              println
     pop                   r8
     mov                  r13,                  r12
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    call             toString
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_20
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_21
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    push                   r8
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_22
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_23
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    call              println
     pop                   r8
     mov                  r13,                   r8
     mov                  rdi,      qword [r13 + 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_24
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_25
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    call             toString
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_26
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                  rsi
    call             toString
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_27
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp    main_1_block_exit
main_55_inline_exit:
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  r13,                  r10
    push                   r8
    push                   r8
    push                  r10
    push                  rsi
     mov                  rdi,                   24
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r8
    push                  r10
    push                  rsi
     sub                  rsp,                    8
    call           point_null
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r8
     mov                  rbx,                  rsi
     mov                  rdi,      qword [r13 + 8]
    imul                  rdi,      qword [r8 + 16]
     mov                  rsi,     qword [r13 + 16]
    imul                  rsi,       qword [r8 + 8]
     mov                  r15,                  rdi
     sub                  r15,                  rsi
     mov                  rsi,     qword [r13 + 16]
    imul                  rsi,       qword [r8 + 0]
     mov                  rdi,      qword [r13 + 0]
    imul                  rdi,      qword [r8 + 16]
     mov                   r9,                  rsi
     sub                   r9,                  rdi
     mov                  rsi,      qword [r13 + 0]
    imul                  rsi,       qword [r8 + 8]
     mov                  rdi,      qword [r13 + 8]
    imul                  rdi,       qword [r8 + 0]
     mov                  r13,                  rsi
     sub                  r13,                  rdi
     mov                  rdi,                  rbx
     mov                  rsi,                  r15
     mov                  rdx,                   r9
     mov                  rcx,                  r13
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call            point_set
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rbx
     mov                  r13,                  rsi
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_8
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_9
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_10
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                  rsi
    push                   r8
    push                  r10
    call             toString
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_11
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  r13,                  r14
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_12
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_13
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    push                   r8
    push                  r10
    call             toString
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_14
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_15
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  r13,                  r10
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    call             toString
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_16
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_17
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    push                   r8
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_18
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    call             toString
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_19
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    call              println
     pop                   r8
     mov                  r13,                  r12
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    call             toString
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_20
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_21
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    push                   r8
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_22
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_23
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    call              println
     pop                   r8
     mov                  r13,                   r8
     mov                  rdi,      qword [r13 + 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_24
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_25
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    call             toString
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_26
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                  rsi
    call             toString
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_27
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp    main_1_block_exit
main_56_inline_enter:
    push                   r8
    push                   r8
    push                  r10
    push                  rsi
     mov                  rdi,                   24
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r8
    push                  r10
    push                  rsi
     sub                  rsp,                    8
    call           point_null
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r8
     mov                  rbx,                  rsi
     mov                  rdi,      qword [r13 + 8]
    imul                  rdi,      qword [r8 + 16]
     mov                  rsi,     qword [r13 + 16]
    imul                  rsi,       qword [r8 + 8]
     mov                  r15,                  rdi
     sub                  r15,                  rsi
     mov                  rsi,     qword [r13 + 16]
    imul                  rsi,       qword [r8 + 0]
     mov                  rdi,      qword [r13 + 0]
    imul                  rdi,      qword [r8 + 16]
     mov                   r9,                  rsi
     sub                   r9,                  rdi
     mov                  rsi,      qword [r13 + 0]
    imul                  rsi,       qword [r8 + 8]
     mov                  rdi,      qword [r13 + 8]
    imul                  rdi,       qword [r8 + 0]
     mov                  r13,                  rsi
     sub                  r13,                  rdi
     mov                  rdi,                  rbx
     mov                  rsi,                  r15
     mov                  rdx,                   r9
     mov                  rcx,                  r13
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call            point_set
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rbx
     mov                  r13,                  rsi
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_8
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_9
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_10
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                  rsi
    push                   r8
    push                  r10
    call             toString
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_11
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  r13,                  r14
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_12
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_13
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    push                   r8
    push                  r10
    call             toString
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_14
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_15
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  r13,                  r10
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    call             toString
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_16
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_17
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    push                   r8
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_18
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    call             toString
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_19
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    call              println
     pop                   r8
     mov                  r13,                  r12
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    call             toString
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_20
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_21
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    push                   r8
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_22
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_23
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    call              println
     pop                   r8
     mov                  r13,                   r8
     mov                  rdi,      qword [r13 + 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_24
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_25
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    call             toString
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_26
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                  rsi
    call             toString
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_27
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp    main_1_block_exit
main_57_inline_exit:
     mov                  r13,                  rsi
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_8
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_9
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_10
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                  rsi
    push                   r8
    push                  r10
    call             toString
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_11
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  r13,                  r14
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_12
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_13
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    push                   r8
    push                  r10
    call             toString
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_14
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_15
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  r13,                  r10
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    call             toString
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_16
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_17
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    push                   r8
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_18
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    call             toString
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_19
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    call              println
     pop                   r8
     mov                  r13,                  r12
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    call             toString
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_20
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_21
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    push                   r8
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_22
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_23
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    call              println
     pop                   r8
     mov                  r13,                   r8
     mov                  rdi,      qword [r13 + 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_24
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_25
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    call             toString
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_26
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                  rsi
    call             toString
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_27
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp    main_1_block_exit
main_58_inline_enter:
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_8
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_9
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_10
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                  rsi
    push                   r8
    push                  r10
    call             toString
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_11
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  r13,                  r14
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_12
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_13
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    push                   r8
    push                  r10
    call             toString
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_14
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_15
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  r13,                  r10
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    call             toString
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_16
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_17
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    push                   r8
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_18
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    call             toString
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_19
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    call              println
     pop                   r8
     mov                  r13,                  r12
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    call             toString
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_20
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_21
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    push                   r8
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_22
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_23
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    call              println
     pop                   r8
     mov                  r13,                   r8
     mov                  rdi,      qword [r13 + 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_24
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_25
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    call             toString
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_26
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                  rsi
    call             toString
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_27
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp    main_1_block_exit
main_59_inline_exit:
     mov                  r13,                  r14
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_12
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_13
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    push                   r8
    push                  r10
    call             toString
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_14
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_15
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  r13,                  r10
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    call             toString
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_16
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_17
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    push                   r8
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_18
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    call             toString
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_19
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    call              println
     pop                   r8
     mov                  r13,                  r12
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    call             toString
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_20
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_21
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    push                   r8
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_22
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_23
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    call              println
     pop                   r8
     mov                  r13,                   r8
     mov                  rdi,      qword [r13 + 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_24
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_25
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    call             toString
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_26
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                  rsi
    call             toString
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_27
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp    main_1_block_exit
main_60_inline_enter:
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_12
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_13
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    push                   r8
    push                  r10
    call             toString
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_14
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_15
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     mov                  r13,                  r10
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    call             toString
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_16
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_17
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    push                   r8
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_18
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    call             toString
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_19
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    call              println
     pop                   r8
     mov                  r13,                  r12
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    call             toString
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_20
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_21
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    push                   r8
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_22
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_23
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    call              println
     pop                   r8
     mov                  r13,                   r8
     mov                  rdi,      qword [r13 + 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_24
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_25
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    call             toString
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_26
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                  rsi
    call             toString
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_27
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp    main_1_block_exit
main_61_inline_exit:
     mov                  r13,                  r10
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    call             toString
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_16
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_17
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    push                   r8
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_18
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    call             toString
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_19
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    call              println
     pop                   r8
     mov                  r13,                  r12
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    call             toString
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_20
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_21
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    push                   r8
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_22
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_23
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    call              println
     pop                   r8
     mov                  r13,                   r8
     mov                  rdi,      qword [r13 + 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_24
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_25
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    call             toString
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_26
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                  rsi
    call             toString
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_27
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp    main_1_block_exit
main_62_inline_enter:
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    call             toString
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_16
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_17
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    push                   r8
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_18
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    call             toString
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_19
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    call              println
     pop                   r8
     mov                  r13,                  r12
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    call             toString
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_20
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_21
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    push                   r8
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_22
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_23
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    call              println
     pop                   r8
     mov                  r13,                   r8
     mov                  rdi,      qword [r13 + 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_24
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_25
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    call             toString
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_26
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                  rsi
    call             toString
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_27
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp    main_1_block_exit
main_63_inline_exit:
     mov                  r13,                  r12
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    call             toString
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_20
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_21
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    push                   r8
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_22
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_23
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    call              println
     pop                   r8
     mov                  r13,                   r8
     mov                  rdi,      qword [r13 + 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_24
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_25
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    call             toString
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_26
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                  rsi
    call             toString
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_27
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp    main_1_block_exit
main_64_inline_enter:
     mov                  rdi,      qword [r13 + 0]
    push                   r8
    call             toString
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_20
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_21
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    push                   r8
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_22
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_23
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    call              println
     pop                   r8
     mov                  r13,                   r8
     mov                  rdi,      qword [r13 + 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_24
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_25
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    call             toString
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_26
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                  rsi
    call             toString
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_27
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp    main_1_block_exit
main_65_inline_exit:
     mov                  r13,                   r8
     mov                  rdi,      qword [r13 + 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_24
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_25
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    call             toString
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_26
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                  rsi
    call             toString
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_27
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp    main_1_block_exit
main_66_inline_enter:
     mov                  rdi,      qword [r13 + 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,    __const_string_24
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_25
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,      qword [r13 + 8]
    push                  rsi
    call             toString
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_26
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     qword [r13 + 16]
    push                  rsi
    call             toString
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_27
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp    main_1_block_exit
main_67_inline_exit:
     mov                  rax,                    0
main_1_block_exit:
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     pop                  rbx
     pop                  rbp
     ret
point_sqrLen:
    push                  rbp
     mov                  rbp,                  rsp
point_sqrLen_0_block_enter:
     mov                  rsi,      qword [rdi + 0]
    imul                  rsi,      qword [rdi + 0]
     mov                   r8,      qword [rdi + 8]
    imul                   r8,      qword [rdi + 8]
     add                  rsi,                   r8
     mov                   r8,     qword [rdi + 16]
    imul                   r8,     qword [rdi + 16]
     add                  rsi,                   r8
     mov                  rax,                  rsi
point_sqrLen_1_block_exit:
     pop                  rbp
     ret
point_null:
    push                  rbp
     mov                  rbp,                  rsp
point_null_0_block_enter:
     mov                  rsi,                  rdi
     mov      qword [rsi + 0],                    0
     mov      qword [rsi + 8],                    0
     mov     qword [rsi + 16],                    0
point_null_1_block_exit:
     pop                  rbp
     ret
point_dot:
    push                  rbp
     mov                  rbp,                  rsp
point_dot_0_block_enter:
     mov                   r9,                  rdi
     mov                  rdi,       qword [r9 + 0]
    imul                  rdi,      qword [rsi + 0]
     mov                  r10,       qword [r9 + 8]
    imul                  r10,      qword [rsi + 8]
     mov                   r8,                  rdi
     add                   r8,                  r10
     mov                  rdi,      qword [r9 + 16]
    imul                  rdi,     qword [rsi + 16]
     mov                  rsi,                   r8
     add                  rsi,                  rdi
     mov                  rax,                  rsi
point_dot_1_block_exit:
     pop                  rbp
     ret
SECTION .data
      dq                    1
__const_string_0:
	db  40,   0
      dq                    2
__const_string_1:
	db  44,  32,   0
      dq                    2
__const_string_2:
	db  44,  32,   0
      dq                    1
__const_string_3:
	db  41,   0
      dq                    1
__const_string_4:
	db  40,   0
      dq                    2
__const_string_5:
	db  44,  32,   0
      dq                    2
__const_string_6:
	db  44,  32,   0
      dq                    1
__const_string_7:
	db  41,   0
      dq                    1
__const_string_8:
	db  40,   0
      dq                    2
__const_string_9:
	db  44,  32,   0
      dq                    2
__const_string_10:
	db  44,  32,   0
      dq                    1
__const_string_11:
	db  41,   0
      dq                    1
__const_string_12:
	db  40,   0
      dq                    2
__const_string_13:
	db  44,  32,   0
      dq                    2
__const_string_14:
	db  44,  32,   0
      dq                    1
__const_string_15:
	db  41,   0
      dq                    1
__const_string_16:
	db  40,   0
      dq                    2
__const_string_17:
	db  44,  32,   0
      dq                    2
__const_string_18:
	db  44,  32,   0
      dq                    1
__const_string_19:
	db  41,   0
      dq                    1
__const_string_20:
	db  40,   0
      dq                    2
__const_string_21:
	db  44,  32,   0
      dq                    2
__const_string_22:
	db  44,  32,   0
      dq                    1
__const_string_23:
	db  41,   0
      dq                    1
__const_string_24:
	db  40,   0
      dq                    2
__const_string_25:
	db  44,  32,   0
      dq                    2
__const_string_26:
	db  44,  32,   0
      dq                    1
__const_string_27:
	db  41,   0
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
