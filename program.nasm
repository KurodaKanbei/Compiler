global __global_init
global main
global fib
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
main_0_block_enter:
     mov                  rdi,                  100
    call                  fib
     mov                  rdi,                  rax
    call          println_Int
main_1_block_exit:
     pop                  rbp
     ret
fib:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   24
    push                  r12
    push                  rbx
fib_0_block_enter:
     mov qword [@fib_backup + 0],                   r8
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  r12,             @fib_int
     add                  r12,                  rsi
     cmp                   r8,                    0
     jge    fib_1_fib_success
     mov                   r8,                  rdi
     cmp                   r8,                    2
     jle        fib_5_if_true
     mov                  rsi,                   r8
     sub                  rsi,                    1
     mov                  rdi,                  rsi
    push                   r8
    call                  fib
     pop                   r8
     mov                  rbx,                  rax
     mov                  rsi,                   r8
     sub                  rsi,                    2
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                  fib
     add                  rsp,                    8
     mov                  rsi,                  rax
     add                  rbx,                  rsi
     mov                  rax,                  rbx
     jmp     fib_8_block_exit
fib_1_fib_success:
     cmp                   r8,                  200
      jl     fib_2_fib_escape
     mov                   r8,                  rdi
     cmp                   r8,                    2
     jle        fib_5_if_true
     mov                  rsi,                   r8
     sub                  rsi,                    1
     mov                  rdi,                  rsi
    push                   r8
    call                  fib
     pop                   r8
     mov                  rbx,                  rax
     mov                  rsi,                   r8
     sub                  rsi,                    2
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                  fib
     add                  rsp,                    8
     mov                  rsi,                  rax
     add                  rbx,                  rsi
     mov                  rax,                  rbx
     jmp     fib_8_block_exit
fib_2_fib_escape:
     cmp      qword [r12 + 0],                    0
      je      fib_4_fib_start
     mov                  rax,      qword [r12 + 0]
     jmp     fib_8_block_exit
fib_3_fib_return:
     mov                  rax,      qword [r12 + 0]
     jmp     fib_8_block_exit
fib_4_fib_start:
     mov                   r8,                  rdi
     cmp                   r8,                    2
     jle        fib_5_if_true
     mov                  rsi,                   r8
     sub                  rsi,                    1
     mov                  rdi,                  rsi
    push                   r8
    call                  fib
     pop                   r8
     mov                  rbx,                  rax
     mov                  rsi,                   r8
     sub                  rsi,                    2
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                  fib
     add                  rsp,                    8
     mov                  rsi,                  rax
     add                  rbx,                  rsi
     mov                  rax,                  rbx
     jmp     fib_8_block_exit
fib_5_if_true:
     mov                  rax,                    1
     jmp     fib_8_block_exit
fib_7_if_exit:
     mov                  rsi,                   r8
     sub                  rsi,                    1
     mov                  rdi,                  rsi
    push                   r8
    call                  fib
     pop                   r8
     mov                  rbx,                  rax
     mov                  rsi,                   r8
     sub                  rsi,                    2
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                  fib
     add                  rsp,                    8
     mov                  rsi,                  rax
     add                  rbx,                  rsi
     mov                  rax,                  rbx
fib_8_block_exit:
     cmp qword [@fib_backup + 0],                    0
     jge   fib_9_fib_positive
fib_9_fib_positive:
     cmp qword [@fib_backup + 0],                  200
      jl    fib_10_fib_update
fib_10_fib_update:
     mov      qword [r12 + 0],                  rax
fib_11_fib_fail:
     pop                  rbx
     pop                  r12
     add                  rsp,                   24
     pop                  rbp
     ret
SECTION .data
@fib_backup:
	 dq 0
@fib_int:
	dq	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,0
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
