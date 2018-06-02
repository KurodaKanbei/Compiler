global random
global move
global __global_init
global pd
global swap
global merge
global show
global main
global initialize
global win
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
random:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   40
random_0_block_enter:
     mov                  rsi,    qword [@seed + 0]
     mov                  rax,                  rsi
     mov                  rcx,       qword [@Q + 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                   r8,       qword [@A + 0]
    imul                   r8,                  rsi
     mov                  rsi,    qword [@seed + 0]
     mov                  rax,                  rsi
     mov                  rcx,       qword [@Q + 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rdi,       qword [@R + 0]
    imul                  rdi,                  rsi
     mov                  rsi,                   r8
     sub                  rsi,                  rdi
     cmp                  rsi,                    0
     jge     random_1_if_true
     add                  rsi,       qword [@M + 0]
     mov    qword [@seed + 0],                  rsi
     mov                  rax,    qword [@seed + 0]
     jmp  random_4_block_exit
random_1_if_true:
     mov    qword [@seed + 0],                  rsi
     mov                  rax,    qword [@seed + 0]
     jmp  random_4_block_exit
random_2_if_false:
     add                  rsi,       qword [@M + 0]
     mov    qword [@seed + 0],                  rsi
     mov                  rax,    qword [@seed + 0]
     jmp  random_4_block_exit
random_3_if_exit:
     mov                  rax,    qword [@seed + 0]
random_4_block_exit:
     add                  rsp,                   40
     pop                  rbp
     ret
move:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   16
move_0_block_enter:
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl     move_2_loop_body
     mov                  rdi,     qword [@now + 0]
     sal                  rdi,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rdi
     mov                  rax,     qword [@now + 0]
     mov      qword [rsi + 0],                  rax
     add     qword [@now + 0],                    1
     jmp    move_5_block_exit
move_1_loop_condition:
     cmp                  rdi,     qword [@now + 0]
      jl     move_2_loop_body
     mov                  rdi,     qword [@now + 0]
     sal                  rdi,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rdi
     mov                  rax,     qword [@now + 0]
     mov      qword [rsi + 0],                  rax
     add     qword [@now + 0],                    1
     jmp    move_5_block_exit
move_2_loop_body:
     mov                   r8,                  rdi
     sal                   r8,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                   r8
     sub      qword [rsi + 0],                    1
     mov                  rsi,                  rdi
     add                  rsi,                    1
     mov                  rdi,                  rsi
     cmp                  rdi,     qword [@now + 0]
      jl     move_2_loop_body
     mov                  rdi,     qword [@now + 0]
     sal                  rdi,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rdi
     mov                  rax,     qword [@now + 0]
     mov      qword [rsi + 0],                  rax
     add     qword [@now + 0],                    1
     jmp    move_5_block_exit
move_4_loop_exit:
     mov                  rdi,     qword [@now + 0]
     sal                  rdi,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rdi
     mov                  rax,     qword [@now + 0]
     mov      qword [rsi + 0],                  rax
     add     qword [@now + 0],                    1
move_5_block_exit:
     add                  rsp,                   16
     pop                  rbp
     ret
__global_init:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   24
__global_init_0_block_enter:
     mov       qword [@A + 0],                48271
     mov       qword [@M + 0],           2147483647
     mov    qword [@seed + 0],                    1
__global_init_1_block_exit:
     add                  rsp,                   24
     pop                  rbp
     ret
pd:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    8
pd_0_block_enter:
     mov                   r8,                  rdi
     cmp       qword [@h + 0],                   r8
     jle       pd_2_loop_body
     mov                  rax,                    0
     jmp      pd_8_block_exit
pd_1_loop_condition:
     cmp       qword [@h + 0],                   r8
     jle       pd_2_loop_body
     mov                  rax,                    0
     jmp      pd_8_block_exit
pd_2_loop_body:
     mov                  rdi,       qword [@h + 0]
     add                  rdi,                    1
     mov                  rsi,       qword [@h + 0]
    imul                  rsi,                  rdi
     mov                  rax,                  rsi
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     cmp                   r8,                  rsi
      je         pd_3_if_true
     add       qword [@h + 0],                    1
     cmp       qword [@h + 0],                   r8
     jle       pd_2_loop_body
     mov                  rax,                    0
     jmp      pd_8_block_exit
pd_3_if_true:
     mov                  rax,                    1
     jmp      pd_8_block_exit
pd_6_loop_increment:
     add       qword [@h + 0],                    1
     cmp       qword [@h + 0],                   r8
     jle       pd_2_loop_body
     mov                  rax,                    0
     jmp      pd_8_block_exit
pd_7_loop_exit:
     mov                  rax,                    0
pd_8_block_exit:
     add                  rsp,                    8
     pop                  rbp
     ret
swap:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    8
swap_0_block_enter:
     mov                   r9,                  rdi
     mov                   r8,                   r9
     sal                   r8,                    3
     mov                  rdi,       qword [@a + 0]
     add                  rdi,                   r8
     mov                  rdi,      qword [rdi + 0]
     mov                   r8,                   r9
     sal                   r8,                    3
     mov                   r9,       qword [@a + 0]
     add                   r9,                   r8
     mov                  r10,                  rsi
     sal                  r10,                    3
     mov                   r8,       qword [@a + 0]
     add                   r8,                  r10
     mov                  rax,       qword [r8 + 0]
     mov       qword [r9 + 0],                  rax
     sal                  rsi,                    3
     mov                   r8,       qword [@a + 0]
     add                   r8,                  rsi
     mov       qword [r8 + 0],                  rdi
swap_1_block_exit:
     add                  rsp,                    8
     pop                  rbp
     ret
merge:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   16
merge_0_block_enter:
     mov                  r10,                    0
     cmp                  r10,     qword [@now + 0]
      jl    merge_2_loop_body
     mov                  r10,                    0
     cmp                  r10,     qword [@now + 0]
      jl   merge_16_loop_body
     jmp  merge_22_block_exit
merge_1_loop_condition:
     cmp                  r10,     qword [@now + 0]
      jl    merge_2_loop_body
     mov                  r10,                    0
     cmp                  r10,     qword [@now + 0]
      jl   merge_16_loop_body
     jmp  merge_22_block_exit
merge_2_loop_body:
     mov                  rsi,                  r10
     sal                  rsi,                    3
     mov                  rdi,       qword [@a + 0]
     add                  rdi,                  rsi
     cmp      qword [rdi + 0],                    0
      je      merge_3_if_true
     add                  r10,                    1
     cmp                  r10,     qword [@now + 0]
      jl    merge_2_loop_body
     mov                  r10,                    0
     cmp                  r10,     qword [@now + 0]
      jl   merge_16_loop_body
     jmp  merge_22_block_exit
merge_3_if_true:
     mov                  rsi,                  r10
     add                  rsi,                    1
     mov                  rdi,                  rsi
     cmp                  rdi,     qword [@now + 0]
      jl    merge_5_loop_body
     add                  r10,                    1
     cmp                  r10,     qword [@now + 0]
      jl    merge_2_loop_body
     mov                  r10,                    0
     cmp                  r10,     qword [@now + 0]
      jl   merge_16_loop_body
     jmp  merge_22_block_exit
merge_4_loop_condition:
     cmp                  rdi,     qword [@now + 0]
      jl    merge_5_loop_body
     add                  r10,                    1
     cmp                  r10,     qword [@now + 0]
      jl    merge_2_loop_body
     mov                  r10,                    0
     cmp                  r10,     qword [@now + 0]
      jl   merge_16_loop_body
     jmp  merge_22_block_exit
merge_5_loop_body:
     mov                   r8,                  rdi
     sal                   r8,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                   r8
     cmp      qword [rsi + 0],                    0
     jne merge_23_inline_enter
     add                  rdi,                    1
     cmp                  rdi,     qword [@now + 0]
      jl    merge_5_loop_body
     add                  r10,                    1
     cmp                  r10,     qword [@now + 0]
      jl    merge_2_loop_body
     mov                  r10,                    0
     cmp                  r10,     qword [@now + 0]
      jl   merge_16_loop_body
     jmp  merge_22_block_exit
merge_23_inline_enter:
     mov                  rsi,                  r10
     sal                  rsi,                    3
     mov                   r8,       qword [@a + 0]
     add                   r8,                  rsi
     mov                   r9,       qword [r8 + 0]
     mov                  rsi,                  r10
     sal                  rsi,                    3
     mov                   r8,       qword [@a + 0]
     add                   r8,                  rsi
     mov                  rsi,                  rdi
     sal                  rsi,                    3
     mov                  r11,       qword [@a + 0]
     add                  r11,                  rsi
     mov                  rax,      qword [r11 + 0]
     mov       qword [r8 + 0],                  rax
     sal                  rdi,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rdi
     mov      qword [rsi + 0],                   r9
     add                  r10,                    1
     cmp                  r10,     qword [@now + 0]
      jl    merge_2_loop_body
     mov                  r10,                    0
     cmp                  r10,     qword [@now + 0]
      jl   merge_16_loop_body
     jmp  merge_22_block_exit
merge_9_loop_increment:
     add                  rdi,                    1
     cmp                  rdi,     qword [@now + 0]
      jl    merge_5_loop_body
     add                  r10,                    1
     cmp                  r10,     qword [@now + 0]
      jl    merge_2_loop_body
     mov                  r10,                    0
     cmp                  r10,     qword [@now + 0]
      jl   merge_16_loop_body
     jmp  merge_22_block_exit
merge_13_loop_increment:
     add                  r10,                    1
     cmp                  r10,     qword [@now + 0]
      jl    merge_2_loop_body
     mov                  r10,                    0
     cmp                  r10,     qword [@now + 0]
      jl   merge_16_loop_body
     jmp  merge_22_block_exit
merge_14_loop_exit:
     mov                  r10,                    0
     cmp                  r10,     qword [@now + 0]
      jl   merge_16_loop_body
     jmp  merge_22_block_exit
merge_15_loop_condition:
     cmp                  r10,     qword [@now + 0]
      jl   merge_16_loop_body
     jmp  merge_22_block_exit
merge_16_loop_body:
     mov                  rsi,                  r10
     sal                  rsi,                    3
     mov                  rdi,       qword [@a + 0]
     add                  rdi,                  rsi
     cmp      qword [rdi + 0],                    0
      je     merge_17_if_true
     add                  r10,                    1
     cmp                  r10,     qword [@now + 0]
      jl   merge_16_loop_body
     jmp  merge_22_block_exit
merge_17_if_true:
     mov     qword [@now + 0],                  r10
     jmp  merge_22_block_exit
merge_20_loop_increment:
     add                  r10,                    1
     cmp                  r10,     qword [@now + 0]
      jl   merge_16_loop_body
merge_22_block_exit:
     add                  rsp,                   16
     pop                  rbp
     ret
show:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   16
    push                  r12
    push                  rbx
show_0_block_enter:
     mov                  r12,                    0
     cmp                  r12,     qword [@now + 0]
      jl     show_2_loop_body
     mov                  rdi,     __const_string_1
    call              println
     jmp    show_5_block_exit
show_1_loop_condition:
     cmp                  r12,     qword [@now + 0]
      jl     show_2_loop_body
     mov                  rdi,     __const_string_1
    call              println
     jmp    show_5_block_exit
show_2_loop_body:
     mov                  rsi,                  r12
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rdi,      qword [rbx + 0]
    call             toString
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     add                  r12,                    1
     cmp                  r12,     qword [@now + 0]
      jl     show_2_loop_body
     mov                  rdi,     __const_string_1
    call              println
     jmp    show_5_block_exit
show_3_loop_increment:
     add                  r12,                    1
     cmp                  r12,     qword [@now + 0]
      jl     show_2_loop_body
     mov                  rdi,     __const_string_1
    call              println
     jmp    show_5_block_exit
show_4_loop_exit:
     mov                  rdi,     __const_string_1
    call              println
show_5_block_exit:
     pop                  rbx
     pop                  r12
     add                  rsp,                   16
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call        __global_init
     sub                  rsp,                   72
    push                  r12
    push                  r14
    push                  r13
    push                  rbx
main_0_block_enter:
     mov                   r9,                    0
     mov                  r13,                    0
     mov                  r12,                    0
     mov       qword [@n + 0],                  210
     mov       qword [@h + 0],                    0
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
    push                   r9
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov       qword [@a + 0],                  rsi
     mov                  rsi,       qword [@M + 0]
     mov                  rax,                  rsi
     mov                  rcx,       qword [@A + 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov       qword [@Q + 0],                  rsi
     mov                  rsi,       qword [@M + 0]
     mov                  rax,                  rsi
     mov                  rcx,       qword [@A + 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov       qword [@R + 0],                  rsi
     mov                  rdi,       qword [@n + 0]
     cmp       qword [@h + 0],                  rdi
     jle    main_17_loop_body
     mov                  rsi,                    0
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je       main_1_if_true
     mov                  rdi,     __const_string_3
    push                   r9
    call              println
     pop                   r9
     mov                  rsi,              3654898
     mov    qword [@seed + 0],                  rsi
     mov                  rbx,    qword [@seed + 0]
     mov                  rax,                  rbx
     mov                  rcx,       qword [@Q + 0]
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,       qword [@A + 0]
    imul                  rsi,                  rbx
     mov                  rdi,    qword [@seed + 0]
     mov                  rax,                  rdi
     mov                  rcx,       qword [@Q + 0]
     cdq
    idiv                  ecx
     mov                  rdi,                  rax
     mov                  rbx,       qword [@R + 0]
    imul                  rbx,                  rdi
     sub                  rsi,                  rbx
     cmp                  rsi,                    0
     jge      main_27_if_true
     add                  rsi,       qword [@M + 0]
     mov    qword [@seed + 0],                  rsi
     mov                  rsi,    qword [@seed + 0]
     mov                  rax,                  rsi
     mov                  rcx,                   10
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     add                  rsi,                    1
     mov     qword [@now + 0],                  rsi
     mov                  rdi,     qword [@now + 0]
    push                   r9
    call          println_Int
     pop                   r9
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r9,                  rsi
      jl     main_5_loop_body
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                  r13
     mov      qword [rbx + 0],                  rsi
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl    main_43_loop_body
     mov                  rdi,     __const_string_9
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_16_loop_condition:
     cmp       qword [@h + 0],                  rdi
     jle    main_17_loop_body
     mov                  rsi,                    0
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je       main_1_if_true
     mov                  rdi,     __const_string_3
    push                   r9
    call              println
     pop                   r9
     mov                  rsi,              3654898
     mov    qword [@seed + 0],                  rsi
     mov                  rbx,    qword [@seed + 0]
     mov                  rax,                  rbx
     mov                  rcx,       qword [@Q + 0]
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,       qword [@A + 0]
    imul                  rsi,                  rbx
     mov                  rdi,    qword [@seed + 0]
     mov                  rax,                  rdi
     mov                  rcx,       qword [@Q + 0]
     cdq
    idiv                  ecx
     mov                  rdi,                  rax
     mov                  rbx,       qword [@R + 0]
    imul                  rbx,                  rdi
     sub                  rsi,                  rbx
     cmp                  rsi,                    0
     jge      main_27_if_true
     add                  rsi,       qword [@M + 0]
     mov    qword [@seed + 0],                  rsi
     mov                  rsi,    qword [@seed + 0]
     mov                  rax,                  rsi
     mov                  rcx,                   10
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     add                  rsi,                    1
     mov     qword [@now + 0],                  rsi
     mov                  rdi,     qword [@now + 0]
    push                   r9
    call          println_Int
     pop                   r9
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r9,                  rsi
      jl     main_5_loop_body
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                  r13
     mov      qword [rbx + 0],                  rsi
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl    main_43_loop_body
     mov                  rdi,     __const_string_9
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_17_loop_body:
     mov                  rbx,       qword [@h + 0]
     add                  rbx,                    1
     mov                  rsi,       qword [@h + 0]
    imul                  rsi,                  rbx
     mov                  rax,                  rsi
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     cmp                  rdi,                  rsi
      je      main_18_if_true
     add       qword [@h + 0],                    1
     cmp       qword [@h + 0],                  rdi
     jle    main_17_loop_body
     mov                  rsi,                    0
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je       main_1_if_true
     mov                  rdi,     __const_string_3
    push                   r9
    call              println
     pop                   r9
     mov                  rsi,              3654898
     mov    qword [@seed + 0],                  rsi
     mov                  rbx,    qword [@seed + 0]
     mov                  rax,                  rbx
     mov                  rcx,       qword [@Q + 0]
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,       qword [@A + 0]
    imul                  rsi,                  rbx
     mov                  rdi,    qword [@seed + 0]
     mov                  rax,                  rdi
     mov                  rcx,       qword [@Q + 0]
     cdq
    idiv                  ecx
     mov                  rdi,                  rax
     mov                  rbx,       qword [@R + 0]
    imul                  rbx,                  rdi
     sub                  rsi,                  rbx
     cmp                  rsi,                    0
     jge      main_27_if_true
     add                  rsi,       qword [@M + 0]
     mov    qword [@seed + 0],                  rsi
     mov                  rsi,    qword [@seed + 0]
     mov                  rax,                  rsi
     mov                  rcx,                   10
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     add                  rsi,                    1
     mov     qword [@now + 0],                  rsi
     mov                  rdi,     qword [@now + 0]
    push                   r9
    call          println_Int
     pop                   r9
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r9,                  rsi
      jl     main_5_loop_body
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                  r13
     mov      qword [rbx + 0],                  rsi
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl    main_43_loop_body
     mov                  rdi,     __const_string_9
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_18_if_true:
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je       main_1_if_true
     mov                  rdi,     __const_string_3
    push                   r9
    call              println
     pop                   r9
     mov                  rsi,              3654898
     mov    qword [@seed + 0],                  rsi
     mov                  rbx,    qword [@seed + 0]
     mov                  rax,                  rbx
     mov                  rcx,       qword [@Q + 0]
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,       qword [@A + 0]
    imul                  rsi,                  rbx
     mov                  rdi,    qword [@seed + 0]
     mov                  rax,                  rdi
     mov                  rcx,       qword [@Q + 0]
     cdq
    idiv                  ecx
     mov                  rdi,                  rax
     mov                  rbx,       qword [@R + 0]
    imul                  rbx,                  rdi
     sub                  rsi,                  rbx
     cmp                  rsi,                    0
     jge      main_27_if_true
     add                  rsi,       qword [@M + 0]
     mov    qword [@seed + 0],                  rsi
     mov                  rsi,    qword [@seed + 0]
     mov                  rax,                  rsi
     mov                  rcx,                   10
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     add                  rsi,                    1
     mov     qword [@now + 0],                  rsi
     mov                  rdi,     qword [@now + 0]
    push                   r9
    call          println_Int
     pop                   r9
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r9,                  rsi
      jl     main_5_loop_body
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                  r13
     mov      qword [rbx + 0],                  rsi
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl    main_43_loop_body
     mov                  rdi,     __const_string_9
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_21_loop_increment:
     add       qword [@h + 0],                    1
     cmp       qword [@h + 0],                  rdi
     jle    main_17_loop_body
     mov                  rsi,                    0
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je       main_1_if_true
     mov                  rdi,     __const_string_3
    push                   r9
    call              println
     pop                   r9
     mov                  rsi,              3654898
     mov    qword [@seed + 0],                  rsi
     mov                  rbx,    qword [@seed + 0]
     mov                  rax,                  rbx
     mov                  rcx,       qword [@Q + 0]
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,       qword [@A + 0]
    imul                  rsi,                  rbx
     mov                  rdi,    qword [@seed + 0]
     mov                  rax,                  rdi
     mov                  rcx,       qword [@Q + 0]
     cdq
    idiv                  ecx
     mov                  rdi,                  rax
     mov                  rbx,       qword [@R + 0]
    imul                  rbx,                  rdi
     sub                  rsi,                  rbx
     cmp                  rsi,                    0
     jge      main_27_if_true
     add                  rsi,       qword [@M + 0]
     mov    qword [@seed + 0],                  rsi
     mov                  rsi,    qword [@seed + 0]
     mov                  rax,                  rsi
     mov                  rcx,                   10
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     add                  rsi,                    1
     mov     qword [@now + 0],                  rsi
     mov                  rdi,     qword [@now + 0]
    push                   r9
    call          println_Int
     pop                   r9
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r9,                  rsi
      jl     main_5_loop_body
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                  r13
     mov      qword [rbx + 0],                  rsi
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl    main_43_loop_body
     mov                  rdi,     __const_string_9
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_22_loop_exit:
     mov                  rsi,                    0
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je       main_1_if_true
     mov                  rdi,     __const_string_3
    push                   r9
    call              println
     pop                   r9
     mov                  rsi,              3654898
     mov    qword [@seed + 0],                  rsi
     mov                  rbx,    qword [@seed + 0]
     mov                  rax,                  rbx
     mov                  rcx,       qword [@Q + 0]
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,       qword [@A + 0]
    imul                  rsi,                  rbx
     mov                  rdi,    qword [@seed + 0]
     mov                  rax,                  rdi
     mov                  rcx,       qword [@Q + 0]
     cdq
    idiv                  ecx
     mov                  rdi,                  rax
     mov                  rbx,       qword [@R + 0]
    imul                  rbx,                  rdi
     sub                  rsi,                  rbx
     cmp                  rsi,                    0
     jge      main_27_if_true
     add                  rsi,       qword [@M + 0]
     mov    qword [@seed + 0],                  rsi
     mov                  rsi,    qword [@seed + 0]
     mov                  rax,                  rsi
     mov                  rcx,                   10
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     add                  rsi,                    1
     mov     qword [@now + 0],                  rsi
     mov                  rdi,     qword [@now + 0]
    push                   r9
    call          println_Int
     pop                   r9
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r9,                  rsi
      jl     main_5_loop_body
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                  r13
     mov      qword [rbx + 0],                  rsi
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl    main_43_loop_body
     mov                  rdi,     __const_string_9
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_23_inline_exit:
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je       main_1_if_true
     mov                  rdi,     __const_string_3
    push                   r9
    call              println
     pop                   r9
     mov                  rsi,              3654898
     mov    qword [@seed + 0],                  rsi
     mov                  rbx,    qword [@seed + 0]
     mov                  rax,                  rbx
     mov                  rcx,       qword [@Q + 0]
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,       qword [@A + 0]
    imul                  rsi,                  rbx
     mov                  rdi,    qword [@seed + 0]
     mov                  rax,                  rdi
     mov                  rcx,       qword [@Q + 0]
     cdq
    idiv                  ecx
     mov                  rdi,                  rax
     mov                  rbx,       qword [@R + 0]
    imul                  rbx,                  rdi
     sub                  rsi,                  rbx
     cmp                  rsi,                    0
     jge      main_27_if_true
     add                  rsi,       qword [@M + 0]
     mov    qword [@seed + 0],                  rsi
     mov                  rsi,    qword [@seed + 0]
     mov                  rax,                  rsi
     mov                  rcx,                   10
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     add                  rsi,                    1
     mov     qword [@now + 0],                  rsi
     mov                  rdi,     qword [@now + 0]
    push                   r9
    call          println_Int
     pop                   r9
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r9,                  rsi
      jl     main_5_loop_body
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                  r13
     mov      qword [rbx + 0],                  rsi
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl    main_43_loop_body
     mov                  rdi,     __const_string_9
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_1_if_true:
     mov                  rdi,     __const_string_2
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    1
     jmp   main_14_block_exit
main_3_if_exit:
     mov                  rdi,     __const_string_3
    push                   r9
    call              println
     pop                   r9
     mov                  rsi,              3654898
     mov    qword [@seed + 0],                  rsi
     mov                  rbx,    qword [@seed + 0]
     mov                  rax,                  rbx
     mov                  rcx,       qword [@Q + 0]
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,       qword [@A + 0]
    imul                  rsi,                  rbx
     mov                  rdi,    qword [@seed + 0]
     mov                  rax,                  rdi
     mov                  rcx,       qword [@Q + 0]
     cdq
    idiv                  ecx
     mov                  rdi,                  rax
     mov                  rbx,       qword [@R + 0]
    imul                  rbx,                  rdi
     sub                  rsi,                  rbx
     cmp                  rsi,                    0
     jge      main_27_if_true
     add                  rsi,       qword [@M + 0]
     mov    qword [@seed + 0],                  rsi
     mov                  rsi,    qword [@seed + 0]
     mov                  rax,                  rsi
     mov                  rcx,                   10
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     add                  rsi,                    1
     mov     qword [@now + 0],                  rsi
     mov                  rdi,     qword [@now + 0]
    push                   r9
    call          println_Int
     pop                   r9
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r9,                  rsi
      jl     main_5_loop_body
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                  r13
     mov      qword [rbx + 0],                  rsi
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl    main_43_loop_body
     mov                  rdi,     __const_string_9
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_24_inline_enter:
     mov    qword [@seed + 0],                  rsi
     mov                  rbx,    qword [@seed + 0]
     mov                  rax,                  rbx
     mov                  rcx,       qword [@Q + 0]
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,       qword [@A + 0]
    imul                  rsi,                  rbx
     mov                  rdi,    qword [@seed + 0]
     mov                  rax,                  rdi
     mov                  rcx,       qword [@Q + 0]
     cdq
    idiv                  ecx
     mov                  rdi,                  rax
     mov                  rbx,       qword [@R + 0]
    imul                  rbx,                  rdi
     sub                  rsi,                  rbx
     cmp                  rsi,                    0
     jge      main_27_if_true
     add                  rsi,       qword [@M + 0]
     mov    qword [@seed + 0],                  rsi
     mov                  rsi,    qword [@seed + 0]
     mov                  rax,                  rsi
     mov                  rcx,                   10
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     add                  rsi,                    1
     mov     qword [@now + 0],                  rsi
     mov                  rdi,     qword [@now + 0]
    push                   r9
    call          println_Int
     pop                   r9
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r9,                  rsi
      jl     main_5_loop_body
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                  r13
     mov      qword [rbx + 0],                  rsi
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl    main_43_loop_body
     mov                  rdi,     __const_string_9
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_26_inline_enter:
     mov                  rbx,    qword [@seed + 0]
     mov                  rax,                  rbx
     mov                  rcx,       qword [@Q + 0]
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,       qword [@A + 0]
    imul                  rsi,                  rbx
     mov                  rdi,    qword [@seed + 0]
     mov                  rax,                  rdi
     mov                  rcx,       qword [@Q + 0]
     cdq
    idiv                  ecx
     mov                  rdi,                  rax
     mov                  rbx,       qword [@R + 0]
    imul                  rbx,                  rdi
     sub                  rsi,                  rbx
     cmp                  rsi,                    0
     jge      main_27_if_true
     add                  rsi,       qword [@M + 0]
     mov    qword [@seed + 0],                  rsi
     mov                  rsi,    qword [@seed + 0]
     mov                  rax,                  rsi
     mov                  rcx,                   10
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     add                  rsi,                    1
     mov     qword [@now + 0],                  rsi
     mov                  rdi,     qword [@now + 0]
    push                   r9
    call          println_Int
     pop                   r9
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r9,                  rsi
      jl     main_5_loop_body
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                  r13
     mov      qword [rbx + 0],                  rsi
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl    main_43_loop_body
     mov                  rdi,     __const_string_9
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_27_if_true:
     mov    qword [@seed + 0],                  rsi
     mov                  rsi,    qword [@seed + 0]
     mov                  rax,                  rsi
     mov                  rcx,                   10
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     add                  rsi,                    1
     mov     qword [@now + 0],                  rsi
     mov                  rdi,     qword [@now + 0]
    push                   r9
    call          println_Int
     pop                   r9
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r9,                  rsi
      jl     main_5_loop_body
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                  r13
     mov      qword [rbx + 0],                  rsi
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl    main_43_loop_body
     mov                  rdi,     __const_string_9
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_28_if_false:
     add                  rsi,       qword [@M + 0]
     mov    qword [@seed + 0],                  rsi
     mov                  rsi,    qword [@seed + 0]
     mov                  rax,                  rsi
     mov                  rcx,                   10
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     add                  rsi,                    1
     mov     qword [@now + 0],                  rsi
     mov                  rdi,     qword [@now + 0]
    push                   r9
    call          println_Int
     pop                   r9
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r9,                  rsi
      jl     main_5_loop_body
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                  r13
     mov      qword [rbx + 0],                  rsi
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl    main_43_loop_body
     mov                  rdi,     __const_string_9
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_29_if_exit:
     mov                  rsi,    qword [@seed + 0]
     mov                  rax,                  rsi
     mov                  rcx,                   10
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     add                  rsi,                    1
     mov     qword [@now + 0],                  rsi
     mov                  rdi,     qword [@now + 0]
    push                   r9
    call          println_Int
     pop                   r9
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r9,                  rsi
      jl     main_5_loop_body
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                  r13
     mov      qword [rbx + 0],                  rsi
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl    main_43_loop_body
     mov                  rdi,     __const_string_9
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_30_inline_exit:
     mov                  rax,                  rsi
     mov                  rcx,                   10
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     add                  rsi,                    1
     mov     qword [@now + 0],                  rsi
     mov                  rdi,     qword [@now + 0]
    push                   r9
    call          println_Int
     pop                   r9
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r9,                  rsi
      jl     main_5_loop_body
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                  r13
     mov      qword [rbx + 0],                  rsi
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl    main_43_loop_body
     mov                  rdi,     __const_string_9
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_4_loop_condition:
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r9,                  rsi
      jl     main_5_loop_body
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                  r13
     mov      qword [rbx + 0],                  rsi
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl    main_43_loop_body
     mov                  rdi,     __const_string_9
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_5_loop_body:
     mov                  rsi,                   r9
     sal                  rsi,                    3
     mov                   r8,       qword [@a + 0]
     add                   r8,                  rsi
     mov                  rsi,    qword [@seed + 0]
     mov                  rax,                  rsi
     mov                  rcx,       qword [@Q + 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rbx,       qword [@A + 0]
    imul                  rbx,                  rsi
     mov                  rdi,    qword [@seed + 0]
     mov                  rax,                  rdi
     mov                  rcx,       qword [@Q + 0]
     cdq
    idiv                  ecx
     mov                  rdi,                  rax
     mov                  rsi,       qword [@R + 0]
    imul                  rsi,                  rdi
     sub                  rbx,                  rsi
     mov                  rsi,                  rbx
     cmp                  rsi,                    0
     jge      main_32_if_true
     add                  rsi,       qword [@M + 0]
     mov    qword [@seed + 0],                  rsi
     mov                  rsi,    qword [@seed + 0]
     mov                  rax,                  rsi
     mov                  rcx,                   10
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     add                  rsi,                    1
     mov       qword [r8 + 0],                  rsi
     mov                  rsi,                   r9
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,                  r13
     cmp                  rsi,       qword [@n + 0]
      jg     main_7_loop_body
     mov                  rbx,                   r9
     sal                  rbx,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rbx
     add                  r13,      qword [rsi + 0]
     add                   r9,                    1
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r9,                  rsi
      jl     main_5_loop_body
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                  r13
     mov      qword [rbx + 0],                  rsi
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl    main_43_loop_body
     mov                  rdi,     __const_string_9
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_31_inline_enter:
     mov                  rsi,    qword [@seed + 0]
     mov                  rax,                  rsi
     mov                  rcx,       qword [@Q + 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rbx,       qword [@A + 0]
    imul                  rbx,                  rsi
     mov                  rdi,    qword [@seed + 0]
     mov                  rax,                  rdi
     mov                  rcx,       qword [@Q + 0]
     cdq
    idiv                  ecx
     mov                  rdi,                  rax
     mov                  rsi,       qword [@R + 0]
    imul                  rsi,                  rdi
     sub                  rbx,                  rsi
     mov                  rsi,                  rbx
     cmp                  rsi,                    0
     jge      main_32_if_true
     add                  rsi,       qword [@M + 0]
     mov    qword [@seed + 0],                  rsi
     mov                  rsi,    qword [@seed + 0]
     mov                  rax,                  rsi
     mov                  rcx,                   10
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     add                  rsi,                    1
     mov       qword [r8 + 0],                  rsi
     mov                  rsi,                   r9
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,                  r13
     cmp                  rsi,       qword [@n + 0]
      jg     main_7_loop_body
     mov                  rbx,                   r9
     sal                  rbx,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rbx
     add                  r13,      qword [rsi + 0]
     add                   r9,                    1
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r9,                  rsi
      jl     main_5_loop_body
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                  r13
     mov      qword [rbx + 0],                  rsi
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl    main_43_loop_body
     mov                  rdi,     __const_string_9
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_32_if_true:
     mov    qword [@seed + 0],                  rsi
     mov                  rsi,    qword [@seed + 0]
     mov                  rax,                  rsi
     mov                  rcx,                   10
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     add                  rsi,                    1
     mov       qword [r8 + 0],                  rsi
     mov                  rsi,                   r9
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,                  r13
     cmp                  rsi,       qword [@n + 0]
      jg     main_7_loop_body
     mov                  rbx,                   r9
     sal                  rbx,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rbx
     add                  r13,      qword [rsi + 0]
     add                   r9,                    1
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r9,                  rsi
      jl     main_5_loop_body
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                  r13
     mov      qword [rbx + 0],                  rsi
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl    main_43_loop_body
     mov                  rdi,     __const_string_9
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_33_if_false:
     add                  rsi,       qword [@M + 0]
     mov    qword [@seed + 0],                  rsi
     mov                  rsi,    qword [@seed + 0]
     mov                  rax,                  rsi
     mov                  rcx,                   10
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     add                  rsi,                    1
     mov       qword [r8 + 0],                  rsi
     mov                  rsi,                   r9
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,                  r13
     cmp                  rsi,       qword [@n + 0]
      jg     main_7_loop_body
     mov                  rbx,                   r9
     sal                  rbx,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rbx
     add                  r13,      qword [rsi + 0]
     add                   r9,                    1
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r9,                  rsi
      jl     main_5_loop_body
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                  r13
     mov      qword [rbx + 0],                  rsi
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl    main_43_loop_body
     mov                  rdi,     __const_string_9
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_34_if_exit:
     mov                  rsi,    qword [@seed + 0]
     mov                  rax,                  rsi
     mov                  rcx,                   10
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     add                  rsi,                    1
     mov       qword [r8 + 0],                  rsi
     mov                  rsi,                   r9
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,                  r13
     cmp                  rsi,       qword [@n + 0]
      jg     main_7_loop_body
     mov                  rbx,                   r9
     sal                  rbx,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rbx
     add                  r13,      qword [rsi + 0]
     add                   r9,                    1
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r9,                  rsi
      jl     main_5_loop_body
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                  r13
     mov      qword [rbx + 0],                  rsi
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl    main_43_loop_body
     mov                  rdi,     __const_string_9
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_35_inline_exit:
     mov                  rax,                  rsi
     mov                  rcx,                   10
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     add                  rsi,                    1
     mov       qword [r8 + 0],                  rsi
     mov                  rsi,                   r9
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,                  r13
     cmp                  rsi,       qword [@n + 0]
      jg     main_7_loop_body
     mov                  rbx,                   r9
     sal                  rbx,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rbx
     add                  r13,      qword [rsi + 0]
     add                   r9,                    1
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r9,                  rsi
      jl     main_5_loop_body
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                  r13
     mov      qword [rbx + 0],                  rsi
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl    main_43_loop_body
     mov                  rdi,     __const_string_9
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_6_loop_condition:
     mov                  rsi,                   r9
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,                  r13
     cmp                  rsi,       qword [@n + 0]
      jg     main_7_loop_body
     mov                  rbx,                   r9
     sal                  rbx,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rbx
     add                  r13,      qword [rsi + 0]
     add                   r9,                    1
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r9,                  rsi
      jl     main_5_loop_body
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                  r13
     mov      qword [rbx + 0],                  rsi
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl    main_43_loop_body
     mov                  rdi,     __const_string_9
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_7_loop_body:
     mov                  rsi,                   r9
     sal                  rsi,                    3
     mov                  rdi,       qword [@a + 0]
     add                  rdi,                  rsi
     mov                  rsi,    qword [@seed + 0]
     mov                  rax,                  rsi
     mov                  rcx,       qword [@Q + 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rbx,       qword [@A + 0]
    imul                  rbx,                  rsi
     mov                  rsi,    qword [@seed + 0]
     mov                  rax,                  rsi
     mov                  rcx,       qword [@Q + 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                   r8,       qword [@R + 0]
    imul                   r8,                  rsi
     mov                  rsi,                  rbx
     sub                  rsi,                   r8
     cmp                  rsi,                    0
     jge      main_37_if_true
     add                  rsi,       qword [@M + 0]
     mov    qword [@seed + 0],                  rsi
     mov                  rsi,    qword [@seed + 0]
     mov                  rax,                  rsi
     mov                  rcx,                   10
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     add                  rsi,                    1
     mov      qword [rdi + 0],                  rsi
     mov                  rsi,                   r9
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,                  r13
     cmp                  rsi,       qword [@n + 0]
      jg     main_7_loop_body
     mov                  rbx,                   r9
     sal                  rbx,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rbx
     add                  r13,      qword [rsi + 0]
     add                   r9,                    1
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r9,                  rsi
      jl     main_5_loop_body
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                  r13
     mov      qword [rbx + 0],                  rsi
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl    main_43_loop_body
     mov                  rdi,     __const_string_9
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_36_inline_enter:
     mov                  rsi,    qword [@seed + 0]
     mov                  rax,                  rsi
     mov                  rcx,       qword [@Q + 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rbx,       qword [@A + 0]
    imul                  rbx,                  rsi
     mov                  rsi,    qword [@seed + 0]
     mov                  rax,                  rsi
     mov                  rcx,       qword [@Q + 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                   r8,       qword [@R + 0]
    imul                   r8,                  rsi
     mov                  rsi,                  rbx
     sub                  rsi,                   r8
     cmp                  rsi,                    0
     jge      main_37_if_true
     add                  rsi,       qword [@M + 0]
     mov    qword [@seed + 0],                  rsi
     mov                  rsi,    qword [@seed + 0]
     mov                  rax,                  rsi
     mov                  rcx,                   10
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     add                  rsi,                    1
     mov      qword [rdi + 0],                  rsi
     mov                  rsi,                   r9
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,                  r13
     cmp                  rsi,       qword [@n + 0]
      jg     main_7_loop_body
     mov                  rbx,                   r9
     sal                  rbx,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rbx
     add                  r13,      qword [rsi + 0]
     add                   r9,                    1
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r9,                  rsi
      jl     main_5_loop_body
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                  r13
     mov      qword [rbx + 0],                  rsi
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl    main_43_loop_body
     mov                  rdi,     __const_string_9
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_37_if_true:
     mov    qword [@seed + 0],                  rsi
     mov                  rsi,    qword [@seed + 0]
     mov                  rax,                  rsi
     mov                  rcx,                   10
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     add                  rsi,                    1
     mov      qword [rdi + 0],                  rsi
     mov                  rsi,                   r9
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,                  r13
     cmp                  rsi,       qword [@n + 0]
      jg     main_7_loop_body
     mov                  rbx,                   r9
     sal                  rbx,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rbx
     add                  r13,      qword [rsi + 0]
     add                   r9,                    1
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r9,                  rsi
      jl     main_5_loop_body
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                  r13
     mov      qword [rbx + 0],                  rsi
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl    main_43_loop_body
     mov                  rdi,     __const_string_9
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_38_if_false:
     add                  rsi,       qword [@M + 0]
     mov    qword [@seed + 0],                  rsi
     mov                  rsi,    qword [@seed + 0]
     mov                  rax,                  rsi
     mov                  rcx,                   10
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     add                  rsi,                    1
     mov      qword [rdi + 0],                  rsi
     mov                  rsi,                   r9
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,                  r13
     cmp                  rsi,       qword [@n + 0]
      jg     main_7_loop_body
     mov                  rbx,                   r9
     sal                  rbx,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rbx
     add                  r13,      qword [rsi + 0]
     add                   r9,                    1
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r9,                  rsi
      jl     main_5_loop_body
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                  r13
     mov      qword [rbx + 0],                  rsi
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl    main_43_loop_body
     mov                  rdi,     __const_string_9
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_39_if_exit:
     mov                  rsi,    qword [@seed + 0]
     mov                  rax,                  rsi
     mov                  rcx,                   10
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     add                  rsi,                    1
     mov      qword [rdi + 0],                  rsi
     mov                  rsi,                   r9
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,                  r13
     cmp                  rsi,       qword [@n + 0]
      jg     main_7_loop_body
     mov                  rbx,                   r9
     sal                  rbx,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rbx
     add                  r13,      qword [rsi + 0]
     add                   r9,                    1
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r9,                  rsi
      jl     main_5_loop_body
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                  r13
     mov      qword [rbx + 0],                  rsi
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl    main_43_loop_body
     mov                  rdi,     __const_string_9
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_40_inline_exit:
     mov                  rax,                  rsi
     mov                  rcx,                   10
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     add                  rsi,                    1
     mov      qword [rdi + 0],                  rsi
     mov                  rsi,                   r9
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,                  r13
     cmp                  rsi,       qword [@n + 0]
      jg     main_7_loop_body
     mov                  rbx,                   r9
     sal                  rbx,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rbx
     add                  r13,      qword [rsi + 0]
     add                   r9,                    1
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r9,                  rsi
      jl     main_5_loop_body
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                  r13
     mov      qword [rbx + 0],                  rsi
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl    main_43_loop_body
     mov                  rdi,     __const_string_9
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_8_loop_exit:
     mov                  rbx,                   r9
     sal                  rbx,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rbx
     add                  r13,      qword [rsi + 0]
     add                   r9,                    1
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r9,                  rsi
      jl     main_5_loop_body
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                  r13
     mov      qword [rbx + 0],                  rsi
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl    main_43_loop_body
     mov                  rdi,     __const_string_9
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_9_loop_increment:
     add                   r9,                    1
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r9,                  rsi
      jl     main_5_loop_body
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                  r13
     mov      qword [rbx + 0],                  rsi
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl    main_43_loop_body
     mov                  rdi,     __const_string_9
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_10_loop_exit:
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                  r13
     mov      qword [rbx + 0],                  rsi
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl    main_43_loop_body
     mov                  rdi,     __const_string_9
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_41_inline_enter:
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl    main_43_loop_body
     mov                  rdi,     __const_string_9
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_42_loop_condition:
     cmp                   r8,     qword [@now + 0]
      jl    main_43_loop_body
     mov                  rdi,     __const_string_9
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_43_loop_body:
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rdi,      qword [rbx + 0]
    push                   r8
    call             toString
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_8
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    call                print
     pop                   r8
     add                   r8,                    1
     cmp                   r8,     qword [@now + 0]
      jl    main_43_loop_body
     mov                  rdi,     __const_string_9
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_44_loop_increment:
     add                   r8,                    1
     cmp                   r8,     qword [@now + 0]
      jl    main_43_loop_body
     mov                  rdi,     __const_string_9
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_45_loop_exit:
     mov                  rdi,     __const_string_9
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_47_inline_enter:
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_48_loop_condition:
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_49_loop_body:
     mov                  rsi,                  rdi
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     cmp      qword [rbx + 0],                    0
      je      main_50_if_true
     add                  rdi,                    1
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_50_if_true:
     mov                  rsi,                  rdi
     add                  rsi,                    1
     mov                   r8,                  rsi
     cmp                   r8,     qword [@now + 0]
      jl    main_52_loop_body
     add                  rdi,                    1
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_51_loop_condition:
     cmp                   r8,     qword [@now + 0]
      jl    main_52_loop_body
     add                  rdi,                    1
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_52_loop_body:
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     cmp      qword [rbx + 0],                    0
     jne      main_53_if_true
     add                   r8,                    1
     cmp                   r8,     qword [@now + 0]
      jl    main_52_loop_body
     add                  rdi,                    1
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_53_if_true:
     mov                  rsi,                   r8
    push                  rdi
    call                 swap
     pop                  rdi
     add                  rdi,                    1
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_56_loop_increment:
     add                   r8,                    1
     cmp                   r8,     qword [@now + 0]
      jl    main_52_loop_body
     add                  rdi,                    1
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_60_loop_increment:
     add                  rdi,                    1
     cmp                  rdi,     qword [@now + 0]
      jl    main_49_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_61_loop_exit:
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_62_loop_condition:
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_63_loop_body:
     mov                  rsi,                  rdi
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     cmp      qword [rbx + 0],                    0
      je      main_64_if_true
     add                  rdi,                    1
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_64_if_true:
     mov     qword [@now + 0],                  rdi
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_67_loop_increment:
     add                  rdi,                    1
     cmp                  rdi,     qword [@now + 0]
      jl    main_63_loop_body
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_70_inline_enter:
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_71_if_true:
     mov                  rsi,                    0
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_73_if_exit:
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_74_loop_condition:
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_75_loop_body:
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  rbx,                   r9
     add                  rbx,                  rsi
     mov                  rdi,                  r13
     sal                  rdi,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rdi
     mov                  rax,      qword [rsi + 0]
     mov      qword [rbx + 0],                  rax
     add                  r13,                    1
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_76_loop_increment:
     add                  r13,                    1
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_77_loop_exit:
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_78_loop_condition:
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_79_loop_body:
     mov                  rsi,                  rbx
     add                  rsi,                    1
     mov                  r13,                  rsi
     cmp                  r13,     qword [@now + 0]
      jl    main_81_loop_body
     add                  rbx,                    1
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_80_loop_condition:
     cmp                  r13,     qword [@now + 0]
      jl    main_81_loop_body
     add                  rbx,                    1
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_81_loop_body:
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,                   r9
     add                  rsi,                  rdi
     mov                   r8,                  r13
     sal                   r8,                    3
     mov                  rdi,                   r9
     add                  rdi,                   r8
     mov                  rsi,      qword [rsi + 0]
     cmp                  rsi,      qword [rdi + 0]
      jg      main_82_if_true
     add                  r13,                    1
     cmp                  r13,     qword [@now + 0]
      jl    main_81_loop_body
     add                  rbx,                    1
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_82_if_true:
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,                   r9
     add                  rsi,                  rdi
     mov                  rdi,      qword [rsi + 0]
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  r14,                   r9
     add                  r14,                  rsi
     mov                   r8,                  r13
     sal                   r8,                    3
     mov                  rsi,                   r9
     add                  rsi,                   r8
     mov                  rax,      qword [rsi + 0]
     mov      qword [r14 + 0],                  rax
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                   r8,                   r9
     add                   r8,                  rsi
     mov       qword [r8 + 0],                  rdi
     add                  r13,                    1
     cmp                  r13,     qword [@now + 0]
      jl    main_81_loop_body
     add                  rbx,                    1
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_85_loop_increment:
     add                  r13,                    1
     cmp                  r13,     qword [@now + 0]
      jl    main_81_loop_body
     add                  rbx,                    1
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_87_loop_increment:
     add                  rbx,                    1
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_88_loop_exit:
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_89_loop_condition:
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_90_loop_body:
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,                   r9
     add                  rdi,                  rsi
     mov                  rsi,                  rbx
     add                  rsi,                    1
     cmp      qword [rdi + 0],                  rsi
     jne      main_91_if_true
     add                  rbx,                    1
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_91_if_true:
     mov                  rsi,                    0
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_94_loop_increment:
     add                  rbx,                    1
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_95_loop_exit:
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_96_inline_exit:
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_12_loop_body:
     add                  r12,                    1
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_4
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_5
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rsi,                    0
     cmp                  rsi,     qword [@now + 0]
      jl    main_99_loop_body
     mov                  rbx,     qword [@now + 0]
     sal                  rbx,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rbx
     mov                  rax,     qword [@now + 0]
     mov      qword [rsi + 0],                  rax
     add     qword [@now + 0],                    1
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl   main_105_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl   main_119_loop_body
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl   main_128_loop_body
     mov                  rdi,    __const_string_11
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_97_inline_enter:
     mov                  rsi,                    0
     cmp                  rsi,     qword [@now + 0]
      jl    main_99_loop_body
     mov                  rbx,     qword [@now + 0]
     sal                  rbx,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rbx
     mov                  rax,     qword [@now + 0]
     mov      qword [rsi + 0],                  rax
     add     qword [@now + 0],                    1
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl   main_105_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl   main_119_loop_body
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl   main_128_loop_body
     mov                  rdi,    __const_string_11
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_98_loop_condition:
     cmp                  rsi,     qword [@now + 0]
      jl    main_99_loop_body
     mov                  rbx,     qword [@now + 0]
     sal                  rbx,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rbx
     mov                  rax,     qword [@now + 0]
     mov      qword [rsi + 0],                  rax
     add     qword [@now + 0],                    1
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl   main_105_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl   main_119_loop_body
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl   main_128_loop_body
     mov                  rdi,    __const_string_11
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_99_loop_body:
     mov                  rbx,                  rsi
     sal                  rbx,                    3
     mov                  rdi,       qword [@a + 0]
     add                  rdi,                  rbx
     sub      qword [rdi + 0],                    1
     add                  rsi,                    1
     cmp                  rsi,     qword [@now + 0]
      jl    main_99_loop_body
     mov                  rbx,     qword [@now + 0]
     sal                  rbx,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rbx
     mov                  rax,     qword [@now + 0]
     mov      qword [rsi + 0],                  rax
     add     qword [@now + 0],                    1
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl   main_105_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl   main_119_loop_body
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl   main_128_loop_body
     mov                  rdi,    __const_string_11
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_101_loop_exit:
     mov                  rbx,     qword [@now + 0]
     sal                  rbx,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rbx
     mov                  rax,     qword [@now + 0]
     mov      qword [rsi + 0],                  rax
     add     qword [@now + 0],                    1
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl   main_105_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl   main_119_loop_body
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl   main_128_loop_body
     mov                  rdi,    __const_string_11
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_103_inline_enter:
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl   main_105_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl   main_119_loop_body
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl   main_128_loop_body
     mov                  rdi,    __const_string_11
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_104_loop_condition:
     cmp                  rdi,     qword [@now + 0]
      jl   main_105_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl   main_119_loop_body
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl   main_128_loop_body
     mov                  rdi,    __const_string_11
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_105_loop_body:
     mov                  rsi,                  rdi
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     cmp      qword [rbx + 0],                    0
      je     main_106_if_true
     add                  rdi,                    1
     cmp                  rdi,     qword [@now + 0]
      jl   main_105_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl   main_119_loop_body
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl   main_128_loop_body
     mov                  rdi,    __const_string_11
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_106_if_true:
     mov                  rsi,                  rdi
     add                  rsi,                    1
     mov                   r8,                  rsi
     cmp                   r8,     qword [@now + 0]
      jl   main_108_loop_body
     add                  rdi,                    1
     cmp                  rdi,     qword [@now + 0]
      jl   main_105_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl   main_119_loop_body
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl   main_128_loop_body
     mov                  rdi,    __const_string_11
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_107_loop_condition:
     cmp                   r8,     qword [@now + 0]
      jl   main_108_loop_body
     add                  rdi,                    1
     cmp                  rdi,     qword [@now + 0]
      jl   main_105_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl   main_119_loop_body
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl   main_128_loop_body
     mov                  rdi,    __const_string_11
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_108_loop_body:
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     cmp      qword [rbx + 0],                    0
     jne     main_109_if_true
     add                   r8,                    1
     cmp                   r8,     qword [@now + 0]
      jl   main_108_loop_body
     add                  rdi,                    1
     cmp                  rdi,     qword [@now + 0]
      jl   main_105_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl   main_119_loop_body
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl   main_128_loop_body
     mov                  rdi,    __const_string_11
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_109_if_true:
     mov                  rsi,                   r8
    push                  rdi
    call                 swap
     pop                  rdi
     add                  rdi,                    1
     cmp                  rdi,     qword [@now + 0]
      jl   main_105_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl   main_119_loop_body
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl   main_128_loop_body
     mov                  rdi,    __const_string_11
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_112_loop_increment:
     add                   r8,                    1
     cmp                   r8,     qword [@now + 0]
      jl   main_108_loop_body
     add                  rdi,                    1
     cmp                  rdi,     qword [@now + 0]
      jl   main_105_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl   main_119_loop_body
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl   main_128_loop_body
     mov                  rdi,    __const_string_11
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_116_loop_increment:
     add                  rdi,                    1
     cmp                  rdi,     qword [@now + 0]
      jl   main_105_loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl   main_119_loop_body
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl   main_128_loop_body
     mov                  rdi,    __const_string_11
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_117_loop_exit:
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now + 0]
      jl   main_119_loop_body
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl   main_128_loop_body
     mov                  rdi,    __const_string_11
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_118_loop_condition:
     cmp                  rdi,     qword [@now + 0]
      jl   main_119_loop_body
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl   main_128_loop_body
     mov                  rdi,    __const_string_11
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_119_loop_body:
     mov                  rbx,                  rdi
     sal                  rbx,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rbx
     cmp      qword [rsi + 0],                    0
      je     main_120_if_true
     add                  rdi,                    1
     cmp                  rdi,     qword [@now + 0]
      jl   main_119_loop_body
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl   main_128_loop_body
     mov                  rdi,    __const_string_11
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_120_if_true:
     mov     qword [@now + 0],                  rdi
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl   main_128_loop_body
     mov                  rdi,    __const_string_11
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_123_loop_increment:
     add                  rdi,                    1
     cmp                  rdi,     qword [@now + 0]
      jl   main_119_loop_body
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl   main_128_loop_body
     mov                  rdi,    __const_string_11
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_126_inline_enter:
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl   main_128_loop_body
     mov                  rdi,    __const_string_11
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_127_loop_condition:
     cmp                   r8,     qword [@now + 0]
      jl   main_128_loop_body
     mov                  rdi,    __const_string_11
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_128_loop_body:
     mov                  rbx,                   r8
     sal                  rbx,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rbx
     mov                  rdi,      qword [rsi + 0]
    push                   r8
    call             toString
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_10
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    call                print
     pop                   r8
     add                   r8,                    1
     cmp                   r8,     qword [@now + 0]
      jl   main_128_loop_body
     mov                  rdi,    __const_string_11
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_129_loop_increment:
     add                   r8,                    1
     cmp                   r8,     qword [@now + 0]
      jl   main_128_loop_body
     mov                  rdi,    __const_string_11
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_130_loop_exit:
     mov                  rdi,    __const_string_11
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                   r9,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne      main_71_if_true
     mov                  r13,                    0
     cmp                  r13,     qword [@now + 0]
      jl    main_75_loop_body
     mov                  rbx,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                  rbx,                  rsi
      jl    main_79_loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now + 0]
      jl    main_90_loop_body
     mov                  rsi,                    1
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_14_block_exit
main_13_loop_exit:
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
main_14_block_exit:
     pop                  rbx
     pop                  r13
     pop                  r14
     pop                  r12
     add                  rsp,                   72
     pop                  rbp
     ret
initialize:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    8
initialize_0_block_enter:
     mov    qword [@seed + 0],                  rdi
initialize_1_block_exit:
     add                  rsp,                    8
     pop                  rbp
     ret
win:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   24
    push                  rbx
win_0_block_enter:
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                  r11,                  rsi
     mov                  rsi,     qword [@now + 0]
     cmp                  rsi,       qword [@h + 0]
     jne        win_1_if_true
     mov                  rsi,                    0
     cmp                  rsi,     qword [@now + 0]
      jl      win_5_loop_body
     mov                   r8,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r8,                  rsi
      jl      win_9_loop_body
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl     win_20_loop_body
     mov                  rax,                    1
     jmp    win_26_block_exit
win_1_if_true:
     mov                  rax,                    0
     jmp    win_26_block_exit
win_3_if_exit:
     mov                  rsi,                    0
     cmp                  rsi,     qword [@now + 0]
      jl      win_5_loop_body
     mov                   r8,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r8,                  rsi
      jl      win_9_loop_body
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl     win_20_loop_body
     mov                  rax,                    1
     jmp    win_26_block_exit
win_4_loop_condition:
     cmp                  rsi,     qword [@now + 0]
      jl      win_5_loop_body
     mov                   r8,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r8,                  rsi
      jl      win_9_loop_body
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl     win_20_loop_body
     mov                  rax,                    1
     jmp    win_26_block_exit
win_5_loop_body:
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                   r8,                  r11
     add                   r8,                  rdi
     mov                   r9,                  rsi
     sal                   r9,                    3
     mov                  rdi,       qword [@a + 0]
     add                  rdi,                   r9
     mov                  rax,      qword [rdi + 0]
     mov       qword [r8 + 0],                  rax
     add                  rsi,                    1
     cmp                  rsi,     qword [@now + 0]
      jl      win_5_loop_body
     mov                   r8,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r8,                  rsi
      jl      win_9_loop_body
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl     win_20_loop_body
     mov                  rax,                    1
     jmp    win_26_block_exit
win_6_loop_increment:
     add                  rsi,                    1
     cmp                  rsi,     qword [@now + 0]
      jl      win_5_loop_body
     mov                   r8,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r8,                  rsi
      jl      win_9_loop_body
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl     win_20_loop_body
     mov                  rax,                    1
     jmp    win_26_block_exit
win_7_loop_exit:
     mov                   r8,                    0
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r8,                  rsi
      jl      win_9_loop_body
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl     win_20_loop_body
     mov                  rax,                    1
     jmp    win_26_block_exit
win_8_loop_condition:
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r8,                  rsi
      jl      win_9_loop_body
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl     win_20_loop_body
     mov                  rax,                    1
     jmp    win_26_block_exit
win_9_loop_body:
     mov                  rsi,                   r8
     add                  rsi,                    1
     cmp                  rsi,     qword [@now + 0]
      jl     win_11_loop_body
     add                   r8,                    1
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r8,                  rsi
      jl      win_9_loop_body
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl     win_20_loop_body
     mov                  rax,                    1
     jmp    win_26_block_exit
win_10_loop_condition:
     cmp                  rsi,     qword [@now + 0]
      jl     win_11_loop_body
     add                   r8,                    1
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r8,                  rsi
      jl      win_9_loop_body
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl     win_20_loop_body
     mov                  rax,                    1
     jmp    win_26_block_exit
win_11_loop_body:
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  r10,                  r11
     add                  r10,                  rdi
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                   r9,                  r11
     add                   r9,                  rdi
     mov                  rdi,      qword [r10 + 0]
     cmp                  rdi,       qword [r9 + 0]
      jg       win_12_if_true
     add                  rsi,                    1
     cmp                  rsi,     qword [@now + 0]
      jl     win_11_loop_body
     add                   r8,                    1
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r8,                  rsi
      jl      win_9_loop_body
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl     win_20_loop_body
     mov                  rax,                    1
     jmp    win_26_block_exit
win_12_if_true:
     mov                   r9,                   r8
     sal                   r9,                    3
     mov                  rdi,                  r11
     add                  rdi,                   r9
     mov                  rbx,      qword [rdi + 0]
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  r10,                  r11
     add                  r10,                  rdi
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                   r9,                  r11
     add                   r9,                  rdi
     mov                  rax,       qword [r9 + 0]
     mov      qword [r10 + 0],                  rax
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                   r9,                  r11
     add                   r9,                  rdi
     mov       qword [r9 + 0],                  rbx
     add                  rsi,                    1
     cmp                  rsi,     qword [@now + 0]
      jl     win_11_loop_body
     add                   r8,                    1
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r8,                  rsi
      jl      win_9_loop_body
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl     win_20_loop_body
     mov                  rax,                    1
     jmp    win_26_block_exit
win_15_loop_increment:
     add                  rsi,                    1
     cmp                  rsi,     qword [@now + 0]
      jl     win_11_loop_body
     add                   r8,                    1
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r8,                  rsi
      jl      win_9_loop_body
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl     win_20_loop_body
     mov                  rax,                    1
     jmp    win_26_block_exit
win_17_loop_increment:
     add                   r8,                    1
     mov                  rsi,     qword [@now + 0]
     sub                  rsi,                    1
     cmp                   r8,                  rsi
      jl      win_9_loop_body
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl     win_20_loop_body
     mov                  rax,                    1
     jmp    win_26_block_exit
win_18_loop_exit:
     mov                   r8,                    0
     cmp                   r8,     qword [@now + 0]
      jl     win_20_loop_body
     mov                  rax,                    1
     jmp    win_26_block_exit
win_19_loop_condition:
     cmp                   r8,     qword [@now + 0]
      jl     win_20_loop_body
     mov                  rax,                    1
     jmp    win_26_block_exit
win_20_loop_body:
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,                  r11
     add                  rdi,                  rsi
     mov                  rsi,                   r8
     add                  rsi,                    1
     cmp      qword [rdi + 0],                  rsi
     jne       win_21_if_true
     add                   r8,                    1
     cmp                   r8,     qword [@now + 0]
      jl     win_20_loop_body
     mov                  rax,                    1
     jmp    win_26_block_exit
win_21_if_true:
     mov                  rax,                    0
     jmp    win_26_block_exit
win_24_loop_increment:
     add                   r8,                    1
     cmp                   r8,     qword [@now + 0]
      jl     win_20_loop_body
     mov                  rax,                    1
     jmp    win_26_block_exit
win_25_loop_exit:
     mov                  rax,                    1
win_26_block_exit:
     pop                  rbx
     add                  rsp,                   24
     pop                  rbp
     ret
SECTION .data
      dq                    1
__const_string_0:
	db  32,   0
      dq                    0
__const_string_1:
	db   0
      dq                   79
__const_string_2:
	db  83, 111, 114, 114, 121,  44,  32, 116, 104, 101,  32, 110, 117, 109,  98, 101, 114,  32, 110,  32, 109, 117, 115, 116,  32,  98, 101,  32,  97,  32, 110, 117, 109,  98, 101, 114,  32, 115,  46, 116,  46,  32, 116, 104, 101, 114, 101,  32, 101, 120, 105, 115, 116, 115,  32, 105,  32, 115,  97, 116, 105, 115, 102, 121, 105, 110, 103,  32, 110,  61,  49,  43,  50,  43,  46,  46,  46,  43, 105,   0
      dq                   12
__const_string_3:
	db  76, 101, 116,  39, 115,  32, 115, 116,  97, 114, 116,  33,   0
      dq                    5
__const_string_4:
	db 115, 116, 101, 112,  32,   0
      dq                    1
__const_string_5:
	db  58,   0
      dq                    7
__const_string_6:
	db  84, 111, 116,  97, 108,  58,  32,   0
      dq                    8
__const_string_7:
	db  32, 115, 116, 101, 112,  40, 115,  41,   0
      dq                    1
__const_string_8:
	db  32,   0
      dq                    0
__const_string_9:
	db   0
      dq                    1
__const_string_10:
	db  32,   0
      dq                    0
__const_string_11:
	db   0
SECTION .bss
@n:
    resq                    1
@h:
    resq                    1
@now:
    resq                    1
@a:
    resq                    1
@A:
    resq                    1
@M:
    resq                    1
@Q:
    resq                    1
@R:
    resq                    1
@seed:
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
