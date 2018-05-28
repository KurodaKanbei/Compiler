global a
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
a:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
    push                  r12
    push                  r13
    push                  r14
    push                  r15
    push                  r12
    push                  r14
    push                  r13
    push                  rbx
a_0_block_enter:
     mov                  r13,                  rdi
     mov                  r10,                  rdx
     mov                  r14,                  rcx
     mov                  r12,                   r8
     mov                  rbx,                   r9
     mov                  rdi,                  r13
    push                  rsi
    push                  r10
    push                  r13
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
    push                  r10
    push                  rdi
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rdi,                  rsi
    push                  rsi
    push                  r10
    push                  rsi
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
    push                  r10
    push                  rdi
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rdi,                  r10
    push                  rsi
    push                  r10
    push                  r10
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
    push                  r10
    push                  rdi
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rdi,                  r14
    push                  rsi
    push                  r10
    push                  r14
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
    push                  r10
    push                  rdi
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rdi,                  r12
    push                  rsi
    push                  r10
    push                  r12
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
    push                  r10
    push                  rdi
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rdi,                  rbx
    push                  rsi
    push                  r10
    push                  rbx
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
    push                  r10
    push                  rdi
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rdi,     qword [rbp + 64]
    push                  rsi
    push                  r10
    push     qword [rbp + 64]
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
    push                  r10
    push                  rdi
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rdi,     qword [rbp + 72]
    push                  rsi
    push                  r10
    push     qword [rbp + 72]
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
    push                  r10
    push                  rdi
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rdi,     qword [rbp + 80]
    push                  rsi
    push                  r10
    push     qword [rbp + 80]
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
    push                  r10
    push                  rdi
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rdi,     qword [rbp + 88]
    push                  rsi
    push                  r10
    push     qword [rbp + 88]
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
    push                  r10
    push                  rdi
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rdi,     qword [rbp + 96]
    push                  rsi
    push                  r10
    push     qword [rbp + 96]
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
    push                  r10
    push                  rdi
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rdi,    qword [rbp + 104]
    push                  rsi
    push                  r10
    push    qword [rbp + 104]
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
    push                  r10
    push                  rdi
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rdi,    qword [rbp + 112]
    push                  rsi
    push                  r10
    push    qword [rbp + 112]
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
    push                  r10
    push                  rdi
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rdi,    qword [rbp + 120]
    push                  rsi
    push                  r10
    push    qword [rbp + 120]
    call             toString
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
    push                  r10
    push                  rdi
    call              println
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rdi,                  r13
     add                  rdi,                  rsi
     mov                  rsi,                  rdi
     add                  rsi,                  r10
     add                  rsi,                  r14
     add                  rsi,                  r12
     add                  rsi,                  rbx
     add                  rsi,     qword [rbp + 64]
     add                  rsi,     qword [rbp + 72]
     add                  rsi,     qword [rbp + 80]
     add                  rsi,     qword [rbp + 88]
     add                  rsi,     qword [rbp + 96]
     add                  rsi,    qword [rbp + 104]
     add                  rsi,    qword [rbp + 112]
     add                  rsi,    qword [rbp + 120]
     add                  rsi,    qword [rbp + 128]
     mov                  rax,                  rsi
     jmp       a_1_block_exit
a_1_block_exit:
     pop                  rbx
     pop                  r13
     pop                  r14
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
    push                  r14
    push                  r13
    push                  rbx
main_0_block_enter:
     mov                  rdi,                    1
     mov                  rsi,                    2
     mov                  rdx,                    3
     mov                  rcx,                    4
     mov                   r8,                    5
     mov                   r9,                    6
    push                   15
    push                   14
    push                   13
    push                   12
    push                   11
    push                   10
    push                    9
    push                    8
    push                    7
    push                    6
    push                    5
    push                    4
    push                    3
    push                    2
    push                    1
    call                    a
     add                  rsp,                  120
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
     jmp    main_1_block_exit
main_1_block_exit:
     pop                  rbx
     pop                  r13
     pop                  r14
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
    push                  r14
    push                  r13
    push                  rbx
global_init_0_block_enter:
     jmp global_init_1_block_exit
global_init_1_block_exit:
     pop                  rbx
     pop                  r13
     pop                  r14
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
