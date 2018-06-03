global __global_init
global foo
global main
global cost_a_lot_of_time
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
foo:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r12
    push                  rbx
foo_0_block_enter:
     mov                   r8,                  rdi
     mov                  rbx,                  rsi
     mov                  r12,                  rdx
     mov                  rsi,                   r8
    imul                  rsi,                 1000
     mov                  rdi,                  rbx
    imul                  rdi,                   10
     add                  rsi,                  rdi
     add                  rsi,                  r12
     mov                  rdi,                  rsi
    push                   r8
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                   r8
     cmp                   r8,                    1
      je     foo_4_block_exit
     mov                  rsi,                  rbx
     mov                  rbx,                  r12
     mov                  r12,                  rsi
     mov                  rdi,                    1
     mov                  rsi,                  rbx
     mov                  rdx,                  r12
    push                   r8
     sub                  rsp,                    8
    call                  foo
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                   r8
    imul                  rsi,                 1000
    imul                  rbx,                   10
     add                  rsi,                  rbx
     add                  rsi,                  r12
     mov                  rdi,                  rsi
    call             toString
     mov                  rdi,                  rax
    call              println
     jmp     foo_4_block_exit
foo_3_if_exit:
     mov                  rsi,                  rbx
     mov                  rbx,                  r12
     mov                  r12,                  rsi
     mov                  rdi,                    1
     mov                  rsi,                  rbx
     mov                  rdx,                  r12
    push                   r8
     sub                  rsp,                    8
    call                  foo
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                   r8
    imul                  rsi,                 1000
    imul                  rbx,                   10
     add                  rsi,                  rbx
     add                  rsi,                  r12
     mov                  rdi,                  rsi
    call             toString
     mov                  rdi,                  rax
    call              println
foo_4_block_exit:
     pop                  rbx
     pop                  r12
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call        __global_init
    push                  r12
    push                  rbx
main_0_block_enter:
     mov                  rsi,                 3100
     mov                  rdi,                  rsi
    call             toString
     mov                  rdi,                  rax
    call              println
     mov                  rsi,                 3100
     mov                  rdi,                  rsi
    call             toString
     mov                  rdi,                  rax
    call              println
     mov                   r8,                    7
     mov                  rsi,                    5
     mov                  r12,                    3
     mov                  rdi,                   r8
    imul                  rdi,                 1000
     mov                  rbx,                  rsi
    imul                  rbx,                   10
     add                  rdi,                  rbx
     mov                  rbx,                  rdi
     add                  rbx,                  r12
     mov                  rdi,                  rbx
    push                  rsi
    push                   r8
    call             toString
     pop                   r8
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
    push                   r8
    call              println
     pop                   r8
     pop                  rsi
     cmp                   r8,                    1
     mov                  rbx,                    0
    sete                   bl
     cmp                  rbx,                    1
      je  main_16_inline_exit
     mov                  rbx,                  rsi
     mov                  rsi,                  r12
     mov                  r12,                  rbx
     mov                  rdi,                    1
     mov                  rdx,                  r12
    push                  rsi
    push                   r8
    call                  foo
     pop                   r8
     pop                  rsi
     mov                  rbx,                   r8
    imul                  rbx,                 1000
    imul                  rsi,                   10
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     add                  rsi,                  r12
     mov                  rdi,                  rsi
    call             toString
     mov                  rdi,                  rax
    call              println
     mov                  rsi,                   10
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                   10
     mov                  rsi,                    2
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                    2
     mov                  rax,                    0
     jmp    main_5_block_exit
main_4_loop_exit:
     mov                  rdi,                  rsi
    call             toString
     mov                  rdi,                  rax
    call              println
     mov                  rsi,                 3100
     mov                  rdi,                  rsi
    call             toString
     mov                  rdi,                  rax
    call              println
     mov                   r8,                    7
     mov                  rsi,                    5
     mov                  r12,                    3
     mov                  rdi,                   r8
    imul                  rdi,                 1000
     mov                  rbx,                  rsi
    imul                  rbx,                   10
     add                  rdi,                  rbx
     mov                  rbx,                  rdi
     add                  rbx,                  r12
     mov                  rdi,                  rbx
    push                  rsi
    push                   r8
    call             toString
     pop                   r8
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
    push                   r8
    call              println
     pop                   r8
     pop                  rsi
     cmp                   r8,                    1
     mov                  rbx,                    0
    sete                   bl
     cmp                  rbx,                    1
      je  main_16_inline_exit
     mov                  rbx,                  rsi
     mov                  rsi,                  r12
     mov                  r12,                  rbx
     mov                  rdi,                    1
     mov                  rdx,                  r12
    push                  rsi
    push                   r8
    call                  foo
     pop                   r8
     pop                  rsi
     mov                  rbx,                   r8
    imul                  rbx,                 1000
    imul                  rsi,                   10
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     add                  rsi,                  r12
     mov                  rdi,                  rsi
    call             toString
     mov                  rdi,                  rax
    call              println
     mov                  rsi,                   10
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                   10
     mov                  rsi,                    2
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                    2
     mov                  rax,                    0
     jmp    main_5_block_exit
main_6_inline_enter:
     mov                  rsi,                 3100
     mov                  rdi,                  rsi
    call             toString
     mov                  rdi,                  rax
    call              println
     mov                   r8,                    7
     mov                  rsi,                    5
     mov                  r12,                    3
     mov                  rdi,                   r8
    imul                  rdi,                 1000
     mov                  rbx,                  rsi
    imul                  rbx,                   10
     add                  rdi,                  rbx
     mov                  rbx,                  rdi
     add                  rbx,                  r12
     mov                  rdi,                  rbx
    push                  rsi
    push                   r8
    call             toString
     pop                   r8
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
    push                   r8
    call              println
     pop                   r8
     pop                  rsi
     cmp                   r8,                    1
     mov                  rbx,                    0
    sete                   bl
     cmp                  rbx,                    1
      je  main_16_inline_exit
     mov                  rbx,                  rsi
     mov                  rsi,                  r12
     mov                  r12,                  rbx
     mov                  rdi,                    1
     mov                  rdx,                  r12
    push                  rsi
    push                   r8
    call                  foo
     pop                   r8
     pop                  rsi
     mov                  rbx,                   r8
    imul                  rbx,                 1000
    imul                  rsi,                   10
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     add                  rsi,                  r12
     mov                  rdi,                  rsi
    call             toString
     mov                  rdi,                  rax
    call              println
     mov                  rsi,                   10
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                   10
     mov                  rsi,                    2
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                    2
     mov                  rax,                    0
     jmp    main_5_block_exit
main_10_loop_exit:
     mov                  rdi,                  rsi
    call             toString
     mov                  rdi,                  rax
    call              println
     mov                   r8,                    7
     mov                  rsi,                    5
     mov                  r12,                    3
     mov                  rdi,                   r8
    imul                  rdi,                 1000
     mov                  rbx,                  rsi
    imul                  rbx,                   10
     add                  rdi,                  rbx
     mov                  rbx,                  rdi
     add                  rbx,                  r12
     mov                  rdi,                  rbx
    push                  rsi
    push                   r8
    call             toString
     pop                   r8
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
    push                   r8
    call              println
     pop                   r8
     pop                  rsi
     cmp                   r8,                    1
     mov                  rbx,                    0
    sete                   bl
     cmp                  rbx,                    1
      je  main_16_inline_exit
     mov                  rbx,                  rsi
     mov                  rsi,                  r12
     mov                  r12,                  rbx
     mov                  rdi,                    1
     mov                  rdx,                  r12
    push                  rsi
    push                   r8
    call                  foo
     pop                   r8
     pop                  rsi
     mov                  rbx,                   r8
    imul                  rbx,                 1000
    imul                  rsi,                   10
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     add                  rsi,                  r12
     mov                  rdi,                  rsi
    call             toString
     mov                  rdi,                  rax
    call              println
     mov                  rsi,                   10
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                   10
     mov                  rsi,                    2
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                    2
     mov                  rax,                    0
     jmp    main_5_block_exit
main_11_inline_exit:
     mov                   r8,                    7
     mov                  rsi,                    5
     mov                  r12,                    3
     mov                  rdi,                   r8
    imul                  rdi,                 1000
     mov                  rbx,                  rsi
    imul                  rbx,                   10
     add                  rdi,                  rbx
     mov                  rbx,                  rdi
     add                  rbx,                  r12
     mov                  rdi,                  rbx
    push                  rsi
    push                   r8
    call             toString
     pop                   r8
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
    push                   r8
    call              println
     pop                   r8
     pop                  rsi
     cmp                   r8,                    1
     mov                  rbx,                    0
    sete                   bl
     cmp                  rbx,                    1
      je  main_16_inline_exit
     mov                  rbx,                  rsi
     mov                  rsi,                  r12
     mov                  r12,                  rbx
     mov                  rdi,                    1
     mov                  rdx,                  r12
    push                  rsi
    push                   r8
    call                  foo
     pop                   r8
     pop                  rsi
     mov                  rbx,                   r8
    imul                  rbx,                 1000
    imul                  rsi,                   10
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     add                  rsi,                  r12
     mov                  rdi,                  rsi
    call             toString
     mov                  rdi,                  rax
    call              println
     mov                  rsi,                   10
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                   10
     mov                  rsi,                    2
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                    2
     mov                  rax,                    0
     jmp    main_5_block_exit
main_12_inline_enter:
     mov                  rdi,                   r8
    imul                  rdi,                 1000
     mov                  rbx,                  rsi
    imul                  rbx,                   10
     add                  rdi,                  rbx
     mov                  rbx,                  rdi
     add                  rbx,                  r12
     mov                  rdi,                  rbx
    push                  rsi
    push                   r8
    call             toString
     pop                   r8
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
    push                   r8
    call              println
     pop                   r8
     pop                  rsi
     cmp                   r8,                    1
     mov                  rbx,                    0
    sete                   bl
     cmp                  rbx,                    1
      je  main_16_inline_exit
     mov                  rbx,                  rsi
     mov                  rsi,                  r12
     mov                  r12,                  rbx
     mov                  rdi,                    1
     mov                  rdx,                  r12
    push                  rsi
    push                   r8
    call                  foo
     pop                   r8
     pop                  rsi
     mov                  rbx,                   r8
    imul                  rbx,                 1000
    imul                  rsi,                   10
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     add                  rsi,                  r12
     mov                  rdi,                  rsi
    call             toString
     mov                  rdi,                  rax
    call              println
     mov                  rsi,                   10
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                   10
     mov                  rsi,                    2
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                    2
     mov                  rax,                    0
     jmp    main_5_block_exit
main_15_if_exit:
     mov                  rbx,                  rsi
     mov                  rsi,                  r12
     mov                  r12,                  rbx
     mov                  rdi,                    1
     mov                  rdx,                  r12
    push                  rsi
    push                   r8
    call                  foo
     pop                   r8
     pop                  rsi
     mov                  rbx,                   r8
    imul                  rbx,                 1000
    imul                  rsi,                   10
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     add                  rsi,                  r12
     mov                  rdi,                  rsi
    call             toString
     mov                  rdi,                  rax
    call              println
     mov                  rsi,                   10
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                   10
     mov                  rsi,                    2
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                    2
     mov                  rax,                    0
     jmp    main_5_block_exit
main_16_inline_exit:
     mov                  rsi,                   10
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                   10
     mov                  rsi,                    2
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                    2
     mov                  rax,                    0
main_5_block_exit:
     pop                  rbx
     pop                  r12
     pop                  rbp
     ret
cost_a_lot_of_time:
    push                  rbp
     mov                  rbp,                  rsp
cost_a_lot_of_time_0_block_enter:
     mov                  rsi,                 3100
     mov                  rdi,                  rsi
    call             toString
     mov                  rdi,                  rax
    call              println
     jmp cost_a_lot_of_time_5_block_exit
cost_a_lot_of_time_4_loop_exit:
     mov                  rdi,                  rsi
    call             toString
     mov                  rdi,                  rax
    call              println
cost_a_lot_of_time_5_block_exit:
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
