global p
global __global_init
global f
global g
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
p:
    push                  rbp
     mov                  rbp,                  rsp
p_0_block_enter:
     mov                   r9,                  rdi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                   r9
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    2
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    3
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    4
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    5
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    6
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    7
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    8
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    9
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   10
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   11
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   12
     mov                   r8,                  rdi
     mov                  eax,                  r8d
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                   r8,                  rdx
     mov                  rdi,                   r9
     sub                  rdi,                   13
     mov                  rsi,                   r8
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                   r8,                   r9
     sub                   r8,                   14
     mov                  rdi,                  rsi
     mov                  eax,                  edi
     mov                  ecx,                  r8d
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   15
     mov                   r8,                  rdi
     mov                  eax,                  r8d
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                   r8,                  rdx
     mov                  rdi,                   r9
     sub                  rdi,                   16
     mov                  rsi,                   r8
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r9
     sub                  rdi,                   17
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r9
     sub                  rdi,                   18
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r9
     sub                  rdi,                   19
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r9
     sub                  rdi,                   20
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rax,                  rsi
p_1_block_exit:
     pop                  rbp
     ret
__global_init:
    push                  rbp
     mov                  rbp,                  rsp
__global_init_1_block_exit:
     pop                  rbp
     ret
f:
    push                  rbp
     mov                  rbp,                  rsp
f_0_block_enter:
     mov                  rsi,                  rdi
     mov                  rdi,                  rsi
    call                    h
     mov                  rsi,                  rax
     mov                  rax,                  rsi
     jmp       f_1_block_exit
f_2_inline_enter:
     mov                  rdi,                  rsi
    call                    h
     mov                  rsi,                  rax
     mov                  rax,                  rsi
     jmp       f_1_block_exit
f_3_inline_exit:
     mov                  rax,                  rsi
f_1_block_exit:
     pop                  rbp
     ret
g:
    push                  rbp
     mov                  rbp,                  rsp
g_0_block_enter:
     mov                  rsi,                  rdi
     mov                  rdi,                  rsi
    call                    p
     mov                  rsi,                  rax
     mov                  rax,                  rsi
     jmp       g_1_block_exit
g_2_inline_enter:
     mov                  rdi,                  rsi
    call                    p
     mov                  rsi,                  rax
     mov                  rax,                  rsi
     jmp       g_1_block_exit
g_3_inline_exit:
     mov                  rax,                  rsi
g_1_block_exit:
     pop                  rbp
     ret
h:
    push                  rbp
     mov                  rbp,                  rsp
h_0_block_enter:
     mov                   r9,                  rdi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                   r9
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    2
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    3
     mov                   r8,                  rdi
     mov                  eax,                  r8d
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                   r8,                  rdx
     mov                  rdi,                   r9
     sub                  rdi,                    4
     mov                  rsi,                   r8
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r9
     sub                  rdi,                    5
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r9
     sub                  rdi,                    6
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r9
     sub                  rdi,                    7
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r9
     sub                  rdi,                    8
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                   r8,                   r9
     sub                   r8,                    9
     mov                  rdi,                  rsi
     mov                  eax,                  edi
     mov                  ecx,                  r8d
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   10
     mov                   r8,                  rdi
     mov                  eax,                  r8d
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                   r8,                  rdx
     mov                  rdi,                   r9
     sub                  rdi,                   11
     mov                  rsi,                   r8
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r9
     sub                  rdi,                   12
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r9
     sub                  rdi,                   13
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r9
     sub                  rdi,                   14
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r9
     sub                  rdi,                   15
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r9
     sub                  rdi,                   16
     mov                   r8,                  rsi
     mov                  eax,                  r8d
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                   r8,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   17
     mov                  rdi,                   r8
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   18
     mov                   r8,                  rdi
     mov                  eax,                  r8d
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                   r8,                  rdx
     mov                  rdi,                   r9
     sub                  rdi,                   19
     mov                  rsi,                   r8
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r9
     sub                  rdi,                   20
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rax,                  rsi
     jmp       h_1_block_exit
h_2_inline_enter:
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                   r9
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    2
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    3
     mov                   r8,                  rdi
     mov                  eax,                  r8d
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                   r8,                  rdx
     mov                  rdi,                   r9
     sub                  rdi,                    4
     mov                  rsi,                   r8
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r9
     sub                  rdi,                    5
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r9
     sub                  rdi,                    6
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r9
     sub                  rdi,                    7
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r9
     sub                  rdi,                    8
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                   r8,                   r9
     sub                   r8,                    9
     mov                  rdi,                  rsi
     mov                  eax,                  edi
     mov                  ecx,                  r8d
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   10
     mov                   r8,                  rdi
     mov                  eax,                  r8d
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                   r8,                  rdx
     mov                  rdi,                   r9
     sub                  rdi,                   11
     mov                  rsi,                   r8
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r9
     sub                  rdi,                   12
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r9
     sub                  rdi,                   13
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r9
     sub                  rdi,                   14
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r9
     sub                  rdi,                   15
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r9
     sub                  rdi,                   16
     mov                   r8,                  rsi
     mov                  eax,                  r8d
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                   r8,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   17
     mov                  rdi,                   r8
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   18
     mov                   r8,                  rdi
     mov                  eax,                  r8d
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                   r8,                  rdx
     mov                  rdi,                   r9
     sub                  rdi,                   19
     mov                  rsi,                   r8
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r9
     sub                  rdi,                   20
     mov                  eax,                  esi
     mov                  ecx,                  edi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rax,                  rsi
     jmp       h_1_block_exit
h_3_inline_exit:
     mov                  rax,                  rsi
h_1_block_exit:
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call        __global_init
    push                  r12
    push                  rbx
main_0_block_enter:
     mov                  rsi,                    5
     mov                  rbx,                    0
     mov                  r12,                    0
     mov                  rdi,                  rbx
    call          println_Int
     mov                  r12,                    1
     cmp                  r12,             30000000
     jle   main_176_loop_body
     mov                  rax,                    0
     jmp  main_182_block_exit
main_174_loop_exit:
     mov                  rdi,                  rbx
    call          println_Int
     mov                  r12,                    1
     cmp                  r12,             30000000
     jle   main_176_loop_body
     mov                  rax,                    0
     jmp  main_182_block_exit
main_175_loop_condition:
     cmp                  r12,             30000000
     jle   main_176_loop_body
     mov                  rax,                    0
     jmp  main_182_block_exit
main_176_loop_body:
     mov                  rsi,                  100
     mov                  rdi,                  rsi
    call                    g
     mov                  rsi,                  rax
     mov                  rbx,                  r12
     mov                  rax,                  rbx
     mov                  rcx,              3000000
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     cmp                  rbx,                    0
      je     main_177_if_true
     add                  r12,                    1
     cmp                  r12,             30000000
     jle   main_176_loop_body
     mov                  rax,                    0
     jmp  main_182_block_exit
main_183_inline_enter:
     mov                  rdi,                  rsi
    call                    g
     mov                  rsi,                  rax
     mov                  rbx,                  r12
     mov                  rax,                  rbx
     mov                  rcx,              3000000
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     cmp                  rbx,                    0
      je     main_177_if_true
     add                  r12,                    1
     cmp                  r12,             30000000
     jle   main_176_loop_body
     mov                  rax,                    0
     jmp  main_182_block_exit
main_184_inline_exit:
     mov                  rbx,                  r12
     mov                  rax,                  rbx
     mov                  rcx,              3000000
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     cmp                  rbx,                    0
      je     main_177_if_true
     add                  r12,                    1
     cmp                  r12,             30000000
     jle   main_176_loop_body
     mov                  rax,                    0
     jmp  main_182_block_exit
main_177_if_true:
     mov                  rdi,                  rsi
    call          println_Int
     add                  r12,                    1
     cmp                  r12,             30000000
     jle   main_176_loop_body
     mov                  rax,                    0
     jmp  main_182_block_exit
main_180_loop_increment:
     add                  r12,                    1
     cmp                  r12,             30000000
     jle   main_176_loop_body
     mov                  rax,                    0
     jmp  main_182_block_exit
main_181_loop_exit:
     mov                  rax,                    0
main_182_block_exit:
     pop                  rbx
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
