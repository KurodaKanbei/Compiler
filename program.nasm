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
    push                  r12
    push                  r14
    push                  r13
    push                  rbx
main_0_block_enter:
     mov                   r8,                    5
     mov                  rsi,                   10
     mov                  rdi,                  rsi
     add                  rdi,                    1
     sal                  rdi,                    3
    push                  rsi
    push                  rdi
    push                   r8
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                   r8
     pop                  rdi
     pop                  rsi
     mov                  rdi,                  rax
     mov      qword [rdi + 0],                  rsi
     add                  rdi,                    8
     mov                   r9,                    2
     add                   r9,                    1
     sal                   r9,                    3
    push                   r9
    push                  rsi
    push                   r8
    push                  rdi
     mov                  rdi,                   r9
    call               malloc
     pop                  rdi
     pop                   r8
     pop                  rsi
     pop                   r9
     mov                   r9,                  rax
     mov       qword [r9 + 0],                    2
     add                   r9,                    8
     mov                  r10,                   r9
     mov                   r9,                   r8
     add                   r9,                    1
     sal                   r9,                    3
    push                   r9
    push                  rsi
    push                  r10
    push                   r8
    push                  rdi
     mov                  rdi,                   r9
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                   r8
     pop                  r10
     pop                  rsi
     pop                   r9
     mov                   r9,                  rax
     mov       qword [r9 + 0],                   r8
     add                   r9,                    8
     mov                  r11,                    0
     sal                  r11,                    3
     mov                  rbx,                  r10
     add                  rbx,                  r11
     mov      qword [rbx + 0],                   r9
     mov                  r11,                    1
     sal                  r11,                    3
     mov                  rbx,                  r10
     add                  rbx,                  r11
     mov      qword [rbx + 0],                  rdi
     mov                  rbx,                    0
     mov                  r11,                    0
main_1_loop_condition:
     cmp                  r11,                    2
     mov                  r12,                    0
    setl                 r12b
     cmp                  r12,                    1
      je     main_2_loop_body
     jmp     main_8_loop_exit
main_2_loop_body:
     mov                  r12,                    0
main_3_loop_condition:
     cmp                  r12,                   r8
     mov                  r13,                    0
    setl                 r13b
     cmp                  r13,                    1
      je     main_4_loop_body
     jmp     main_6_loop_exit
main_4_loop_body:
     mov                  r14,                  r11
     sal                  r14,                    3
     mov                  r13,                  r10
     add                  r13,                  r14
     mov                  r14,                  r12
     sal                  r14,                    3
     mov                  r13,      qword [r13 + 0]
     add                  r13,                  r14
     add                  rbx,                    1
     mov      qword [r13 + 0],                  rbx
main_5_loop_increment:
     add                  r12,                    1
     jmp main_3_loop_condition
main_6_loop_exit:
main_7_loop_increment:
     add                  r11,                    1
     jmp main_1_loop_condition
main_8_loop_exit:
     mov                  r12,                   r8
main_9_loop_condition:
     cmp                  r12,                  rsi
     mov                  r11,                    0
    setl                 r11b
     cmp                  r11,                    1
      je    main_10_loop_body
     jmp    main_12_loop_exit
main_10_loop_body:
     mov                  r13,                    1
     sal                  r13,                    3
     mov                  r11,                  r10
     add                  r11,                  r13
     mov                  r13,                  r12
     sal                  r13,                    3
     mov                  r11,      qword [r11 + 0]
     add                  r11,                  r13
     add                  rbx,                    1
     mov      qword [r11 + 0],                  rbx
main_11_loop_increment:
     add                  r12,                    1
     jmp main_9_loop_condition
main_12_loop_exit:
     mov                  r10,                    0
     mov                  r11,                    0
main_13_loop_condition:
     cmp                  r11,                   r8
     mov                  rbx,                    0
    setl                   bl
     cmp                  rbx,                    1
      je    main_14_loop_body
     jmp    main_16_loop_exit
main_14_loop_body:
     mov                  rbx,                  r11
     sal                  rbx,                    3
     mov                  r12,                   r9
     add                  r12,                  rbx
     add                  r10,      qword [r12 + 0]
main_15_loop_increment:
     add                  r11,                    1
     jmp main_13_loop_condition
main_16_loop_exit:
     mov                  r11,                    0
main_17_loop_condition:
     cmp                  r11,                  rsi
     mov                   r8,                    0
    setl                  r8b
     cmp                   r8,                    1
      je    main_18_loop_body
     jmp    main_20_loop_exit
main_18_loop_body:
     mov                   r8,                  r11
     sal                   r8,                    3
     mov                   r9,                  rdi
     add                   r9,                   r8
     add                  r10,       qword [r9 + 0]
main_19_loop_increment:
     add                  r11,                    1
     jmp main_17_loop_condition
main_20_loop_exit:
     mov                  rax,                  r10
main_21_block_exit:
     pop                  rbx
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
