global add
global __global_init
global main
global dp
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
add:
    push                  rbp
     mov                  rbp,                  rsp
add_0_block_enter:
     add                  rdi,                  rsi
     mov                  rsi,                  rdi
     mov                  rax,                  rsi
     mov                  rcx,                  233
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rax,                  rsi
add_1_block_exit:
     pop                  rbp
     ret
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
    push                  rbx
main_0_block_enter:
     sub                  rsp,                    8
    call               getInt
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rbx,                    1
     cmp                  rbx,                  rsi
     jle     main_2_loop_body
     mov                  rax,                    0
     jmp    main_5_block_exit
main_1_loop_condition:
     cmp                  rbx,                  rsi
     jle     main_2_loop_body
     mov                  rax,                    0
     jmp    main_5_block_exit
main_2_loop_body:
     mov                  rdi,                  rbx
    push                  rsi
    call                   dp
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
    call             toString
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
    call              println
     pop                  rsi
     add                  rbx,                    1
     cmp                  rbx,                  rsi
     jle     main_2_loop_body
     mov                  rax,                    0
     jmp    main_5_block_exit
main_3_loop_increment:
     add                  rbx,                    1
     cmp                  rbx,                  rsi
     jle     main_2_loop_body
     mov                  rax,                    0
     jmp    main_5_block_exit
main_4_loop_exit:
     mov                  rax,                    0
main_5_block_exit:
     pop                  rbx
     pop                  rbp
     ret
dp:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   32
    push                  r12
    push                  r13
    push                  rbx
dp_0_block_enter:
     mov                  rbx,                  rdi
     sal                  rbx,                    3
     mov                  r13,              @dp_int
     add                  r13,                  rbx
     sar                  rbx,                    3
     cmp                  rdi,                    0
     jge      dp_1_dp_success
     cmp                  rdi,                    1
     jle         dp_5_if_true
     mov                   r8,                    0
     mov                  r12,                    2
     cmp                  r12,                  rdi
     jle       dp_9_loop_body
     mov                  rax,                   r8
     cmp                  rbx,                    0
     jge    dp_16_dp_positive
     jmp     dp_19_block_exit
dp_1_dp_success:
     cmp                  rdi,                  200
      jl       dp_2_dp_escape
     cmp                  rdi,                    1
     jle         dp_5_if_true
     mov                   r8,                    0
     mov                  r12,                    2
     cmp                  r12,                  rdi
     jle       dp_9_loop_body
     mov                  rax,                   r8
     cmp                  rbx,                    0
     jge    dp_16_dp_positive
     jmp     dp_19_block_exit
dp_2_dp_escape:
     cmp      qword [r13 + 0],                    0
      je        dp_4_dp_start
     mov                  rax,      qword [r13 + 0]
     jmp     dp_19_block_exit
dp_3_dp_return:
     mov                  rax,      qword [r13 + 0]
     jmp     dp_19_block_exit
dp_4_dp_start:
     cmp                  rdi,                    1
     jle         dp_5_if_true
     mov                   r8,                    0
     mov                  r12,                    2
     cmp                  r12,                  rdi
     jle       dp_9_loop_body
     mov                  rax,                   r8
     cmp                  rbx,                    0
     jge    dp_16_dp_positive
     jmp     dp_19_block_exit
dp_5_if_true:
     mov                  rax,                   36
     jmp     dp_19_block_exit
dp_7_if_exit:
     mov                   r8,                    0
     mov                  r12,                    2
     cmp                  r12,                  rdi
     jle       dp_9_loop_body
     mov                  rax,                   r8
     cmp                  rbx,                    0
     jge    dp_16_dp_positive
     jmp     dp_19_block_exit
dp_8_loop_condition:
     cmp                  r12,                  rdi
     jle       dp_9_loop_body
     mov                  rax,                   r8
     cmp                  rbx,                    0
     jge    dp_16_dp_positive
     jmp     dp_19_block_exit
dp_9_loop_body:
     mov                  rsi,                  rdi
     xor                  rsi,                  r12
     cmp                  rsi,                  rdi
      jl        dp_10_if_true
     add                  r12,                    1
     cmp                  r12,                  rdi
     jle       dp_9_loop_body
     mov                  rax,                   r8
     cmp                  rbx,                    0
     jge    dp_16_dp_positive
     jmp     dp_19_block_exit
dp_10_if_true:
     mov                  rsi,                  rdi
     xor                  rsi,                  r12
     mov                  rdi,                  rsi
    push                  rdi
    push                   r8
     sub                  rsp,                    8
    call                   dp
     add                  rsp,                    8
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rdi,                   r8
    push                  rdi
    call                  add
     pop                  rdi
     mov                   r8,                  rax
     add                  r12,                    1
     cmp                  r12,                  rdi
     jle       dp_9_loop_body
     mov                  rax,                   r8
     cmp                  rbx,                    0
     jge    dp_16_dp_positive
     jmp     dp_19_block_exit
dp_13_loop_increment:
     add                  r12,                    1
     cmp                  r12,                  rdi
     jle       dp_9_loop_body
     mov                  rax,                   r8
     cmp                  rbx,                    0
     jge    dp_16_dp_positive
     jmp     dp_19_block_exit
dp_14_loop_exit:
     mov                  rax,                   r8
     cmp                  rbx,                    0
     jge    dp_16_dp_positive
     jmp     dp_19_block_exit
dp_15_dp_save:
     cmp                  rbx,                    0
     jge    dp_16_dp_positive
     jmp     dp_19_block_exit
dp_16_dp_positive:
     cmp                  rbx,                  200
      jl      dp_17_dp_update
     jmp     dp_19_block_exit
dp_17_dp_update:
     mov      qword [r13 + 0],                  rax
dp_19_block_exit:
     pop                  rbx
     pop                  r13
     pop                  r12
     add                  rsp,                   32
     pop                  rbp
     ret
SECTION .data
@dp_int:
	dq          36,          36,          36,          72,          36,          72,          19,          55,          36,          72,          19,          55,         167,         203,         179,         215,          36,          72,          19,          55,         167,         203,         179,         215,          64,         100,         103,         139,         186,         222,           3,          39,          36,          72,          19,          55,         167,         203,         179,         215,          64,         100,         103,         139,         186,         222,           3,          39,         145,         181,         113,         149,         216,          19,          93,         129,          39,          75,          28,          64,         194,         230,          27,          63,          36,          72,          19,          55,         167,         203,         179,         215,          64,         100,         103,         139,         186,         222,           3,          39,         145,         181,         113,         149,         216,          19,          93,         129,          39,          75,          28,          64,         194,         230,          27,          63,         180,         216,         218,          21,          65,         101,         106,         142,          78,         114,         145,         181,          79,         115,         148,         184,         114,         150,          20,          56,         170,         206,         188,         224,          91,         127,         184,         220,         196,         232,          33,          69,          36,          72,          19,          55,         167,         203,         179,         215,          64,         100,         103,         139,         186,         222,           3,          39,         145,         181,         113,         149,         216,          19,          93,         129,          39,          75,          28,          64,         194,         230,          27,          63,         180,         216,         218,          21,          65,         101,         106,         142,          78,         114,         145,         181,          79,         115,         148,         184,         114,         150,          20,          56,         170,         206,         188,         224,          91,         127,         184,         220,         196,         232,          33,          69,          72,         108,         127,         163,          25,          61,         219,          22,    0
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
