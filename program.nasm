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
     jmp __global_init_1_block_exit
__global_init_1_block_exit:
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call        __global_init
    push                  r12
    push                  r13
    push                  rbx
main_0_block_enter:
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
     mov                  rbx,                    0
     jmp main_1_loop_condition
main_1_loop_condition:
     cmp                  rbx,                  100
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je     main_2_loop_body
     jmp     main_4_loop_exit
main_2_loop_body:
     mov                  r12,                  rbx
     sal                  r12,                    3
     mov                  rdi,                  rsi
     add                  rdi,                  r12
     mov                  r12,                  100
     add                  r12,                    1
     sal                  r12,                    3
    push                  rsi
    push                  rdi
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     mov                  r12,                  rax
     mov      qword [r12 + 0],                  100
     add                  r12,                    8
     mov      qword [rdi + 0],                  r12
     jmp main_3_loop_increment
main_3_loop_increment:
     add                  rbx,                    1
     jmp main_1_loop_condition
main_4_loop_exit:
     mov                  rdi,                    0
     mov                  rbx,                    0
     jmp main_5_loop_condition
main_5_loop_condition:
     cmp                  rbx,                  100
     mov                  r12,                    0
    setl                 r12b
     cmp                  r12,                    1
      je     main_6_loop_body
     jmp    main_12_loop_exit
main_6_loop_body:
     mov                  r12,                    0
     jmp main_7_loop_condition
main_7_loop_condition:
     cmp                  r12,                  100
     mov                   r8,                    0
    setl                  r8b
     cmp                   r8,                    1
      je     main_8_loop_body
     jmp    main_10_loop_exit
main_8_loop_body:
     mov                  r13,                  rbx
     sal                  r13,                    3
     mov                   r8,                  rsi
     add                   r8,                  r13
     mov                  r13,                  r12
     sal                  r13,                    3
     mov                   r8,       qword [r8 + 0]
     add                   r8,                  r13
     mov       qword [r8 + 0],                    0
     jmp main_9_loop_increment
main_9_loop_increment:
     add                  r12,                    1
     jmp main_7_loop_condition
main_10_loop_exit:
     jmp main_11_loop_increment
main_11_loop_increment:
     add                  rbx,                    1
     jmp main_5_loop_condition
main_12_loop_exit:
     mov                  rbx,                    0
     jmp main_13_loop_condition
main_13_loop_condition:
     cmp                  rbx,                  100
     mov                  r12,                    0
    setl                 r12b
     cmp                  r12,                    1
      je    main_14_loop_body
     jmp    main_32_loop_exit
main_14_loop_body:
     cmp                  rbx,                   20
     mov                  r12,                    0
    setg                 r12b
     cmp                  r12,                    1
     jne main_16_logical_false
     jmp main_15_logical_true
main_15_logical_true:
     cmp                  rbx,                   80
     mov                  r12,                    0
    setl                 r12b
     jmp main_17_logical_exit
main_16_logical_false:
     mov                  r12,                    0
     jmp main_17_logical_exit
main_17_logical_exit:
     cmp                  r12,                    1
      je      main_18_if_true
     jmp     main_29_if_false
main_18_if_true:
     mov                  r12,                    0
     jmp main_19_loop_condition
main_19_loop_condition:
     cmp                  r12,                  100
     mov                   r8,                    0
    setl                  r8b
     cmp                   r8,                    1
      je    main_20_loop_body
     jmp    main_28_loop_exit
main_20_loop_body:
     cmp                  r12,                    5
     mov                   r8,                    0
    setg                  r8b
     cmp                   r8,                    1
      je main_21_logical_true
     jmp main_22_logical_false
main_21_logical_true:
     mov                   r8,                    1
     jmp main_23_logical_exit
main_22_logical_false:
     cmp                  rbx,                   90
     mov                   r8,                    0
    setl                  r8b
     jmp main_23_logical_exit
main_23_logical_exit:
     cmp                   r8,                    1
      je      main_24_if_true
     jmp     main_25_if_false
main_24_if_true:
     mov                   r8,                  r12
     sal                   r8,                    2
     mov                  rax,                   r8
     mov                  rcx,                  100
     cdq
    idiv                  ecx
     mov                   r8,                  rax
     mov                  r13,                   r8
     mov                   r8,                  r12
     sal                   r8,                    2
     mov                  rax,                   r8
     mov                  rcx,                  100
     cdq
    idiv                  ecx
     mov                   r8,                  rdx
     mov                   r9,                  rbx
     add                   r9,                  r13
     sal                   r9,                    3
     mov                  r13,                  rsi
     add                  r13,                   r9
     sal                   r8,                    3
     mov                  r13,      qword [r13 + 0]
     add                  r13,                   r8
     mov                   r8,                  r12
     add                   r8,                   50
     mov      qword [r13 + 0],                   r8
     jmp      main_26_if_exit
main_25_if_false:
     jmp      main_26_if_exit
main_26_if_exit:
     jmp main_27_loop_increment
main_27_loop_increment:
     add                  r12,                    1
     jmp main_19_loop_condition
main_28_loop_exit:
     jmp      main_30_if_exit
main_29_if_false:
     jmp      main_30_if_exit
main_30_if_exit:
     jmp main_31_loop_increment
main_31_loop_increment:
     add                  rbx,                    1
     jmp main_13_loop_condition
main_32_loop_exit:
     mov                  rbx,                    0
     jmp main_33_loop_condition
main_33_loop_condition:
     cmp                  rbx,                  100
     mov                  r12,                    0
    setl                 r12b
     cmp                  r12,                    1
      je    main_34_loop_body
     jmp    main_40_loop_exit
main_34_loop_body:
     mov                  r12,                    0
     jmp main_35_loop_condition
main_35_loop_condition:
     cmp                  r12,                  100
     mov                   r8,                    0
    setl                  r8b
     cmp                   r8,                    1
      je    main_36_loop_body
     jmp    main_38_loop_exit
main_36_loop_body:
     mov                  r13,                  rbx
     sal                  r13,                    3
     mov                   r8,                  rsi
     add                   r8,                  r13
     mov                  r13,                  r12
     sal                  r13,                    3
     mov                   r8,       qword [r8 + 0]
     add                   r8,                  r13
     add                  rdi,       qword [r8 + 0]
     jmp main_37_loop_increment
main_37_loop_increment:
     add                  r12,                    1
     jmp main_35_loop_condition
main_38_loop_exit:
     jmp main_39_loop_increment
main_39_loop_increment:
     add                  rbx,                    1
     jmp main_33_loop_condition
main_40_loop_exit:
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp   main_41_block_exit
main_41_block_exit:
     pop                  rbx
     pop                  r13
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
