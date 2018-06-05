global __global_init
global func
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
func:
    push                  rbp
     mov                  rbp,                  rsp
func_0_block_enter:
     mov                   r8,                  rsi
     mov                  rsi,                  rdx
     add                  rdi,                   r8
     add                  rdi,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,           1073741823
     mov                  rax,                  rsi
func_1_block_exit:
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
    push                   r8
     sub                  rsp,                    8
    call               getInt
     add                  rsp,                    8
     pop                   r8
     mov                  r11,                  rax
     mov                  rbx,                  r11
     inc                  rbx
     sal                  rbx,                    3
    push                   r8
    push                  rsi
    push                  r11
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  r11
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  r11
     add                  rsi,                    8
     mov                  r12,                  rsi
     mov                  rdi,                  rsi
     sub                  rbx,                    8
     add                  rdi,                  rbx
     cmp                  r12,                  rdi
      jl   main_2_malloc_body
     mov                  r15,                  rsi
     mov                  rsi,                  r11
     inc                  rsi
     sal                  rsi,                    3
    push                  rsi
    push                   r8
    push                  r11
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  r11
     pop                   r8
     pop                  rsi
     mov                  r12,                  rax
     mov      qword [r12 + 0],                  r11
     add                  r12,                    8
     mov                  rdi,                  r12
     mov                  rbx,                  r12
     sub                  rsi,                    8
     add                  rbx,                  rsi
     cmp                  rdi,                  rbx
      jl   main_5_malloc_body
     mov                   r9,                  r12
     mov                  rbx,                  r11
     inc                  rbx
     sal                  rbx,                    3
    push                   r8
    push                  r11
    push                   r9
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                   r9
     pop                  r11
     pop                   r8
     mov                  r12,                  rax
     mov      qword [r12 + 0],                  r11
     add                  r12,                    8
     mov                  rdi,                  r12
     mov                  rsi,                  r12
     sub                  rbx,                    8
     add                  rsi,                  rbx
     cmp                  rdi,                  rsi
      jl   main_8_malloc_body
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_11_loop_body
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_19_loop_body
     xor                  rbx,                  rbx
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_34_loop_body
     mov                  rdi,                  rbx
    call            print_Int
     mov                  rax,                    0
     jmp   main_41_block_exit
main_1_malloc_condition:
     cmp                  r12,                  rdi
      jl   main_2_malloc_body
     mov                  r15,                  rsi
     mov                  rsi,                  r11
     inc                  rsi
     sal                  rsi,                    3
    push                  rsi
    push                   r8
    push                  r11
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  r11
     pop                   r8
     pop                  rsi
     mov                  r12,                  rax
     mov      qword [r12 + 0],                  r11
     add                  r12,                    8
     mov                  rdi,                  r12
     mov                  rbx,                  r12
     sub                  rsi,                    8
     add                  rbx,                  rsi
     cmp                  rdi,                  rbx
      jl   main_5_malloc_body
     mov                   r9,                  r12
     mov                  rbx,                  r11
     inc                  rbx
     sal                  rbx,                    3
    push                   r8
    push                  r11
    push                   r9
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                   r9
     pop                  r11
     pop                   r8
     mov                  r12,                  rax
     mov      qword [r12 + 0],                  r11
     add                  r12,                    8
     mov                  rdi,                  r12
     mov                  rsi,                  r12
     sub                  rbx,                    8
     add                  rsi,                  rbx
     cmp                  rdi,                  rsi
      jl   main_8_malloc_body
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_11_loop_body
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_19_loop_body
     xor                  rbx,                  rbx
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_34_loop_body
     mov                  rdi,                  rbx
    call            print_Int
     mov                  rax,                    0
     jmp   main_41_block_exit
main_2_malloc_body:
     mov                  rbx,                  r11
     inc                  rbx
     sal                  rbx,                    3
    push                   r8
    push                  rsi
    push                  r11
    push                  rdi
     mov                  rdi,                  rbx
    call               malloc
     pop                  rdi
     pop                  r11
     pop                  rsi
     pop                   r8
     mov                  rbx,                  rax
     mov      qword [rbx + 0],                  r11
     add                  rbx,                    8
     mov      qword [r12 + 0],                  rbx
     add                  r12,                    8
     cmp                  r12,                  rdi
      jl   main_2_malloc_body
     mov                  r15,                  rsi
     mov                  rsi,                  r11
     inc                  rsi
     sal                  rsi,                    3
    push                  rsi
    push                   r8
    push                  r11
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  r11
     pop                   r8
     pop                  rsi
     mov                  r12,                  rax
     mov      qword [r12 + 0],                  r11
     add                  r12,                    8
     mov                  rdi,                  r12
     mov                  rbx,                  r12
     sub                  rsi,                    8
     add                  rbx,                  rsi
     cmp                  rdi,                  rbx
      jl   main_5_malloc_body
     mov                   r9,                  r12
     mov                  rbx,                  r11
     inc                  rbx
     sal                  rbx,                    3
    push                   r8
    push                  r11
    push                   r9
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                   r9
     pop                  r11
     pop                   r8
     mov                  r12,                  rax
     mov      qword [r12 + 0],                  r11
     add                  r12,                    8
     mov                  rdi,                  r12
     mov                  rsi,                  r12
     sub                  rbx,                    8
     add                  rsi,                  rbx
     cmp                  rdi,                  rsi
      jl   main_8_malloc_body
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_11_loop_body
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_19_loop_body
     xor                  rbx,                  rbx
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_34_loop_body
     mov                  rdi,                  rbx
    call            print_Int
     mov                  rax,                    0
     jmp   main_41_block_exit
main_3_malloc_exit:
     mov                  r15,                  rsi
     mov                  rsi,                  r11
     inc                  rsi
     sal                  rsi,                    3
    push                  rsi
    push                   r8
    push                  r11
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  r11
     pop                   r8
     pop                  rsi
     mov                  r12,                  rax
     mov      qword [r12 + 0],                  r11
     add                  r12,                    8
     mov                  rdi,                  r12
     mov                  rbx,                  r12
     sub                  rsi,                    8
     add                  rbx,                  rsi
     cmp                  rdi,                  rbx
      jl   main_5_malloc_body
     mov                   r9,                  r12
     mov                  rbx,                  r11
     inc                  rbx
     sal                  rbx,                    3
    push                   r8
    push                  r11
    push                   r9
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                   r9
     pop                  r11
     pop                   r8
     mov                  r12,                  rax
     mov      qword [r12 + 0],                  r11
     add                  r12,                    8
     mov                  rdi,                  r12
     mov                  rsi,                  r12
     sub                  rbx,                    8
     add                  rsi,                  rbx
     cmp                  rdi,                  rsi
      jl   main_8_malloc_body
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_11_loop_body
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_19_loop_body
     xor                  rbx,                  rbx
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_34_loop_body
     mov                  rdi,                  rbx
    call            print_Int
     mov                  rax,                    0
     jmp   main_41_block_exit
main_4_malloc_condition:
     cmp                  rdi,                  rbx
      jl   main_5_malloc_body
     mov                   r9,                  r12
     mov                  rbx,                  r11
     inc                  rbx
     sal                  rbx,                    3
    push                   r8
    push                  r11
    push                   r9
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                   r9
     pop                  r11
     pop                   r8
     mov                  r12,                  rax
     mov      qword [r12 + 0],                  r11
     add                  r12,                    8
     mov                  rdi,                  r12
     mov                  rsi,                  r12
     sub                  rbx,                    8
     add                  rsi,                  rbx
     cmp                  rdi,                  rsi
      jl   main_8_malloc_body
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_11_loop_body
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_19_loop_body
     xor                  rbx,                  rbx
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_34_loop_body
     mov                  rdi,                  rbx
    call            print_Int
     mov                  rax,                    0
     jmp   main_41_block_exit
main_5_malloc_body:
     mov                  rsi,                  r11
     inc                  rsi
     sal                  rsi,                    3
    push                   r8
    push                  r11
    push                  rsi
    push                  rdi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rdi
     pop                  rsi
     pop                  r11
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  r11
     add                  rsi,                    8
     mov      qword [rdi + 0],                  rsi
     add                  rdi,                    8
     cmp                  rdi,                  rbx
      jl   main_5_malloc_body
     mov                   r9,                  r12
     mov                  rbx,                  r11
     inc                  rbx
     sal                  rbx,                    3
    push                   r8
    push                  r11
    push                   r9
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                   r9
     pop                  r11
     pop                   r8
     mov                  r12,                  rax
     mov      qword [r12 + 0],                  r11
     add                  r12,                    8
     mov                  rdi,                  r12
     mov                  rsi,                  r12
     sub                  rbx,                    8
     add                  rsi,                  rbx
     cmp                  rdi,                  rsi
      jl   main_8_malloc_body
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_11_loop_body
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_19_loop_body
     xor                  rbx,                  rbx
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_34_loop_body
     mov                  rdi,                  rbx
    call            print_Int
     mov                  rax,                    0
     jmp   main_41_block_exit
main_6_malloc_exit:
     mov                   r9,                  r12
     mov                  rbx,                  r11
     inc                  rbx
     sal                  rbx,                    3
    push                   r8
    push                  r11
    push                   r9
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                   r9
     pop                  r11
     pop                   r8
     mov                  r12,                  rax
     mov      qword [r12 + 0],                  r11
     add                  r12,                    8
     mov                  rdi,                  r12
     mov                  rsi,                  r12
     sub                  rbx,                    8
     add                  rsi,                  rbx
     cmp                  rdi,                  rsi
      jl   main_8_malloc_body
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_11_loop_body
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_19_loop_body
     xor                  rbx,                  rbx
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_34_loop_body
     mov                  rdi,                  rbx
    call            print_Int
     mov                  rax,                    0
     jmp   main_41_block_exit
main_7_malloc_condition:
     cmp                  rdi,                  rsi
      jl   main_8_malloc_body
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_11_loop_body
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_19_loop_body
     xor                  rbx,                  rbx
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_34_loop_body
     mov                  rdi,                  rbx
    call            print_Int
     mov                  rax,                    0
     jmp   main_41_block_exit
main_8_malloc_body:
     mov                  rbx,                  r11
     inc                  rbx
     sal                  rbx,                    3
    push                  rdi
    push                   r8
    push                  r11
    push                  rsi
    push                   r9
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     pop                  r11
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov      qword [rbx + 0],                  r11
     add                  rbx,                    8
     mov      qword [rdi + 0],                  rbx
     add                  rdi,                    8
     cmp                  rdi,                  rsi
      jl   main_8_malloc_body
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_11_loop_body
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_19_loop_body
     xor                  rbx,                  rbx
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_34_loop_body
     mov                  rdi,                  rbx
    call            print_Int
     mov                  rax,                    0
     jmp   main_41_block_exit
main_9_malloc_exit:
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_11_loop_body
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_19_loop_body
     xor                  rbx,                  rbx
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_34_loop_body
     mov                  rdi,                  rbx
    call            print_Int
     mov                  rax,                    0
     jmp   main_41_block_exit
main_10_loop_condition:
     cmp                  r13,                  r11
      jl    main_11_loop_body
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_19_loop_body
     xor                  rbx,                  rbx
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_34_loop_body
     mov                  rdi,                  rbx
    call            print_Int
     mov                  rax,                    0
     jmp   main_41_block_exit
main_11_loop_body:
     xor                   r8,                   r8
     cmp                   r8,                  r11
      jl    main_13_loop_body
     inc                  r13
     cmp                  r13,                  r11
      jl    main_11_loop_body
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_19_loop_body
     xor                  rbx,                  rbx
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_34_loop_body
     mov                  rdi,                  rbx
    call            print_Int
     mov                  rax,                    0
     jmp   main_41_block_exit
main_12_loop_condition:
     cmp                   r8,                  r11
      jl    main_13_loop_body
     inc                  r13
     cmp                  r13,                  r11
      jl    main_11_loop_body
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_19_loop_body
     xor                  rbx,                  rbx
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_34_loop_body
     mov                  rdi,                  rbx
    call            print_Int
     mov                  rax,                    0
     jmp   main_41_block_exit
main_13_loop_body:
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  rbx,                  r15
     add                  rbx,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rbx,      qword [rbx + 0]
     add                  rbx,                  rsi
     mov                  rsi,                  r13
     add                  rsi,                   r8
     mov      qword [rbx + 0],                  rsi
     inc                   r8
     cmp                   r8,                  r11
      jl    main_13_loop_body
     inc                  r13
     cmp                  r13,                  r11
      jl    main_11_loop_body
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_19_loop_body
     xor                  rbx,                  rbx
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_34_loop_body
     mov                  rdi,                  rbx
    call            print_Int
     mov                  rax,                    0
     jmp   main_41_block_exit
main_14_loop_increment:
     inc                   r8
     cmp                   r8,                  r11
      jl    main_13_loop_body
     inc                  r13
     cmp                  r13,                  r11
      jl    main_11_loop_body
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_19_loop_body
     xor                  rbx,                  rbx
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_34_loop_body
     mov                  rdi,                  rbx
    call            print_Int
     mov                  rax,                    0
     jmp   main_41_block_exit
main_16_loop_increment:
     inc                  r13
     cmp                  r13,                  r11
      jl    main_11_loop_body
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_19_loop_body
     xor                  rbx,                  rbx
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_34_loop_body
     mov                  rdi,                  rbx
    call            print_Int
     mov                  rax,                    0
     jmp   main_41_block_exit
main_17_loop_exit:
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_19_loop_body
     xor                  rbx,                  rbx
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_34_loop_body
     mov                  rdi,                  rbx
    call            print_Int
     mov                  rax,                    0
     jmp   main_41_block_exit
main_18_loop_condition:
     cmp                  r13,                  r11
      jl    main_19_loop_body
     xor                  rbx,                  rbx
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_34_loop_body
     mov                  rdi,                  rbx
    call            print_Int
     mov                  rax,                    0
     jmp   main_41_block_exit
main_19_loop_body:
     xor                   r8,                   r8
     cmp                   r8,                  r11
      jl main_42_resort_condition
     inc                  r13
     cmp                  r13,                  r11
      jl    main_19_loop_body
     xor                  rbx,                  rbx
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_34_loop_body
     mov                  rdi,                  rbx
    call            print_Int
     mov                  rax,                    0
     jmp   main_41_block_exit
main_20_loop_condition:
     cmp                   r8,                  r11
      jl main_42_resort_condition
     inc                  r13
     cmp                  r13,                  r11
      jl    main_19_loop_body
     xor                  rbx,                  rbx
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_34_loop_body
     mov                  rdi,                  rbx
    call            print_Int
     mov                  rax,                    0
     jmp   main_41_block_exit
main_42_resort_condition:
     cmp                   r8,                  r13
     jge    main_21_loop_body
     inc                   r8
     cmp                   r8,                  r11
      jl main_42_resort_condition
     inc                  r13
     cmp                  r13,                  r11
      jl    main_19_loop_body
     xor                  rbx,                  rbx
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_34_loop_body
     mov                  rdi,                  rbx
    call            print_Int
     mov                  rax,                    0
     jmp   main_41_block_exit
main_21_loop_body:
     xor                  r14,                  r14
     cmp                  r14,                  r11
      jl      main_24_if_true
     inc                   r8
     cmp                   r8,                  r11
      jl main_42_resort_condition
     inc                  r13
     cmp                  r13,                  r11
      jl    main_19_loop_body
     xor                  rbx,                  rbx
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_34_loop_body
     mov                  rdi,                  rbx
    call            print_Int
     mov                  rax,                    0
     jmp   main_41_block_exit
main_22_loop_condition:
     cmp                  r14,                  r11
      jl      main_24_if_true
     inc                   r8
     cmp                   r8,                  r11
      jl main_42_resort_condition
     inc                  r13
     cmp                  r13,                  r11
      jl    main_19_loop_body
     xor                  rbx,                  rbx
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_34_loop_body
     mov                  rdi,                  rbx
    call            print_Int
     mov                  rax,                    0
     jmp   main_41_block_exit
main_24_if_true:
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  rbx,                   r9
     add                  rbx,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,      qword [rbx + 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  rbx,                   r9
     add                  rbx,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  r10,      qword [rbx + 0]
     add                  r10,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  rbx,                  r15
     add                  rbx,                  rsi
     mov                  rsi,                  r14
     sal                  rsi,                    3
     mov                  r12,      qword [rbx + 0]
     add                  r12,                  rsi
     mov                  rsi,                  r14
     sal                  rsi,                    3
     mov                  rbx,                  r15
     add                  rbx,                  rsi
     mov      qword [rbp - 8],                   r8
     sal      qword [rbp - 8],                    3
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,      qword [rbp - 8]
     mov                  rbx,      qword [r10 + 0]
     mov                  r12,      qword [r12 + 0]
     mov                  rsi,      qword [rsi + 0]
     add                  rbx,                  r12
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,           1073741823
     mov      qword [rdi + 0],                  rsi
     inc                  r14
     cmp                  r14,                  r11
      jl      main_24_if_true
     inc                   r8
     cmp                   r8,                  r11
      jl main_42_resort_condition
     inc                  r13
     cmp                  r13,                  r11
      jl    main_19_loop_body
     xor                  rbx,                  rbx
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_34_loop_body
     mov                  rdi,                  rbx
    call            print_Int
     mov                  rax,                    0
     jmp   main_41_block_exit
main_42_inline_enter:
     add                  rbx,                  r12
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,           1073741823
     mov      qword [rdi + 0],                  rsi
     inc                  r14
     cmp                  r14,                  r11
      jl      main_24_if_true
     inc                   r8
     cmp                   r8,                  r11
      jl main_42_resort_condition
     inc                  r13
     cmp                  r13,                  r11
      jl    main_19_loop_body
     xor                  rbx,                  rbx
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_34_loop_body
     mov                  rdi,                  rbx
    call            print_Int
     mov                  rax,                    0
     jmp   main_41_block_exit
main_43_inline_exit:
     mov      qword [rdi + 0],                  rsi
     inc                  r14
     cmp                  r14,                  r11
      jl      main_24_if_true
     inc                   r8
     cmp                   r8,                  r11
      jl main_42_resort_condition
     inc                  r13
     cmp                  r13,                  r11
      jl    main_19_loop_body
     xor                  rbx,                  rbx
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_34_loop_body
     mov                  rdi,                  rbx
    call            print_Int
     mov                  rax,                    0
     jmp   main_41_block_exit
main_27_loop_increment:
     inc                  r14
     cmp                  r14,                  r11
      jl      main_24_if_true
     inc                   r8
     cmp                   r8,                  r11
      jl main_42_resort_condition
     inc                  r13
     cmp                  r13,                  r11
      jl    main_19_loop_body
     xor                  rbx,                  rbx
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_34_loop_body
     mov                  rdi,                  rbx
    call            print_Int
     mov                  rax,                    0
     jmp   main_41_block_exit
main_29_loop_increment:
     inc                   r8
     cmp                   r8,                  r11
      jl main_42_resort_condition
     inc                  r13
     cmp                  r13,                  r11
      jl    main_19_loop_body
     xor                  rbx,                  rbx
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_34_loop_body
     mov                  rdi,                  rbx
    call            print_Int
     mov                  rax,                    0
     jmp   main_41_block_exit
main_31_loop_increment:
     inc                  r13
     cmp                  r13,                  r11
      jl    main_19_loop_body
     xor                  rbx,                  rbx
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_34_loop_body
     mov                  rdi,                  rbx
    call            print_Int
     mov                  rax,                    0
     jmp   main_41_block_exit
main_32_loop_exit:
     xor                  rbx,                  rbx
     xor                  r13,                  r13
     cmp                  r13,                  r11
      jl    main_34_loop_body
     mov                  rdi,                  rbx
    call            print_Int
     mov                  rax,                    0
     jmp   main_41_block_exit
main_33_loop_condition:
     cmp                  r13,                  r11
      jl    main_34_loop_body
     mov                  rdi,                  rbx
    call            print_Int
     mov                  rax,                    0
     jmp   main_41_block_exit
main_34_loop_body:
     xor                   r8,                   r8
     cmp                   r8,                  r11
      jl    main_36_loop_body
     inc                  r13
     cmp                  r13,                  r11
      jl    main_34_loop_body
     mov                  rdi,                  rbx
    call            print_Int
     mov                  rax,                    0
     jmp   main_41_block_exit
main_35_loop_condition:
     cmp                   r8,                  r11
      jl    main_36_loop_body
     inc                  r13
     cmp                  r13,                  r11
      jl    main_34_loop_body
     mov                  rdi,                  rbx
    call            print_Int
     mov                  rax,                    0
     jmp   main_41_block_exit
main_36_loop_body:
     mov                  rdi,                  r13
     sal                  rdi,                    3
     mov                  rsi,                   r9
     add                  rsi,                  rdi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,      qword [rsi + 0]
     add                  rsi,                  rdi
     add                  rbx,      qword [rsi + 0]
     mov                  rsi,                  rbx
     and                  rsi,           1073741823
     mov                  rbx,                  rsi
     inc                   r8
     cmp                   r8,                  r11
      jl    main_36_loop_body
     inc                  r13
     cmp                  r13,                  r11
      jl    main_34_loop_body
     mov                  rdi,                  rbx
    call            print_Int
     mov                  rax,                    0
     jmp   main_41_block_exit
main_37_loop_increment:
     inc                   r8
     cmp                   r8,                  r11
      jl    main_36_loop_body
     inc                  r13
     cmp                  r13,                  r11
      jl    main_34_loop_body
     mov                  rdi,                  rbx
    call            print_Int
     mov                  rax,                    0
     jmp   main_41_block_exit
main_39_loop_increment:
     inc                  r13
     cmp                  r13,                  r11
      jl    main_34_loop_body
     mov                  rdi,                  rbx
    call            print_Int
     mov                  rax,                    0
     jmp   main_41_block_exit
main_40_loop_exit:
     mov                  rdi,                  rbx
    call            print_Int
     mov                  rax,                    0
main_41_block_exit:
     pop                  rbx
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     add                  rsp,                    8
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
