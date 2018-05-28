global __global_init
global work
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
     mov qword [@init_anger + 0],                  100
     mov qword [@work_anger + 0],                   10
     jmp __global_init_1_block_exit
__global_init_1_block_exit:
     pop                  rbp
     ret
work:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
work_0_block_enter:
     mov                  rbx,                  rsi
     cmp      qword [rbx + 8],                  100
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
      je       work_1_if_true
     jmp      work_2_if_false
work_1_if_true:
     mov                  rsi,     __const_string_0
    push                  rbx
    call  __string_connection
     pop                  rbx
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      qword [rbx + 0]
    push                  rbx
    call  __string_connection
     pop                  rbx
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
    push                  rbx
    call  __string_connection
     pop                  rbx
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  rbx
    call              println
     pop                  rbx
     jmp       work_3_if_exit
work_2_if_false:
     mov                  rsi,     __const_string_2
    push                  rbx
    call  __string_connection
     pop                  rbx
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      qword [rbx + 0]
    push                  rbx
    call  __string_connection
     pop                  rbx
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
    push                  rbx
    call  __string_connection
     pop                  rbx
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  rbx
    call              println
     pop                  rbx
     jmp       work_3_if_exit
work_3_if_exit:
     mov                  rsi,      qword [rbx + 8]
     add                  rsi, qword [@work_anger + 0]
     mov      qword [rbx + 8],                  rsi
     jmp    work_4_block_exit
work_4_block_exit:
     pop                  rbx
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call        __global_init
    push                  rbx
main_0_block_enter:
    push                  rsi
     mov                  rdi,                   16
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],     __const_string_4
     mov      qword [rsi + 8],                    0
    push                  rsi
     mov                  rdi,                   16
    call               malloc
     pop                  rsi
     mov                  rbx,                  rax
     mov      qword [rbx + 0],     __const_string_5
     mov                  rdi, qword [@init_anger + 0]
     mov      qword [rbx + 8],                  rdi
     mov                  rdi,     __const_string_6
    push                  rbx
    call                 work
     pop                  rbx
     mov                  rdi,     __const_string_7
     mov                  rsi,                  rbx
    push                  rbx
    call                 work
     pop                  rbx
     mov                  rdi,     __const_string_8
     mov                  rsi,                  rbx
     sub                  rsp,                    8
    call                 work
     add                  rsp,                    8
     mov                  rax,                    0
     jmp    main_1_block_exit
main_1_block_exit:
     pop                  rbx
     pop                  rbp
     ret
SECTION .data
      dq                    1
__const_string_0:
	db  44,  32,   0
      dq                    1
__const_string_1:
	db  32, 101, 110, 106, 111, 121, 115,  32, 116, 104, 105, 115,  32, 119, 111, 114, 107,  46,  32,  88,  68,   0
      dq                    1
__const_string_2:
	db  44,  32,   0
      dq                    1
__const_string_3:
	db  32, 119,  97, 110, 116, 115,  32, 116, 111,  32, 103, 105, 118, 101,  32, 117, 112,  33,  33,  33,  33,  33,   0
      dq                    1
__const_string_4:
	db 116, 104, 101,  32, 108, 101,  97, 100, 105, 110, 103,  32,  84,  65,   0
      dq                    1
__const_string_5:
	db 116, 104, 101,  32, 115, 116, 114, 105, 107, 105, 110, 103,  32,  84,  65,   0
      dq                    1
__const_string_6:
	db  77,  82,   0
      dq                    1
__const_string_7:
	db  77,  97, 114, 115,   0
      dq                    1
__const_string_8:
	db  77,  97, 114, 115,   0
SECTION .bss
@init_anger:
    resq                    1
@work_anger:
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
