global a
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
a:
    push                  rbp
     mov                  rbp,                  rsp
a_0_block_enter:
     mov                  r10,                  rdi
     mov                  rdi,                  rdx
     mov                  r11,                  rcx
     add                  r10,                  rsi
     mov                  rsi,                  r10
     add                  rsi,                  rdi
     add                  rsi,                  r11
     add                  rsi,                   r8
     add                  rsi,                   r9
     add                  rsi,     qword [rbp + 16]
     add                  rsi,     qword [rbp + 24]
     add                  rsi,     qword [rbp + 32]
     add                  rsi,     qword [rbp + 40]
     add                  rsi,     qword [rbp + 48]
     add                  rsi,     qword [rbp + 56]
     add                  rsi,     qword [rbp + 64]
     add                  rsi,     qword [rbp + 72]
     add                  rsi,     qword [rbp + 80]
     mov                  rax,                  rsi
a_1_block_exit:
     pop                  rbp
     ret
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
     sub                  rsp,                   32
    push                  r12
    push                  r14
    push                  r13
    push                  r15
    push                  rbx
main_0_block_enter:
     mov                  r11,                    1
     mov                  r15,                    2
     mov                  r10,                    3
     mov      qword [rbp - 8],                    4
     mov                  r14,                    5
     mov     qword [rbp - 16],                    6
     mov     qword [rbp - 24],                    7
     mov                   r9,                    8
     mov                  r13,                    9
     mov                   r8,                   10
     mov     qword [rbp - 32],                   11
     mov                  r12,                   12
     mov                  rdi,                   13
     mov                  rbx,                   14
     mov                  rsi,                   15
main_2_inline_enter:
     add                  r11,                  r15
     mov                  r15,                  r11
     add                  r15,                  r10
     mov                  r10,                  r15
     add                  r10,      qword [rbp - 8]
     add                  r10,                  r14
     mov                  r14,                  r10
     add                  r14,     qword [rbp - 16]
     add                  r14,     qword [rbp - 24]
     add                  r14,                   r9
     mov                   r9,                  r14
     add                   r9,                  r13
     mov                  r13,                   r9
     add                  r13,                   r8
     mov                   r8,                  r13
     add                   r8,     qword [rbp - 32]
     add                   r8,                  r12
     mov                  r12,                   r8
     add                  r12,                  rdi
     mov                  rdi,                  r12
     add                  rdi,                  rbx
     mov                  rbx,                  rdi
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
main_3_inline_exit:
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
main_1_block_exit:
     pop                  rbx
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     add                  rsp,                   32
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
