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
     sub                  rsp,                  152
    push                  r12
    push                  r14
    push                  r13
    push                  r15
    push                  rbx
main_0_block_enter:
     mov      qword [rbp - 8],                    0
     mov     qword [rbp - 16],                    0
     mov                   r8,                    0
     mov     qword [rbp - 24],                    0
    push                   r8
     sub                  rsp,                    8
    call               getInt
     add                  rsp,                    8
     pop                   r8
     mov                  r14,                  rax
     mov     qword [rbp - 32],                    0
     cmp     qword [rbp - 32],                  r14
      jl     main_2_loop_body
     mov                  rdi,     qword [rbp - 24]
    call          println_Int
     mov                  rax,                    0
     jmp    main_8_block_exit
main_1_loop_condition:
     cmp     qword [rbp - 32],                  r14
      jl     main_2_loop_body
     mov                  rdi,     qword [rbp - 24]
    call          println_Int
     mov                  rax,                    0
     jmp    main_8_block_exit
main_2_loop_body:
     mov                  rsi,      qword [rbp - 8]
     add                  rsi,                    1
     mov      qword [rbp - 8],                  rsi
     mov                  rsi,     qword [rbp - 16]
     add                  rsi,                    1
     mov     qword [rbp - 16],                  rsi
     mov                  rsi,                   r8
     add                  rsi,                    1
     mov                   r8,                  rsi
     mov                  rsi,      qword [rbp - 8]
     add                  rsi,                    1
     mov                  r13,                  rsi
     mov                  rsi,     qword [rbp - 16]
     add                  rsi,                    1
     mov     qword [rbp - 40],                  rsi
     mov                  rsi,                   r8
     add                  rsi,                    1
     mov                  r10,                  rsi
     mov                  rsi,      qword [rbp - 8]
     add                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  rsi,     qword [rbp - 16]
     add                  rsi,                    1
     mov                  r15,                  rsi
     mov                  rsi,                   r8
     add                  rsi,                    1
     mov                   r9,                  rsi
     mov                  rsi,      qword [rbp - 8]
     add                  rsi,                    1
     mov                  r12,                  rsi
     mov                  rdi,     qword [rbp - 16]
     mov                  r11,      qword [rbp - 8]
     mov                  rsi,     qword [rbp - 16]
     mov                  rax,     qword [rbp - 40]
     mov     qword [rbp - 48],                  rax
     mov                  rax,     qword [rbp - 32]
     mov     qword [rbp - 56],                  rax
     mov                  rax,     qword [rbp - 56]
     mov                  rcx,             10000000
     cdq
    idiv                  ecx
     mov     qword [rbp - 56],                  rdx
     cmp     qword [rbp - 56],                    0
      je       main_3_if_true
     mov                  rsi,     qword [rbp - 32]
     add                  rsi,                    1
     mov     qword [rbp - 32],                  rsi
     cmp     qword [rbp - 32],                  r14
      jl     main_2_loop_body
     mov                  rdi,     qword [rbp - 24]
    call          println_Int
     mov                  rax,                    0
     jmp    main_8_block_exit
main_3_if_true:
     mov                  rax,     qword [rbp - 24]
     mov     qword [rbp - 64],                  rax
     mov                  rax,     qword [rbp - 64]
     add                  rax,      qword [rbp - 8]
     mov     qword [rbp - 64],                  rax
     mov                  rax,     qword [rbp - 64]
     mov     qword [rbp - 72],                  rax
     mov                  rax,     qword [rbp - 72]
     add                  rax,     qword [rbp - 16]
     mov     qword [rbp - 72],                  rax
     mov                  rax,     qword [rbp - 72]
     mov     qword [rbp - 80],                  rax
     add     qword [rbp - 80],                   r8
     mov                  rax,     qword [rbp - 80]
     mov     qword [rbp - 88],                  rax
     add     qword [rbp - 88],                  r13
     mov                  rax,     qword [rbp - 88]
     mov     qword [rbp - 96],                  rax
     mov                  rax,     qword [rbp - 96]
     add                  rax,     qword [rbp - 40]
     mov     qword [rbp - 96],                  rax
     mov                  rax,     qword [rbp - 96]
     mov    qword [rbp - 104],                  rax
     add    qword [rbp - 104],                  r10
     mov                  rax,    qword [rbp - 104]
     mov    qword [rbp - 112],                  rax
     add    qword [rbp - 112],                  rbx
     mov                  rax,    qword [rbp - 112]
     mov    qword [rbp - 120],                  rax
     add    qword [rbp - 120],                  r15
     mov                  rax,    qword [rbp - 120]
     mov    qword [rbp - 128],                  rax
     add    qword [rbp - 128],                   r9
     mov                  rax,    qword [rbp - 128]
     mov    qword [rbp - 136],                  rax
     add    qword [rbp - 136],                  r12
     mov                  rax,    qword [rbp - 136]
     mov    qword [rbp - 144],                  rax
     add    qword [rbp - 144],                  rdi
     mov                  rax,    qword [rbp - 144]
     mov    qword [rbp - 152],                  rax
     add    qword [rbp - 152],                  r11
     mov                  r11,    qword [rbp - 152]
     add                  r11,                  rsi
     mov                  rsi,                  r11
     add                  rsi,                   r8
     add                  rsi,                  r13
     add                  rsi,     qword [rbp - 48]
     add                  rsi,                  r10
     add                  rsi,                  rbx
     add                  rsi,                  r15
     add                  rsi,                   r9
     add                  rsi,                  r12
     add                  rsi,                  rdi
     and                  rsi,           2147450879
     mov     qword [rbp - 24],                  rsi
     mov                  rsi,     qword [rbp - 32]
     add                  rsi,                    1
     mov     qword [rbp - 32],                  rsi
     cmp     qword [rbp - 32],                  r14
      jl     main_2_loop_body
     mov                  rdi,     qword [rbp - 24]
    call          println_Int
     mov                  rax,                    0
     jmp    main_8_block_exit
main_6_loop_increment:
     mov                  rsi,     qword [rbp - 32]
     add                  rsi,                    1
     mov     qword [rbp - 32],                  rsi
     cmp     qword [rbp - 32],                  r14
      jl     main_2_loop_body
     mov                  rdi,     qword [rbp - 24]
    call          println_Int
     mov                  rax,                    0
     jmp    main_8_block_exit
main_7_loop_exit:
     mov                  rdi,     qword [rbp - 24]
    call          println_Int
     mov                  rax,                    0
main_8_block_exit:
     pop                  rbx
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     add                  rsp,                  152
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
