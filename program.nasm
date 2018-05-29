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
    push                  r14
    push                  r13
    push                  rbx
main_0_block_enter:
     mov                  rsi,                10000
     mov                   r8,                    0
     mov                  rbx,                 2800
     mov                  r13,                    0
     mov                  rdi,                    0
     mov                  r12,                 2801
     add                  r12,                    1
     sal                  r12,                    3
    push                  rdi
    push                  rsi
    push                   r8
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     pop                  rdi
     mov                  r12,                  rax
     mov      qword [r12 + 0],                 2801
     add                  r12,                    8
     mov                   r9,                    0
     jmp main_1_loop_condition
main_1_loop_condition:
     mov                  r13,                   r8
     sub                  r13,                  rbx
     cmp                  r13,                    0
     mov                  r13,                    0
   setne                 r13b
     cmp                  r13,                    0
      je     main_4_loop_exit
     jmp     main_2_loop_body
main_2_loop_body:
     mov                  r13,                   r8
     add                   r8,                    1
     mov                   r9,                  r13
     sal                   r9,                    3
     mov                  r13,                  r12
     add                  r13,                   r9
     mov                   r9,                  rsi
     mov                  rax,                   r9
     mov                  rcx,                    5
     cdq
    idiv                  ecx
     mov                   r9,                  rax
     mov      qword [r13 + 0],                   r9
     jmp main_3_loop_increment
main_3_loop_increment:
     jmp main_1_loop_condition
main_4_loop_exit:
     jmp main_5_loop_condition
main_5_loop_condition:
     mov                  rax,                    1
     cmp                  rax,                    0
      je    main_18_loop_exit
     jmp     main_6_loop_body
main_6_loop_body:
     mov                  r13,                    0
     mov                   r8,                  rbx
     sal                   r8,                    1
     mov                   r9,                   r8
     cmp                   r9,                    0
     mov                   r8,                    0
    sete                  r8b
     cmp                   r8,                    1
      je       main_7_if_true
     jmp      main_8_if_false
main_7_if_true:
     jmp    main_18_loop_exit
main_8_if_false:
     jmp       main_9_if_exit
main_9_if_exit:
     mov                   r8,                  rbx
     jmp main_10_loop_condition
main_10_loop_condition:
     mov                  rax,                    1
     cmp                  rax,                    0
      je    main_16_loop_exit
     jmp    main_11_loop_body
main_11_loop_body:
     mov                  r14,                   r8
     sal                  r14,                    3
     mov                  r10,                  r12
     add                  r10,                  r14
     mov                  r14,      qword [r10 + 0]
    imul                  r14,                  rsi
     add                  r13,                  r14
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  r14,                  r12
     add                  r14,                  r10
     sub                   r9,                    1
     mov                  r10,                  r13
     mov                  rax,                  r10
     mov                  rcx,                   r9
     cdq
    idiv                  ecx
     mov                  r10,                  rdx
     mov      qword [r14 + 0],                  r10
     mov                  r14,                   r9
     sub                   r9,                    1
     mov                  rax,                  r13
     mov                  rcx,                  r14
     cdq
    idiv                  ecx
     mov                  r13,                  rax
     sub                   r8,                    1
     cmp                   r8,                    0
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je      main_12_if_true
     jmp     main_13_if_false
main_12_if_true:
     jmp    main_16_loop_exit
main_13_if_false:
     jmp      main_14_if_exit
main_14_if_exit:
     jmp main_15_loop_increment
main_15_loop_increment:
    imul                  r13,                   r8
     jmp main_10_loop_condition
main_16_loop_exit:
     sub                  rbx,                   14
     mov                   r8,                  r13
     mov                  rax,                   r8
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                   r8,                  rax
     add                  rdi,                   r8
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     jmp main_17_loop_increment
main_17_loop_increment:
     mov                  rdi,                  r13
     mov                  rax,                  rdi
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     jmp main_5_loop_condition
main_18_loop_exit:
     mov                  rdi,     __const_string_0
    call                print
     mov                  rax,                    0
     jmp   main_19_block_exit
main_19_block_exit:
     pop                  rbx
     pop                  r13
     pop                  r14
     pop                  r12
     pop                  rbp
     ret
SECTION .data
      dq                    1
__const_string_0:
	db  10,   0
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
