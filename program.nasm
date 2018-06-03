global __global_init
global main
global exchange
global adjustHeap
global heapSort
global makeHeap
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
main:
    push                  rbp
     mov                  rbp,                  rsp
    call        __global_init
     sub                  rsp,                   16
    push                  r12
    push                  rbx
main_0_block_enter:
    call            getString
     mov                  rdi,                  rax
    call    __string_parseInt
     mov       qword [@n + 0],                  rax
     mov                  rsi,       qword [@n + 0]
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rax,       qword [@n + 0]
     mov      qword [rsi + 0],                  rax
     add                  rsi,                    8
     mov       qword [@a + 0],                  rsi
     mov                  rbx,                    0
     mov                  rdi,       qword [@a + 0]
    call         __array_size
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
      jl     main_2_loop_body
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                    1
     mov                  rax,                  rsi
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     cmp                  rdi,                    0
     jge    main_12_loop_body
     mov                  r12,                    0
     cmp                  r12,       qword [@n + 0]
      jl    main_26_loop_body
     mov                  rbx,                    0
     mov                  rdi,       qword [@a + 0]
    call         __array_size
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
      jl     main_6_loop_body
     mov                  rdi,     __const_string_1
    call                print
     mov                  rax,                    0
     jmp    main_9_block_exit
main_1_loop_condition:
     mov                  rdi,       qword [@a + 0]
    call         __array_size
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
      jl     main_2_loop_body
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                    1
     mov                  rax,                  rsi
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     cmp                  rdi,                    0
     jge    main_12_loop_body
     mov                  r12,                    0
     cmp                  r12,       qword [@n + 0]
      jl    main_26_loop_body
     mov                  rbx,                    0
     mov                  rdi,       qword [@a + 0]
    call         __array_size
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
      jl     main_6_loop_body
     mov                  rdi,     __const_string_1
    call                print
     mov                  rax,                    0
     jmp    main_9_block_exit
main_2_loop_body:
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,       qword [@a + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                  rbx
     add                  rbx,                    1
     mov                  rdi,       qword [@a + 0]
    call         __array_size
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
      jl     main_2_loop_body
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                    1
     mov                  rax,                  rsi
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     cmp                  rdi,                    0
     jge    main_12_loop_body
     mov                  r12,                    0
     cmp                  r12,       qword [@n + 0]
      jl    main_26_loop_body
     mov                  rbx,                    0
     mov                  rdi,       qword [@a + 0]
    call         __array_size
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
      jl     main_6_loop_body
     mov                  rdi,     __const_string_1
    call                print
     mov                  rax,                    0
     jmp    main_9_block_exit
main_3_loop_increment:
     add                  rbx,                    1
     mov                  rdi,       qword [@a + 0]
    call         __array_size
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
      jl     main_2_loop_body
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                    1
     mov                  rax,                  rsi
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     cmp                  rdi,                    0
     jge    main_12_loop_body
     mov                  r12,                    0
     cmp                  r12,       qword [@n + 0]
      jl    main_26_loop_body
     mov                  rbx,                    0
     mov                  rdi,       qword [@a + 0]
    call         __array_size
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
      jl     main_6_loop_body
     mov                  rdi,     __const_string_1
    call                print
     mov                  rax,                    0
     jmp    main_9_block_exit
main_10_inline_enter:
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                    1
     mov                  rax,                  rsi
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     cmp                  rdi,                    0
     jge    main_12_loop_body
     mov                  r12,                    0
     cmp                  r12,       qword [@n + 0]
      jl    main_26_loop_body
     mov                  rbx,                    0
     mov                  rdi,       qword [@a + 0]
    call         __array_size
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
      jl     main_6_loop_body
     mov                  rdi,     __const_string_1
    call                print
     mov                  rax,                    0
     jmp    main_9_block_exit
main_11_loop_condition:
     cmp                  rdi,                    0
     jge    main_12_loop_body
     mov                  r12,                    0
     cmp                  r12,       qword [@n + 0]
      jl    main_26_loop_body
     mov                  rbx,                    0
     mov                  rdi,       qword [@a + 0]
    call         __array_size
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
      jl     main_6_loop_body
     mov                  rdi,     __const_string_1
    call                print
     mov                  rax,                    0
     jmp    main_9_block_exit
main_12_loop_body:
     mov                  rsi,                  rdi
     sal                  rsi,                    1
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     sal                  rsi,                    1
     add                  rsi,                    1
     cmp                  rsi,       qword [@n + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
     jne main_14_logical_false
     mov                  rsi,                  rdi
     sal                  rsi,                    1
     add                  rsi,                    1
     sal                  rsi,                    3
     mov                   r8,       qword [@a + 0]
     add                   r8,                  rsi
     mov                  rsi,                  rdi
     sal                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [r8 + 0]
     cmp                  rsi,      qword [rbx + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je      main_16_if_true
     mov                  rsi,                  rdi
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,                  r12
     sal                  rsi,                    3
     mov                   r8,       qword [@a + 0]
     add                   r8,                  rsi
     mov                  rsi,      qword [rbx + 0]
     cmp                  rsi,       qword [r8 + 0]
      jg      main_19_if_true
     sub                  rdi,                    1
     cmp                  rdi,                    0
     jge    main_12_loop_body
     mov                  r12,                    0
     cmp                  r12,       qword [@n + 0]
      jl    main_26_loop_body
     mov                  rbx,                    0
     mov                  rdi,       qword [@a + 0]
    call         __array_size
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
      jl     main_6_loop_body
     mov                  rdi,     __const_string_1
    call                print
     mov                  rax,                    0
     jmp    main_9_block_exit
main_13_logical_true:
     mov                  rsi,                  rdi
     sal                  rsi,                    1
     add                  rsi,                    1
     sal                  rsi,                    3
     mov                   r8,       qword [@a + 0]
     add                   r8,                  rsi
     mov                  rsi,                  rdi
     sal                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [r8 + 0]
     cmp                  rsi,      qword [rbx + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je      main_16_if_true
     mov                  rsi,                  rdi
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,                  r12
     sal                  rsi,                    3
     mov                   r8,       qword [@a + 0]
     add                   r8,                  rsi
     mov                  rsi,      qword [rbx + 0]
     cmp                  rsi,       qword [r8 + 0]
      jg      main_19_if_true
     sub                  rdi,                    1
     cmp                  rdi,                    0
     jge    main_12_loop_body
     mov                  r12,                    0
     cmp                  r12,       qword [@n + 0]
      jl    main_26_loop_body
     mov                  rbx,                    0
     mov                  rdi,       qword [@a + 0]
    call         __array_size
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
      jl     main_6_loop_body
     mov                  rdi,     __const_string_1
    call                print
     mov                  rax,                    0
     jmp    main_9_block_exit
main_14_logical_false:
     mov                  rsi,                    0
     cmp                  rsi,                    1
      je      main_16_if_true
     mov                  rsi,                  rdi
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,                  r12
     sal                  rsi,                    3
     mov                   r8,       qword [@a + 0]
     add                   r8,                  rsi
     mov                  rsi,      qword [rbx + 0]
     cmp                  rsi,       qword [r8 + 0]
      jg      main_19_if_true
     sub                  rdi,                    1
     cmp                  rdi,                    0
     jge    main_12_loop_body
     mov                  r12,                    0
     cmp                  r12,       qword [@n + 0]
      jl    main_26_loop_body
     mov                  rbx,                    0
     mov                  rdi,       qword [@a + 0]
    call         __array_size
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
      jl     main_6_loop_body
     mov                  rdi,     __const_string_1
    call                print
     mov                  rax,                    0
     jmp    main_9_block_exit
main_15_logical_exit:
     cmp                  rsi,                    1
      je      main_16_if_true
     mov                  rsi,                  rdi
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,                  r12
     sal                  rsi,                    3
     mov                   r8,       qword [@a + 0]
     add                   r8,                  rsi
     mov                  rsi,      qword [rbx + 0]
     cmp                  rsi,       qword [r8 + 0]
      jg      main_19_if_true
     sub                  rdi,                    1
     cmp                  rdi,                    0
     jge    main_12_loop_body
     mov                  r12,                    0
     cmp                  r12,       qword [@n + 0]
      jl    main_26_loop_body
     mov                  rbx,                    0
     mov                  rdi,       qword [@a + 0]
    call         __array_size
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
      jl     main_6_loop_body
     mov                  rdi,     __const_string_1
    call                print
     mov                  rax,                    0
     jmp    main_9_block_exit
main_16_if_true:
     mov                  rsi,                  rdi
     sal                  rsi,                    1
     add                  rsi,                    1
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,                  r12
     sal                  rsi,                    3
     mov                   r8,       qword [@a + 0]
     add                   r8,                  rsi
     mov                  rsi,      qword [rbx + 0]
     cmp                  rsi,       qword [r8 + 0]
      jg      main_19_if_true
     sub                  rdi,                    1
     cmp                  rdi,                    0
     jge    main_12_loop_body
     mov                  r12,                    0
     cmp                  r12,       qword [@n + 0]
      jl    main_26_loop_body
     mov                  rbx,                    0
     mov                  rdi,       qword [@a + 0]
    call         __array_size
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
      jl     main_6_loop_body
     mov                  rdi,     __const_string_1
    call                print
     mov                  rax,                    0
     jmp    main_9_block_exit
main_18_if_exit:
     mov                  rsi,                  rdi
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                  rsi,                  r12
     sal                  rsi,                    3
     mov                   r8,       qword [@a + 0]
     add                   r8,                  rsi
     mov                  rsi,      qword [rbx + 0]
     cmp                  rsi,       qword [r8 + 0]
      jg      main_19_if_true
     sub                  rdi,                    1
     cmp                  rdi,                    0
     jge    main_12_loop_body
     mov                  r12,                    0
     cmp                  r12,       qword [@n + 0]
      jl    main_26_loop_body
     mov                  rbx,                    0
     mov                  rdi,       qword [@a + 0]
    call         __array_size
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
      jl     main_6_loop_body
     mov                  rdi,     __const_string_1
    call                print
     mov                  rax,                    0
     jmp    main_9_block_exit
main_19_if_true:
     mov                  rsi,                  r12
    push                  rdi
     sub                  rsp,                    8
    call             exchange
     add                  rsp,                    8
     pop                  rdi
     sub                  rdi,                    1
     cmp                  rdi,                    0
     jge    main_12_loop_body
     mov                  r12,                    0
     cmp                  r12,       qword [@n + 0]
      jl    main_26_loop_body
     mov                  rbx,                    0
     mov                  rdi,       qword [@a + 0]
    call         __array_size
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
      jl     main_6_loop_body
     mov                  rdi,     __const_string_1
    call                print
     mov                  rax,                    0
     jmp    main_9_block_exit
main_21_if_exit:
     sub                  rdi,                    1
     cmp                  rdi,                    0
     jge    main_12_loop_body
     mov                  r12,                    0
     cmp                  r12,       qword [@n + 0]
      jl    main_26_loop_body
     mov                  rbx,                    0
     mov                  rdi,       qword [@a + 0]
    call         __array_size
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
      jl     main_6_loop_body
     mov                  rdi,     __const_string_1
    call                print
     mov                  rax,                    0
     jmp    main_9_block_exit
main_24_inline_enter:
     mov                  r12,                    0
     cmp                  r12,       qword [@n + 0]
      jl    main_26_loop_body
     mov                  rbx,                    0
     mov                  rdi,       qword [@a + 0]
    call         __array_size
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
      jl     main_6_loop_body
     mov                  rdi,     __const_string_1
    call                print
     mov                  rax,                    0
     jmp    main_9_block_exit
main_25_loop_condition:
     cmp                  r12,       qword [@n + 0]
      jl    main_26_loop_body
     mov                  rbx,                    0
     mov                  rdi,       qword [@a + 0]
    call         __array_size
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
      jl     main_6_loop_body
     mov                  rdi,     __const_string_1
    call                print
     mov                  rax,                    0
     jmp    main_9_block_exit
main_26_loop_body:
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@a + 0]
     add                  rbx,                  rsi
     mov                   r8,      qword [rbx + 0]
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rdi,       qword [@a + 0]
     add                  rdi,                  rsi
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                  r12
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     sal                  rbx,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rbx
     mov                  rax,      qword [rsi + 0]
     mov      qword [rdi + 0],                  rax
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                  r12
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     sal                  rbx,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rbx
     mov      qword [rsi + 0],                   r8
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                  r12
     sub                  rsi,                    1
     mov                  rdi,                  rsi
    call           adjustHeap
     add                  r12,                    1
     cmp                  r12,       qword [@n + 0]
      jl    main_26_loop_body
     mov                  rbx,                    0
     mov                  rdi,       qword [@a + 0]
    call         __array_size
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
      jl     main_6_loop_body
     mov                  rdi,     __const_string_1
    call                print
     mov                  rax,                    0
     jmp    main_9_block_exit
main_27_loop_increment:
     add                  r12,                    1
     cmp                  r12,       qword [@n + 0]
      jl    main_26_loop_body
     mov                  rbx,                    0
     mov                  rdi,       qword [@a + 0]
    call         __array_size
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
      jl     main_6_loop_body
     mov                  rdi,     __const_string_1
    call                print
     mov                  rax,                    0
     jmp    main_9_block_exit
main_29_inline_exit:
     mov                  rbx,                    0
     mov                  rdi,       qword [@a + 0]
    call         __array_size
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
      jl     main_6_loop_body
     mov                  rdi,     __const_string_1
    call                print
     mov                  rax,                    0
     jmp    main_9_block_exit
main_5_loop_condition:
     mov                  rdi,       qword [@a + 0]
    call         __array_size
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
      jl     main_6_loop_body
     mov                  rdi,     __const_string_1
    call                print
     mov                  rax,                    0
     jmp    main_9_block_exit
main_6_loop_body:
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,       qword [@a + 0]
     add                  rdi,                  rsi
     mov                  rdi,      qword [rdi + 0]
    call             toString
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_0
    call  __string_connection
     mov                  rdi,                  rax
    call                print
     add                  rbx,                    1
     mov                  rdi,       qword [@a + 0]
    call         __array_size
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
      jl     main_6_loop_body
     mov                  rdi,     __const_string_1
    call                print
     mov                  rax,                    0
     jmp    main_9_block_exit
main_7_loop_increment:
     add                  rbx,                    1
     mov                  rdi,       qword [@a + 0]
    call         __array_size
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
      jl     main_6_loop_body
     mov                  rdi,     __const_string_1
    call                print
     mov                  rax,                    0
     jmp    main_9_block_exit
main_8_loop_exit:
     mov                  rdi,     __const_string_1
    call                print
     mov                  rax,                    0
main_9_block_exit:
     pop                  rbx
     pop                  r12
     add                  rsp,                   16
     pop                  rbp
     ret
exchange:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    8
exchange_0_block_enter:
     mov                   r9,                  rdi
     mov                   r8,                  rsi
     mov                  rdi,                   r9
     sal                  rdi,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rdi
     mov                  rdi,      qword [rsi + 0]
     mov                  rsi,                   r9
     sal                  rsi,                    3
     mov                   r9,       qword [@a + 0]
     add                   r9,                  rsi
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  r10
     mov                  rax,      qword [rsi + 0]
     mov       qword [r9 + 0],                  rax
     sal                   r8,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                   r8
     mov      qword [rsi + 0],                  rdi
exchange_1_block_exit:
     add                  rsp,                    8
     pop                  rbp
     ret
adjustHeap:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    8
adjustHeap_0_block_enter:
     mov                  r11,                  rdi
     mov                   r8,                    0
     mov                  rsi,                   r8
     sal                  rsi,                    1
     cmp                  rsi,                  r11
      jl adjustHeap_2_loop_body
     mov                  rax,                    0
     jmp adjustHeap_13_block_exit
adjustHeap_1_loop_condition:
     mov                  rsi,                   r8
     sal                  rsi,                    1
     cmp                  rsi,                  r11
      jl adjustHeap_2_loop_body
     mov                  rax,                    0
     jmp adjustHeap_13_block_exit
adjustHeap_2_loop_body:
     mov                  rsi,                   r8
     sal                  rsi,                    1
     mov                  r10,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    1
     add                  rsi,                    1
     cmp                  rsi,                  r11
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
     jne adjustHeap_4_logical_false
     mov                  rsi,                   r8
     sal                  rsi,                    1
     add                  rsi,                    1
     sal                  rsi,                    3
     mov                   r9,       qword [@a + 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    1
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rdi
     mov                  rdi,       qword [r9 + 0]
     cmp                  rdi,      qword [rsi + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je adjustHeap_6_if_true
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,       qword [@a + 0]
     add                  rdi,                  rsi
     mov                   r9,                  r10
     sal                   r9,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                   r9
     mov                  rdi,      qword [rdi + 0]
     cmp                  rdi,      qword [rsi + 0]
      jg adjustHeap_9_if_true
     mov                  rax,                    0
     jmp adjustHeap_13_block_exit
adjustHeap_3_logical_true:
     mov                  rsi,                   r8
     sal                  rsi,                    1
     add                  rsi,                    1
     sal                  rsi,                    3
     mov                   r9,       qword [@a + 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    1
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rdi
     mov                  rdi,       qword [r9 + 0]
     cmp                  rdi,      qword [rsi + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je adjustHeap_6_if_true
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,       qword [@a + 0]
     add                  rdi,                  rsi
     mov                   r9,                  r10
     sal                   r9,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                   r9
     mov                  rdi,      qword [rdi + 0]
     cmp                  rdi,      qword [rsi + 0]
      jg adjustHeap_9_if_true
     mov                  rax,                    0
     jmp adjustHeap_13_block_exit
adjustHeap_4_logical_false:
     mov                  rsi,                    0
     cmp                  rsi,                    1
      je adjustHeap_6_if_true
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,       qword [@a + 0]
     add                  rdi,                  rsi
     mov                   r9,                  r10
     sal                   r9,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                   r9
     mov                  rdi,      qword [rdi + 0]
     cmp                  rdi,      qword [rsi + 0]
      jg adjustHeap_9_if_true
     mov                  rax,                    0
     jmp adjustHeap_13_block_exit
adjustHeap_5_logical_exit:
     cmp                  rsi,                    1
      je adjustHeap_6_if_true
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,       qword [@a + 0]
     add                  rdi,                  rsi
     mov                   r9,                  r10
     sal                   r9,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                   r9
     mov                  rdi,      qword [rdi + 0]
     cmp                  rdi,      qword [rsi + 0]
      jg adjustHeap_9_if_true
     mov                  rax,                    0
     jmp adjustHeap_13_block_exit
adjustHeap_6_if_true:
     mov                  rsi,                   r8
     sal                  rsi,                    1
     add                  rsi,                    1
     mov                  r10,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,       qword [@a + 0]
     add                  rdi,                  rsi
     mov                   r9,                  r10
     sal                   r9,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                   r9
     mov                  rdi,      qword [rdi + 0]
     cmp                  rdi,      qword [rsi + 0]
      jg adjustHeap_9_if_true
     mov                  rax,                    0
     jmp adjustHeap_13_block_exit
adjustHeap_8_if_exit:
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,       qword [@a + 0]
     add                  rdi,                  rsi
     mov                   r9,                  r10
     sal                   r9,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                   r9
     mov                  rdi,      qword [rdi + 0]
     cmp                  rdi,      qword [rsi + 0]
      jg adjustHeap_9_if_true
     mov                  rax,                    0
     jmp adjustHeap_13_block_exit
adjustHeap_9_if_true:
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,       qword [@a + 0]
     add                  rdi,                  rsi
     mov                  rsi,      qword [rdi + 0]
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                   r9,       qword [@a + 0]
     add                   r9,                  rdi
     mov                   r8,                  r10
     sal                   r8,                    3
     mov                  rdi,       qword [@a + 0]
     add                  rdi,                   r8
     mov                  rax,      qword [rdi + 0]
     mov       qword [r9 + 0],                  rax
     mov                  rdi,                  r10
     sal                  rdi,                    3
     mov                   r8,       qword [@a + 0]
     add                   r8,                  rdi
     mov       qword [r8 + 0],                  rsi
     mov                   r8,                  r10
     mov                  rsi,                   r8
     sal                  rsi,                    1
     cmp                  rsi,                  r11
      jl adjustHeap_2_loop_body
     mov                  rax,                    0
     jmp adjustHeap_13_block_exit
adjustHeap_12_loop_exit:
     mov                  rax,                    0
adjustHeap_13_block_exit:
     add                  rsp,                    8
     pop                  rbp
     ret
heapSort:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   16
    push                  rbx
heapSort_0_block_enter:
     mov                  r10,                    0
     cmp                  r10,       qword [@n + 0]
      jl heapSort_2_loop_body
     mov                  rax,                    0
     jmp heapSort_5_block_exit
heapSort_1_loop_condition:
     cmp                  r10,       qword [@n + 0]
      jl heapSort_2_loop_body
     mov                  rax,                    0
     jmp heapSort_5_block_exit
heapSort_2_loop_body:
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rdi,       qword [@a + 0]
     add                  rdi,                  rsi
     mov                   r8,      qword [rdi + 0]
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                   r9,       qword [@a + 0]
     add                   r9,                  rsi
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                  r10
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rdi
     mov                  rax,      qword [rsi + 0]
     mov       qword [r9 + 0],                  rax
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                  r10
     sub                  rsi,                    1
     sal                  rsi,                    3
     mov                  rdi,       qword [@a + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                   r8
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                  r10
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  rdi,                    0
     mov                  rsi,                  rdi
     sal                  rsi,                    1
     cmp                  rsi,                  rbx
      jl heapSort_8_loop_body
     add                  r10,                    1
     cmp                  r10,       qword [@n + 0]
      jl heapSort_2_loop_body
     mov                  rax,                    0
     jmp heapSort_5_block_exit
heapSort_6_inline_enter:
     mov                  rdi,                    0
     mov                  rsi,                  rdi
     sal                  rsi,                    1
     cmp                  rsi,                  rbx
      jl heapSort_8_loop_body
     add                  r10,                    1
     cmp                  r10,       qword [@n + 0]
      jl heapSort_2_loop_body
     mov                  rax,                    0
     jmp heapSort_5_block_exit
heapSort_7_loop_condition:
     mov                  rsi,                  rdi
     sal                  rsi,                    1
     cmp                  rsi,                  rbx
      jl heapSort_8_loop_body
     add                  r10,                    1
     cmp                  r10,       qword [@n + 0]
      jl heapSort_2_loop_body
     mov                  rax,                    0
     jmp heapSort_5_block_exit
heapSort_8_loop_body:
     mov                  rsi,                  rdi
     sal                  rsi,                    1
     mov                   r9,                  rsi
     mov                  rsi,                  rdi
     sal                  rsi,                    1
     add                  rsi,                    1
     cmp                  rsi,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
     jne heapSort_10_logical_false
     mov                  rsi,                  rdi
     sal                  rsi,                    1
     add                  rsi,                    1
     sal                  rsi,                    3
     mov                   r8,       qword [@a + 0]
     add                   r8,                  rsi
     mov                  rsi,                  rdi
     sal                  rsi,                    1
     mov                  r11,                  rsi
     sal                  r11,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  r11
     mov                   r8,       qword [r8 + 0]
     cmp                   r8,      qword [rsi + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je  heapSort_12_if_true
     mov                  rsi,                  rdi
     sal                  rsi,                    3
     mov                  r11,       qword [@a + 0]
     add                  r11,                  rsi
     mov                   r8,                   r9
     sal                   r8,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                   r8
     mov                   r8,      qword [r11 + 0]
     cmp                   r8,      qword [rsi + 0]
      jg  heapSort_15_if_true
     add                  r10,                    1
     cmp                  r10,       qword [@n + 0]
      jl heapSort_2_loop_body
     mov                  rax,                    0
     jmp heapSort_5_block_exit
heapSort_9_logical_true:
     mov                  rsi,                  rdi
     sal                  rsi,                    1
     add                  rsi,                    1
     sal                  rsi,                    3
     mov                   r8,       qword [@a + 0]
     add                   r8,                  rsi
     mov                  rsi,                  rdi
     sal                  rsi,                    1
     mov                  r11,                  rsi
     sal                  r11,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  r11
     mov                   r8,       qword [r8 + 0]
     cmp                   r8,      qword [rsi + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je  heapSort_12_if_true
     mov                  rsi,                  rdi
     sal                  rsi,                    3
     mov                  r11,       qword [@a + 0]
     add                  r11,                  rsi
     mov                   r8,                   r9
     sal                   r8,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                   r8
     mov                   r8,      qword [r11 + 0]
     cmp                   r8,      qword [rsi + 0]
      jg  heapSort_15_if_true
     add                  r10,                    1
     cmp                  r10,       qword [@n + 0]
      jl heapSort_2_loop_body
     mov                  rax,                    0
     jmp heapSort_5_block_exit
heapSort_10_logical_false:
     mov                  rsi,                    0
     cmp                  rsi,                    1
      je  heapSort_12_if_true
     mov                  rsi,                  rdi
     sal                  rsi,                    3
     mov                  r11,       qword [@a + 0]
     add                  r11,                  rsi
     mov                   r8,                   r9
     sal                   r8,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                   r8
     mov                   r8,      qword [r11 + 0]
     cmp                   r8,      qword [rsi + 0]
      jg  heapSort_15_if_true
     add                  r10,                    1
     cmp                  r10,       qword [@n + 0]
      jl heapSort_2_loop_body
     mov                  rax,                    0
     jmp heapSort_5_block_exit
heapSort_11_logical_exit:
     cmp                  rsi,                    1
      je  heapSort_12_if_true
     mov                  rsi,                  rdi
     sal                  rsi,                    3
     mov                  r11,       qword [@a + 0]
     add                  r11,                  rsi
     mov                   r8,                   r9
     sal                   r8,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                   r8
     mov                   r8,      qword [r11 + 0]
     cmp                   r8,      qword [rsi + 0]
      jg  heapSort_15_if_true
     add                  r10,                    1
     cmp                  r10,       qword [@n + 0]
      jl heapSort_2_loop_body
     mov                  rax,                    0
     jmp heapSort_5_block_exit
heapSort_12_if_true:
     mov                  rsi,                  rdi
     sal                  rsi,                    1
     add                  rsi,                    1
     mov                   r9,                  rsi
     mov                  rsi,                  rdi
     sal                  rsi,                    3
     mov                  r11,       qword [@a + 0]
     add                  r11,                  rsi
     mov                   r8,                   r9
     sal                   r8,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                   r8
     mov                   r8,      qword [r11 + 0]
     cmp                   r8,      qword [rsi + 0]
      jg  heapSort_15_if_true
     add                  r10,                    1
     cmp                  r10,       qword [@n + 0]
      jl heapSort_2_loop_body
     mov                  rax,                    0
     jmp heapSort_5_block_exit
heapSort_14_if_exit:
     mov                  rsi,                  rdi
     sal                  rsi,                    3
     mov                  r11,       qword [@a + 0]
     add                  r11,                  rsi
     mov                   r8,                   r9
     sal                   r8,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                   r8
     mov                   r8,      qword [r11 + 0]
     cmp                   r8,      qword [rsi + 0]
      jg  heapSort_15_if_true
     add                  r10,                    1
     cmp                  r10,       qword [@n + 0]
      jl heapSort_2_loop_body
     mov                  rax,                    0
     jmp heapSort_5_block_exit
heapSort_15_if_true:
     mov                   r8,                  rdi
     sal                   r8,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                   r8
     mov                  rsi,      qword [rsi + 0]
     mov                   r8,                  rdi
     sal                   r8,                    3
     mov                  rdi,       qword [@a + 0]
     add                  rdi,                   r8
     mov                  r11,                   r9
     sal                  r11,                    3
     mov                   r8,       qword [@a + 0]
     add                   r8,                  r11
     mov                  rax,       qword [r8 + 0]
     mov      qword [rdi + 0],                  rax
     mov                  rdi,                   r9
     sal                  rdi,                    3
     mov                   r8,       qword [@a + 0]
     add                   r8,                  rdi
     mov       qword [r8 + 0],                  rsi
     mov                  rdi,                   r9
     mov                  rsi,                  rdi
     sal                  rsi,                    1
     cmp                  rsi,                  rbx
      jl heapSort_8_loop_body
     add                  r10,                    1
     cmp                  r10,       qword [@n + 0]
      jl heapSort_2_loop_body
     mov                  rax,                    0
     jmp heapSort_5_block_exit
heapSort_3_loop_increment:
     add                  r10,                    1
     cmp                  r10,       qword [@n + 0]
      jl heapSort_2_loop_body
     mov                  rax,                    0
     jmp heapSort_5_block_exit
heapSort_4_loop_exit:
     mov                  rax,                    0
heapSort_5_block_exit:
     pop                  rbx
     add                  rsp,                   16
     pop                  rbp
     ret
makeHeap:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   16
makeHeap_0_block_enter:
     mov                  rsi,       qword [@n + 0]
     sub                  rsi,                    1
     mov                  rax,                  rsi
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                   r9,                  rsi
     cmp                   r9,                    0
     jge makeHeap_2_loop_body
     mov                  rax,                    0
     jmp makeHeap_13_block_exit
makeHeap_1_loop_condition:
     cmp                   r9,                    0
     jge makeHeap_2_loop_body
     mov                  rax,                    0
     jmp makeHeap_13_block_exit
makeHeap_2_loop_body:
     mov                  rsi,                   r9
     sal                  rsi,                    1
     mov                   r8,                  rsi
     mov                  rsi,                   r9
     sal                  rsi,                    1
     add                  rsi,                    1
     cmp                  rsi,       qword [@n + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
     jne makeHeap_4_logical_false
     mov                  rsi,                   r9
     sal                  rsi,                    1
     add                  rsi,                    1
     sal                  rsi,                    3
     mov                  r10,       qword [@a + 0]
     add                  r10,                  rsi
     mov                  rsi,                   r9
     sal                  rsi,                    1
     sal                  rsi,                    3
     mov                  rdi,       qword [@a + 0]
     add                  rdi,                  rsi
     mov                  rsi,      qword [r10 + 0]
     cmp                  rsi,      qword [rdi + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je   makeHeap_6_if_true
     mov                  rdi,                   r9
     sal                  rdi,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rdi
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  rdi,       qword [@a + 0]
     add                  rdi,                  r10
     mov                  rsi,      qword [rsi + 0]
     cmp                  rsi,      qword [rdi + 0]
      jg makeHeap_14_inline_enter
     sub                   r9,                    1
     cmp                   r9,                    0
     jge makeHeap_2_loop_body
     mov                  rax,                    0
     jmp makeHeap_13_block_exit
makeHeap_3_logical_true:
     mov                  rsi,                   r9
     sal                  rsi,                    1
     add                  rsi,                    1
     sal                  rsi,                    3
     mov                  r10,       qword [@a + 0]
     add                  r10,                  rsi
     mov                  rsi,                   r9
     sal                  rsi,                    1
     sal                  rsi,                    3
     mov                  rdi,       qword [@a + 0]
     add                  rdi,                  rsi
     mov                  rsi,      qword [r10 + 0]
     cmp                  rsi,      qword [rdi + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je   makeHeap_6_if_true
     mov                  rdi,                   r9
     sal                  rdi,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rdi
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  rdi,       qword [@a + 0]
     add                  rdi,                  r10
     mov                  rsi,      qword [rsi + 0]
     cmp                  rsi,      qword [rdi + 0]
      jg makeHeap_14_inline_enter
     sub                   r9,                    1
     cmp                   r9,                    0
     jge makeHeap_2_loop_body
     mov                  rax,                    0
     jmp makeHeap_13_block_exit
makeHeap_4_logical_false:
     mov                  rsi,                    0
     cmp                  rsi,                    1
      je   makeHeap_6_if_true
     mov                  rdi,                   r9
     sal                  rdi,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rdi
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  rdi,       qword [@a + 0]
     add                  rdi,                  r10
     mov                  rsi,      qword [rsi + 0]
     cmp                  rsi,      qword [rdi + 0]
      jg makeHeap_14_inline_enter
     sub                   r9,                    1
     cmp                   r9,                    0
     jge makeHeap_2_loop_body
     mov                  rax,                    0
     jmp makeHeap_13_block_exit
makeHeap_5_logical_exit:
     cmp                  rsi,                    1
      je   makeHeap_6_if_true
     mov                  rdi,                   r9
     sal                  rdi,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rdi
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  rdi,       qword [@a + 0]
     add                  rdi,                  r10
     mov                  rsi,      qword [rsi + 0]
     cmp                  rsi,      qword [rdi + 0]
      jg makeHeap_14_inline_enter
     sub                   r9,                    1
     cmp                   r9,                    0
     jge makeHeap_2_loop_body
     mov                  rax,                    0
     jmp makeHeap_13_block_exit
makeHeap_6_if_true:
     mov                  rsi,                   r9
     sal                  rsi,                    1
     add                  rsi,                    1
     mov                   r8,                  rsi
     mov                  rdi,                   r9
     sal                  rdi,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rdi
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  rdi,       qword [@a + 0]
     add                  rdi,                  r10
     mov                  rsi,      qword [rsi + 0]
     cmp                  rsi,      qword [rdi + 0]
      jg makeHeap_14_inline_enter
     sub                   r9,                    1
     cmp                   r9,                    0
     jge makeHeap_2_loop_body
     mov                  rax,                    0
     jmp makeHeap_13_block_exit
makeHeap_8_if_exit:
     mov                  rdi,                   r9
     sal                  rdi,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rdi
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  rdi,       qword [@a + 0]
     add                  rdi,                  r10
     mov                  rsi,      qword [rsi + 0]
     cmp                  rsi,      qword [rdi + 0]
      jg makeHeap_14_inline_enter
     sub                   r9,                    1
     cmp                   r9,                    0
     jge makeHeap_2_loop_body
     mov                  rax,                    0
     jmp makeHeap_13_block_exit
makeHeap_14_inline_enter:
     mov                  rdi,                   r9
     sal                  rdi,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rdi
     mov                  rdi,      qword [rsi + 0]
     mov                  rsi,                   r9
     sal                  rsi,                    3
     mov                  r11,       qword [@a + 0]
     add                  r11,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  r10,       qword [@a + 0]
     add                  r10,                  rsi
     mov                  rax,      qword [r10 + 0]
     mov      qword [r11 + 0],                  rax
     sal                   r8,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                   r8
     mov      qword [rsi + 0],                  rdi
     sub                   r9,                    1
     cmp                   r9,                    0
     jge makeHeap_2_loop_body
     mov                  rax,                    0
     jmp makeHeap_13_block_exit
makeHeap_11_if_exit:
     sub                   r9,                    1
     cmp                   r9,                    0
     jge makeHeap_2_loop_body
     mov                  rax,                    0
     jmp makeHeap_13_block_exit
makeHeap_12_loop_exit:
     mov                  rax,                    0
makeHeap_13_block_exit:
     add                  rsp,                   16
     pop                  rbp
     ret
SECTION .data
      dq                    1
__const_string_0:
	db  32,   0
      dq                    1
__const_string_1:
	db  10,   0
SECTION .bss
@n:
    resq                    1
@a:
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
