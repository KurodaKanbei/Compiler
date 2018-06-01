global __global_init
global shift_l
global hilo
global int2chr
global assert
global shift_r
global xorshift
global main
global xorshift10
global toStringHex
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
     sub                  rsp,                    8
__global_init_0_block_enter:
     mov qword [@asciiTable + 0],     __const_string_8
__global_init_1_block_exit:
     add                  rsp,                    8
     pop                  rbp
     ret
shift_l:
    push                  rbp
     mov                  rbp,                  rsp
shift_l_0_block_enter:
     mov                   r8,                  rdi
     mov                  rcx,                  rsi
     sal                   r8,                   cl
     mov                  rsi,                65535
     mov                  rdi,                65535
     mov                   r9,                  rsi
     sal                   r9,                   16
     mov                  rsi,                  rdi
      or                  rsi,                   r9
     mov                  rdi,                  rsi
     mov                  rsi,                   r8
     and                  rsi,                  rdi
     mov                  rax,                  rsi
     jmp shift_l_1_block_exit
shift_l_2_inline_enter:
     mov                   r9,                  rsi
     sal                   r9,                   16
     mov                  rsi,                  rdi
      or                  rsi,                   r9
     mov                  rdi,                  rsi
     mov                  rsi,                   r8
     and                  rsi,                  rdi
     mov                  rax,                  rsi
     jmp shift_l_1_block_exit
shift_l_3_inline_exit:
     mov                  rsi,                   r8
     and                  rsi,                  rdi
     mov                  rax,                  rsi
shift_l_1_block_exit:
     pop                  rbp
     ret
hilo:
    push                  rbp
     mov                  rbp,                  rsp
hilo_0_block_enter:
     mov                   r8,                  rsi
     mov                  rsi,                  rdi
     sal                  rsi,                   16
     mov                  rdi,                   r8
      or                  rdi,                  rsi
     mov                  rax,                  rdi
hilo_1_block_exit:
     pop                  rbp
     ret
int2chr:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    8
    push                  rbx
int2chr_0_block_enter:
     mov                  rbx,                  rdi
     cmp                  rbx,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
     jne int2chr_2_logical_false
     cmp                  rbx,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
      je    int2chr_4_if_true
     mov                  rax,     __const_string_7
     jmp int2chr_7_block_exit
int2chr_1_logical_true:
     cmp                  rbx,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
      je    int2chr_4_if_true
     mov                  rax,     __const_string_7
     jmp int2chr_7_block_exit
int2chr_2_logical_false:
     mov                  rsi,                    0
     cmp                  rsi,                    1
      je    int2chr_4_if_true
     mov                  rax,     __const_string_7
     jmp int2chr_7_block_exit
int2chr_3_logical_exit:
     cmp                  rsi,                    1
      je    int2chr_4_if_true
     mov                  rax,     __const_string_7
     jmp int2chr_7_block_exit
int2chr_4_if_true:
     mov                  rsi,                  rbx
     sub                  rsi,                   32
     sub                  rbx,                   32
     mov                  rdi, qword [@asciiTable + 0]
     mov                  rdx,                  rbx
    call   __string_substring
     mov                  rsi,                  rax
     mov                  rax,                  rsi
     jmp int2chr_7_block_exit
int2chr_6_if_exit:
     mov                  rax,     __const_string_7
int2chr_7_block_exit:
     pop                  rbx
     add                  rsp,                    8
     pop                  rbp
     ret
assert:
    push                  rbp
     mov                  rbp,                  rsp
assert_0_block_enter:
     mov                  rsi,                  rdi
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je     assert_1_if_true
     jmp  assert_4_block_exit
assert_1_if_true:
     mov                  rdi,     __const_string_5
    call              println
assert_4_block_exit:
     pop                  rbp
     ret
shift_r:
    push                  rbp
     mov                  rbp,                  rsp
shift_r_0_block_enter:
     mov                   r8,                  rdi
     mov                  rdi,                  rsi
     mov                  rsi,                32767
     mov                  r10,                65535
     mov                   r9,                  rsi
     sal                   r9,                   16
     mov                  rsi,                  r10
      or                  rsi,                   r9
     mov                  rcx,                  rdi
     sar                  rsi,                   cl
     sal                  rsi,                    1
     add                  rsi,                    1
     mov                   r9,                  rsi
     mov                  rsi,                   r8
     mov                  rcx,                  rdi
     sar                  rsi,                   cl
     and                   r9,                  rsi
     mov                  rsi,                65535
     mov                  r10,                65535
     sal                  rsi,                   16
     mov                  rdi,                  r10
      or                  rdi,                  rsi
     mov                  rsi,                   r9
     and                  rsi,                  rdi
     mov                  rax,                  rsi
     jmp shift_r_1_block_exit
shift_r_2_inline_enter:
     mov                   r9,                  rsi
     sal                   r9,                   16
     mov                  rsi,                  r10
      or                  rsi,                   r9
     mov                  rcx,                  rdi
     sar                  rsi,                   cl
     sal                  rsi,                    1
     add                  rsi,                    1
     mov                   r9,                  rsi
     mov                  rsi,                   r8
     mov                  rcx,                  rdi
     sar                  rsi,                   cl
     and                   r9,                  rsi
     mov                  rsi,                65535
     mov                  r10,                65535
     sal                  rsi,                   16
     mov                  rdi,                  r10
      or                  rdi,                  rsi
     mov                  rsi,                   r9
     and                  rsi,                  rdi
     mov                  rax,                  rsi
     jmp shift_r_1_block_exit
shift_r_3_inline_exit:
     mov                  rcx,                  rdi
     sar                  rsi,                   cl
     sal                  rsi,                    1
     add                  rsi,                    1
     mov                   r9,                  rsi
     mov                  rsi,                   r8
     mov                  rcx,                  rdi
     sar                  rsi,                   cl
     and                   r9,                  rsi
     mov                  rsi,                65535
     mov                  r10,                65535
     sal                  rsi,                   16
     mov                  rdi,                  r10
      or                  rdi,                  rsi
     mov                  rsi,                   r9
     and                  rsi,                  rdi
     mov                  rax,                  rsi
     jmp shift_r_1_block_exit
shift_r_4_inline_enter:
     sal                  rsi,                   16
     mov                  rdi,                  r10
      or                  rdi,                  rsi
     mov                  rsi,                   r9
     and                  rsi,                  rdi
     mov                  rax,                  rsi
     jmp shift_r_1_block_exit
shift_r_5_inline_exit:
     mov                  rsi,                   r9
     and                  rsi,                  rdi
     mov                  rax,                  rsi
shift_r_1_block_exit:
     pop                  rbp
     ret
xorshift:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r12
    push                  rbx
xorshift_0_block_enter:
     mov                   r8,                  rdi
     mov                  rbx,                   r8
     mov                  rsi,                   13
     mov                  rcx,                  rsi
     sal                  rbx,                   cl
     mov                  rdi,                65535
     mov                  rsi,                65535
    push                   r8
     sub                  rsp,                    8
    call                 hilo
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  rax
     and                  rbx,                  rsi
     mov                  rsi,                  rbx
     xor                   r8,                  rsi
     mov                  r12,                   17
     mov                  rdi,                32767
     mov                  rsi,                65535
    push                   r8
    push                   r8
    call                 hilo
     pop                   r8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rcx,                  r12
     sar                  rsi,                   cl
     sal                  rsi,                    1
     add                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  rsi,                   r8
     mov                  rcx,                  r12
     sar                  rsi,                   cl
     and                  rbx,                  rsi
     mov                  rdi,                65535
     mov                  rsi,                65535
    push                   r8
     sub                  rsp,                    8
    call                 hilo
     add                  rsp,                    8
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     and                  rsi,                  rdi
     xor                   r8,                  rsi
     mov                  rbx,                   r8
     mov                  rsi,                    5
     mov                  rcx,                  rsi
     sal                  rbx,                   cl
     mov                  rdi,                65535
     mov                  rsi,                65535
    push                   r8
     sub                  rsp,                    8
    call                 hilo
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  rax
     and                  rbx,                  rsi
     mov                  rsi,                  rbx
     xor                   r8,                  rsi
     mov                  rax,                   r8
     jmp xorshift_1_block_exit
xorshift_2_inline_enter:
     mov                  rcx,                  rsi
     sal                  rbx,                   cl
     mov                  rdi,                65535
     mov                  rsi,                65535
    push                   r8
     sub                  rsp,                    8
    call                 hilo
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  rax
     and                  rbx,                  rsi
     mov                  rsi,                  rbx
     xor                   r8,                  rsi
     mov                  r12,                   17
     mov                  rdi,                32767
     mov                  rsi,                65535
    push                   r8
    push                   r8
    call                 hilo
     pop                   r8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rcx,                  r12
     sar                  rsi,                   cl
     sal                  rsi,                    1
     add                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  rsi,                   r8
     mov                  rcx,                  r12
     sar                  rsi,                   cl
     and                  rbx,                  rsi
     mov                  rdi,                65535
     mov                  rsi,                65535
    push                   r8
     sub                  rsp,                    8
    call                 hilo
     add                  rsp,                    8
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     and                  rsi,                  rdi
     xor                   r8,                  rsi
     mov                  rbx,                   r8
     mov                  rsi,                    5
     mov                  rcx,                  rsi
     sal                  rbx,                   cl
     mov                  rdi,                65535
     mov                  rsi,                65535
    push                   r8
     sub                  rsp,                    8
    call                 hilo
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  rax
     and                  rbx,                  rsi
     mov                  rsi,                  rbx
     xor                   r8,                  rsi
     mov                  rax,                   r8
     jmp xorshift_1_block_exit
xorshift_3_inline_exit:
     xor                   r8,                  rsi
     mov                  r12,                   17
     mov                  rdi,                32767
     mov                  rsi,                65535
    push                   r8
    push                   r8
    call                 hilo
     pop                   r8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rcx,                  r12
     sar                  rsi,                   cl
     sal                  rsi,                    1
     add                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  rsi,                   r8
     mov                  rcx,                  r12
     sar                  rsi,                   cl
     and                  rbx,                  rsi
     mov                  rdi,                65535
     mov                  rsi,                65535
    push                   r8
     sub                  rsp,                    8
    call                 hilo
     add                  rsp,                    8
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     and                  rsi,                  rdi
     xor                   r8,                  rsi
     mov                  rbx,                   r8
     mov                  rsi,                    5
     mov                  rcx,                  rsi
     sal                  rbx,                   cl
     mov                  rdi,                65535
     mov                  rsi,                65535
    push                   r8
     sub                  rsp,                    8
    call                 hilo
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  rax
     and                  rbx,                  rsi
     mov                  rsi,                  rbx
     xor                   r8,                  rsi
     mov                  rax,                   r8
     jmp xorshift_1_block_exit
xorshift_4_inline_enter:
     mov                  rdi,                32767
     mov                  rsi,                65535
    push                   r8
    push                   r8
    call                 hilo
     pop                   r8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rcx,                  r12
     sar                  rsi,                   cl
     sal                  rsi,                    1
     add                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  rsi,                   r8
     mov                  rcx,                  r12
     sar                  rsi,                   cl
     and                  rbx,                  rsi
     mov                  rdi,                65535
     mov                  rsi,                65535
    push                   r8
     sub                  rsp,                    8
    call                 hilo
     add                  rsp,                    8
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     and                  rsi,                  rdi
     xor                   r8,                  rsi
     mov                  rbx,                   r8
     mov                  rsi,                    5
     mov                  rcx,                  rsi
     sal                  rbx,                   cl
     mov                  rdi,                65535
     mov                  rsi,                65535
    push                   r8
     sub                  rsp,                    8
    call                 hilo
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  rax
     and                  rbx,                  rsi
     mov                  rsi,                  rbx
     xor                   r8,                  rsi
     mov                  rax,                   r8
     jmp xorshift_1_block_exit
xorshift_5_inline_exit:
     xor                   r8,                  rsi
     mov                  rbx,                   r8
     mov                  rsi,                    5
     mov                  rcx,                  rsi
     sal                  rbx,                   cl
     mov                  rdi,                65535
     mov                  rsi,                65535
    push                   r8
     sub                  rsp,                    8
    call                 hilo
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  rax
     and                  rbx,                  rsi
     mov                  rsi,                  rbx
     xor                   r8,                  rsi
     mov                  rax,                   r8
     jmp xorshift_1_block_exit
xorshift_6_inline_enter:
     mov                  rcx,                  rsi
     sal                  rbx,                   cl
     mov                  rdi,                65535
     mov                  rsi,                65535
    push                   r8
     sub                  rsp,                    8
    call                 hilo
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  rax
     and                  rbx,                  rsi
     mov                  rsi,                  rbx
     xor                   r8,                  rsi
     mov                  rax,                   r8
     jmp xorshift_1_block_exit
xorshift_7_inline_exit:
     xor                   r8,                  rsi
     mov                  rax,                   r8
xorshift_1_block_exit:
     pop                  rbx
     pop                  r12
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call        __global_init
     sub                  rsp,                  120
    push                  r12
    push                  r14
    push                  r13
    push                  r15
    push                  rbx
main_0_block_enter:
    call               getInt
     mov                  r12,                  rax
    call               getInt
     mov                  rsi,                  rax
    push                  rsi
     sub                  rsp,                    8
    call               getInt
     add                  rsp,                    8
     pop                  rsi
     mov      qword [rbp - 8],                  rax
    push                  rsi
     sub                  rsp,                    8
    call               getInt
     add                  rsp,                    8
     pop                  rsi
     mov     qword [rbp - 16],                  rax
     mov                  rbx,                  r12
     add                  rbx,                    1
     mov                  rdi,                  rbx
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  r12,                  rbx
     mov                  rbx,                32767
     mov                  rdi,                65535
     sal                  rbx,                   16
      or                  rdi,                  rbx
     mov                  rbx,                  rdi
     mov                  r11,                  rbx
     mov     qword [rbp - 24],                    0
     mov     qword [rbp - 32],                    0
     mov     qword [rbp - 40],                    0
     mov                  r15,                    0
     mov                  r14,                  rsi
     cmp                  r14,      qword [rbp - 8]
      jl     main_2_loop_body
     mov                  rbx,     qword [rbp - 24]
     mov                   r8,     __const_string_9
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_57_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 32]
     mov                   r8,    __const_string_10
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_15_inline_enter:
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     mov                  rbx,                  rax
     mov                  r12,                  rbx
     mov                  rbx,                32767
     mov                  rdi,                65535
     sal                  rbx,                   16
      or                  rdi,                  rbx
     mov                  rbx,                  rdi
     mov                  r11,                  rbx
     mov     qword [rbp - 24],                    0
     mov     qword [rbp - 32],                    0
     mov     qword [rbp - 40],                    0
     mov                  r15,                    0
     mov                  r14,                  rsi
     cmp                  r14,      qword [rbp - 8]
      jl     main_2_loop_body
     mov                  rbx,     qword [rbp - 24]
     mov                   r8,     __const_string_9
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_57_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 32]
     mov                   r8,    __const_string_10
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_16_inline_exit:
     mov                  r12,                  rbx
     mov                  rbx,                32767
     mov                  rdi,                65535
     sal                  rbx,                   16
      or                  rdi,                  rbx
     mov                  rbx,                  rdi
     mov                  r11,                  rbx
     mov     qword [rbp - 24],                    0
     mov     qword [rbp - 32],                    0
     mov     qword [rbp - 40],                    0
     mov                  r15,                    0
     mov                  r14,                  rsi
     cmp                  r14,      qword [rbp - 8]
      jl     main_2_loop_body
     mov                  rbx,     qword [rbp - 24]
     mov                   r8,     __const_string_9
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_57_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 32]
     mov                   r8,    __const_string_10
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_17_inline_enter:
     sal                  rbx,                   16
      or                  rdi,                  rbx
     mov                  rbx,                  rdi
     mov                  r11,                  rbx
     mov     qword [rbp - 24],                    0
     mov     qword [rbp - 32],                    0
     mov     qword [rbp - 40],                    0
     mov                  r15,                    0
     mov                  r14,                  rsi
     cmp                  r14,      qword [rbp - 8]
      jl     main_2_loop_body
     mov                  rbx,     qword [rbp - 24]
     mov                   r8,     __const_string_9
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_57_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 32]
     mov                   r8,    __const_string_10
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_18_inline_exit:
     mov                  r11,                  rbx
     mov     qword [rbp - 24],                    0
     mov     qword [rbp - 32],                    0
     mov     qword [rbp - 40],                    0
     mov                  r15,                    0
     mov                  r14,                  rsi
     cmp                  r14,      qword [rbp - 8]
      jl     main_2_loop_body
     mov                  rbx,     qword [rbp - 24]
     mov                   r8,     __const_string_9
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_57_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 32]
     mov                   r8,    __const_string_10
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_1_loop_condition:
     cmp                  r14,      qword [rbp - 8]
      jl     main_2_loop_body
     mov                  rbx,     qword [rbp - 24]
     mov                   r8,     __const_string_9
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_57_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 32]
     mov                   r8,    __const_string_10
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_2_loop_body:
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  rdi
    call              shift_r
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rbx,                  rax
     mov                  rsi,                  rdi
     xor                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  r11
     mov                  r13,                  rsi
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  rdi
    call              shift_r
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rbx,                  rax
     mov                  rsi,                  rdi
     xor                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  r11
     mov     qword [rbp - 48],                  rsi
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  rdi
    call              shift_r
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rbx,                  rax
     mov                  rsi,                  rdi
     xor                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  r11
     mov                  rbx,                  rsi
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  rdi
    call              shift_r
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                  rdi
     jmp  main_26_inline_exit
main_19_inline_enter:
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  rdi
    call              shift_r
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rbx,                  rax
     mov                  rsi,                  rdi
     xor                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  r11
     mov                  r13,                  rsi
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  rdi
    call              shift_r
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rbx,                  rax
     mov                  rsi,                  rdi
     xor                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  r11
     mov     qword [rbp - 48],                  rsi
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  rdi
    call              shift_r
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rbx,                  rax
     mov                  rsi,                  rdi
     xor                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  r11
     mov                  rbx,                  rsi
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  rdi
    call              shift_r
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                  rdi
     mov                  r12,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  r11
     mov     qword [rbp - 56],                  rsi
     mov                  rsi,                  r12
     jmp main_27_inline_enter
main_20_inline_exit:
     mov                  r12,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  r11
     mov                  r13,                  rsi
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  rdi
    call              shift_r
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rbx,                  rax
     mov                  rsi,                  rdi
     xor                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  r11
     mov     qword [rbp - 48],                  rsi
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  rdi
    call              shift_r
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rbx,                  rax
     mov                  rsi,                  rdi
     xor                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  r11
     mov                  rbx,                  rsi
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  rdi
    call              shift_r
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                  rdi
     mov                  r12,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  r11
     mov     qword [rbp - 56],                  rsi
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  rdi
    call              shift_r
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  r12,                  rax
     mov                  rsi,                  rdi
     xor                  rsi,                  r12
     jmp  main_28_inline_exit
main_21_inline_enter:
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  rdi
    call              shift_r
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rbx,                  rax
     mov                  rsi,                  rdi
     xor                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  r11
     mov     qword [rbp - 48],                  rsi
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  rdi
    call              shift_r
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rbx,                  rax
     mov                  rsi,                  rdi
     xor                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  r11
     mov                  rbx,                  rsi
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  rdi
    call              shift_r
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                  rdi
     mov                  r12,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  r11
     mov     qword [rbp - 56],                  rsi
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  rdi
    call              shift_r
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  r12,                  rax
     mov                  rsi,                  rdi
     xor                  rsi,                  r12
     mov                  r12,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  r11
     mov                   r8,                  rsi
     mov                  rsi,                  r12
     jmp main_29_inline_enter
main_22_inline_exit:
     mov                  r12,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  r11
     mov     qword [rbp - 48],                  rsi
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  rdi
    call              shift_r
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rbx,                  rax
     mov                  rsi,                  rdi
     xor                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  r11
     mov                  rbx,                  rsi
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  rdi
    call              shift_r
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                  rdi
     mov                  r12,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  r11
     mov     qword [rbp - 56],                  rsi
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  rdi
    call              shift_r
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  r12,                  rax
     mov                  rsi,                  rdi
     xor                  rsi,                  r12
     mov                  r12,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  r11
     mov                   r8,                  rsi
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  rdi
    push                   r8
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     pop                   r8
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  rdi
    push                   r8
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     pop                   r8
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  rdi
    push                   r8
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     pop                   r8
     pop                  rdi
     pop                  r11
     mov                  r12,                  rax
     mov                  rsi,                  rdi
     xor                  rsi,                  r12
     jmp  main_30_inline_exit
main_23_inline_enter:
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  rdi
    call              shift_r
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rbx,                  rax
     mov                  rsi,                  rdi
     xor                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  r11
     mov                  rbx,                  rsi
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  rdi
    call              shift_r
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                  rdi
     mov                  r12,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  r11
     mov     qword [rbp - 56],                  rsi
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  rdi
    call              shift_r
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  r12,                  rax
     mov                  rsi,                  rdi
     xor                  rsi,                  r12
     mov                  r12,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  r11
     mov                   r8,                  rsi
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  rdi
    push                   r8
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     pop                   r8
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  rdi
    push                   r8
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     pop                   r8
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  rdi
    push                   r8
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     pop                   r8
     pop                  rdi
     pop                  r11
     mov                  r12,                  rax
     mov                  rsi,                  rdi
     xor                  rsi,                  r12
     mov                  r12,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  r11
     mov                   r9,                  rsi
     mov                  rsi,                  r13
     xor                  rsi,     qword [rbp - 48]
     xor                  rsi,                  rbx
     mov     qword [rbp - 64],                  rsi
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                   r8
     xor                  rsi,                   r9
     mov                  rdi,     qword [rbp - 64]
     xor                  rdi,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  r11
     mov     qword [rbp - 64],                  rsi
     mov                  rsi,                  r13
     add                  rsi,     qword [rbp - 48]
     add                  rsi,                  rbx
     add                  rsi,                    1
     mov     qword [rbp - 72],                  rsi
     mov                  rsi,     qword [rbp - 56]
     add                  rsi,                   r8
     add                  rsi,                   r9
     mov                  rdi,     qword [rbp - 72]
     sub                  rdi,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  r11
     mov     qword [rbp - 72],                  rsi
     mov                  rdi,                  r13
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,     qword [rbp - 48]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r10,                  rdi
    imul                  r10,                  rsi
     mov                  rdi,                  rbx
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  r10
    imul                  rsi,                  rdi
     mov     qword [rbp - 80],                  rsi
     mov                  rsi,     qword [rbp - 56]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r10,     qword [rbp - 80]
    imul                  r10,                  rsi
     mov                  rdi,                   r8
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  r10
    imul                  rsi,                  rdi
     mov                  rdi,                   r9
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     and                  rsi,                  r11
     mov     qword [rbp - 80],                  rsi
     mov                  rsi,                  r13
     xor                  rsi,     qword [rbp - 48]
     mov                  rdi,                  rsi
     xor                  rdi,                  rbx
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                   r8
     xor                  rsi,                   r9
     cmp                  rdi,                  rsi
      jg       main_3_if_true
     mov                  rsi,                  rbx
     add                  rsi,     qword [rbp - 48]
     and                  rsi,                  r11
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  r13
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r10,                  rsi
     add                  r10,                    1
     mov                  rsi,                  rdi
     mov                  eax,                  esi
     mov                  ecx,                 r10d
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r10,                  rsi
     mov                  rsi,     qword [rbp - 64]
     xor                  rsi,                10001
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 24],                  rsi
     mov                  rsi,     qword [rbp - 72]
     xor                  rsi,                10002
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 32],                  rsi
     mov                  rsi,     qword [rbp - 80]
     xor                  rsi,                10003
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 40],                  rsi
     mov                  rsi,                  r10
     xor                  rsi,                10004
     mov                  rdi,                  rsi
     jmp main_37_inline_enter
main_24_inline_exit:
     mov                  r12,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  r11
     mov                  rbx,                  rsi
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  rdi
    call              shift_r
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                  rdi
     mov                  r12,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  r11
     mov     qword [rbp - 56],                  rsi
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  rdi
    call              shift_r
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  r12,                  rax
     mov                  rsi,                  rdi
     xor                  rsi,                  r12
     mov                  r12,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  r11
     mov                   r8,                  rsi
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  rdi
    push                   r8
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     pop                   r8
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  rdi
    push                   r8
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     pop                   r8
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  rdi
    push                   r8
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     pop                   r8
     pop                  rdi
     pop                  r11
     mov                  r12,                  rax
     mov                  rsi,                  rdi
     xor                  rsi,                  r12
     mov                  r12,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  r11
     mov                   r9,                  rsi
     mov                  rsi,                  r13
     xor                  rsi,     qword [rbp - 48]
     xor                  rsi,                  rbx
     mov     qword [rbp - 64],                  rsi
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                   r8
     xor                  rsi,                   r9
     mov                  rdi,     qword [rbp - 64]
     xor                  rdi,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  r11
     mov     qword [rbp - 64],                  rsi
     mov                  rsi,                  r13
     add                  rsi,     qword [rbp - 48]
     add                  rsi,                  rbx
     add                  rsi,                    1
     mov     qword [rbp - 72],                  rsi
     mov                  rsi,     qword [rbp - 56]
     add                  rsi,                   r8
     add                  rsi,                   r9
     mov                  rdi,     qword [rbp - 72]
     sub                  rdi,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  r11
     mov     qword [rbp - 72],                  rsi
     mov                  rdi,                  r13
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,     qword [rbp - 48]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r10,                  rdi
    imul                  r10,                  rsi
     mov                  rdi,                  rbx
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  r10
    imul                  rsi,                  rdi
     mov     qword [rbp - 80],                  rsi
     mov                  rsi,     qword [rbp - 56]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r10,     qword [rbp - 80]
    imul                  r10,                  rsi
     mov                  rdi,                   r8
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  r10
    imul                  rsi,                  rdi
     mov                  rdi,                   r9
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     and                  rsi,                  r11
     mov     qword [rbp - 80],                  rsi
     mov                  rsi,                  r13
     xor                  rsi,     qword [rbp - 48]
     mov                  rdi,                  rsi
     xor                  rdi,                  rbx
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                   r8
     xor                  rsi,                   r9
     cmp                  rdi,                  rsi
      jg       main_3_if_true
     mov                  rsi,                  rbx
     add                  rsi,     qword [rbp - 48]
     and                  rsi,                  r11
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  r13
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r10,                  rsi
     add                  r10,                    1
     mov                  rsi,                  rdi
     mov                  eax,                  esi
     mov                  ecx,                 r10d
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r10,                  rsi
     mov                  rsi,     qword [rbp - 64]
     xor                  rsi,                10001
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 24],                  rsi
     mov                  rsi,     qword [rbp - 72]
     xor                  rsi,                10002
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 32],                  rsi
     mov                  rsi,     qword [rbp - 80]
     xor                  rsi,                10003
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 40],                  rsi
     mov                  rsi,                  r10
     xor                  rsi,                10004
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     jmp  main_38_inline_exit
main_25_inline_enter:
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  rdi
    call              shift_r
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                  rdi
     mov                  r12,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  r11
     mov     qword [rbp - 56],                  rsi
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  rdi
    call              shift_r
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  r12,                  rax
     mov                  rsi,                  rdi
     xor                  rsi,                  r12
     mov                  r12,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  r11
     mov                   r8,                  rsi
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  rdi
    push                   r8
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     pop                   r8
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  rdi
    push                   r8
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     pop                   r8
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  rdi
    push                   r8
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     pop                   r8
     pop                  rdi
     pop                  r11
     mov                  r12,                  rax
     mov                  rsi,                  rdi
     xor                  rsi,                  r12
     mov                  r12,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  r11
     mov                   r9,                  rsi
     mov                  rsi,                  r13
     xor                  rsi,     qword [rbp - 48]
     xor                  rsi,                  rbx
     mov     qword [rbp - 64],                  rsi
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                   r8
     xor                  rsi,                   r9
     mov                  rdi,     qword [rbp - 64]
     xor                  rdi,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  r11
     mov     qword [rbp - 64],                  rsi
     mov                  rsi,                  r13
     add                  rsi,     qword [rbp - 48]
     add                  rsi,                  rbx
     add                  rsi,                    1
     mov     qword [rbp - 72],                  rsi
     mov                  rsi,     qword [rbp - 56]
     add                  rsi,                   r8
     add                  rsi,                   r9
     mov                  rdi,     qword [rbp - 72]
     sub                  rdi,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  r11
     mov     qword [rbp - 72],                  rsi
     mov                  rdi,                  r13
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,     qword [rbp - 48]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r10,                  rdi
    imul                  r10,                  rsi
     mov                  rdi,                  rbx
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  r10
    imul                  rsi,                  rdi
     mov     qword [rbp - 80],                  rsi
     mov                  rsi,     qword [rbp - 56]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r10,     qword [rbp - 80]
    imul                  r10,                  rsi
     mov                  rdi,                   r8
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  r10
    imul                  rsi,                  rdi
     mov                  rdi,                   r9
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     and                  rsi,                  r11
     mov     qword [rbp - 80],                  rsi
     mov                  rsi,                  r13
     xor                  rsi,     qword [rbp - 48]
     mov                  rdi,                  rsi
     xor                  rdi,                  rbx
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                   r8
     xor                  rsi,                   r9
     cmp                  rdi,                  rsi
      jg       main_3_if_true
     mov                  rsi,                  rbx
     add                  rsi,     qword [rbp - 48]
     and                  rsi,                  r11
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  r13
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r10,                  rsi
     add                  r10,                    1
     mov                  rsi,                  rdi
     mov                  eax,                  esi
     mov                  ecx,                 r10d
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r10,                  rsi
     mov                  rsi,     qword [rbp - 64]
     xor                  rsi,                10001
     mov                  rdi,                  rsi
     jmp main_31_inline_enter
main_26_inline_exit:
     mov                  r12,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  r11
     mov     qword [rbp - 56],                  rsi
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  rdi
    call              shift_r
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  r12,                  rax
     mov                  rsi,                  rdi
     xor                  rsi,                  r12
     mov                  r12,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  r11
     mov                   r8,                  rsi
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  rdi
    push                   r8
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     pop                   r8
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  rdi
    push                   r8
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     pop                   r8
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  rdi
    push                   r8
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     pop                   r8
     pop                  rdi
     pop                  r11
     mov                  r12,                  rax
     mov                  rsi,                  rdi
     xor                  rsi,                  r12
     mov                  r12,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  r11
     mov                   r9,                  rsi
     mov                  rsi,                  r13
     xor                  rsi,     qword [rbp - 48]
     xor                  rsi,                  rbx
     mov     qword [rbp - 64],                  rsi
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                   r8
     xor                  rsi,                   r9
     mov                  rdi,     qword [rbp - 64]
     xor                  rdi,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  r11
     mov     qword [rbp - 64],                  rsi
     mov                  rsi,                  r13
     add                  rsi,     qword [rbp - 48]
     add                  rsi,                  rbx
     add                  rsi,                    1
     mov     qword [rbp - 72],                  rsi
     mov                  rsi,     qword [rbp - 56]
     add                  rsi,                   r8
     add                  rsi,                   r9
     mov                  rdi,     qword [rbp - 72]
     sub                  rdi,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  r11
     mov     qword [rbp - 72],                  rsi
     mov                  rdi,                  r13
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,     qword [rbp - 48]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r10,                  rdi
    imul                  r10,                  rsi
     mov                  rdi,                  rbx
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  r10
    imul                  rsi,                  rdi
     mov     qword [rbp - 80],                  rsi
     mov                  rsi,     qword [rbp - 56]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r10,     qword [rbp - 80]
    imul                  r10,                  rsi
     mov                  rdi,                   r8
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  r10
    imul                  rsi,                  rdi
     mov                  rdi,                   r9
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     and                  rsi,                  r11
     mov     qword [rbp - 80],                  rsi
     mov                  rsi,                  r13
     xor                  rsi,     qword [rbp - 48]
     mov                  rdi,                  rsi
     xor                  rdi,                  rbx
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                   r8
     xor                  rsi,                   r9
     cmp                  rdi,                  rsi
      jg       main_3_if_true
     mov                  rsi,                  rbx
     add                  rsi,     qword [rbp - 48]
     and                  rsi,                  r11
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  r13
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r10,                  rsi
     add                  r10,                    1
     mov                  rsi,                  rdi
     mov                  eax,                  esi
     mov                  ecx,                 r10d
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r10,                  rsi
     mov                  rsi,     qword [rbp - 64]
     xor                  rsi,                10001
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     jmp  main_32_inline_exit
main_27_inline_enter:
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  rdi
    call              shift_r
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r11
     mov                  r12,                  rax
     mov                  rsi,                  rdi
     xor                  rsi,                  r12
     mov                  r12,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  r11
     mov                   r8,                  rsi
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  rdi
    push                   r8
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     pop                   r8
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  rdi
    push                   r8
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     pop                   r8
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  rdi
    push                   r8
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     pop                   r8
     pop                  rdi
     pop                  r11
     mov                  r12,                  rax
     mov                  rsi,                  rdi
     xor                  rsi,                  r12
     mov                  r12,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  r11
     mov                   r9,                  rsi
     mov                  rsi,                  r13
     xor                  rsi,     qword [rbp - 48]
     xor                  rsi,                  rbx
     mov     qword [rbp - 64],                  rsi
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                   r8
     xor                  rsi,                   r9
     mov                  rdi,     qword [rbp - 64]
     xor                  rdi,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  r11
     mov     qword [rbp - 64],                  rsi
     mov                  rsi,                  r13
     add                  rsi,     qword [rbp - 48]
     add                  rsi,                  rbx
     add                  rsi,                    1
     mov     qword [rbp - 72],                  rsi
     mov                  rsi,     qword [rbp - 56]
     add                  rsi,                   r8
     add                  rsi,                   r9
     mov                  rdi,     qword [rbp - 72]
     sub                  rdi,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  r11
     mov     qword [rbp - 72],                  rsi
     mov                  rdi,                  r13
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,     qword [rbp - 48]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r10,                  rdi
    imul                  r10,                  rsi
     mov                  rdi,                  rbx
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  r10
    imul                  rsi,                  rdi
     mov     qword [rbp - 80],                  rsi
     mov                  rsi,     qword [rbp - 56]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r10,     qword [rbp - 80]
    imul                  r10,                  rsi
     mov                  rdi,                   r8
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  r10
    imul                  rsi,                  rdi
     mov                  rdi,                   r9
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     and                  rsi,                  r11
     mov     qword [rbp - 80],                  rsi
     mov                  rsi,                  r13
     xor                  rsi,     qword [rbp - 48]
     mov                  rdi,                  rsi
     xor                  rdi,                  rbx
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                   r8
     xor                  rsi,                   r9
     cmp                  rdi,                  rsi
      jg       main_3_if_true
     mov                  rsi,                  rbx
     add                  rsi,     qword [rbp - 48]
     and                  rsi,                  r11
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  r13
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r10,                  rsi
     add                  r10,                    1
     mov                  rsi,                  rdi
     mov                  eax,                  esi
     mov                  ecx,                 r10d
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r10,                  rsi
     mov                  rsi,     qword [rbp - 64]
     xor                  rsi,                10001
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 24],                  rsi
     mov                  rsi,     qword [rbp - 72]
     xor                  rsi,                10002
     mov                  rdi,                  rsi
     jmp main_33_inline_enter
main_28_inline_exit:
     mov                  r12,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  r11
     mov                   r8,                  rsi
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  rdi
    push                   r8
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     pop                   r8
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  rdi
    push                   r8
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     pop                   r8
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  rdi
    push                   r8
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     pop                   r8
     pop                  rdi
     pop                  r11
     mov                  r12,                  rax
     mov                  rsi,                  rdi
     xor                  rsi,                  r12
     mov                  r12,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  r11
     mov                   r9,                  rsi
     mov                  rsi,                  r13
     xor                  rsi,     qword [rbp - 48]
     xor                  rsi,                  rbx
     mov     qword [rbp - 64],                  rsi
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                   r8
     xor                  rsi,                   r9
     mov                  rdi,     qword [rbp - 64]
     xor                  rdi,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  r11
     mov     qword [rbp - 64],                  rsi
     mov                  rsi,                  r13
     add                  rsi,     qword [rbp - 48]
     add                  rsi,                  rbx
     add                  rsi,                    1
     mov     qword [rbp - 72],                  rsi
     mov                  rsi,     qword [rbp - 56]
     add                  rsi,                   r8
     add                  rsi,                   r9
     mov                  rdi,     qword [rbp - 72]
     sub                  rdi,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  r11
     mov     qword [rbp - 72],                  rsi
     mov                  rdi,                  r13
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,     qword [rbp - 48]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r10,                  rdi
    imul                  r10,                  rsi
     mov                  rdi,                  rbx
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  r10
    imul                  rsi,                  rdi
     mov     qword [rbp - 80],                  rsi
     mov                  rsi,     qword [rbp - 56]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r10,     qword [rbp - 80]
    imul                  r10,                  rsi
     mov                  rdi,                   r8
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  r10
    imul                  rsi,                  rdi
     mov                  rdi,                   r9
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     and                  rsi,                  r11
     mov     qword [rbp - 80],                  rsi
     mov                  rsi,                  r13
     xor                  rsi,     qword [rbp - 48]
     mov                  rdi,                  rsi
     xor                  rdi,                  rbx
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                   r8
     xor                  rsi,                   r9
     cmp                  rdi,                  rsi
      jg       main_3_if_true
     mov                  rsi,                  rbx
     add                  rsi,     qword [rbp - 48]
     and                  rsi,                  r11
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  r13
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r10,                  rsi
     add                  r10,                    1
     mov                  rsi,                  rdi
     mov                  eax,                  esi
     mov                  ecx,                 r10d
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r10,                  rsi
     mov                  rsi,     qword [rbp - 64]
     xor                  rsi,                10001
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 24],                  rsi
     mov                  rsi,     qword [rbp - 72]
     xor                  rsi,                10002
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     jmp  main_34_inline_exit
main_29_inline_enter:
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  rdi
    push                   r8
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     pop                   r8
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  rdi
    push                   r8
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     pop                   r8
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  rdi
    push                   r8
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     pop                   r8
     pop                  rdi
     pop                  r11
     mov                  r12,                  rax
     mov                  rsi,                  rdi
     xor                  rsi,                  r12
     mov                  r12,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  r11
     mov                   r9,                  rsi
     mov                  rsi,                  r13
     xor                  rsi,     qword [rbp - 48]
     xor                  rsi,                  rbx
     mov     qword [rbp - 64],                  rsi
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                   r8
     xor                  rsi,                   r9
     mov                  rdi,     qword [rbp - 64]
     xor                  rdi,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  r11
     mov     qword [rbp - 64],                  rsi
     mov                  rsi,                  r13
     add                  rsi,     qword [rbp - 48]
     add                  rsi,                  rbx
     add                  rsi,                    1
     mov     qword [rbp - 72],                  rsi
     mov                  rsi,     qword [rbp - 56]
     add                  rsi,                   r8
     add                  rsi,                   r9
     mov                  rdi,     qword [rbp - 72]
     sub                  rdi,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  r11
     mov     qword [rbp - 72],                  rsi
     mov                  rdi,                  r13
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,     qword [rbp - 48]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r10,                  rdi
    imul                  r10,                  rsi
     mov                  rdi,                  rbx
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  r10
    imul                  rsi,                  rdi
     mov     qword [rbp - 80],                  rsi
     mov                  rsi,     qword [rbp - 56]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r10,     qword [rbp - 80]
    imul                  r10,                  rsi
     mov                  rdi,                   r8
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  r10
    imul                  rsi,                  rdi
     mov                  rdi,                   r9
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     and                  rsi,                  r11
     mov     qword [rbp - 80],                  rsi
     mov                  rsi,                  r13
     xor                  rsi,     qword [rbp - 48]
     mov                  rdi,                  rsi
     xor                  rdi,                  rbx
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                   r8
     xor                  rsi,                   r9
     cmp                  rdi,                  rsi
      jg       main_3_if_true
     mov                  rsi,                  rbx
     add                  rsi,     qword [rbp - 48]
     and                  rsi,                  r11
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  r13
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r10,                  rsi
     add                  r10,                    1
     mov                  rsi,                  rdi
     mov                  eax,                  esi
     mov                  ecx,                 r10d
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r10,                  rsi
     mov                  rsi,     qword [rbp - 64]
     xor                  rsi,                10001
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 24],                  rsi
     mov                  rsi,     qword [rbp - 72]
     xor                  rsi,                10002
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 32],                  rsi
     mov                  rsi,     qword [rbp - 80]
     xor                  rsi,                10003
     mov                  rdi,                  rsi
     jmp main_35_inline_enter
main_30_inline_exit:
     mov                  r12,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  r11
     mov                   r9,                  rsi
     mov                  rsi,                  r13
     xor                  rsi,     qword [rbp - 48]
     xor                  rsi,                  rbx
     mov     qword [rbp - 64],                  rsi
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                   r8
     xor                  rsi,                   r9
     mov                  rdi,     qword [rbp - 64]
     xor                  rdi,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  r11
     mov     qword [rbp - 64],                  rsi
     mov                  rsi,                  r13
     add                  rsi,     qword [rbp - 48]
     add                  rsi,                  rbx
     add                  rsi,                    1
     mov     qword [rbp - 72],                  rsi
     mov                  rsi,     qword [rbp - 56]
     add                  rsi,                   r8
     add                  rsi,                   r9
     mov                  rdi,     qword [rbp - 72]
     sub                  rdi,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  r11
     mov     qword [rbp - 72],                  rsi
     mov                  rdi,                  r13
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,     qword [rbp - 48]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r10,                  rdi
    imul                  r10,                  rsi
     mov                  rdi,                  rbx
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  r10
    imul                  rsi,                  rdi
     mov     qword [rbp - 80],                  rsi
     mov                  rsi,     qword [rbp - 56]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r10,     qword [rbp - 80]
    imul                  r10,                  rsi
     mov                  rdi,                   r8
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  r10
    imul                  rsi,                  rdi
     mov                  rdi,                   r9
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     and                  rsi,                  r11
     mov     qword [rbp - 80],                  rsi
     mov                  rsi,                  r13
     xor                  rsi,     qword [rbp - 48]
     mov                  rdi,                  rsi
     xor                  rdi,                  rbx
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                   r8
     xor                  rsi,                   r9
     cmp                  rdi,                  rsi
      jg       main_3_if_true
     mov                  rsi,                  rbx
     add                  rsi,     qword [rbp - 48]
     and                  rsi,                  r11
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  r13
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r10,                  rsi
     add                  r10,                    1
     mov                  rsi,                  rdi
     mov                  eax,                  esi
     mov                  ecx,                 r10d
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r10,                  rsi
     mov                  rsi,     qword [rbp - 64]
     xor                  rsi,                10001
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 24],                  rsi
     mov                  rsi,     qword [rbp - 72]
     xor                  rsi,                10002
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 32],                  rsi
     mov                  rsi,     qword [rbp - 80]
     xor                  rsi,                10003
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     jmp  main_36_inline_exit
main_3_if_true:
     mov                  rsi,                  r13
     add                  rsi,     qword [rbp - 48]
     and                  rsi,                  r11
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rbx
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     add                  rdi,                    1
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r10,                  rsi
     mov                  rsi,     qword [rbp - 64]
     xor                  rsi,                10001
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 24],                  rsi
     mov                  rsi,     qword [rbp - 72]
     xor                  rsi,                10002
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 32],                  rsi
     mov                  rsi,     qword [rbp - 80]
     xor                  rsi,                10003
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 40],                  rsi
     mov                  rsi,                  r10
     xor                  rsi,                10004
     mov                  rdi,                  rsi
     jmp main_37_inline_enter
main_4_if_false:
     mov                  rsi,                  rbx
     add                  rsi,     qword [rbp - 48]
     and                  rsi,                  r11
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  r13
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r10,                  rsi
     add                  r10,                    1
     mov                  rsi,                  rdi
     mov                  eax,                  esi
     mov                  ecx,                 r10d
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r10,                  rsi
     mov                  rsi,     qword [rbp - 64]
     xor                  rsi,                10001
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 24],                  rsi
     mov                  rsi,     qword [rbp - 72]
     xor                  rsi,                10002
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 32],                  rsi
     mov                  rsi,     qword [rbp - 80]
     xor                  rsi,                10003
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 40],                  rsi
     mov                  rsi,                  r10
     xor                  rsi,                10004
     mov                  rdi,                  rsi
     jmp main_37_inline_enter
main_5_if_exit:
     mov                  rsi,     qword [rbp - 64]
     xor                  rsi,                10001
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 24],                  rsi
     mov                  rsi,     qword [rbp - 72]
     xor                  rsi,                10002
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 32],                  rsi
     mov                  rsi,     qword [rbp - 80]
     xor                  rsi,                10003
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 40],                  rsi
     mov                  rsi,                  r10
     xor                  rsi,                10004
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     jmp  main_38_inline_exit
main_31_inline_enter:
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 24],                  rsi
     mov                  rsi,     qword [rbp - 72]
     xor                  rsi,                10002
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 32],                  rsi
     mov                  rsi,     qword [rbp - 80]
     xor                  rsi,                10003
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 40],                  rsi
     mov                  rsi,                  r10
     xor                  rsi,                10004
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add                  r15,                  rsi
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,     qword [rbp - 48]
     xor                  rsi,                  rbx
     xor                  rsi,                  r13
     xor                  rsi,                   r9
     xor                  rsi,                   r8
     and                  rsi,                  r11
     mov     qword [rbp - 88],                  rsi
     mov                  rsi,     qword [rbp - 56]
     neg                  rsi
     add                  rsi,     qword [rbp - 48]
     add                  rsi,                  rbx
     add                  rsi,                  r13
     sub                  rsi,                   r9
     sub                  rsi,                   r8
     add                  rsi,                    1
     and                  rsi,                  r11
     mov     qword [rbp - 96],                  rsi
     mov                  rsi,     qword [rbp - 56]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,     qword [rbp - 48]
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     mov                  rdi,                  rbx
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     mov                  r10,                  rsi
     mov                  rsi,                  r13
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  r10
    imul                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    imul                  rdi,                  rsi
     mov                  rsi,                   r8
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    imul                  rdi,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  r11
     mov                  r10,                  rsi
     mov                  rsi,                  r13
     xor                  rsi,     qword [rbp - 48]
     mov                  rdi,                  rsi
     xor                  rdi,                  rbx
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                   r8
     xor                  rsi,                   r9
     cmp                  rdi,                  rsi
     jle       main_6_if_true
     mov                  rsi,                  r13
     add                  rsi,     qword [rbp - 48]
     and                  rsi,                  r11
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rbx
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     add                  rdi,                    1
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,     qword [rbp - 88]
     xor                  rdi,                10001
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
     add     qword [rbp - 24],                  rdi
     mov                  rdi,     qword [rbp - 96]
     xor                  rdi,                10002
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
     add     qword [rbp - 32],                  rdi
     mov                  rdi,                  r10
     xor                  rdi,                10003
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     add     qword [rbp - 40],                  rdi
     xor                  rsi,                10004
     mov                  rdi,                  rsi
     jmp main_45_inline_enter
main_32_inline_exit:
     add     qword [rbp - 24],                  rsi
     mov                  rsi,     qword [rbp - 72]
     xor                  rsi,                10002
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 32],                  rsi
     mov                  rsi,     qword [rbp - 80]
     xor                  rsi,                10003
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 40],                  rsi
     mov                  rsi,                  r10
     xor                  rsi,                10004
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add                  r15,                  rsi
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,     qword [rbp - 48]
     xor                  rsi,                  rbx
     xor                  rsi,                  r13
     xor                  rsi,                   r9
     xor                  rsi,                   r8
     and                  rsi,                  r11
     mov     qword [rbp - 88],                  rsi
     mov                  rsi,     qword [rbp - 56]
     neg                  rsi
     add                  rsi,     qword [rbp - 48]
     add                  rsi,                  rbx
     add                  rsi,                  r13
     sub                  rsi,                   r9
     sub                  rsi,                   r8
     add                  rsi,                    1
     and                  rsi,                  r11
     mov     qword [rbp - 96],                  rsi
     mov                  rsi,     qword [rbp - 56]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,     qword [rbp - 48]
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     mov                  rdi,                  rbx
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     mov                  r10,                  rsi
     mov                  rsi,                  r13
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  r10
    imul                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    imul                  rdi,                  rsi
     mov                  rsi,                   r8
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    imul                  rdi,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  r11
     mov                  r10,                  rsi
     mov                  rsi,                  r13
     xor                  rsi,     qword [rbp - 48]
     mov                  rdi,                  rsi
     xor                  rdi,                  rbx
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                   r8
     xor                  rsi,                   r9
     cmp                  rdi,                  rsi
     jle       main_6_if_true
     mov                  rsi,                  r13
     add                  rsi,     qword [rbp - 48]
     and                  rsi,                  r11
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rbx
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     add                  rdi,                    1
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,     qword [rbp - 88]
     xor                  rdi,                10001
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
     add     qword [rbp - 24],                  rdi
     mov                  rdi,     qword [rbp - 96]
     xor                  rdi,                10002
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
     add     qword [rbp - 32],                  rdi
     mov                  rdi,                  r10
     xor                  rdi,                10003
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     add     qword [rbp - 40],                  rdi
     xor                  rsi,                10004
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     jmp  main_46_inline_exit
main_33_inline_enter:
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 32],                  rsi
     mov                  rsi,     qword [rbp - 80]
     xor                  rsi,                10003
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 40],                  rsi
     mov                  rsi,                  r10
     xor                  rsi,                10004
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add                  r15,                  rsi
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,     qword [rbp - 48]
     xor                  rsi,                  rbx
     xor                  rsi,                  r13
     xor                  rsi,                   r9
     xor                  rsi,                   r8
     and                  rsi,                  r11
     mov     qword [rbp - 88],                  rsi
     mov                  rsi,     qword [rbp - 56]
     neg                  rsi
     add                  rsi,     qword [rbp - 48]
     add                  rsi,                  rbx
     add                  rsi,                  r13
     sub                  rsi,                   r9
     sub                  rsi,                   r8
     add                  rsi,                    1
     and                  rsi,                  r11
     mov     qword [rbp - 96],                  rsi
     mov                  rsi,     qword [rbp - 56]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,     qword [rbp - 48]
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     mov                  rdi,                  rbx
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     mov                  r10,                  rsi
     mov                  rsi,                  r13
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  r10
    imul                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    imul                  rdi,                  rsi
     mov                  rsi,                   r8
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    imul                  rdi,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  r11
     mov                  r10,                  rsi
     mov                  rsi,                  r13
     xor                  rsi,     qword [rbp - 48]
     mov                  rdi,                  rsi
     xor                  rdi,                  rbx
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                   r8
     xor                  rsi,                   r9
     cmp                  rdi,                  rsi
     jle       main_6_if_true
     mov                  rsi,                  r13
     add                  rsi,     qword [rbp - 48]
     and                  rsi,                  r11
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rbx
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     add                  rdi,                    1
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,     qword [rbp - 88]
     xor                  rdi,                10001
     jmp main_39_inline_enter
main_34_inline_exit:
     add     qword [rbp - 32],                  rsi
     mov                  rsi,     qword [rbp - 80]
     xor                  rsi,                10003
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 40],                  rsi
     mov                  rsi,                  r10
     xor                  rsi,                10004
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add                  r15,                  rsi
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,     qword [rbp - 48]
     xor                  rsi,                  rbx
     xor                  rsi,                  r13
     xor                  rsi,                   r9
     xor                  rsi,                   r8
     and                  rsi,                  r11
     mov     qword [rbp - 88],                  rsi
     mov                  rsi,     qword [rbp - 56]
     neg                  rsi
     add                  rsi,     qword [rbp - 48]
     add                  rsi,                  rbx
     add                  rsi,                  r13
     sub                  rsi,                   r9
     sub                  rsi,                   r8
     add                  rsi,                    1
     and                  rsi,                  r11
     mov     qword [rbp - 96],                  rsi
     mov                  rsi,     qword [rbp - 56]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,     qword [rbp - 48]
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     mov                  rdi,                  rbx
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     mov                  r10,                  rsi
     mov                  rsi,                  r13
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  r10
    imul                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    imul                  rdi,                  rsi
     mov                  rsi,                   r8
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    imul                  rdi,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  r11
     mov                  r10,                  rsi
     mov                  rsi,                  r13
     xor                  rsi,     qword [rbp - 48]
     mov                  rdi,                  rsi
     xor                  rdi,                  rbx
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                   r8
     xor                  rsi,                   r9
     cmp                  rdi,                  rsi
     jle       main_6_if_true
     mov                  rsi,                  r13
     add                  rsi,     qword [rbp - 48]
     and                  rsi,                  r11
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rbx
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     add                  rdi,                    1
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,     qword [rbp - 88]
     xor                  rdi,                10001
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
     jmp  main_40_inline_exit
main_35_inline_enter:
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    call             xorshift
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 40],                  rsi
     mov                  rsi,                  r10
     xor                  rsi,                10004
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add                  r15,                  rsi
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,     qword [rbp - 48]
     xor                  rsi,                  rbx
     xor                  rsi,                  r13
     xor                  rsi,                   r9
     xor                  rsi,                   r8
     and                  rsi,                  r11
     mov     qword [rbp - 88],                  rsi
     mov                  rsi,     qword [rbp - 56]
     neg                  rsi
     add                  rsi,     qword [rbp - 48]
     add                  rsi,                  rbx
     add                  rsi,                  r13
     sub                  rsi,                   r9
     sub                  rsi,                   r8
     add                  rsi,                    1
     and                  rsi,                  r11
     mov     qword [rbp - 96],                  rsi
     mov                  rsi,     qword [rbp - 56]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,     qword [rbp - 48]
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     mov                  rdi,                  rbx
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     mov                  r10,                  rsi
     mov                  rsi,                  r13
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  r10
    imul                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    imul                  rdi,                  rsi
     mov                  rsi,                   r8
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    imul                  rdi,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  r11
     mov                  r10,                  rsi
     mov                  rsi,                  r13
     xor                  rsi,     qword [rbp - 48]
     mov                  rdi,                  rsi
     xor                  rdi,                  rbx
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                   r8
     xor                  rsi,                   r9
     cmp                  rdi,                  rsi
     jle       main_6_if_true
     mov                  rsi,                  r13
     add                  rsi,     qword [rbp - 48]
     and                  rsi,                  r11
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rbx
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     add                  rdi,                    1
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,     qword [rbp - 88]
     xor                  rdi,                10001
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
     add     qword [rbp - 24],                  rdi
     mov                  rdi,     qword [rbp - 96]
     xor                  rdi,                10002
     jmp main_41_inline_enter
main_36_inline_exit:
     add     qword [rbp - 40],                  rsi
     mov                  rsi,                  r10
     xor                  rsi,                10004
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add                  r15,                  rsi
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,     qword [rbp - 48]
     xor                  rsi,                  rbx
     xor                  rsi,                  r13
     xor                  rsi,                   r9
     xor                  rsi,                   r8
     and                  rsi,                  r11
     mov     qword [rbp - 88],                  rsi
     mov                  rsi,     qword [rbp - 56]
     neg                  rsi
     add                  rsi,     qword [rbp - 48]
     add                  rsi,                  rbx
     add                  rsi,                  r13
     sub                  rsi,                   r9
     sub                  rsi,                   r8
     add                  rsi,                    1
     and                  rsi,                  r11
     mov     qword [rbp - 96],                  rsi
     mov                  rsi,     qword [rbp - 56]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,     qword [rbp - 48]
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     mov                  rdi,                  rbx
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     mov                  r10,                  rsi
     mov                  rsi,                  r13
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  r10
    imul                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    imul                  rdi,                  rsi
     mov                  rsi,                   r8
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    imul                  rdi,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  r11
     mov                  r10,                  rsi
     mov                  rsi,                  r13
     xor                  rsi,     qword [rbp - 48]
     mov                  rdi,                  rsi
     xor                  rdi,                  rbx
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                   r8
     xor                  rsi,                   r9
     cmp                  rdi,                  rsi
     jle       main_6_if_true
     mov                  rsi,                  r13
     add                  rsi,     qword [rbp - 48]
     and                  rsi,                  r11
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rbx
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     add                  rdi,                    1
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,     qword [rbp - 88]
     xor                  rdi,                10001
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
     add     qword [rbp - 24],                  rdi
     mov                  rdi,     qword [rbp - 96]
     xor                  rdi,                10002
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
     jmp  main_42_inline_exit
main_37_inline_enter:
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add                  r15,                  rsi
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,     qword [rbp - 48]
     xor                  rsi,                  rbx
     xor                  rsi,                  r13
     xor                  rsi,                   r9
     xor                  rsi,                   r8
     and                  rsi,                  r11
     mov     qword [rbp - 88],                  rsi
     mov                  rsi,     qword [rbp - 56]
     neg                  rsi
     add                  rsi,     qword [rbp - 48]
     add                  rsi,                  rbx
     add                  rsi,                  r13
     sub                  rsi,                   r9
     sub                  rsi,                   r8
     add                  rsi,                    1
     and                  rsi,                  r11
     mov     qword [rbp - 96],                  rsi
     mov                  rsi,     qword [rbp - 56]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,     qword [rbp - 48]
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     mov                  rdi,                  rbx
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     mov                  r10,                  rsi
     mov                  rsi,                  r13
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  r10
    imul                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    imul                  rdi,                  rsi
     mov                  rsi,                   r8
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    imul                  rdi,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  r11
     mov                  r10,                  rsi
     mov                  rsi,                  r13
     xor                  rsi,     qword [rbp - 48]
     mov                  rdi,                  rsi
     xor                  rdi,                  rbx
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                   r8
     xor                  rsi,                   r9
     cmp                  rdi,                  rsi
     jle       main_6_if_true
     mov                  rsi,                  r13
     add                  rsi,     qword [rbp - 48]
     and                  rsi,                  r11
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rbx
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     add                  rdi,                    1
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,     qword [rbp - 88]
     xor                  rdi,                10001
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
     add     qword [rbp - 24],                  rdi
     mov                  rdi,     qword [rbp - 96]
     xor                  rdi,                10002
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
     add     qword [rbp - 32],                  rdi
     mov                  rdi,                  r10
     xor                  rdi,                10003
     jmp main_43_inline_enter
main_38_inline_exit:
     add                  r15,                  rsi
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,     qword [rbp - 48]
     xor                  rsi,                  rbx
     xor                  rsi,                  r13
     xor                  rsi,                   r9
     xor                  rsi,                   r8
     and                  rsi,                  r11
     mov     qword [rbp - 88],                  rsi
     mov                  rsi,     qword [rbp - 56]
     neg                  rsi
     add                  rsi,     qword [rbp - 48]
     add                  rsi,                  rbx
     add                  rsi,                  r13
     sub                  rsi,                   r9
     sub                  rsi,                   r8
     add                  rsi,                    1
     and                  rsi,                  r11
     mov     qword [rbp - 96],                  rsi
     mov                  rsi,     qword [rbp - 56]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,     qword [rbp - 48]
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     mov                  rdi,                  rbx
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     mov                  r10,                  rsi
     mov                  rsi,                  r13
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  r10
    imul                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    imul                  rdi,                  rsi
     mov                  rsi,                   r8
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    imul                  rdi,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  r11
     mov                  r10,                  rsi
     mov                  rsi,                  r13
     xor                  rsi,     qword [rbp - 48]
     mov                  rdi,                  rsi
     xor                  rdi,                  rbx
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                   r8
     xor                  rsi,                   r9
     cmp                  rdi,                  rsi
     jle       main_6_if_true
     mov                  rsi,                  r13
     add                  rsi,     qword [rbp - 48]
     and                  rsi,                  r11
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rbx
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     add                  rdi,                    1
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,     qword [rbp - 88]
     xor                  rdi,                10001
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
     add     qword [rbp - 24],                  rdi
     mov                  rdi,     qword [rbp - 96]
     xor                  rdi,                10002
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
     add     qword [rbp - 32],                  rdi
     mov                  rdi,                  r10
     xor                  rdi,                10003
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     jmp  main_44_inline_exit
main_6_if_true:
     mov                  rsi,                  rbx
     add                  rsi,     qword [rbp - 48]
     and                  rsi,                  r11
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  r13
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     add                  rdi,                    1
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,     qword [rbp - 88]
     xor                  rdi,                10001
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
     add     qword [rbp - 24],                  rdi
     mov                  rdi,     qword [rbp - 96]
     xor                  rdi,                10002
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
     add     qword [rbp - 32],                  rdi
     mov                  rdi,                  r10
     xor                  rdi,                10003
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     add     qword [rbp - 40],                  rdi
     xor                  rsi,                10004
     mov                  rdi,                  rsi
     jmp main_45_inline_enter
main_7_if_false:
     mov                  rsi,                  r13
     add                  rsi,     qword [rbp - 48]
     and                  rsi,                  r11
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rbx
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     add                  rdi,                    1
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,     qword [rbp - 88]
     xor                  rdi,                10001
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
     add     qword [rbp - 24],                  rdi
     mov                  rdi,     qword [rbp - 96]
     xor                  rdi,                10002
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
     add     qword [rbp - 32],                  rdi
     mov                  rdi,                  r10
     xor                  rdi,                10003
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     add     qword [rbp - 40],                  rdi
     xor                  rsi,                10004
     mov                  rdi,                  rsi
     jmp main_45_inline_enter
main_8_if_exit:
     mov                  rdi,     qword [rbp - 88]
     xor                  rdi,                10001
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
     add     qword [rbp - 24],                  rdi
     mov                  rdi,     qword [rbp - 96]
     xor                  rdi,                10002
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
     add     qword [rbp - 32],                  rdi
     mov                  rdi,                  r10
     xor                  rdi,                10003
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     add     qword [rbp - 40],                  rdi
     xor                  rsi,                10004
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     jmp  main_46_inline_exit
main_39_inline_enter:
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
     add     qword [rbp - 24],                  rdi
     mov                  rdi,     qword [rbp - 96]
     xor                  rdi,                10002
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
     add     qword [rbp - 32],                  rdi
     mov                  rdi,                  r10
     xor                  rdi,                10003
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     add     qword [rbp - 40],                  rdi
     xor                  rsi,                10004
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add                  r15,                  rsi
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                  r13
     xor                  rsi,                  rbx
     xor                  rsi,     qword [rbp - 48]
     xor                  rsi,                   r9
     xor                  rsi,                   r8
     and                  rsi,                  r11
     mov    qword [rbp - 104],                  rsi
     mov                  rsi,     qword [rbp - 56]
     sub                  rsi,     qword [rbp - 48]
     mov                  rdi,                  rbx
     neg                  rdi
     add                  rsi,                  rdi
     sub                  rsi,                  r13
     add                  rsi,                   r9
     add                  rsi,                   r8
     sub                  rsi,                    1
     neg                  rsi
     and                  rsi,                  r11
     mov                  r10,                  rsi
     mov                  rsi,     qword [rbp - 56]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     mov                  rdi,                   r9
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     mov    qword [rbp - 112],                  rsi
     mov                  rsi,                  r13
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,    qword [rbp - 112]
    imul                  rdi,                  rsi
     mov                  rsi,     qword [rbp - 48]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    imul                  rdi,                  rsi
     mov    qword [rbp - 120],                  rbx
     mov                  rax,    qword [rbp - 120]
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov    qword [rbp - 120],                  rdx
     mov                  rsi,                  rdi
     mov                  rax,                  rsi
    imul                  rax,    qword [rbp - 120]
     mov                  rsi,                  rax
     and                  rsi,                  r11
     mov    qword [rbp - 112],                  rsi
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                   r8
     mov                  rdi,                  rsi
     xor                  rdi,                   r9
     mov                  rsi,                  rbx
     xor                  rsi,     qword [rbp - 48]
     xor                  rsi,                  r13
     cmp                  rdi,                  rsi
      jl       main_9_if_true
     mov                  rsi,                  rbx
     add                  rsi,     qword [rbp - 48]
     and                  rsi,                  r11
     mov                  rbx,                  rsi
     mov                  rax,                  rbx
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r13
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rsi
     add                  rdi,                    1
     mov                  rsi,                  rbx
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rbx,                  rsi
     mov                  rsi,    qword [rbp - 104]
     xor                  rsi,                10001
     mov                  rdi,                  rsi
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 24],                  rsi
     mov                  rsi,                  r10
     xor                  rsi,                10002
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 32],                  rsi
     mov                  rsi,    qword [rbp - 112]
     xor                  rsi,                10003
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 40],                  rsi
     mov                  rsi,                  rbx
     xor                  rsi,                10004
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add                  r15,                  rsi
     add                  r14,                    1
     cmp                  r14,      qword [rbp - 8]
      jl     main_2_loop_body
     mov                  rbx,     qword [rbp - 24]
     mov                   r8,     __const_string_9
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_57_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 32]
     mov                   r8,    __const_string_10
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_40_inline_exit:
     add     qword [rbp - 24],                  rdi
     mov                  rdi,     qword [rbp - 96]
     xor                  rdi,                10002
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
     add     qword [rbp - 32],                  rdi
     mov                  rdi,                  r10
     xor                  rdi,                10003
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     add     qword [rbp - 40],                  rdi
     xor                  rsi,                10004
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add                  r15,                  rsi
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                  r13
     xor                  rsi,                  rbx
     xor                  rsi,     qword [rbp - 48]
     xor                  rsi,                   r9
     xor                  rsi,                   r8
     and                  rsi,                  r11
     mov    qword [rbp - 104],                  rsi
     mov                  rsi,     qword [rbp - 56]
     sub                  rsi,     qword [rbp - 48]
     mov                  rdi,                  rbx
     neg                  rdi
     add                  rsi,                  rdi
     sub                  rsi,                  r13
     add                  rsi,                   r9
     add                  rsi,                   r8
     sub                  rsi,                    1
     neg                  rsi
     and                  rsi,                  r11
     mov                  r10,                  rsi
     mov                  rsi,     qword [rbp - 56]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     mov                  rdi,                   r9
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     mov    qword [rbp - 112],                  rsi
     mov                  rsi,                  r13
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,    qword [rbp - 112]
    imul                  rdi,                  rsi
     mov                  rsi,     qword [rbp - 48]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    imul                  rdi,                  rsi
     mov    qword [rbp - 120],                  rbx
     mov                  rax,    qword [rbp - 120]
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov    qword [rbp - 120],                  rdx
     mov                  rsi,                  rdi
     mov                  rax,                  rsi
    imul                  rax,    qword [rbp - 120]
     mov                  rsi,                  rax
     and                  rsi,                  r11
     mov    qword [rbp - 112],                  rsi
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                   r8
     mov                  rdi,                  rsi
     xor                  rdi,                   r9
     mov                  rsi,                  rbx
     xor                  rsi,     qword [rbp - 48]
     xor                  rsi,                  r13
     cmp                  rdi,                  rsi
      jl       main_9_if_true
     mov                  rsi,                  rbx
     add                  rsi,     qword [rbp - 48]
     and                  rsi,                  r11
     mov                  rbx,                  rsi
     mov                  rax,                  rbx
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r13
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rsi
     add                  rdi,                    1
     mov                  rsi,                  rbx
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rbx,                  rsi
     mov                  rsi,    qword [rbp - 104]
     xor                  rsi,                10001
     mov                  rdi,                  rsi
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 24],                  rsi
     mov                  rsi,                  r10
     xor                  rsi,                10002
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 32],                  rsi
     mov                  rsi,    qword [rbp - 112]
     xor                  rsi,                10003
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 40],                  rsi
     mov                  rsi,                  rbx
     xor                  rsi,                10004
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add                  r15,                  rsi
     add                  r14,                    1
     cmp                  r14,      qword [rbp - 8]
      jl     main_2_loop_body
     mov                  rbx,     qword [rbp - 24]
     mov                   r8,     __const_string_9
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_57_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 32]
     mov                   r8,    __const_string_10
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_41_inline_enter:
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
     add     qword [rbp - 32],                  rdi
     mov                  rdi,                  r10
     xor                  rdi,                10003
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     add     qword [rbp - 40],                  rdi
     xor                  rsi,                10004
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add                  r15,                  rsi
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                  r13
     xor                  rsi,                  rbx
     xor                  rsi,     qword [rbp - 48]
     xor                  rsi,                   r9
     xor                  rsi,                   r8
     and                  rsi,                  r11
     mov    qword [rbp - 104],                  rsi
     mov                  rsi,     qword [rbp - 56]
     sub                  rsi,     qword [rbp - 48]
     mov                  rdi,                  rbx
     neg                  rdi
     add                  rsi,                  rdi
     sub                  rsi,                  r13
     add                  rsi,                   r9
     add                  rsi,                   r8
     sub                  rsi,                    1
     neg                  rsi
     and                  rsi,                  r11
     mov                  r10,                  rsi
     mov                  rsi,     qword [rbp - 56]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     mov                  rdi,                   r9
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     mov    qword [rbp - 112],                  rsi
     mov                  rsi,                  r13
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,    qword [rbp - 112]
    imul                  rdi,                  rsi
     mov                  rsi,     qword [rbp - 48]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    imul                  rdi,                  rsi
     mov    qword [rbp - 120],                  rbx
     mov                  rax,    qword [rbp - 120]
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov    qword [rbp - 120],                  rdx
     mov                  rsi,                  rdi
     mov                  rax,                  rsi
    imul                  rax,    qword [rbp - 120]
     mov                  rsi,                  rax
     and                  rsi,                  r11
     mov    qword [rbp - 112],                  rsi
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                   r8
     mov                  rdi,                  rsi
     xor                  rdi,                   r9
     mov                  rsi,                  rbx
     xor                  rsi,     qword [rbp - 48]
     xor                  rsi,                  r13
     cmp                  rdi,                  rsi
      jl       main_9_if_true
     mov                  rsi,                  rbx
     add                  rsi,     qword [rbp - 48]
     and                  rsi,                  r11
     mov                  rbx,                  rsi
     mov                  rax,                  rbx
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r13
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rsi
     add                  rdi,                    1
     mov                  rsi,                  rbx
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rbx,                  rsi
     mov                  rsi,    qword [rbp - 104]
     xor                  rsi,                10001
     mov                  rdi,                  rsi
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 24],                  rsi
     mov                  rsi,                  r10
     xor                  rsi,                10002
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 32],                  rsi
     mov                  rsi,    qword [rbp - 112]
     xor                  rsi,                10003
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 40],                  rsi
     mov                  rsi,                  rbx
     xor                  rsi,                10004
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add                  r15,                  rsi
     add                  r14,                    1
     cmp                  r14,      qword [rbp - 8]
      jl     main_2_loop_body
     mov                  rbx,     qword [rbp - 24]
     mov                   r8,     __const_string_9
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_57_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 32]
     mov                   r8,    __const_string_10
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_42_inline_exit:
     add     qword [rbp - 32],                  rdi
     mov                  rdi,                  r10
     xor                  rdi,                10003
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     add     qword [rbp - 40],                  rdi
     xor                  rsi,                10004
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add                  r15,                  rsi
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                  r13
     xor                  rsi,                  rbx
     xor                  rsi,     qword [rbp - 48]
     xor                  rsi,                   r9
     xor                  rsi,                   r8
     and                  rsi,                  r11
     mov    qword [rbp - 104],                  rsi
     mov                  rsi,     qword [rbp - 56]
     sub                  rsi,     qword [rbp - 48]
     mov                  rdi,                  rbx
     neg                  rdi
     add                  rsi,                  rdi
     sub                  rsi,                  r13
     add                  rsi,                   r9
     add                  rsi,                   r8
     sub                  rsi,                    1
     neg                  rsi
     and                  rsi,                  r11
     mov                  r10,                  rsi
     mov                  rsi,     qword [rbp - 56]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     mov                  rdi,                   r9
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     mov    qword [rbp - 112],                  rsi
     mov                  rsi,                  r13
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,    qword [rbp - 112]
    imul                  rdi,                  rsi
     mov                  rsi,     qword [rbp - 48]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    imul                  rdi,                  rsi
     mov    qword [rbp - 120],                  rbx
     mov                  rax,    qword [rbp - 120]
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov    qword [rbp - 120],                  rdx
     mov                  rsi,                  rdi
     mov                  rax,                  rsi
    imul                  rax,    qword [rbp - 120]
     mov                  rsi,                  rax
     and                  rsi,                  r11
     mov    qword [rbp - 112],                  rsi
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                   r8
     mov                  rdi,                  rsi
     xor                  rdi,                   r9
     mov                  rsi,                  rbx
     xor                  rsi,     qword [rbp - 48]
     xor                  rsi,                  r13
     cmp                  rdi,                  rsi
      jl       main_9_if_true
     mov                  rsi,                  rbx
     add                  rsi,     qword [rbp - 48]
     and                  rsi,                  r11
     mov                  rbx,                  rsi
     mov                  rax,                  rbx
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r13
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rsi
     add                  rdi,                    1
     mov                  rsi,                  rbx
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rbx,                  rsi
     mov                  rsi,    qword [rbp - 104]
     xor                  rsi,                10001
     mov                  rdi,                  rsi
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 24],                  rsi
     mov                  rsi,                  r10
     xor                  rsi,                10002
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 32],                  rsi
     mov                  rsi,    qword [rbp - 112]
     xor                  rsi,                10003
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 40],                  rsi
     mov                  rsi,                  rbx
     xor                  rsi,                10004
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add                  r15,                  rsi
     add                  r14,                    1
     cmp                  r14,      qword [rbp - 8]
      jl     main_2_loop_body
     mov                  rbx,     qword [rbp - 24]
     mov                   r8,     __const_string_9
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_57_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 32]
     mov                   r8,    __const_string_10
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_43_inline_enter:
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    call             xorshift
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     add     qword [rbp - 40],                  rdi
     xor                  rsi,                10004
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add                  r15,                  rsi
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                  r13
     xor                  rsi,                  rbx
     xor                  rsi,     qword [rbp - 48]
     xor                  rsi,                   r9
     xor                  rsi,                   r8
     and                  rsi,                  r11
     mov    qword [rbp - 104],                  rsi
     mov                  rsi,     qword [rbp - 56]
     sub                  rsi,     qword [rbp - 48]
     mov                  rdi,                  rbx
     neg                  rdi
     add                  rsi,                  rdi
     sub                  rsi,                  r13
     add                  rsi,                   r9
     add                  rsi,                   r8
     sub                  rsi,                    1
     neg                  rsi
     and                  rsi,                  r11
     mov                  r10,                  rsi
     mov                  rsi,     qword [rbp - 56]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     mov                  rdi,                   r9
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     mov    qword [rbp - 112],                  rsi
     mov                  rsi,                  r13
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,    qword [rbp - 112]
    imul                  rdi,                  rsi
     mov                  rsi,     qword [rbp - 48]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    imul                  rdi,                  rsi
     mov    qword [rbp - 120],                  rbx
     mov                  rax,    qword [rbp - 120]
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov    qword [rbp - 120],                  rdx
     mov                  rsi,                  rdi
     mov                  rax,                  rsi
    imul                  rax,    qword [rbp - 120]
     mov                  rsi,                  rax
     and                  rsi,                  r11
     mov    qword [rbp - 112],                  rsi
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                   r8
     mov                  rdi,                  rsi
     xor                  rdi,                   r9
     mov                  rsi,                  rbx
     xor                  rsi,     qword [rbp - 48]
     xor                  rsi,                  r13
     cmp                  rdi,                  rsi
      jl       main_9_if_true
     mov                  rsi,                  rbx
     add                  rsi,     qword [rbp - 48]
     and                  rsi,                  r11
     mov                  rbx,                  rsi
     mov                  rax,                  rbx
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r13
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rsi
     add                  rdi,                    1
     mov                  rsi,                  rbx
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rbx,                  rsi
     mov                  rsi,    qword [rbp - 104]
     xor                  rsi,                10001
     mov                  rdi,                  rsi
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 24],                  rsi
     mov                  rsi,                  r10
     xor                  rsi,                10002
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 32],                  rsi
     mov                  rsi,    qword [rbp - 112]
     xor                  rsi,                10003
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 40],                  rsi
     mov                  rsi,                  rbx
     xor                  rsi,                10004
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add                  r15,                  rsi
     add                  r14,                    1
     cmp                  r14,      qword [rbp - 8]
      jl     main_2_loop_body
     mov                  rbx,     qword [rbp - 24]
     mov                   r8,     __const_string_9
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_57_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 32]
     mov                   r8,    __const_string_10
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_44_inline_exit:
     add     qword [rbp - 40],                  rdi
     xor                  rsi,                10004
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add                  r15,                  rsi
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                  r13
     xor                  rsi,                  rbx
     xor                  rsi,     qword [rbp - 48]
     xor                  rsi,                   r9
     xor                  rsi,                   r8
     and                  rsi,                  r11
     mov    qword [rbp - 104],                  rsi
     mov                  rsi,     qword [rbp - 56]
     sub                  rsi,     qword [rbp - 48]
     mov                  rdi,                  rbx
     neg                  rdi
     add                  rsi,                  rdi
     sub                  rsi,                  r13
     add                  rsi,                   r9
     add                  rsi,                   r8
     sub                  rsi,                    1
     neg                  rsi
     and                  rsi,                  r11
     mov                  r10,                  rsi
     mov                  rsi,     qword [rbp - 56]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     mov                  rdi,                   r9
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     mov    qword [rbp - 112],                  rsi
     mov                  rsi,                  r13
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,    qword [rbp - 112]
    imul                  rdi,                  rsi
     mov                  rsi,     qword [rbp - 48]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    imul                  rdi,                  rsi
     mov    qword [rbp - 120],                  rbx
     mov                  rax,    qword [rbp - 120]
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov    qword [rbp - 120],                  rdx
     mov                  rsi,                  rdi
     mov                  rax,                  rsi
    imul                  rax,    qword [rbp - 120]
     mov                  rsi,                  rax
     and                  rsi,                  r11
     mov    qword [rbp - 112],                  rsi
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                   r8
     mov                  rdi,                  rsi
     xor                  rdi,                   r9
     mov                  rsi,                  rbx
     xor                  rsi,     qword [rbp - 48]
     xor                  rsi,                  r13
     cmp                  rdi,                  rsi
      jl       main_9_if_true
     mov                  rsi,                  rbx
     add                  rsi,     qword [rbp - 48]
     and                  rsi,                  r11
     mov                  rbx,                  rsi
     mov                  rax,                  rbx
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r13
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rsi
     add                  rdi,                    1
     mov                  rsi,                  rbx
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rbx,                  rsi
     mov                  rsi,    qword [rbp - 104]
     xor                  rsi,                10001
     mov                  rdi,                  rsi
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 24],                  rsi
     mov                  rsi,                  r10
     xor                  rsi,                10002
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 32],                  rsi
     mov                  rsi,    qword [rbp - 112]
     xor                  rsi,                10003
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 40],                  rsi
     mov                  rsi,                  rbx
     xor                  rsi,                10004
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add                  r15,                  rsi
     add                  r14,                    1
     cmp                  r14,      qword [rbp - 8]
      jl     main_2_loop_body
     mov                  rbx,     qword [rbp - 24]
     mov                   r8,     __const_string_9
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_57_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 32]
     mov                   r8,    __const_string_10
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_45_inline_enter:
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     add                  r15,                  rsi
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                  r13
     xor                  rsi,                  rbx
     xor                  rsi,     qword [rbp - 48]
     xor                  rsi,                   r9
     xor                  rsi,                   r8
     and                  rsi,                  r11
     mov    qword [rbp - 104],                  rsi
     mov                  rsi,     qword [rbp - 56]
     sub                  rsi,     qword [rbp - 48]
     mov                  rdi,                  rbx
     neg                  rdi
     add                  rsi,                  rdi
     sub                  rsi,                  r13
     add                  rsi,                   r9
     add                  rsi,                   r8
     sub                  rsi,                    1
     neg                  rsi
     and                  rsi,                  r11
     mov                  r10,                  rsi
     mov                  rsi,     qword [rbp - 56]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     mov                  rdi,                   r9
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     mov    qword [rbp - 112],                  rsi
     mov                  rsi,                  r13
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,    qword [rbp - 112]
    imul                  rdi,                  rsi
     mov                  rsi,     qword [rbp - 48]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    imul                  rdi,                  rsi
     mov    qword [rbp - 120],                  rbx
     mov                  rax,    qword [rbp - 120]
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov    qword [rbp - 120],                  rdx
     mov                  rsi,                  rdi
     mov                  rax,                  rsi
    imul                  rax,    qword [rbp - 120]
     mov                  rsi,                  rax
     and                  rsi,                  r11
     mov    qword [rbp - 112],                  rsi
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                   r8
     mov                  rdi,                  rsi
     xor                  rdi,                   r9
     mov                  rsi,                  rbx
     xor                  rsi,     qword [rbp - 48]
     xor                  rsi,                  r13
     cmp                  rdi,                  rsi
      jl       main_9_if_true
     mov                  rsi,                  rbx
     add                  rsi,     qword [rbp - 48]
     and                  rsi,                  r11
     mov                  rbx,                  rsi
     mov                  rax,                  rbx
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r13
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rsi
     add                  rdi,                    1
     mov                  rsi,                  rbx
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rbx,                  rsi
     mov                  rsi,    qword [rbp - 104]
     xor                  rsi,                10001
     mov                  rdi,                  rsi
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 24],                  rsi
     mov                  rsi,                  r10
     xor                  rsi,                10002
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 32],                  rsi
     mov                  rsi,    qword [rbp - 112]
     xor                  rsi,                10003
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 40],                  rsi
     mov                  rsi,                  rbx
     xor                  rsi,                10004
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add                  r15,                  rsi
     add                  r14,                    1
     cmp                  r14,      qword [rbp - 8]
      jl     main_2_loop_body
     mov                  rbx,     qword [rbp - 24]
     mov                   r8,     __const_string_9
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_57_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 32]
     mov                   r8,    __const_string_10
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_46_inline_exit:
     add                  r15,                  rsi
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                  r13
     xor                  rsi,                  rbx
     xor                  rsi,     qword [rbp - 48]
     xor                  rsi,                   r9
     xor                  rsi,                   r8
     and                  rsi,                  r11
     mov    qword [rbp - 104],                  rsi
     mov                  rsi,     qword [rbp - 56]
     sub                  rsi,     qword [rbp - 48]
     mov                  rdi,                  rbx
     neg                  rdi
     add                  rsi,                  rdi
     sub                  rsi,                  r13
     add                  rsi,                   r9
     add                  rsi,                   r8
     sub                  rsi,                    1
     neg                  rsi
     and                  rsi,                  r11
     mov                  r10,                  rsi
     mov                  rsi,     qword [rbp - 56]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     mov                  rdi,                   r9
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     mov    qword [rbp - 112],                  rsi
     mov                  rsi,                  r13
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,    qword [rbp - 112]
    imul                  rdi,                  rsi
     mov                  rsi,     qword [rbp - 48]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    imul                  rdi,                  rsi
     mov    qword [rbp - 120],                  rbx
     mov                  rax,    qword [rbp - 120]
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov    qword [rbp - 120],                  rdx
     mov                  rsi,                  rdi
     mov                  rax,                  rsi
    imul                  rax,    qword [rbp - 120]
     mov                  rsi,                  rax
     and                  rsi,                  r11
     mov    qword [rbp - 112],                  rsi
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,                   r8
     mov                  rdi,                  rsi
     xor                  rdi,                   r9
     mov                  rsi,                  rbx
     xor                  rsi,     qword [rbp - 48]
     xor                  rsi,                  r13
     cmp                  rdi,                  rsi
      jl       main_9_if_true
     mov                  rsi,                  rbx
     add                  rsi,     qword [rbp - 48]
     and                  rsi,                  r11
     mov                  rbx,                  rsi
     mov                  rax,                  rbx
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r13
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rsi
     add                  rdi,                    1
     mov                  rsi,                  rbx
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rbx,                  rsi
     mov                  rsi,    qword [rbp - 104]
     xor                  rsi,                10001
     mov                  rdi,                  rsi
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 24],                  rsi
     mov                  rsi,                  r10
     xor                  rsi,                10002
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 32],                  rsi
     mov                  rsi,    qword [rbp - 112]
     xor                  rsi,                10003
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 40],                  rsi
     mov                  rsi,                  rbx
     xor                  rsi,                10004
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add                  r15,                  rsi
     add                  r14,                    1
     cmp                  r14,      qword [rbp - 8]
      jl     main_2_loop_body
     mov                  rbx,     qword [rbp - 24]
     mov                   r8,     __const_string_9
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_57_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 32]
     mov                   r8,    __const_string_10
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_9_if_true:
     mov                  rsi,                  r13
     add                  rsi,     qword [rbp - 48]
     and                  rsi,                  r11
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  rbx
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rbx,                  rsi
     add                  rbx,                    1
     mov                  rsi,                  rdi
     mov                  eax,                  esi
     mov                  ecx,                  ebx
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rbx,                  rsi
     mov                  rsi,    qword [rbp - 104]
     xor                  rsi,                10001
     mov                  rdi,                  rsi
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 24],                  rsi
     mov                  rsi,                  r10
     xor                  rsi,                10002
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 32],                  rsi
     mov                  rsi,    qword [rbp - 112]
     xor                  rsi,                10003
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 40],                  rsi
     mov                  rsi,                  rbx
     xor                  rsi,                10004
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add                  r15,                  rsi
     add                  r14,                    1
     cmp                  r14,      qword [rbp - 8]
      jl     main_2_loop_body
     mov                  rbx,     qword [rbp - 24]
     mov                   r8,     __const_string_9
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_57_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 32]
     mov                   r8,    __const_string_10
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_10_if_false:
     mov                  rsi,                  rbx
     add                  rsi,     qword [rbp - 48]
     and                  rsi,                  r11
     mov                  rbx,                  rsi
     mov                  rax,                  rbx
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r13
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rsi
     add                  rdi,                    1
     mov                  rsi,                  rbx
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rbx,                  rsi
     mov                  rsi,    qword [rbp - 104]
     xor                  rsi,                10001
     mov                  rdi,                  rsi
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 24],                  rsi
     mov                  rsi,                  r10
     xor                  rsi,                10002
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 32],                  rsi
     mov                  rsi,    qword [rbp - 112]
     xor                  rsi,                10003
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 40],                  rsi
     mov                  rsi,                  rbx
     xor                  rsi,                10004
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add                  r15,                  rsi
     add                  r14,                    1
     cmp                  r14,      qword [rbp - 8]
      jl     main_2_loop_body
     mov                  rbx,     qword [rbp - 24]
     mov                   r8,     __const_string_9
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_57_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 32]
     mov                   r8,    __const_string_10
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_11_if_exit:
     mov                  rsi,    qword [rbp - 104]
     xor                  rsi,                10001
     mov                  rdi,                  rsi
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 24],                  rsi
     mov                  rsi,                  r10
     xor                  rsi,                10002
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 32],                  rsi
     mov                  rsi,    qword [rbp - 112]
     xor                  rsi,                10003
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 40],                  rsi
     mov                  rsi,                  rbx
     xor                  rsi,                10004
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add                  r15,                  rsi
     add                  r14,                    1
     cmp                  r14,      qword [rbp - 8]
      jl     main_2_loop_body
     mov                  rbx,     qword [rbp - 24]
     mov                   r8,     __const_string_9
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_57_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 32]
     mov                   r8,    __const_string_10
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_47_inline_enter:
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 24],                  rsi
     mov                  rsi,                  r10
     xor                  rsi,                10002
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 32],                  rsi
     mov                  rsi,    qword [rbp - 112]
     xor                  rsi,                10003
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 40],                  rsi
     mov                  rsi,                  rbx
     xor                  rsi,                10004
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add                  r15,                  rsi
     add                  r14,                    1
     cmp                  r14,      qword [rbp - 8]
      jl     main_2_loop_body
     mov                  rbx,     qword [rbp - 24]
     mov                   r8,     __const_string_9
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_57_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 32]
     mov                   r8,    __const_string_10
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_48_inline_exit:
     add     qword [rbp - 24],                  rsi
     mov                  rsi,                  r10
     xor                  rsi,                10002
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 32],                  rsi
     mov                  rsi,    qword [rbp - 112]
     xor                  rsi,                10003
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 40],                  rsi
     mov                  rsi,                  rbx
     xor                  rsi,                10004
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add                  r15,                  rsi
     add                  r14,                    1
     cmp                  r14,      qword [rbp - 8]
      jl     main_2_loop_body
     mov                  rbx,     qword [rbp - 24]
     mov                   r8,     __const_string_9
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_57_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 32]
     mov                   r8,    __const_string_10
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_49_inline_enter:
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 32],                  rsi
     mov                  rsi,    qword [rbp - 112]
     xor                  rsi,                10003
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 40],                  rsi
     mov                  rsi,                  rbx
     xor                  rsi,                10004
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add                  r15,                  rsi
     add                  r14,                    1
     cmp                  r14,      qword [rbp - 8]
      jl     main_2_loop_body
     mov                  rbx,     qword [rbp - 24]
     mov                   r8,     __const_string_9
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_57_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 32]
     mov                   r8,    __const_string_10
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_50_inline_exit:
     add     qword [rbp - 32],                  rsi
     mov                  rsi,    qword [rbp - 112]
     xor                  rsi,                10003
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 40],                  rsi
     mov                  rsi,                  rbx
     xor                  rsi,                10004
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add                  r15,                  rsi
     add                  r14,                    1
     cmp                  r14,      qword [rbp - 8]
      jl     main_2_loop_body
     mov                  rbx,     qword [rbp - 24]
     mov                   r8,     __const_string_9
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_57_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 32]
     mov                   r8,    __const_string_10
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_51_inline_enter:
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add     qword [rbp - 40],                  rsi
     mov                  rsi,                  rbx
     xor                  rsi,                10004
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add                  r15,                  rsi
     add                  r14,                    1
     cmp                  r14,      qword [rbp - 8]
      jl     main_2_loop_body
     mov                  rbx,     qword [rbp - 24]
     mov                   r8,     __const_string_9
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_57_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 32]
     mov                   r8,    __const_string_10
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_52_inline_exit:
     add     qword [rbp - 40],                  rsi
     mov                  rsi,                  rbx
     xor                  rsi,                10004
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add                  r15,                  rsi
     add                  r14,                    1
     cmp                  r14,      qword [rbp - 8]
      jl     main_2_loop_body
     mov                  rbx,     qword [rbp - 24]
     mov                   r8,     __const_string_9
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_57_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 32]
     mov                   r8,    __const_string_10
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_53_inline_enter:
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r11
     mov                  rsi,                  rax
     add                  r15,                  rsi
     add                  r14,                    1
     cmp                  r14,      qword [rbp - 8]
      jl     main_2_loop_body
     mov                  rbx,     qword [rbp - 24]
     mov                   r8,     __const_string_9
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_57_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 32]
     mov                   r8,    __const_string_10
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_54_inline_exit:
     add                  r15,                  rsi
     add                  r14,                    1
     cmp                  r14,      qword [rbp - 8]
      jl     main_2_loop_body
     mov                  rbx,     qword [rbp - 24]
     mov                   r8,     __const_string_9
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_57_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 32]
     mov                   r8,    __const_string_10
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_12_loop_increment:
     add                  r14,                    1
     cmp                  r14,      qword [rbp - 8]
      jl     main_2_loop_body
     mov                  rbx,     qword [rbp - 24]
     mov                   r8,     __const_string_9
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_57_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 32]
     mov                   r8,    __const_string_10
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_13_loop_exit:
     mov                  rbx,     qword [rbp - 24]
     mov                   r8,     __const_string_9
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_57_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 32]
     mov                   r8,    __const_string_10
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_55_inline_enter:
     mov                   r8,     __const_string_9
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_57_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 32]
     mov                   r8,    __const_string_10
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_56_loop_condition:
     cmp                  r12,                    0
     jge    main_57_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 32]
     mov                   r8,    __const_string_10
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_57_loop_body:
     mov                  rsi,                  rbx
     mov                  rcx,                  r12
     sar                  rsi,                   cl
     and                  rsi,                   15
     mov                  rdi,                  rsi
     cmp                  rdi,                   10
      jl      main_58_if_true
     mov                  rsi,                   65
     add                  rsi,                  rdi
     sub                  rsi,                   10
     mov                  rdi,                  rsi
    push                   r8
     sub                  rsp,                    8
    call              int2chr
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                   r8
    call  __string_connection
     mov                   r8,                  rax
     sub                  r12,                    4
     cmp                  r12,                    0
     jge    main_57_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 32]
     mov                   r8,    __const_string_10
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_58_if_true:
     mov                  rsi,                   48
     add                  rsi,                  rdi
     mov                  rdi,                  rsi
    push                   r8
     sub                  rsp,                    8
    call              int2chr
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                   r8
    call  __string_connection
     mov                   r8,                  rax
     sub                  r12,                    4
     cmp                  r12,                    0
     jge    main_57_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 32]
     mov                   r8,    __const_string_10
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_59_if_false:
     mov                  rsi,                   65
     add                  rsi,                  rdi
     sub                  rsi,                   10
     mov                  rdi,                  rsi
    push                   r8
     sub                  rsp,                    8
    call              int2chr
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                   r8
    call  __string_connection
     mov                   r8,                  rax
     sub                  r12,                    4
     cmp                  r12,                    0
     jge    main_57_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 32]
     mov                   r8,    __const_string_10
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_61_loop_increment:
     sub                  r12,                    4
     cmp                  r12,                    0
     jge    main_57_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 32]
     mov                   r8,    __const_string_10
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_62_loop_exit:
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 32]
     mov                   r8,    __const_string_10
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_63_inline_exit:
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 32]
     mov                   r8,    __const_string_10
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_64_inline_enter:
     mov                   r8,    __const_string_10
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_65_loop_condition:
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_66_loop_body:
     mov                  rsi,                  rbx
     mov                  rcx,                  r12
     sar                  rsi,                   cl
     and                  rsi,                   15
     mov                  rdi,                  rsi
     cmp                  rdi,                   10
      jl      main_67_if_true
     mov                  rsi,                   65
     add                  rsi,                  rdi
     sub                  rsi,                   10
     mov                  rdi,                  rsi
    push                   r8
     sub                  rsp,                    8
    call              int2chr
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                   r8
    call  __string_connection
     mov                   r8,                  rax
     sub                  r12,                    4
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_67_if_true:
     mov                  rsi,                   48
     add                  rsi,                  rdi
     mov                  rdi,                  rsi
    push                   r8
     sub                  rsp,                    8
    call              int2chr
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                   r8
    call  __string_connection
     mov                   r8,                  rax
     sub                  r12,                    4
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_68_if_false:
     mov                  rsi,                   65
     add                  rsi,                  rdi
     sub                  rsi,                   10
     mov                  rdi,                  rsi
    push                   r8
     sub                  rsp,                    8
    call              int2chr
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                   r8
    call  __string_connection
     mov                   r8,                  rax
     sub                  r12,                    4
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_70_loop_increment:
     sub                  r12,                    4
     cmp                  r12,                    0
     jge    main_66_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_71_loop_exit:
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_72_inline_exit:
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,     qword [rbp - 40]
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_73_inline_enter:
     mov                   r8,    __const_string_11
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_74_loop_condition:
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_75_loop_body:
     mov                  rsi,                  rbx
     mov                  rcx,                  r12
     sar                  rsi,                   cl
     and                  rsi,                   15
     mov                  rdi,                  rsi
     cmp                  rdi,                   10
      jl      main_76_if_true
     mov                  rsi,                   65
     add                  rsi,                  rdi
     sub                  rsi,                   10
     mov                  rdi,                  rsi
    push                   r8
     sub                  rsp,                    8
    call              int2chr
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                   r8
    call  __string_connection
     mov                   r8,                  rax
     sub                  r12,                    4
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_76_if_true:
     mov                  rsi,                   48
     add                  rsi,                  rdi
     mov                  rdi,                  rsi
    push                   r8
     sub                  rsp,                    8
    call              int2chr
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                   r8
    call  __string_connection
     mov                   r8,                  rax
     sub                  r12,                    4
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_77_if_false:
     mov                  rsi,                   65
     add                  rsi,                  rdi
     sub                  rsi,                   10
     mov                  rdi,                  rsi
    push                   r8
     sub                  rsp,                    8
    call              int2chr
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                   r8
    call  __string_connection
     mov                   r8,                  rax
     sub                  r12,                    4
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_79_loop_increment:
     sub                  r12,                    4
     cmp                  r12,                    0
     jge    main_75_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_80_loop_exit:
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_81_inline_exit:
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rbx,                  r15
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_82_inline_enter:
     mov                   r8,    __const_string_12
     mov                  r12,                   28
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_83_loop_condition:
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_84_loop_body:
     mov                  rsi,                  rbx
     mov                  rcx,                  r12
     sar                  rsi,                   cl
     and                  rsi,                   15
     mov                  rdi,                  rsi
     cmp                  rdi,                   10
      jl      main_85_if_true
     mov                  rsi,                   65
     add                  rsi,                  rdi
     sub                  rsi,                   10
     mov                  rdi,                  rsi
    push                   r8
     sub                  rsp,                    8
    call              int2chr
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                   r8
    call  __string_connection
     mov                   r8,                  rax
     sub                  r12,                    4
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_85_if_true:
     mov                  rsi,                   48
     add                  rsi,                  rdi
     mov                  rdi,                  rsi
    push                   r8
     sub                  rsp,                    8
    call              int2chr
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                   r8
    call  __string_connection
     mov                   r8,                  rax
     sub                  r12,                    4
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_86_if_false:
     mov                  rsi,                   65
     add                  rsi,                  rdi
     sub                  rsi,                   10
     mov                  rdi,                  rsi
    push                   r8
     sub                  rsp,                    8
    call              int2chr
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                   r8
    call  __string_connection
     mov                   r8,                  rax
     sub                  r12,                    4
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_88_loop_increment:
     sub                  r12,                    4
     cmp                  r12,                    0
     jge    main_84_loop_body
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_89_loop_exit:
     mov                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
     jmp   main_14_block_exit
main_90_inline_exit:
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_4
    call              println
     mov                  rax,                    0
main_14_block_exit:
     pop                  rbx
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     add                  rsp,                  120
     pop                  rbp
     ret
xorshift10:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
xorshift10_0_block_enter:
     mov                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rax,                  rsi
     jmp xorshift10_1_block_exit
xorshift10_2_inline_enter:
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rax,                  rsi
     jmp xorshift10_1_block_exit
xorshift10_4_inline_enter:
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rax,                  rsi
     jmp xorshift10_1_block_exit
xorshift10_6_inline_enter:
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rax,                  rsi
     jmp xorshift10_1_block_exit
xorshift10_8_inline_enter:
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rax,                  rsi
     jmp xorshift10_1_block_exit
xorshift10_10_inline_enter:
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rax,                  rsi
     jmp xorshift10_1_block_exit
xorshift10_12_inline_enter:
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rax,                  rsi
     jmp xorshift10_1_block_exit
xorshift10_14_inline_enter:
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rax,                  rsi
     jmp xorshift10_1_block_exit
xorshift10_16_inline_enter:
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rax,                  rsi
     jmp xorshift10_1_block_exit
xorshift10_18_inline_enter:
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rax,                  rsi
     jmp xorshift10_1_block_exit
xorshift10_20_inline_enter:
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     xor                  rsi,                  rdi
     mov                  rax,                  rsi
     jmp xorshift10_1_block_exit
xorshift10_21_inline_exit:
     mov                  rax,                  rsi
xorshift10_1_block_exit:
     pop                  rbx
     pop                  rbp
     ret
toStringHex:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    8
    push                  r12
    push                  r13
    push                  rbx
toStringHex_0_block_enter:
     mov                  r12,                  rdi
     mov                  r13,     __const_string_6
     mov                   r8,                   28
     cmp                   r8,                    0
     jge toStringHex_2_loop_body
     mov                  rax,                  r13
     jmp toStringHex_8_block_exit
toStringHex_1_loop_condition:
     cmp                   r8,                    0
     jge toStringHex_2_loop_body
     mov                  rax,                  r13
     jmp toStringHex_8_block_exit
toStringHex_2_loop_body:
     mov                  rsi,                  r12
     mov                  rcx,                   r8
     sar                  rsi,                   cl
     and                  rsi,                   15
     cmp                  rsi,                   10
      jl toStringHex_3_if_true
     mov                  rbx,                   65
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     sub                  rsi,                   10
     mov                  rbx,                  rsi
     cmp                  rbx,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
     jne toStringHex_19_logical_false
     cmp                  rbx,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
      je toStringHex_21_if_true
     mov                  rsi,    __const_string_14
     mov                  rdi,                  r13
    push                   r8
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                   r8
     mov                  r13,                  rax
     sub                   r8,                    4
     cmp                   r8,                    0
     jge toStringHex_2_loop_body
     mov                  rax,                  r13
     jmp toStringHex_8_block_exit
toStringHex_3_if_true:
     mov                  rbx,                   48
     add                  rbx,                  rsi
     cmp                  rbx,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
     jne toStringHex_11_logical_false
     cmp                  rbx,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
      je toStringHex_13_if_true
     mov                  rsi,    __const_string_13
     mov                  rdi,                  r13
    push                   r8
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                   r8
     mov                  r13,                  rax
     sub                   r8,                    4
     cmp                   r8,                    0
     jge toStringHex_2_loop_body
     mov                  rax,                  r13
     jmp toStringHex_8_block_exit
toStringHex_9_inline_enter:
     cmp                  rbx,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
     jne toStringHex_11_logical_false
     cmp                  rbx,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
      je toStringHex_13_if_true
     mov                  rsi,    __const_string_13
     mov                  rdi,                  r13
    push                   r8
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                   r8
     mov                  r13,                  rax
     sub                   r8,                    4
     cmp                   r8,                    0
     jge toStringHex_2_loop_body
     mov                  rax,                  r13
     jmp toStringHex_8_block_exit
toStringHex_10_logical_true:
     cmp                  rbx,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
      je toStringHex_13_if_true
     mov                  rsi,    __const_string_13
     mov                  rdi,                  r13
    push                   r8
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                   r8
     mov                  r13,                  rax
     sub                   r8,                    4
     cmp                   r8,                    0
     jge toStringHex_2_loop_body
     mov                  rax,                  r13
     jmp toStringHex_8_block_exit
toStringHex_11_logical_false:
     mov                  rsi,                    0
     cmp                  rsi,                    1
      je toStringHex_13_if_true
     mov                  rsi,    __const_string_13
     mov                  rdi,                  r13
    push                   r8
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                   r8
     mov                  r13,                  rax
     sub                   r8,                    4
     cmp                   r8,                    0
     jge toStringHex_2_loop_body
     mov                  rax,                  r13
     jmp toStringHex_8_block_exit
toStringHex_12_logical_exit:
     cmp                  rsi,                    1
      je toStringHex_13_if_true
     mov                  rsi,    __const_string_13
     mov                  rdi,                  r13
    push                   r8
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                   r8
     mov                  r13,                  rax
     sub                   r8,                    4
     cmp                   r8,                    0
     jge toStringHex_2_loop_body
     mov                  rax,                  r13
     jmp toStringHex_8_block_exit
toStringHex_13_if_true:
     mov                  rsi,                  rbx
     sub                  rsi,                   32
     sub                  rbx,                   32
     mov                  rdi, qword [@asciiTable + 0]
     mov                  rdx,                  rbx
    push                   r8
     sub                  rsp,                    8
    call   __string_substring
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  r13
    push                   r8
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                   r8
     mov                  r13,                  rax
     sub                   r8,                    4
     cmp                   r8,                    0
     jge toStringHex_2_loop_body
     mov                  rax,                  r13
     jmp toStringHex_8_block_exit
toStringHex_15_if_exit:
     mov                  rsi,    __const_string_13
     mov                  rdi,                  r13
    push                   r8
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                   r8
     mov                  r13,                  rax
     sub                   r8,                    4
     cmp                   r8,                    0
     jge toStringHex_2_loop_body
     mov                  rax,                  r13
     jmp toStringHex_8_block_exit
toStringHex_16_inline_exit:
     mov                  rdi,                  r13
    push                   r8
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                   r8
     mov                  r13,                  rax
     sub                   r8,                    4
     cmp                   r8,                    0
     jge toStringHex_2_loop_body
     mov                  rax,                  r13
     jmp toStringHex_8_block_exit
toStringHex_4_if_false:
     mov                  rbx,                   65
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     sub                  rsi,                   10
     mov                  rbx,                  rsi
     cmp                  rbx,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
     jne toStringHex_19_logical_false
     cmp                  rbx,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
      je toStringHex_21_if_true
     mov                  rsi,    __const_string_14
     mov                  rdi,                  r13
    push                   r8
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                   r8
     mov                  r13,                  rax
     sub                   r8,                    4
     cmp                   r8,                    0
     jge toStringHex_2_loop_body
     mov                  rax,                  r13
     jmp toStringHex_8_block_exit
toStringHex_17_inline_enter:
     cmp                  rbx,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
     jne toStringHex_19_logical_false
     cmp                  rbx,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
      je toStringHex_21_if_true
     mov                  rsi,    __const_string_14
     mov                  rdi,                  r13
    push                   r8
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                   r8
     mov                  r13,                  rax
     sub                   r8,                    4
     cmp                   r8,                    0
     jge toStringHex_2_loop_body
     mov                  rax,                  r13
     jmp toStringHex_8_block_exit
toStringHex_18_logical_true:
     cmp                  rbx,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
      je toStringHex_21_if_true
     mov                  rsi,    __const_string_14
     mov                  rdi,                  r13
    push                   r8
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                   r8
     mov                  r13,                  rax
     sub                   r8,                    4
     cmp                   r8,                    0
     jge toStringHex_2_loop_body
     mov                  rax,                  r13
     jmp toStringHex_8_block_exit
toStringHex_19_logical_false:
     mov                  rsi,                    0
     cmp                  rsi,                    1
      je toStringHex_21_if_true
     mov                  rsi,    __const_string_14
     mov                  rdi,                  r13
    push                   r8
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                   r8
     mov                  r13,                  rax
     sub                   r8,                    4
     cmp                   r8,                    0
     jge toStringHex_2_loop_body
     mov                  rax,                  r13
     jmp toStringHex_8_block_exit
toStringHex_20_logical_exit:
     cmp                  rsi,                    1
      je toStringHex_21_if_true
     mov                  rsi,    __const_string_14
     mov                  rdi,                  r13
    push                   r8
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                   r8
     mov                  r13,                  rax
     sub                   r8,                    4
     cmp                   r8,                    0
     jge toStringHex_2_loop_body
     mov                  rax,                  r13
     jmp toStringHex_8_block_exit
toStringHex_21_if_true:
     mov                  rsi,                  rbx
     sub                  rsi,                   32
     sub                  rbx,                   32
     mov                  rdi, qword [@asciiTable + 0]
     mov                  rdx,                  rbx
    push                   r8
     sub                  rsp,                    8
    call   __string_substring
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  r13
    push                   r8
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                   r8
     mov                  r13,                  rax
     sub                   r8,                    4
     cmp                   r8,                    0
     jge toStringHex_2_loop_body
     mov                  rax,                  r13
     jmp toStringHex_8_block_exit
toStringHex_23_if_exit:
     mov                  rsi,    __const_string_14
     mov                  rdi,                  r13
    push                   r8
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                   r8
     mov                  r13,                  rax
     sub                   r8,                    4
     cmp                   r8,                    0
     jge toStringHex_2_loop_body
     mov                  rax,                  r13
     jmp toStringHex_8_block_exit
toStringHex_24_inline_exit:
     mov                  rdi,                  r13
    push                   r8
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                   r8
     mov                  r13,                  rax
     sub                   r8,                    4
     cmp                   r8,                    0
     jge toStringHex_2_loop_body
     mov                  rax,                  r13
     jmp toStringHex_8_block_exit
toStringHex_6_loop_increment:
     sub                   r8,                    4
     cmp                   r8,                    0
     jge toStringHex_2_loop_body
     mov                  rax,                  r13
     jmp toStringHex_8_block_exit
toStringHex_7_loop_exit:
     mov                  rax,                  r13
toStringHex_8_block_exit:
     pop                  rbx
     pop                  r13
     pop                  r12
     add                  rsp,                    8
     pop                  rbp
     ret
SECTION .data
      dq                    1
__const_string_0:
	db  32,   0
      dq                    1
__const_string_1:
	db  32,   0
      dq                    1
__const_string_2:
	db  32,   0
      dq                    1
__const_string_3:
	db  32,   0
      dq                    0
__const_string_4:
	db   0
      dq                   17
__const_string_5:
	db  65, 115, 115, 101, 114, 116, 105, 111, 110,  32,  70,  97, 105, 108, 101, 100,  33,   0
      dq                    0
__const_string_6:
	db   0
      dq                    0
__const_string_7:
	db   0
      dq                   95
__const_string_8:
	db  32,  33,  34,  35,  36,  37,  38,  39,  40,  41,  42,  43,  44,  45,  46,  47,  48,  49,  50,  51,  52,  53,  54,  55,  56,  57,  58,  59,  60,  61,  62,  63,  64,  65,  66,  67,  68,  69,  70,  71,  72,  73,  74,  75,  76,  77,  78,  79,  80,  81,  82,  83,  84,  85,  86,  87,  88,  89,  90,  91,  92,  93,  94,  95,  96,  97,  98,  99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126,   0
      dq                    0
__const_string_9:
	db   0
      dq                    0
__const_string_10:
	db   0
      dq                    0
__const_string_11:
	db   0
      dq                    0
__const_string_12:
	db   0
      dq                    0
__const_string_13:
	db   0
      dq                    0
__const_string_14:
	db   0
SECTION .bss
@asciiTable:
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
