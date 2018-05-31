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
     sub                  rsp,                  184
__global_init_0_block_enter:
     mov       qword [@i + 0],                    0
     mov      qword [@a0 + 0],                    0
     mov      qword [@a1 + 0],                    0
     mov      qword [@a2 + 0],                    0
     mov      qword [@a3 + 0],                    0
     mov      qword [@a4 + 0],                    0
     mov      qword [@a5 + 0],                    0
     mov      qword [@a6 + 0],                    0
     mov      qword [@a7 + 0],                    0
     mov      qword [@a8 + 0],                    0
     mov      qword [@a9 + 0],                    0
     mov     qword [@a10 + 0],                    0
     mov      qword [@b0 + 0],                    0
     mov      qword [@b1 + 0],                    0
     mov      qword [@b2 + 0],                    0
     mov      qword [@b3 + 0],                    0
     mov      qword [@b4 + 0],                    0
     mov      qword [@b5 + 0],                    0
     mov      qword [@b6 + 0],                    0
     mov      qword [@b7 + 0],                    0
     mov      qword [@b8 + 0],                    0
     mov      qword [@b9 + 0],                    0
     mov     qword [@b10 + 0],                    0
__global_init_1_block_exit:
     add                  rsp,                  184
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call        __global_init
     sub                  rsp,                  184
    push                  rbx
main_0_block_enter:
     mov                  rbx,                    0
    call               getInt
     mov                  rsi,                  rax
     mov       qword [@i + 0],                    0
     cmp       qword [@i + 0],                  rsi
      jl     main_2_loop_body
     mov                  rdi,                  rbx
    call          println_Int
     mov                  rax,                    0
     jmp    main_8_block_exit
main_1_loop_condition:
     cmp       qword [@i + 0],                  rsi
      jl     main_2_loop_body
     mov                  rdi,                  rbx
    call          println_Int
     mov                  rax,                    0
     jmp    main_8_block_exit
main_2_loop_body:
     mov                  rdi,      qword [@a0 + 0]
     add                  rdi,                    1
     mov      qword [@a0 + 0],                  rdi
     mov                  rdi,      qword [@a1 + 0]
     add                  rdi,                    1
     mov      qword [@a1 + 0],                  rdi
     mov                  rdi,      qword [@a2 + 0]
     add                  rdi,                    1
     mov      qword [@a2 + 0],                  rdi
     mov                  rdi,      qword [@a0 + 0]
     add                  rdi,                    1
     mov      qword [@a3 + 0],                  rdi
     mov                  rdi,      qword [@a1 + 0]
     add                  rdi,                    1
     mov      qword [@a4 + 0],                  rdi
     mov                  rdi,      qword [@a2 + 0]
     add                  rdi,                    1
     mov      qword [@a5 + 0],                  rdi
     mov                  rdi,      qword [@a0 + 0]
     add                  rdi,                    1
     mov      qword [@a6 + 0],                  rdi
     mov                  rdi,      qword [@a1 + 0]
     add                  rdi,                    1
     mov      qword [@a7 + 0],                  rdi
     mov                  rdi,      qword [@a2 + 0]
     add                  rdi,                    1
     mov      qword [@a8 + 0],                  rdi
     mov                  rdi,      qword [@a0 + 0]
     add                  rdi,                    1
     mov      qword [@a9 + 0],                  rdi
     mov                  rdi,      qword [@a1 + 0]
     add                  rdi,                    0
     mov     qword [@a10 + 0],                  rdi
     mov                  rax,      qword [@a0 + 0]
     mov      qword [@b0 + 0],                  rax
     mov                  rax,      qword [@a1 + 0]
     mov      qword [@b1 + 0],                  rax
     mov                  rax,      qword [@a2 + 0]
     mov      qword [@b2 + 0],                  rax
     mov                  rax,      qword [@a3 + 0]
     mov      qword [@b3 + 0],                  rax
     mov                  rax,      qword [@a4 + 0]
     mov      qword [@b4 + 0],                  rax
     mov                  rax,      qword [@a5 + 0]
     mov      qword [@b5 + 0],                  rax
     mov                  rax,      qword [@a6 + 0]
     mov      qword [@b6 + 0],                  rax
     mov                  rax,      qword [@a7 + 0]
     mov      qword [@b7 + 0],                  rax
     mov                  rax,      qword [@a8 + 0]
     mov      qword [@b8 + 0],                  rax
     mov                  rax,      qword [@a9 + 0]
     mov      qword [@b9 + 0],                  rax
     mov                  rax,     qword [@a10 + 0]
     mov     qword [@b10 + 0],                  rax
     mov                  rdi,       qword [@i + 0]
     mov                  rax,                  rdi
     mov                  rcx,             10000000
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     cmp                  rdi,                    0
      je       main_3_if_true
     mov                  rdi,       qword [@i + 0]
     add                  rdi,                    1
     mov       qword [@i + 0],                  rdi
     cmp       qword [@i + 0],                  rsi
      jl     main_2_loop_body
     mov                  rdi,                  rbx
    call          println_Int
     mov                  rax,                    0
     jmp    main_8_block_exit
main_3_if_true:
     add                  rbx,      qword [@a0 + 0]
     add                  rbx,      qword [@a1 + 0]
     add                  rbx,      qword [@a2 + 0]
     add                  rbx,      qword [@a3 + 0]
     add                  rbx,      qword [@a4 + 0]
     add                  rbx,      qword [@a5 + 0]
     add                  rbx,      qword [@a6 + 0]
     add                  rbx,      qword [@a7 + 0]
     add                  rbx,      qword [@a8 + 0]
     add                  rbx,      qword [@a9 + 0]
     add                  rbx,     qword [@a10 + 0]
     add                  rbx,      qword [@b0 + 0]
     add                  rbx,      qword [@b1 + 0]
     add                  rbx,      qword [@b2 + 0]
     add                  rbx,      qword [@b3 + 0]
     add                  rbx,      qword [@b4 + 0]
     add                  rbx,      qword [@b5 + 0]
     add                  rbx,      qword [@b6 + 0]
     add                  rbx,      qword [@b7 + 0]
     add                  rbx,      qword [@b8 + 0]
     add                  rbx,      qword [@b9 + 0]
     add                  rbx,     qword [@b10 + 0]
     and                  rbx,           2147450879
     mov                  rdi,       qword [@i + 0]
     add                  rdi,                    1
     mov       qword [@i + 0],                  rdi
     cmp       qword [@i + 0],                  rsi
      jl     main_2_loop_body
     mov                  rdi,                  rbx
    call          println_Int
     mov                  rax,                    0
     jmp    main_8_block_exit
main_6_loop_increment:
     mov                  rdi,       qword [@i + 0]
     add                  rdi,                    1
     mov       qword [@i + 0],                  rdi
     cmp       qword [@i + 0],                  rsi
      jl     main_2_loop_body
     mov                  rdi,                  rbx
    call          println_Int
     mov                  rax,                    0
     jmp    main_8_block_exit
main_7_loop_exit:
     mov                  rdi,                  rbx
    call          println_Int
     mov                  rax,                    0
main_8_block_exit:
     pop                  rbx
     add                  rsp,                  184
     pop                  rbp
     ret
SECTION .data
SECTION .bss
@i:
    resq                    1
@a0:
    resq                    1
@a1:
    resq                    1
@a2:
    resq                    1
@a3:
    resq                    1
@a4:
    resq                    1
@a5:
    resq                    1
@a6:
    resq                    1
@a7:
    resq                    1
@a8:
    resq                    1
@a9:
    resq                    1
@a10:
    resq                    1
@b0:
    resq                    1
@b1:
    resq                    1
@b2:
    resq                    1
@b3:
    resq                    1
@b4:
    resq                    1
@b5:
    resq                    1
@b6:
    resq                    1
@b7:
    resq                    1
@b8:
    resq                    1
@b9:
    resq                    1
@b10:
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
