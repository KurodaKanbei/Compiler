global __global_init
global h
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
h:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r12
    push                  rbx
h_0_block_enter:
     mov                  rsi,                  rdi
     cmp                  rsi,                    0
     mov                  rbx,                    0
    sete                   bl
     cmp                  rbx,                    1
      je     h_1_logical_true
     jmp    h_2_logical_false
h_1_logical_true:
     mov                  rbx,                    1
     jmp     h_3_logical_exit
h_2_logical_false:
     cmp                  rsi,                    1
     mov                  rbx,                    0
    sete                   bl
h_3_logical_exit:
     cmp                  rbx,                    1
      je          h_4_if_true
     jmp         h_5_if_false
h_4_if_true:
     mov                  rax,                    1
     jmp      h_11_block_exit
h_5_if_false:
h_6_if_exit:
     mov                  rbx,                    0
     mov                  r12,                    0
h_7_loop_condition:
     cmp                  r12,                  rsi
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je        h_8_loop_body
     jmp       h_10_loop_exit
h_8_loop_body:
     mov                  rdi,                  r12
    push                  rsi
     sub                  rsp,                    8
    call                    h
     add                  rsp,                    8
     pop                  rsi
     mov                   r8,                  rax
     mov                  rdi,                  rsi
     sub                  rdi,                    1
     sub                  rdi,                  r12
    push                   r8
    push                  rsi
    call                    h
     pop                  rsi
     pop                   r8
     mov                  rdi,                  rax
    imul                   r8,                  rdi
     add                  rbx,                   r8
h_9_loop_increment:
     add                  r12,                    1
     jmp   h_7_loop_condition
h_10_loop_exit:
     mov                  rax,                  rbx
h_11_block_exit:
     pop                  rbx
     pop                  r12
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call        __global_init
    push                  r12
    push                  rbx
main_0_block_enter:
     mov                  rsi,                   17
main_2_inline_enter:
     cmp                  rsi,                    0
     mov                  rbx,                    0
    sete                   bl
     cmp                  rbx,                    1
      je  main_3_logical_true
     jmp main_4_logical_false
main_3_logical_true:
     mov                  rbx,                    1
     jmp  main_5_logical_exit
main_4_logical_false:
     cmp                  rsi,                    1
     mov                  rbx,                    0
    sete                   bl
main_5_logical_exit:
     cmp                  rbx,                    1
      je       main_6_if_true
     jmp      main_7_if_false
main_6_if_true:
     mov                  rsi,                    1
     jmp  main_13_inline_exit
main_7_if_false:
main_8_if_exit:
     mov                  rbx,                    0
     mov                  r12,                    0
main_9_loop_condition:
     cmp                  r12,                  rsi
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je    main_10_loop_body
     jmp    main_12_loop_exit
main_10_loop_body:
     mov                  rdi,                  r12
    push                  rsi
     sub                  rsp,                    8
    call                    h
     add                  rsp,                    8
     pop                  rsi
     mov                   r8,                  rax
     mov                  rdi,                  rsi
     sub                  rdi,                    1
     sub                  rdi,                  r12
    push                   r8
    push                  rsi
    call                    h
     pop                  rsi
     pop                   r8
     mov                  rdi,                  rax
    imul                   r8,                  rdi
     add                  rbx,                   r8
main_11_loop_increment:
     add                  r12,                    1
     jmp main_9_loop_condition
main_12_loop_exit:
     mov                  rsi,                  rbx
main_13_inline_exit:
     mov                  rdi,                  rsi
    call          println_Int
     mov                  rax,                    0
main_1_block_exit:
     pop                  rbx
     pop                  r12
     pop                  rbp
     ret
SECTION .data
SECTION .bss
@n:
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
