global qpow
global main
global global_init
global print_Int
global println_Int
global print
global println
global getInt
global getString
global toString
global __array_size
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
SECTION .data
SECTION .bss
SECTION .text
qpow:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
    push                  r12
    push                  r13
    push                  r14
    push                  r15
    push                  r12
    push                  rbx
qpow_0_block_enter:
     mov                  rbx,                  rsi
     mov                  rsi,                  rdx
     mov                  r12,                    1
     mov                   r8,                  rdi
     jmp qpow_1_loop_condition
qpow_1_loop_condition:
     cmp                  rbx,                    0
     mov                  rdi,                    0
    setg                  dil
     cmp                  rdi,                    1
      je     qpow_2_loop_body
     jmp     qpow_6_loop_exit
qpow_2_loop_body:
     mov                  rdi,                  rbx
     and                  rdi,                    1
     cmp                  rdi,                    1
     mov                  rdi,                    0
    sete                  dil
     cmp                  rdi,                    1
      je       qpow_3_if_true
     jmp      qpow_4_if_false
qpow_3_if_true:
     mov                  rdi,                  r12
    imul                  rdi,                   r8
     mov                  rax,                  rdi
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  r12,                  rdi
     jmp       qpow_5_if_exit
qpow_4_if_false:
     jmp       qpow_5_if_exit
qpow_5_if_exit:
     mov                  rdi,                   r8
    imul                  rdi,                   r8
     mov                  rax,                  rdi
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                   r8,                  rdi
     mov                  rax,                  rbx
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  rsi
    push                   r8
    push                  rbx
    call             toString
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
    push                   r8
    push                  rdi
    call              println
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     jmp qpow_1_loop_condition
qpow_6_loop_exit:
     mov                  rax,                  r12
     jmp    qpow_7_block_exit
qpow_7_block_exit:
     pop                  rbx
     pop                  r12
     pop                  r15
     pop                  r14
     pop                  r13
     pop                  r12
     pop                  rbx
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call          global_init
    push                  rbx
    push                  r12
    push                  r13
    push                  r14
    push                  r15
    push                  r12
    push                  rbx
main_0_block_enter:
     mov                  rdi,                    2
     mov                  rsi,                   10
     mov                  rdx,                10000
    push                10000
    push                   10
    push                    2
    call                 qpow
     add                  rsp,                   24
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  rsi
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  rsi
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp    main_1_block_exit
main_1_block_exit:
     pop                  rbx
     pop                  r12
     pop                  r15
     pop                  r14
     pop                  r13
     pop                  r12
     pop                  rbx
     pop                  rbp
     ret
global_init:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
    push                  r12
    push                  r13
    push                  r14
    push                  r15
    push                  r12
    push                  rbx
global_init_0_block_enter:
     jmp global_init_1_block_exit
global_init_1_block_exit:
     pop                  rbx
     pop                  r12
     pop                  r15
     pop                  r14
     pop                  r13
     pop                  r12
     pop                  rbx
     pop                  rbp
     ret
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
