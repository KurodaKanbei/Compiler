global __global_init
global main
global calc
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
     sub                  rsp,                   80
    push                  r12
    push                  r13
    push                  rbx
main_0_block_enter:
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call            getString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     mov       qword [@A + 0],                  rax
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call            getString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     mov       qword [@B + 0],                  rax
     mov                  rdi,       qword [@B + 0]
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call    __string_parseInt
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     mov       qword [@N + 0],                  rax
     mov                  rdi,       qword [@A + 0]
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     mov                  rbx,                  rax
     cmp                  rbx,       qword [@N + 0]
      jl       main_1_if_true
     mov                  rbx,       qword [@N + 0]
     sub                  rbx,                    1
     mov                  rdi,       qword [@A + 0]
     xor                  rsi,                  rsi
     mov                  rdx,                  rbx
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call   __string_substring
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     mov                  r13,                  rax
     mov                  rdi,                  r13
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     mov                  r12,                  rax
     mov                  rax,                    1
     cmp                  rax,                  r12
      je       main_6_if_true
     mov                  rbx,                  r12
     mov                  rax,                  rbx
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov                  rbx,                  rax
     mov                   r8,                  rbx
     sub                   r8,                    1
     mov                  rdi,                  r13
     xor                  rsi,                  rsi
     mov                  rdx,                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call   __string_substring
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     mov                  rdi,                  rax
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                 calc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     mov                   r8,                  rax
     sub                  r12,                    1
     mov                  rdi,                  r13
     mov                  rsi,                  rbx
     mov                  rdx,                  r12
    push                   r8
    push                   r9
    push                  rsi
    call   __string_substring
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                   r9
    push                  rsi
    call                 calc
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  r12,                  rax
     mov                  rdi,                   r8
     mov                  rsi,                  r12
    push                   r8
    push                   r9
    push                  rsi
    call          __string_LE
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rbx,                  rax
     cmp                  rbx,                    1
      je       main_9_if_true
     mov                  rdi,                   r8
     mov                  rsi,                  r12
    push                   r8
    push                   r9
    push                  rsi
    call          __string_EQ
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rbx,                  rax
     cmp                  rbx,                    1
      je      main_11_if_true
     mov                  rdi,                   r8
     mov                  rsi,                  r12
    push                   r8
    push                   r9
     sub                  rsp,                    8
    call          __string_GR
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     cmp                  rsi,                    1
      je      main_16_if_true
     mov                  rdi,     __const_string_2
    push                   r9
    call              println
     pop                   r9
     mov       qword [@C + 0],                   r9
     mov                  rdi,       qword [@C + 0]
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp    main_4_block_exit
main_1_if_true:
     mov                  rdi,     __const_string_0
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp    main_4_block_exit
main_3_if_exit:
     mov                  rbx,       qword [@N + 0]
     sub                  rbx,                    1
     mov                  rdi,       qword [@A + 0]
     xor                  rsi,                  rsi
     mov                  rdx,                  rbx
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call   __string_substring
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     mov                  r13,                  rax
     mov                  rdi,                  r13
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     mov                  r12,                  rax
     mov                  rax,                    1
     cmp                  rax,                  r12
      je       main_6_if_true
     mov                  rbx,                  r12
     mov                  rax,                  rbx
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov                  rbx,                  rax
     mov                   r8,                  rbx
     sub                   r8,                    1
     mov                  rdi,                  r13
     xor                  rsi,                  rsi
     mov                  rdx,                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call   __string_substring
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     mov                  rdi,                  rax
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                 calc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     mov                   r8,                  rax
     sub                  r12,                    1
     mov                  rdi,                  r13
     mov                  rsi,                  rbx
     mov                  rdx,                  r12
    push                   r8
    push                   r9
    push                  rsi
    call   __string_substring
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                   r9
    push                  rsi
    call                 calc
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  r12,                  rax
     mov                  rdi,                   r8
     mov                  rsi,                  r12
    push                   r8
    push                   r9
    push                  rsi
    call          __string_LE
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rbx,                  rax
     cmp                  rbx,                    1
      je       main_9_if_true
     mov                  rdi,                   r8
     mov                  rsi,                  r12
    push                   r8
    push                   r9
    push                  rsi
    call          __string_EQ
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rbx,                  rax
     cmp                  rbx,                    1
      je      main_11_if_true
     mov                  rdi,                   r8
     mov                  rsi,                  r12
    push                   r8
    push                   r9
     sub                  rsp,                    8
    call          __string_GR
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     cmp                  rsi,                    1
      je      main_16_if_true
     mov                  rdi,     __const_string_2
    push                   r9
    call              println
     pop                   r9
     mov       qword [@C + 0],                   r9
     mov                  rdi,       qword [@C + 0]
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp    main_4_block_exit
main_5_inline_enter:
     mov                  rdi,                  r13
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     mov                  r12,                  rax
     mov                  rax,                    1
     cmp                  rax,                  r12
      je       main_6_if_true
     mov                  rbx,                  r12
     mov                  rax,                  rbx
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov                  rbx,                  rax
     mov                   r8,                  rbx
     sub                   r8,                    1
     mov                  rdi,                  r13
     xor                  rsi,                  rsi
     mov                  rdx,                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call   __string_substring
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     mov                  rdi,                  rax
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                 calc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     mov                   r8,                  rax
     sub                  r12,                    1
     mov                  rdi,                  r13
     mov                  rsi,                  rbx
     mov                  rdx,                  r12
    push                   r8
    push                   r9
    push                  rsi
    call   __string_substring
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                   r9
    push                  rsi
    call                 calc
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  r12,                  rax
     mov                  rdi,                   r8
     mov                  rsi,                  r12
    push                   r8
    push                   r9
    push                  rsi
    call          __string_LE
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rbx,                  rax
     cmp                  rbx,                    1
      je       main_9_if_true
     mov                  rdi,                   r8
     mov                  rsi,                  r12
    push                   r8
    push                   r9
    push                  rsi
    call          __string_EQ
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rbx,                  rax
     cmp                  rbx,                    1
      je      main_11_if_true
     mov                  rdi,                   r8
     mov                  rsi,                  r12
    push                   r8
    push                   r9
     sub                  rsp,                    8
    call          __string_GR
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     cmp                  rsi,                    1
      je      main_16_if_true
     mov                  rdi,     __const_string_2
    push                   r9
    call              println
     pop                   r9
     mov       qword [@C + 0],                   r9
     mov                  rdi,       qword [@C + 0]
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp    main_4_block_exit
main_6_if_true:
     mov                   r9,                  r13
     mov       qword [@C + 0],                   r9
     mov                  rdi,       qword [@C + 0]
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp    main_4_block_exit
main_8_if_exit:
     mov                  rbx,                  r12
     mov                  rax,                  rbx
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov                  rbx,                  rax
     mov                   r8,                  rbx
     sub                   r8,                    1
     mov                  rdi,                  r13
     xor                  rsi,                  rsi
     mov                  rdx,                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call   __string_substring
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     mov                  rdi,                  rax
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                 calc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     mov                   r8,                  rax
     sub                  r12,                    1
     mov                  rdi,                  r13
     mov                  rsi,                  rbx
     mov                  rdx,                  r12
    push                   r8
    push                   r9
    push                  rsi
    call   __string_substring
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                   r9
    push                  rsi
    call                 calc
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  r12,                  rax
     mov                  rdi,                   r8
     mov                  rsi,                  r12
    push                   r8
    push                   r9
    push                  rsi
    call          __string_LE
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rbx,                  rax
     cmp                  rbx,                    1
      je       main_9_if_true
     mov                  rdi,                   r8
     mov                  rsi,                  r12
    push                   r8
    push                   r9
    push                  rsi
    call          __string_EQ
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rbx,                  rax
     cmp                  rbx,                    1
      je      main_11_if_true
     mov                  rdi,                   r8
     mov                  rsi,                  r12
    push                   r8
    push                   r9
     sub                  rsp,                    8
    call          __string_GR
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     cmp                  rsi,                    1
      je      main_16_if_true
     mov                  rdi,     __const_string_2
    push                   r9
    call              println
     pop                   r9
     mov       qword [@C + 0],                   r9
     mov                  rdi,       qword [@C + 0]
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp    main_4_block_exit
main_9_if_true:
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                   r9,                  rax
     mov       qword [@C + 0],                   r9
     mov                  rdi,       qword [@C + 0]
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp    main_4_block_exit
main_10_if_false:
     mov                  rdi,                   r8
     mov                  rsi,                  r12
    push                   r8
    push                   r9
    push                  rsi
    call          __string_EQ
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rbx,                  rax
     cmp                  rbx,                    1
      je      main_11_if_true
     mov                  rdi,                   r8
     mov                  rsi,                  r12
    push                   r8
    push                   r9
     sub                  rsp,                    8
    call          __string_GR
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     cmp                  rsi,                    1
      je      main_16_if_true
     mov                  rdi,     __const_string_2
    push                   r9
    call              println
     pop                   r9
     mov       qword [@C + 0],                   r9
     mov                  rdi,       qword [@C + 0]
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp    main_4_block_exit
main_11_if_true:
     mov                  rdi,                   r8
     xor                  rsi,                  rsi
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call         __string_ord
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,                  r12
     xor                  rsi,                  rsi
    push                   r8
    call         __string_ord
     pop                   r8
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
      jl      main_12_if_true
     mov                  rdi,                  r12
     mov                  rsi,                   r8
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                   r9,                  rax
     mov       qword [@C + 0],                   r9
     mov                  rdi,       qword [@C + 0]
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp    main_4_block_exit
main_12_if_true:
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                   r9,                  rax
     mov       qword [@C + 0],                   r9
     mov                  rdi,       qword [@C + 0]
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp    main_4_block_exit
main_14_if_exit:
     mov                  rdi,                  r12
     mov                  rsi,                   r8
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                   r9,                  rax
     mov       qword [@C + 0],                   r9
     mov                  rdi,       qword [@C + 0]
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp    main_4_block_exit
main_15_if_false:
     mov                  rdi,                   r8
     mov                  rsi,                  r12
    push                   r8
    push                   r9
     sub                  rsp,                    8
    call          __string_GR
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     cmp                  rsi,                    1
      je      main_16_if_true
     mov                  rdi,     __const_string_2
    push                   r9
    call              println
     pop                   r9
     mov       qword [@C + 0],                   r9
     mov                  rdi,       qword [@C + 0]
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp    main_4_block_exit
main_16_if_true:
     mov                  rdi,                  r12
     mov                  rsi,                   r8
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                   r9,                  rax
     mov       qword [@C + 0],                   r9
     mov                  rdi,       qword [@C + 0]
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp    main_4_block_exit
main_20_if_exit:
     mov                  rdi,     __const_string_2
    push                   r9
    call              println
     pop                   r9
     mov       qword [@C + 0],                   r9
     mov                  rdi,       qword [@C + 0]
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp    main_4_block_exit
main_21_inline_exit:
     mov       qword [@C + 0],                   r9
     mov                  rdi,       qword [@C + 0]
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
main_4_block_exit:
     pop                  rbx
     pop                  r13
     pop                  r12
     add                  rsp,                   80
     pop                  rbp
     ret
calc:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   16
    push                  r12
    push                  r13
    push                  rbx
calc_0_block_enter:
     mov                  r13,                  rdi
     mov                  rdi,                  r13
    push                  rsi
    call      __string_length
     pop                  rsi
     mov                  r12,                  rax
     mov                  rax,                    1
     cmp                  rax,                  r12
      je       calc_1_if_true
     mov                  rbx,                  r12
     mov                  rax,                  rbx
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov                  rbx,                  rax
     mov                   r8,                  rbx
     sub                   r8,                    1
     mov                  rdi,                  r13
     xor                  rsi,                  rsi
     mov                  rdx,                   r8
     sub                  rsp,                    8
    call   __string_substring
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                 calc
     add                  rsp,                    8
     mov                   r8,                  rax
     sub                  r12,                    1
     mov                  rdi,                  r13
     mov                  rsi,                  rbx
     mov                  rdx,                  r12
    push                   r8
    call   __string_substring
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    call                 calc
     pop                   r8
     mov                  r12,                  rax
     mov                  rdi,                   r8
     mov                  rsi,                  r12
    push                   r8
    call          __string_LE
     pop                   r8
     mov                  rsi,                  rax
     cmp                  rsi,                    1
      je       calc_4_if_true
     mov                  rdi,                   r8
     mov                  rsi,                  r12
    push                   r8
    call          __string_EQ
     pop                   r8
     mov                  rsi,                  rax
     cmp                  rsi,                    1
      je       calc_6_if_true
     mov                  rdi,                   r8
     mov                  rsi,                  r12
    push                   r8
    call          __string_GR
     pop                   r8
     mov                  rsi,                  rax
     cmp                  rsi,                    1
      je      calc_11_if_true
     mov                  rdi,     __const_string_1
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     jmp   calc_16_block_exit
calc_1_if_true:
     mov                  rax,                  r13
     jmp   calc_16_block_exit
calc_3_if_exit:
     mov                  rbx,                  r12
     mov                  rax,                  rbx
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov                  rbx,                  rax
     mov                   r8,                  rbx
     sub                   r8,                    1
     mov                  rdi,                  r13
     xor                  rsi,                  rsi
     mov                  rdx,                   r8
     sub                  rsp,                    8
    call   __string_substring
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                 calc
     add                  rsp,                    8
     mov                   r8,                  rax
     sub                  r12,                    1
     mov                  rdi,                  r13
     mov                  rsi,                  rbx
     mov                  rdx,                  r12
    push                   r8
    call   __string_substring
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    call                 calc
     pop                   r8
     mov                  r12,                  rax
     mov                  rdi,                   r8
     mov                  rsi,                  r12
    push                   r8
    call          __string_LE
     pop                   r8
     mov                  rsi,                  rax
     cmp                  rsi,                    1
      je       calc_4_if_true
     mov                  rdi,                   r8
     mov                  rsi,                  r12
    push                   r8
    call          __string_EQ
     pop                   r8
     mov                  rsi,                  rax
     cmp                  rsi,                    1
      je       calc_6_if_true
     mov                  rdi,                   r8
     mov                  rsi,                  r12
    push                   r8
    call          __string_GR
     pop                   r8
     mov                  rsi,                  rax
     cmp                  rsi,                    1
      je      calc_11_if_true
     mov                  rdi,     __const_string_1
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     jmp   calc_16_block_exit
calc_4_if_true:
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rax,                  rsi
     jmp   calc_16_block_exit
calc_5_if_false:
     mov                  rdi,                   r8
     mov                  rsi,                  r12
    push                   r8
    call          __string_EQ
     pop                   r8
     mov                  rsi,                  rax
     cmp                  rsi,                    1
      je       calc_6_if_true
     mov                  rdi,                   r8
     mov                  rsi,                  r12
    push                   r8
    call          __string_GR
     pop                   r8
     mov                  rsi,                  rax
     cmp                  rsi,                    1
      je      calc_11_if_true
     mov                  rdi,     __const_string_1
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     jmp   calc_16_block_exit
calc_6_if_true:
     mov                  rdi,                   r8
     xor                  rsi,                  rsi
    push                   r8
    call         __string_ord
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  r12
     xor                  rsi,                  rsi
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call         __string_ord
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rbx,                  rax
     cmp                  rsi,                  rbx
      jl       calc_7_if_true
     mov                  rdi,                  r12
     mov                  rsi,                   r8
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rax,                  rsi
     jmp   calc_16_block_exit
calc_7_if_true:
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rax,                  rsi
     jmp   calc_16_block_exit
calc_9_if_exit:
     mov                  rdi,                  r12
     mov                  rsi,                   r8
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rax,                  rsi
     jmp   calc_16_block_exit
calc_10_if_false:
     mov                  rdi,                   r8
     mov                  rsi,                  r12
    push                   r8
    call          __string_GR
     pop                   r8
     mov                  rsi,                  rax
     cmp                  rsi,                    1
      je      calc_11_if_true
     mov                  rdi,     __const_string_1
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     jmp   calc_16_block_exit
calc_11_if_true:
     mov                  rdi,                  r12
     mov                  rsi,                   r8
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rax,                  rsi
     jmp   calc_16_block_exit
calc_15_if_exit:
     mov                  rdi,     __const_string_1
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
calc_16_block_exit:
     pop                  rbx
     pop                  r13
     pop                  r12
     add                  rsp,                   16
     pop                  rbp
     ret
SECTION .data
      dq                   13
__const_string_0:
	db 108, 101, 110, 103, 116, 104,  32, 101, 114, 114, 111, 114,  33,   0
      dq                   11
__const_string_1:
	db  78, 101, 118, 101, 114,  32,  69, 118, 101, 114,  33,   0
      dq                   11
__const_string_2:
	db  78, 101, 118, 101, 114,  32,  69, 118, 101, 114,  33,   0
SECTION .bss
@A:
    resq                    1
@B:
    resq                    1
@C:
    resq                    1
@N:
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
