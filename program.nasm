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
     mov                   r9,                   10
     mov                  rsi,                   r9
     inc                  rsi
     sal                  rsi,                    3
    push                  rsi
    push                   r9
    push                  rsi
    push                  rsi
    push                  rsi
    push                  rdi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rdi
     pop                  rsi
     pop                  rsi
     pop                  rsi
     pop                   r9
     pop                  rsi
     mov                  rdi,                  rax
     mov      qword [rdi + 0],                   r9
     add                  rdi,                    8
     mov                  r12,                  rdi
     mov                  rbx,                  rdi
     sub                  rsi,                    8
     add                  rbx,                  rsi
     cmp                  r12,                  rbx
      jl   main_2_malloc_body
     mov                  r13,                  rdi
     xor                  r12,                  r12
     cmp                  r12,                   r9
      jl     main_5_loop_body
     xor                  rsi,                  rsi
     sal                  rsi,                    3
     mov                  rbx,                  r13
     add                  rbx,                  rsi
     xor                  rsi,                  rsi
     sal                  rsi,                    3
     mov                  rbx,      qword [rbx + 0]
     add                  rbx,                  rsi
     mov                  rdi,      qword [rbx + 0]
    call          println_Int
     jmp   main_19_block_exit
main_1_malloc_condition:
     cmp                  r12,                  rbx
      jl   main_2_malloc_body
     mov                  r13,                  rdi
     xor                  r12,                  r12
     cmp                  r12,                   r9
      jl     main_5_loop_body
     xor                  rsi,                  rsi
     sal                  rsi,                    3
     mov                  rbx,                  r13
     add                  rbx,                  rsi
     xor                  rsi,                  rsi
     sal                  rsi,                    3
     mov                  rbx,      qword [rbx + 0]
     add                  rbx,                  rsi
     mov                  rdi,      qword [rbx + 0]
    call          println_Int
     jmp   main_19_block_exit
main_2_malloc_body:
     mov                  rsi,                   r9
     inc                  rsi
     sal                  rsi,                    3
    push                  rsi
    push                   r9
    push                  rsi
    push                  rsi
    push                  rsi
    push                  rdi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rdi
     pop                  rsi
     pop                  rsi
     pop                  rsi
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                   r9
     add                  rsi,                    8
     mov      qword [r12 + 0],                  rsi
     add                  r12,                    8
     cmp                  r12,                  rbx
      jl   main_2_malloc_body
     mov                  r13,                  rdi
     xor                  r12,                  r12
     cmp                  r12,                   r9
      jl     main_5_loop_body
     xor                  rsi,                  rsi
     sal                  rsi,                    3
     mov                  rbx,                  r13
     add                  rbx,                  rsi
     xor                  rsi,                  rsi
     sal                  rsi,                    3
     mov                  rbx,      qword [rbx + 0]
     add                  rbx,                  rsi
     mov                  rdi,      qword [rbx + 0]
    call          println_Int
     jmp   main_19_block_exit
main_3_malloc_exit:
     mov                  r13,                  rdi
     xor                  r12,                  r12
     cmp                  r12,                   r9
      jl     main_5_loop_body
     xor                  rsi,                  rsi
     sal                  rsi,                    3
     mov                  rbx,                  r13
     add                  rbx,                  rsi
     xor                  rsi,                  rsi
     sal                  rsi,                    3
     mov                  rbx,      qword [rbx + 0]
     add                  rbx,                  rsi
     mov                  rdi,      qword [rbx + 0]
    call          println_Int
     jmp   main_19_block_exit
main_4_loop_condition:
     cmp                  r12,                   r9
      jl     main_5_loop_body
     xor                  rsi,                  rsi
     sal                  rsi,                    3
     mov                  rbx,                  r13
     add                  rbx,                  rsi
     xor                  rsi,                  rsi
     sal                  rsi,                    3
     mov                  rbx,      qword [rbx + 0]
     add                  rbx,                  rsi
     mov                  rdi,      qword [rbx + 0]
    call          println_Int
     jmp   main_19_block_exit
main_5_loop_body:
     xor                  rbx,                  rbx
     cmp                  rbx,                   r9
      jl main_20_resort_condition
     inc                  r12
     cmp                  r12,                   r9
      jl     main_5_loop_body
     xor                  rsi,                  rsi
     sal                  rsi,                    3
     mov                  rbx,                  r13
     add                  rbx,                  rsi
     xor                  rsi,                  rsi
     sal                  rsi,                    3
     mov                  rbx,      qword [rbx + 0]
     add                  rbx,                  rsi
     mov                  rdi,      qword [rbx + 0]
    call          println_Int
     jmp   main_19_block_exit
main_6_loop_condition:
     cmp                  rbx,                   r9
      jl main_20_resort_condition
     inc                  r12
     cmp                  r12,                   r9
      jl     main_5_loop_body
     xor                  rsi,                  rsi
     sal                  rsi,                    3
     mov                  rbx,                  r13
     add                  rbx,                  rsi
     xor                  rsi,                  rsi
     sal                  rsi,                    3
     mov                  rbx,      qword [rbx + 0]
     add                  rbx,                  rsi
     mov                  rdi,      qword [rbx + 0]
    call          println_Int
     jmp   main_19_block_exit
main_20_resort_condition:
     cmp                  rbx,                  r12
     jge     main_7_loop_body
     inc                  rbx
     cmp                  rbx,                   r9
      jl main_20_resort_condition
     inc                  r12
     cmp                  r12,                   r9
      jl     main_5_loop_body
     xor                  rsi,                  rsi
     sal                  rsi,                    3
     mov                  rbx,                  r13
     add                  rbx,                  rsi
     xor                  rsi,                  rsi
     sal                  rsi,                    3
     mov                  rbx,      qword [rbx + 0]
     add                  rbx,                  rsi
     mov                  rdi,      qword [rbx + 0]
    call          println_Int
     jmp   main_19_block_exit
main_7_loop_body:
     xor                  rsi,                  rsi
     cmp                  rsi,                   r9
      jl      main_10_if_true
     inc                  rbx
     cmp                  rbx,                   r9
      jl main_20_resort_condition
     inc                  r12
     cmp                  r12,                   r9
      jl     main_5_loop_body
     xor                  rsi,                  rsi
     sal                  rsi,                    3
     mov                  rbx,                  r13
     add                  rbx,                  rsi
     xor                  rsi,                  rsi
     sal                  rsi,                    3
     mov                  rbx,      qword [rbx + 0]
     add                  rbx,                  rsi
     mov                  rdi,      qword [rbx + 0]
    call          println_Int
     jmp   main_19_block_exit
main_8_loop_condition:
     cmp                  rsi,                   r9
      jl      main_10_if_true
     inc                  rbx
     cmp                  rbx,                   r9
      jl main_20_resort_condition
     inc                  r12
     cmp                  r12,                   r9
      jl     main_5_loop_body
     xor                  rsi,                  rsi
     sal                  rsi,                    3
     mov                  rbx,                  r13
     add                  rbx,                  rsi
     xor                  rsi,                  rsi
     sal                  rsi,                    3
     mov                  rbx,      qword [rbx + 0]
     add                  rbx,                  rsi
     mov                  rdi,      qword [rbx + 0]
    call          println_Int
     jmp   main_19_block_exit
main_10_if_true:
     mov                   r8,                  r12
     sal                   r8,                    3
     mov                  rdi,                  r13
     add                  rdi,                   r8
     mov                  r14,                  rbx
     sal                  r14,                    3
     mov                   r8,      qword [rdi + 0]
     add                   r8,                  r14
     mov                  rdi,                  r12
     add                  rdi,                  rbx
     add                  rdi,                  rsi
     mov       qword [r8 + 0],                  rdi
     inc                  rsi
     cmp                  rsi,                   r9
      jl      main_10_if_true
     inc                  rbx
     cmp                  rbx,                   r9
      jl main_20_resort_condition
     inc                  r12
     cmp                  r12,                   r9
      jl     main_5_loop_body
     xor                  rsi,                  rsi
     sal                  rsi,                    3
     mov                  rbx,                  r13
     add                  rbx,                  rsi
     xor                  rsi,                  rsi
     sal                  rsi,                    3
     mov                  rbx,      qword [rbx + 0]
     add                  rbx,                  rsi
     mov                  rdi,      qword [rbx + 0]
    call          println_Int
     jmp   main_19_block_exit
main_13_loop_increment:
     inc                  rsi
     cmp                  rsi,                   r9
      jl      main_10_if_true
     inc                  rbx
     cmp                  rbx,                   r9
      jl main_20_resort_condition
     inc                  r12
     cmp                  r12,                   r9
      jl     main_5_loop_body
     xor                  rsi,                  rsi
     sal                  rsi,                    3
     mov                  rbx,                  r13
     add                  rbx,                  rsi
     xor                  rsi,                  rsi
     sal                  rsi,                    3
     mov                  rbx,      qword [rbx + 0]
     add                  rbx,                  rsi
     mov                  rdi,      qword [rbx + 0]
    call          println_Int
     jmp   main_19_block_exit
main_15_loop_increment:
     inc                  rbx
     cmp                  rbx,                   r9
      jl main_20_resort_condition
     inc                  r12
     cmp                  r12,                   r9
      jl     main_5_loop_body
     xor                  rsi,                  rsi
     sal                  rsi,                    3
     mov                  rbx,                  r13
     add                  rbx,                  rsi
     xor                  rsi,                  rsi
     sal                  rsi,                    3
     mov                  rbx,      qword [rbx + 0]
     add                  rbx,                  rsi
     mov                  rdi,      qword [rbx + 0]
    call          println_Int
     jmp   main_19_block_exit
main_17_loop_increment:
     inc                  r12
     cmp                  r12,                   r9
      jl     main_5_loop_body
     xor                  rsi,                  rsi
     sal                  rsi,                    3
     mov                  rbx,                  r13
     add                  rbx,                  rsi
     xor                  rsi,                  rsi
     sal                  rsi,                    3
     mov                  rbx,      qword [rbx + 0]
     add                  rbx,                  rsi
     mov                  rdi,      qword [rbx + 0]
    call          println_Int
     jmp   main_19_block_exit
main_18_loop_exit:
     xor                  rsi,                  rsi
     sal                  rsi,                    3
     mov                  rbx,                  r13
     add                  rbx,                  rsi
     xor                  rsi,                  rsi
     sal                  rsi,                    3
     mov                  rbx,      qword [rbx + 0]
     add                  rbx,                  rsi
     mov                  rdi,      qword [rbx + 0]
    call          println_Int
main_19_block_exit:
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
