global __global_init
global shift_l
global hilo
global shift_r
global xorshift
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
__global_init_1_block_exit:
     pop                  rbp
     ret
shift_l:
    push                  rbp
     mov                  rbp,                  rsp
shift_l_0_block_enter:
     mov                   r8,                  rdi
     mov                  rcx,                  rsi
     sal                   r8,                   cl
     mov                  rdi,                32767
     mov                  rsi,                65535
     sal                  rdi,                   16
      or                  rsi,                  rdi
     mov                  rdi,                   r8
     and                  rdi,                  rsi
     mov                  rax,                  rdi
     jmp shift_l_1_block_exit
shift_l_2_inline_enter:
     sal                  rdi,                   16
      or                  rsi,                  rdi
     mov                  rdi,                   r8
     and                  rdi,                  rsi
     mov                  rax,                  rdi
     jmp shift_l_1_block_exit
shift_l_3_inline_exit:
     mov                  rdi,                   r8
     and                  rdi,                  rsi
     mov                  rax,                  rdi
shift_l_1_block_exit:
     pop                  rbp
     ret
hilo:
    push                  rbp
     mov                  rbp,                  rsp
hilo_0_block_enter:
     sal                  rdi,                   16
      or                  rsi,                  rdi
     mov                  rax,                  rsi
hilo_1_block_exit:
     pop                  rbp
     ret
shift_r:
    push                  rbp
     mov                  rbp,                  rsp
shift_r_0_block_enter:
     mov                   r8,                  rsi
     mov                  rsi,                32767
     mov                  r10,                65536
     mov                   r9,                  rsi
     sal                   r9,                   16
     mov                  rsi,                  r10
      or                  rsi,                   r9
     mov                  rcx,                   r8
     sar                  rsi,                   cl
     sal                  rsi,                    2
     add                  rsi,                    1
     mov                  rcx,                   r8
     sar                  rdi,                   cl
     mov                   r8,                  rsi
     and                   r8,                  rdi
     mov                  rsi,                32767
     mov                  r10,                65535
     sal                  rsi,                   16
     mov                  rdi,                  r10
      or                  rdi,                  rsi
     mov                  rsi,                  rdi
     mov                  rdi,                   r8
     and                  rdi,                  rsi
     mov                  rax,                  rdi
     jmp shift_r_1_block_exit
shift_r_2_inline_enter:
     mov                   r9,                  rsi
     sal                   r9,                   16
     mov                  rsi,                  r10
      or                  rsi,                   r9
     mov                  rcx,                   r8
     sar                  rsi,                   cl
     sal                  rsi,                    2
     add                  rsi,                    1
     mov                  rcx,                   r8
     sar                  rdi,                   cl
     mov                   r8,                  rsi
     and                   r8,                  rdi
     mov                  rsi,                32767
     mov                  r10,                65535
     sal                  rsi,                   16
     mov                  rdi,                  r10
      or                  rdi,                  rsi
     mov                  rsi,                  rdi
     mov                  rdi,                   r8
     and                  rdi,                  rsi
     mov                  rax,                  rdi
     jmp shift_r_1_block_exit
shift_r_3_inline_exit:
     mov                  rcx,                   r8
     sar                  rsi,                   cl
     sal                  rsi,                    2
     add                  rsi,                    1
     mov                  rcx,                   r8
     sar                  rdi,                   cl
     mov                   r8,                  rsi
     and                   r8,                  rdi
     mov                  rsi,                32767
     mov                  r10,                65535
     sal                  rsi,                   16
     mov                  rdi,                  r10
      or                  rdi,                  rsi
     mov                  rsi,                  rdi
     mov                  rdi,                   r8
     and                  rdi,                  rsi
     mov                  rax,                  rdi
     jmp shift_r_1_block_exit
shift_r_4_inline_enter:
     sal                  rsi,                   16
     mov                  rdi,                  r10
      or                  rdi,                  rsi
     mov                  rsi,                  rdi
     mov                  rdi,                   r8
     and                  rdi,                  rsi
     mov                  rax,                  rdi
     jmp shift_r_1_block_exit
shift_r_5_inline_exit:
     mov                  rdi,                   r8
     and                  rdi,                  rsi
     mov                  rax,                  rdi
shift_r_1_block_exit:
     pop                  rbp
     ret
xorshift:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r12
    push                  r13
    push                  rbx
xorshift_0_block_enter:
     mov                  rbx,                  rdi
     mov                   r8,                  rsi
     mov                  rsi,                  rbx
     add                  rsi,                    1
     mov                   r9,                  rsi
     mov                  rbx,                    0
     mov                  rsi,                   r8
     mov                  rax,                  rsi
    imul                  rax,                   10
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
      jl xorshift_2_loop_body
     mov                  rsi,                   r9
     xor                  rsi,            123456789
     mov                  rax,                  rsi
     jmp xorshift_5_block_exit
xorshift_1_loop_condition:
     mov                  rsi,                   r8
     mov                  rax,                  rsi
    imul                  rax,                   10
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
      jl xorshift_2_loop_body
     mov                  rsi,                   r9
     xor                  rsi,            123456789
     mov                  rax,                  rsi
     jmp xorshift_5_block_exit
xorshift_2_loop_body:
     mov                  rsi,                   r9
     mov                  rdi,                   13
     mov                  r12,                  rsi
     mov                  rcx,                  rdi
     sal                  r12,                   cl
     mov                  rdi,                32767
     mov                  rsi,                65535
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call                 hilo
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  r12
     and                  rdi,                  rsi
     mov                  rsi,                  rdi
     xor                   r9,                  rsi
     mov                  r12,                   r9
     mov                  r13,                   17
     mov                  rdi,                32767
     mov                  rsi,                65536
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call                 hilo
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  rcx,                  r13
     sar                  rsi,                   cl
     sal                  rsi,                    2
     add                  rsi,                    1
     mov                  rdi,                  r12
     mov                  rcx,                  r13
     sar                  rdi,                   cl
     mov                  r12,                  rsi
     and                  r12,                  rdi
     mov                  rdi,                32767
     mov                  rsi,                65535
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call                 hilo
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  r12
     and                  rdi,                  rsi
     mov                  rsi,                  rdi
     xor                   r9,                  rsi
     mov                  rsi,                   r9
     mov                  rdi,                    5
     mov                  r12,                  rsi
     mov                  rcx,                  rdi
     sal                  r12,                   cl
     mov                  rdi,                32767
     mov                  rsi,                65535
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call                 hilo
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  r12
     and                  rdi,                  rsi
     mov                  rsi,                  rdi
     xor                   r9,                  rsi
     add                  rbx,                    1
     mov                  rsi,                   r8
     mov                  rax,                  rsi
    imul                  rax,                   10
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
      jl xorshift_2_loop_body
     mov                  rsi,                   r9
     xor                  rsi,            123456789
     mov                  rax,                  rsi
     jmp xorshift_5_block_exit
xorshift_6_inline_enter:
     mov                  r12,                  rsi
     mov                  rcx,                  rdi
     sal                  r12,                   cl
     mov                  rdi,                32767
     mov                  rsi,                65535
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call                 hilo
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  r12
     and                  rdi,                  rsi
     mov                  rsi,                  rdi
     xor                   r9,                  rsi
     mov                  r12,                   r9
     mov                  r13,                   17
     mov                  rdi,                32767
     mov                  rsi,                65536
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call                 hilo
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  rcx,                  r13
     sar                  rsi,                   cl
     sal                  rsi,                    2
     add                  rsi,                    1
     mov                  rdi,                  r12
     mov                  rcx,                  r13
     sar                  rdi,                   cl
     mov                  r12,                  rsi
     and                  r12,                  rdi
     mov                  rdi,                32767
     mov                  rsi,                65535
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call                 hilo
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  r12
     and                  rdi,                  rsi
     mov                  rsi,                  rdi
     xor                   r9,                  rsi
     mov                  rsi,                   r9
     mov                  rdi,                    5
     mov                  r12,                  rsi
     mov                  rcx,                  rdi
     sal                  r12,                   cl
     mov                  rdi,                32767
     mov                  rsi,                65535
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call                 hilo
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  r12
     and                  rdi,                  rsi
     mov                  rsi,                  rdi
     xor                   r9,                  rsi
     add                  rbx,                    1
     mov                  rsi,                   r8
     mov                  rax,                  rsi
    imul                  rax,                   10
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
      jl xorshift_2_loop_body
     mov                  rsi,                   r9
     xor                  rsi,            123456789
     mov                  rax,                  rsi
     jmp xorshift_5_block_exit
xorshift_7_inline_exit:
     xor                   r9,                  rsi
     mov                  r12,                   r9
     mov                  r13,                   17
     mov                  rdi,                32767
     mov                  rsi,                65536
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call                 hilo
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  rcx,                  r13
     sar                  rsi,                   cl
     sal                  rsi,                    2
     add                  rsi,                    1
     mov                  rdi,                  r12
     mov                  rcx,                  r13
     sar                  rdi,                   cl
     mov                  r12,                  rsi
     and                  r12,                  rdi
     mov                  rdi,                32767
     mov                  rsi,                65535
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call                 hilo
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  r12
     and                  rdi,                  rsi
     mov                  rsi,                  rdi
     xor                   r9,                  rsi
     mov                  rsi,                   r9
     mov                  rdi,                    5
     mov                  r12,                  rsi
     mov                  rcx,                  rdi
     sal                  r12,                   cl
     mov                  rdi,                32767
     mov                  rsi,                65535
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call                 hilo
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  r12
     and                  rdi,                  rsi
     mov                  rsi,                  rdi
     xor                   r9,                  rsi
     add                  rbx,                    1
     mov                  rsi,                   r8
     mov                  rax,                  rsi
    imul                  rax,                   10
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
      jl xorshift_2_loop_body
     mov                  rsi,                   r9
     xor                  rsi,            123456789
     mov                  rax,                  rsi
     jmp xorshift_5_block_exit
xorshift_8_inline_enter:
     mov                  rdi,                32767
     mov                  rsi,                65536
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call                 hilo
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  rcx,                  r13
     sar                  rsi,                   cl
     sal                  rsi,                    2
     add                  rsi,                    1
     mov                  rdi,                  r12
     mov                  rcx,                  r13
     sar                  rdi,                   cl
     mov                  r12,                  rsi
     and                  r12,                  rdi
     mov                  rdi,                32767
     mov                  rsi,                65535
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call                 hilo
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  r12
     and                  rdi,                  rsi
     mov                  rsi,                  rdi
     xor                   r9,                  rsi
     mov                  rsi,                   r9
     mov                  rdi,                    5
     mov                  r12,                  rsi
     mov                  rcx,                  rdi
     sal                  r12,                   cl
     mov                  rdi,                32767
     mov                  rsi,                65535
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call                 hilo
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  r12
     and                  rdi,                  rsi
     mov                  rsi,                  rdi
     xor                   r9,                  rsi
     add                  rbx,                    1
     mov                  rsi,                   r8
     mov                  rax,                  rsi
    imul                  rax,                   10
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
      jl xorshift_2_loop_body
     mov                  rsi,                   r9
     xor                  rsi,            123456789
     mov                  rax,                  rsi
     jmp xorshift_5_block_exit
xorshift_9_inline_exit:
     xor                   r9,                  rsi
     mov                  rsi,                   r9
     mov                  rdi,                    5
     mov                  r12,                  rsi
     mov                  rcx,                  rdi
     sal                  r12,                   cl
     mov                  rdi,                32767
     mov                  rsi,                65535
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call                 hilo
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  r12
     and                  rdi,                  rsi
     mov                  rsi,                  rdi
     xor                   r9,                  rsi
     add                  rbx,                    1
     mov                  rsi,                   r8
     mov                  rax,                  rsi
    imul                  rax,                   10
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
      jl xorshift_2_loop_body
     mov                  rsi,                   r9
     xor                  rsi,            123456789
     mov                  rax,                  rsi
     jmp xorshift_5_block_exit
xorshift_10_inline_enter:
     mov                  r12,                  rsi
     mov                  rcx,                  rdi
     sal                  r12,                   cl
     mov                  rdi,                32767
     mov                  rsi,                65535
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call                 hilo
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  r12
     and                  rdi,                  rsi
     mov                  rsi,                  rdi
     xor                   r9,                  rsi
     add                  rbx,                    1
     mov                  rsi,                   r8
     mov                  rax,                  rsi
    imul                  rax,                   10
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
      jl xorshift_2_loop_body
     mov                  rsi,                   r9
     xor                  rsi,            123456789
     mov                  rax,                  rsi
     jmp xorshift_5_block_exit
xorshift_11_inline_exit:
     xor                   r9,                  rsi
     add                  rbx,                    1
     mov                  rsi,                   r8
     mov                  rax,                  rsi
    imul                  rax,                   10
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
      jl xorshift_2_loop_body
     mov                  rsi,                   r9
     xor                  rsi,            123456789
     mov                  rax,                  rsi
     jmp xorshift_5_block_exit
xorshift_3_loop_increment:
     add                  rbx,                    1
     mov                  rsi,                   r8
     mov                  rax,                  rsi
    imul                  rax,                   10
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
      jl xorshift_2_loop_body
     mov                  rsi,                   r9
     xor                  rsi,            123456789
     mov                  rax,                  rsi
     jmp xorshift_5_block_exit
xorshift_4_loop_exit:
     mov                  rsi,                   r9
     xor                  rsi,            123456789
     mov                  rax,                  rsi
xorshift_5_block_exit:
     pop                  rbx
     pop                  r13
     pop                  r12
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call        __global_init
     sub                  rsp,                    8
    push                  r12
    push                  r14
    push                  r13
    push                  r15
    push                  rbx
main_0_block_enter:
    push                  rdi
     sub                  rsp,                    8
    call               getInt
     add                  rsp,                    8
     pop                  rdi
     mov                   r9,                  rax
     mov                  rbx,                   r9
     add                  rbx,                    1
     sal                  rbx,                    3
    push                   r9
    push                  rdi
     mov                  rdi,                  rbx
    call               malloc
     pop                  rdi
     pop                   r9
     mov                  rdi,                  rax
     mov      qword [rdi + 0],                   r9
     add                  rdi,                    8
     mov                  r12,                  rdi
     mov                  rsi,                  rdi
     sub                  rbx,                    8
     add                  rsi,                  rbx
     cmp                  r12,                  rsi
      jl   main_2_malloc_body
     mov                   r8,                  rdi
     mov                  r10,                    0
     cmp                  r10,                   r9
      jl     main_5_loop_body
     mov                  rbx,                    0
     mov                  r10,                    0
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_1_malloc_condition:
     cmp                  r12,                  rsi
      jl   main_2_malloc_body
     mov                   r8,                  rdi
     mov                  r10,                    0
     cmp                  r10,                   r9
      jl     main_5_loop_body
     mov                  rbx,                    0
     mov                  r10,                    0
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_2_malloc_body:
     mov                  rbx,      qword [r12 + 0]
    push                  rsi
    push                   r9
    push                  rdi
     mov                  rdi,      qword [rbp - 8]
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                   r9
     pop                  rsi
     mov                  rbx,                  rax
     mov      qword [rbx + 0],                   r9
     add                  rbx,                    8
     mov      qword [r12 + 0],                  rbx
     add                  r12,                    8
     cmp                  r12,                  rsi
      jl   main_2_malloc_body
     mov                   r8,                  rdi
     mov                  r10,                    0
     cmp                  r10,                   r9
      jl     main_5_loop_body
     mov                  rbx,                    0
     mov                  r10,                    0
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_3_malloc_exit:
     mov                   r8,                  rdi
     mov                  r10,                    0
     cmp                  r10,                   r9
      jl     main_5_loop_body
     mov                  rbx,                    0
     mov                  r10,                    0
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_4_loop_condition:
     cmp                  r10,                   r9
      jl     main_5_loop_body
     mov                  rbx,                    0
     mov                  r10,                    0
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_5_loop_body:
     mov                  r15,                    0
     cmp                  r15,                   r9
      jl     main_7_loop_body
     add                  r10,                    1
     cmp                  r10,                   r9
      jl     main_5_loop_body
     mov                  rbx,                    0
     mov                  r10,                    0
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_6_loop_condition:
     cmp                  r15,                   r9
      jl     main_7_loop_body
     add                  r10,                    1
     cmp                  r10,                   r9
      jl     main_5_loop_body
     mov                  rbx,                    0
     mov                  r10,                    0
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_7_loop_body:
     mov                  r14,                    0
     cmp                  r14,                   r9
      jl     main_9_loop_body
     add                  r15,                    1
     cmp                  r15,                   r9
      jl     main_7_loop_body
     add                  r10,                    1
     cmp                  r10,                   r9
      jl     main_5_loop_body
     mov                  rbx,                    0
     mov                  r10,                    0
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_8_loop_condition:
     cmp                  r14,                   r9
      jl     main_9_loop_body
     add                  r15,                    1
     cmp                  r15,                   r9
      jl     main_7_loop_body
     add                  r10,                    1
     cmp                  r10,                   r9
      jl     main_5_loop_body
     mov                  rbx,                    0
     mov                  r10,                    0
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_9_loop_body:
     cmp                  r10,                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
     jne main_11_logical_false
     cmp                  r15,                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
     jne main_14_logical_false
     cmp                  r14,                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
      je      main_16_if_true
     add                  r14,                    1
     cmp                  r14,                   r9
      jl     main_9_loop_body
     add                  r15,                    1
     cmp                  r15,                   r9
      jl     main_7_loop_body
     add                  r10,                    1
     cmp                  r10,                   r9
      jl     main_5_loop_body
     mov                  rbx,                    0
     mov                  r10,                    0
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_10_logical_true:
     cmp                  r15,                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
     jne main_14_logical_false
     cmp                  r14,                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
      je      main_16_if_true
     add                  r14,                    1
     cmp                  r14,                   r9
      jl     main_9_loop_body
     add                  r15,                    1
     cmp                  r15,                   r9
      jl     main_7_loop_body
     add                  r10,                    1
     cmp                  r10,                   r9
      jl     main_5_loop_body
     mov                  rbx,                    0
     mov                  r10,                    0
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_11_logical_false:
     mov                  rsi,                    0
     cmp                  rsi,                    1
     jne main_14_logical_false
     cmp                  r14,                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
      je      main_16_if_true
     add                  r14,                    1
     cmp                  r14,                   r9
      jl     main_9_loop_body
     add                  r15,                    1
     cmp                  r15,                   r9
      jl     main_7_loop_body
     add                  r10,                    1
     cmp                  r10,                   r9
      jl     main_5_loop_body
     mov                  rbx,                    0
     mov                  r10,                    0
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_12_logical_exit:
     cmp                  rsi,                    1
     jne main_14_logical_false
     cmp                  r14,                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
      je      main_16_if_true
     add                  r14,                    1
     cmp                  r14,                   r9
      jl     main_9_loop_body
     add                  r15,                    1
     cmp                  r15,                   r9
      jl     main_7_loop_body
     add                  r10,                    1
     cmp                  r10,                   r9
      jl     main_5_loop_body
     mov                  rbx,                    0
     mov                  r10,                    0
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_13_logical_true:
     cmp                  r14,                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
      je      main_16_if_true
     add                  r14,                    1
     cmp                  r14,                   r9
      jl     main_9_loop_body
     add                  r15,                    1
     cmp                  r15,                   r9
      jl     main_7_loop_body
     add                  r10,                    1
     cmp                  r10,                   r9
      jl     main_5_loop_body
     mov                  rbx,                    0
     mov                  r10,                    0
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_14_logical_false:
     mov                  rsi,                    0
     cmp                  rsi,                    1
      je      main_16_if_true
     add                  r14,                    1
     cmp                  r14,                   r9
      jl     main_9_loop_body
     add                  r15,                    1
     cmp                  r15,                   r9
      jl     main_7_loop_body
     add                  r10,                    1
     cmp                  r10,                   r9
      jl     main_5_loop_body
     mov                  rbx,                    0
     mov                  r10,                    0
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_15_logical_exit:
     cmp                  rsi,                    1
      je      main_16_if_true
     add                  r14,                    1
     cmp                  r14,                   r9
      jl     main_9_loop_body
     add                  r15,                    1
     cmp                  r15,                   r9
      jl     main_7_loop_body
     add                  r10,                    1
     cmp                  r10,                   r9
      jl     main_5_loop_body
     mov                  rbx,                    0
     mov                  r10,                    0
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_16_if_true:
     mov                  rbx,                  r10
     mov                  eax,                  ebx
     mov                  ecx,                 r15d
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r15
     mov                  eax,                  esi
     mov                  ecx,                 r14d
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     cmp                  rbx,                  rsi
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
     jne main_18_logical_false
     mov                  rsi,                  r15
     mov                  eax,                  esi
     mov                  ecx,                 r14d
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rbx,                  r14
     mov                  eax,                  ebx
     mov                  ecx,                 r10d
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     cmp                  rsi,                  rbx
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
     jne main_21_logical_false
     mov                  rbx,                  r10
     mov                  eax,                  ebx
     mov                  ecx,                 r15d
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r14
     mov                  eax,                  esi
     mov                  ecx,                 r10d
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     cmp                  rbx,                  rsi
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
      je      main_23_if_true
     add                  r14,                    1
     cmp                  r14,                   r9
      jl     main_9_loop_body
     add                  r15,                    1
     cmp                  r15,                   r9
      jl     main_7_loop_body
     add                  r10,                    1
     cmp                  r10,                   r9
      jl     main_5_loop_body
     mov                  rbx,                    0
     mov                  r10,                    0
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_17_logical_true:
     mov                  rsi,                  r15
     mov                  eax,                  esi
     mov                  ecx,                 r14d
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rbx,                  r14
     mov                  eax,                  ebx
     mov                  ecx,                 r10d
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     cmp                  rsi,                  rbx
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
     jne main_21_logical_false
     mov                  rbx,                  r10
     mov                  eax,                  ebx
     mov                  ecx,                 r15d
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r14
     mov                  eax,                  esi
     mov                  ecx,                 r10d
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     cmp                  rbx,                  rsi
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
      je      main_23_if_true
     add                  r14,                    1
     cmp                  r14,                   r9
      jl     main_9_loop_body
     add                  r15,                    1
     cmp                  r15,                   r9
      jl     main_7_loop_body
     add                  r10,                    1
     cmp                  r10,                   r9
      jl     main_5_loop_body
     mov                  rbx,                    0
     mov                  r10,                    0
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_18_logical_false:
     mov                  rsi,                    0
     cmp                  rsi,                    1
     jne main_21_logical_false
     mov                  rbx,                  r10
     mov                  eax,                  ebx
     mov                  ecx,                 r15d
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r14
     mov                  eax,                  esi
     mov                  ecx,                 r10d
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     cmp                  rbx,                  rsi
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
      je      main_23_if_true
     add                  r14,                    1
     cmp                  r14,                   r9
      jl     main_9_loop_body
     add                  r15,                    1
     cmp                  r15,                   r9
      jl     main_7_loop_body
     add                  r10,                    1
     cmp                  r10,                   r9
      jl     main_5_loop_body
     mov                  rbx,                    0
     mov                  r10,                    0
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_19_logical_exit:
     cmp                  rsi,                    1
     jne main_21_logical_false
     mov                  rbx,                  r10
     mov                  eax,                  ebx
     mov                  ecx,                 r15d
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r14
     mov                  eax,                  esi
     mov                  ecx,                 r10d
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     cmp                  rbx,                  rsi
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
      je      main_23_if_true
     add                  r14,                    1
     cmp                  r14,                   r9
      jl     main_9_loop_body
     add                  r15,                    1
     cmp                  r15,                   r9
      jl     main_7_loop_body
     add                  r10,                    1
     cmp                  r10,                   r9
      jl     main_5_loop_body
     mov                  rbx,                    0
     mov                  r10,                    0
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_20_logical_true:
     mov                  rbx,                  r10
     mov                  eax,                  ebx
     mov                  ecx,                 r15d
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r14
     mov                  eax,                  esi
     mov                  ecx,                 r10d
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     cmp                  rbx,                  rsi
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
      je      main_23_if_true
     add                  r14,                    1
     cmp                  r14,                   r9
      jl     main_9_loop_body
     add                  r15,                    1
     cmp                  r15,                   r9
      jl     main_7_loop_body
     add                  r10,                    1
     cmp                  r10,                   r9
      jl     main_5_loop_body
     mov                  rbx,                    0
     mov                  r10,                    0
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_21_logical_false:
     mov                  rsi,                    0
     cmp                  rsi,                    1
      je      main_23_if_true
     add                  r14,                    1
     cmp                  r14,                   r9
      jl     main_9_loop_body
     add                  r15,                    1
     cmp                  r15,                   r9
      jl     main_7_loop_body
     add                  r10,                    1
     cmp                  r10,                   r9
      jl     main_5_loop_body
     mov                  rbx,                    0
     mov                  r10,                    0
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_22_logical_exit:
     cmp                  rsi,                    1
      je      main_23_if_true
     add                  r14,                    1
     cmp                  r14,                   r9
      jl     main_9_loop_body
     add                  r15,                    1
     cmp                  r15,                   r9
      jl     main_7_loop_body
     add                  r10,                    1
     cmp                  r10,                   r9
      jl     main_5_loop_body
     mov                  rbx,                    0
     mov                  r10,                    0
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_23_if_true:
     mov                  rbx,                  r10
     sal                  rbx,                    3
     mov                  rsi,                   r8
     add                  rsi,                  rbx
     mov                  rbx,                  r15
     sal                  rbx,                    3
     mov                  r13,      qword [rsi + 0]
     add                  r13,                  rbx
     mov                  rsi,                  r10
     and                  rsi,                  r15
     and                  rsi,                  r14
     mov                  rbx,                  r10
     add                  rbx,                  r15
     add                  rbx,                  r14
     add                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  r12,                    0
     mov                  rsi,                  rbx
     mov                  rax,                  rsi
    imul                  rax,                   10
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
      jl    main_55_loop_body
     mov                  rsi,                  rdi
     xor                  rsi,            123456789
     mov      qword [r13 + 0],                  rsi
     add                  r14,                    1
     cmp                  r14,                   r9
      jl     main_9_loop_body
     add                  r15,                    1
     cmp                  r15,                   r9
      jl     main_7_loop_body
     add                  r10,                    1
     cmp                  r10,                   r9
      jl     main_5_loop_body
     mov                  rbx,                    0
     mov                  r10,                    0
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_53_inline_enter:
     add                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  r12,                    0
     mov                  rsi,                  rbx
     mov                  rax,                  rsi
    imul                  rax,                   10
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
      jl    main_55_loop_body
     mov                  rsi,                  rdi
     xor                  rsi,            123456789
     mov      qword [r13 + 0],                  rsi
     add                  r14,                    1
     cmp                  r14,                   r9
      jl     main_9_loop_body
     add                  r15,                    1
     cmp                  r15,                   r9
      jl     main_7_loop_body
     add                  r10,                    1
     cmp                  r10,                   r9
      jl     main_5_loop_body
     mov                  rbx,                    0
     mov                  r10,                    0
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_54_loop_condition:
     mov                  rsi,                  rbx
     mov                  rax,                  rsi
    imul                  rax,                   10
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
      jl    main_55_loop_body
     mov                  rsi,                  rdi
     xor                  rsi,            123456789
     mov      qword [r13 + 0],                  rsi
     add                  r14,                    1
     cmp                  r14,                   r9
      jl     main_9_loop_body
     add                  r15,                    1
     cmp                  r15,                   r9
      jl     main_7_loop_body
     add                  r10,                    1
     cmp                  r10,                   r9
      jl     main_5_loop_body
     mov                  rbx,                    0
     mov                  r10,                    0
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_55_loop_body:
     mov                  rsi,                   13
    push                  r10
    push                  rdi
    push                   r8
    push                   r9
    call              shift_l
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r10
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r10
    push                  rdi
    push                   r8
    push                   r9
    call              shift_r
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r10
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r10
    push                  rdi
    push                   r8
    push                   r9
    call              shift_l
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r10
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     add                  r12,                    1
     mov                  rsi,                  rbx
     mov                  rax,                  rsi
    imul                  rax,                   10
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
      jl    main_55_loop_body
     mov                  rsi,                  rdi
     xor                  rsi,            123456789
     mov      qword [r13 + 0],                  rsi
     add                  r14,                    1
     cmp                  r14,                   r9
      jl     main_9_loop_body
     add                  r15,                    1
     cmp                  r15,                   r9
      jl     main_7_loop_body
     add                  r10,                    1
     cmp                  r10,                   r9
      jl     main_5_loop_body
     mov                  rbx,                    0
     mov                  r10,                    0
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_56_loop_increment:
     add                  r12,                    1
     mov                  rsi,                  rbx
     mov                  rax,                  rsi
    imul                  rax,                   10
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
      jl    main_55_loop_body
     mov                  rsi,                  rdi
     xor                  rsi,            123456789
     mov      qword [r13 + 0],                  rsi
     add                  r14,                    1
     cmp                  r14,                   r9
      jl     main_9_loop_body
     add                  r15,                    1
     cmp                  r15,                   r9
      jl     main_7_loop_body
     add                  r10,                    1
     cmp                  r10,                   r9
      jl     main_5_loop_body
     mov                  rbx,                    0
     mov                  r10,                    0
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_57_loop_exit:
     mov                  rsi,                  rdi
     xor                  rsi,            123456789
     mov      qword [r13 + 0],                  rsi
     add                  r14,                    1
     cmp                  r14,                   r9
      jl     main_9_loop_body
     add                  r15,                    1
     cmp                  r15,                   r9
      jl     main_7_loop_body
     add                  r10,                    1
     cmp                  r10,                   r9
      jl     main_5_loop_body
     mov                  rbx,                    0
     mov                  r10,                    0
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_58_inline_exit:
     mov      qword [r13 + 0],                  rsi
     add                  r14,                    1
     cmp                  r14,                   r9
      jl     main_9_loop_body
     add                  r15,                    1
     cmp                  r15,                   r9
      jl     main_7_loop_body
     add                  r10,                    1
     cmp                  r10,                   r9
      jl     main_5_loop_body
     mov                  rbx,                    0
     mov                  r10,                    0
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_28_loop_increment:
     add                  r14,                    1
     cmp                  r14,                   r9
      jl     main_9_loop_body
     add                  r15,                    1
     cmp                  r15,                   r9
      jl     main_7_loop_body
     add                  r10,                    1
     cmp                  r10,                   r9
      jl     main_5_loop_body
     mov                  rbx,                    0
     mov                  r10,                    0
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_30_loop_increment:
     add                  r15,                    1
     cmp                  r15,                   r9
      jl     main_7_loop_body
     add                  r10,                    1
     cmp                  r10,                   r9
      jl     main_5_loop_body
     mov                  rbx,                    0
     mov                  r10,                    0
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_32_loop_increment:
     add                  r10,                    1
     cmp                  r10,                   r9
      jl     main_5_loop_body
     mov                  rbx,                    0
     mov                  r10,                    0
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_33_loop_exit:
     mov                  rbx,                    0
     mov                  r10,                    0
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_34_loop_condition:
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_35_loop_body:
     mov                  r15,                    0
     cmp                  r15,                   r9
      jl    main_37_loop_body
     add                  r10,                    1
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_36_loop_condition:
     cmp                  r15,                   r9
      jl    main_37_loop_body
     add                  r10,                    1
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_37_loop_body:
     mov                  r14,                    0
     cmp                  r14,                   r9
      jl    main_39_loop_body
     add                  r15,                    1
     cmp                  r15,                   r9
      jl    main_37_loop_body
     add                  r10,                    1
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_38_loop_condition:
     cmp                  r14,                   r9
      jl    main_39_loop_body
     add                  r15,                    1
     cmp                  r15,                   r9
      jl    main_37_loop_body
     add                  r10,                    1
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_39_loop_body:
     cmp                  r10,                  r15
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
     jne main_41_logical_false
     cmp                  r15,                  r14
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
      je      main_43_if_true
     add                  r14,                    1
     cmp                  r14,                   r9
      jl    main_39_loop_body
     add                  r15,                    1
     cmp                  r15,                   r9
      jl    main_37_loop_body
     add                  r10,                    1
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_40_logical_true:
     cmp                  r15,                  r14
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
      je      main_43_if_true
     add                  r14,                    1
     cmp                  r14,                   r9
      jl    main_39_loop_body
     add                  r15,                    1
     cmp                  r15,                   r9
      jl    main_37_loop_body
     add                  r10,                    1
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_41_logical_false:
     mov                  rsi,                    0
     cmp                  rsi,                    1
      je      main_43_if_true
     add                  r14,                    1
     cmp                  r14,                   r9
      jl    main_39_loop_body
     add                  r15,                    1
     cmp                  r15,                   r9
      jl    main_37_loop_body
     add                  r10,                    1
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_42_logical_exit:
     cmp                  rsi,                    1
      je      main_43_if_true
     add                  r14,                    1
     cmp                  r14,                   r9
      jl    main_39_loop_body
     add                  r15,                    1
     cmp                  r15,                   r9
      jl    main_37_loop_body
     add                  r10,                    1
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_43_if_true:
     mov                  rsi,                  r10
     sal                  rsi,                    3
     mov                  rdi,                   r8
     add                  rdi,                  rsi
     mov                  rsi,                  r15
     sal                  rsi,                    3
     mov                  rdi,      qword [rdi + 0]
     add                  rdi,                  rsi
     mov                  rsi,                  rbx
     add                  rsi,      qword [rdi + 0]
     and                  rsi,           1073741823
     mov                  rbx,                  rsi
     add                  r14,                    1
     cmp                  r14,                   r9
      jl    main_39_loop_body
     add                  r15,                    1
     cmp                  r15,                   r9
      jl    main_37_loop_body
     add                  r10,                    1
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_46_loop_increment:
     add                  r14,                    1
     cmp                  r14,                   r9
      jl    main_39_loop_body
     add                  r15,                    1
     cmp                  r15,                   r9
      jl    main_37_loop_body
     add                  r10,                    1
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_48_loop_increment:
     add                  r15,                    1
     cmp                  r15,                   r9
      jl    main_37_loop_body
     add                  r10,                    1
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_50_loop_increment:
     add                  r10,                    1
     cmp                  r10,                   r9
      jl    main_35_loop_body
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
     jmp   main_52_block_exit
main_51_loop_exit:
     mov                  rdi,                  rbx
    call             toString
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
main_52_block_exit:
     pop                  rbx
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     add                  rsp,                    8
     pop                  rbp
     ret
SECTION .data
      dq                    7
__const_string_0:
	db  65, 110, 115,  32, 105, 115,  32,   0
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
