global __global_init
global shift_l
global hilo
global int2chr
global assert
global shift_r
global xorshift
global main
global xorshift10
global toStringHex
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
     sub                  rsp,                    8
__global_init_0_block_enter:
     mov qword [@asciiTable + 0],     __const_string_8
__global_init_1_block_exit:
     add                  rsp,                    8
     pop                  rbp
     ret
shift_l:
    push                  rbp
     mov                  rbp,                  rsp
shift_l_0_block_enter:
     mov                   r8,                  rsi
     mov                  rsi,                  rdi
     mov                  rcx,                   r8
     sal                  rsi,                   cl
     mov                   r8,                65535
     mov                  rdi,                65535
shift_l_2_inline_enter:
     sal                   r8,                   16
      or                  rdi,                   r8
shift_l_3_inline_exit:
     and                  rsi,                  rdi
     mov                  rax,                  rsi
shift_l_1_block_exit:
     pop                  rbp
     ret
hilo:
    push                  rbp
     mov                  rbp,                  rsp
hilo_0_block_enter:
     sal                  rdi,                   16
      or                  rsi,                  rdi
     mov                  rax,                  rsi
hilo_1_block_exit:
     pop                  rbp
     ret
int2chr:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    8
    push                  r12
    push                  rbx
int2chr_0_block_enter:
     mov                  rsi,                  rdi
     cmp                  rsi,                   32
     mov                  rbx,                    0
   setge                   bl
     cmp                  rbx,                    1
     jne int2chr_2_logical_false
int2chr_1_logical_true:
     cmp                  rsi,                  126
     mov                  rbx,                    0
   setle                   bl
     jmp int2chr_3_logical_exit
int2chr_2_logical_false:
     mov                  rbx,                    0
int2chr_3_logical_exit:
     cmp                  rbx,                    1
      je    int2chr_4_if_true
     jmp   int2chr_5_if_false
int2chr_4_if_true:
     mov                  rbx,                  rsi
     sub                  rbx,                   32
     mov                  r12,                  rsi
     sub                  r12,                   32
     mov                  rdi, qword [@asciiTable + 0]
     mov                  rsi,                  rbx
     mov                  rdx,                  r12
     sub                  rsp,                    8
    call   __string_substring
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rax,                  rsi
     jmp int2chr_7_block_exit
int2chr_5_if_false:
int2chr_6_if_exit:
     mov                  rax,     __const_string_7
int2chr_7_block_exit:
     pop                  rbx
     pop                  r12
     add                  rsp,                    8
     pop                  rbp
     ret
assert:
    push                  rbp
     mov                  rbp,                  rsp
assert_0_block_enter:
     mov                  rsi,                  rdi
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je     assert_1_if_true
     jmp    assert_2_if_false
assert_1_if_true:
     mov                  rdi,     __const_string_5
    call              println
     jmp     assert_3_if_exit
assert_2_if_false:
assert_3_if_exit:
assert_4_block_exit:
     pop                  rbp
     ret
shift_r:
    push                  rbp
     mov                  rbp,                  rsp
shift_r_0_block_enter:
     mov                  r10,                32767
     mov                   r9,                65535
shift_r_2_inline_enter:
     mov                   r8,                  r10
     sal                   r8,                   16
      or                   r9,                   r8
     mov                   r8,                   r9
shift_r_3_inline_exit:
     mov                  rcx,                  rsi
     sar                   r8,                   cl
     sal                   r8,                    1
     add                   r8,                    1
     mov                  rcx,                  rsi
     sar                  rdi,                   cl
     and                   r8,                  rdi
     mov                  r10,                65535
     mov                   r9,                65535
shift_r_4_inline_enter:
     mov                  rsi,                  r10
     sal                  rsi,                   16
     mov                  rdi,                   r9
      or                  rdi,                  rsi
     mov                  rsi,                  rdi
shift_r_5_inline_exit:
     mov                  rdi,                   r8
     and                  rdi,                  rsi
     mov                  rax,                  rdi
shift_r_1_block_exit:
     pop                  rbp
     ret
xorshift:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r12
    push                  rbx
xorshift_0_block_enter:
     mov                  rbx,                  rdi
     mov                  rsi,                   13
xorshift_2_inline_enter:
     mov                  r12,                  rbx
     mov                  rcx,                  rsi
     sal                  r12,                   cl
     mov                  rdi,                65535
     mov                  rsi,                65535
    call                 hilo
     mov                  rsi,                  rax
     mov                  rdi,                  r12
     and                  rdi,                  rsi
     mov                  rsi,                  rdi
xorshift_3_inline_exit:
     xor                  rbx,                  rsi
     mov                  r12,                   17
xorshift_4_inline_enter:
     mov                  rdi,                32767
     mov                  rsi,                65535
    call                 hilo
     mov                  rsi,                  rax
     mov                  rcx,                  r12
     sar                  rsi,                   cl
     sal                  rsi,                    1
     add                  rsi,                    1
     mov                   r8,                  rsi
     mov                  rsi,                  rbx
     mov                  rcx,                  r12
     sar                  rsi,                   cl
     and                   r8,                  rsi
     mov                  rdi,                65535
     mov                  rsi,                65535
    push                   r8
     sub                  rsp,                    8
    call                 hilo
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                   r8
     and                  rdi,                  rsi
     mov                  rsi,                  rdi
xorshift_5_inline_exit:
     xor                  rbx,                  rsi
     mov                  rsi,                    5
xorshift_6_inline_enter:
     mov                  r12,                  rbx
     mov                  rcx,                  rsi
     sal                  r12,                   cl
     mov                  rdi,                65535
     mov                  rsi,                65535
    call                 hilo
     mov                  rsi,                  rax
     mov                  rdi,                  r12
     and                  rdi,                  rsi
     mov                  rsi,                  rdi
xorshift_7_inline_exit:
     xor                  rbx,                  rsi
     mov                  rax,                  rbx
xorshift_1_block_exit:
     pop                  rbx
     pop                  r12
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call        __global_init
     sub                  rsp,                   80
    push                  r12
    push                  r14
    push                  r13
    push                  r15
    push                  rbx
main_0_block_enter:
     sub                  rsp,                    8
    call               getInt
     add                  rsp,                    8
     mov      qword [rbp - 8],                  rax
     sub                  rsp,                    8
    call               getInt
     add                  rsp,                    8
     mov                  r12,                  rax
     sub                  rsp,                    8
    call               getInt
     add                  rsp,                    8
     mov                  rbx,                  rax
     sub                  rsp,                    8
    call               getInt
     add                  rsp,                    8
     mov     qword [rbp - 16],                  rax
     mov                  rsi,      qword [rbp - 8]
     add                  rsi,                    1
main_15_inline_enter:
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     mov                  rsi,                  rax
main_16_inline_exit:
     mov      qword [rbp - 8],                  rsi
     mov                  rsi,                32767
     mov                  rdi,                65535
main_17_inline_enter:
     mov                   r8,                  rsi
     sal                   r8,                   16
     mov                  rsi,                  rdi
      or                  rsi,                   r8
main_18_inline_exit:
     mov     qword [rbp - 24],                  rsi
     mov                  r10,                    0
     mov                  r11,                    0
     mov     qword [rbp - 32],                    0
     mov                  r15,                    0
     mov                  r14,                  r12
main_1_loop_condition:
     cmp                  r14,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     main_2_loop_body
     jmp    main_13_loop_exit
main_2_loop_body:
     mov                  rsi,      qword [rbp - 8]
main_19_inline_enter:
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  rdi
    push                  r10
    call              shift_l
     pop                  r10
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  rdi
    push                  r10
    call              shift_r
     pop                  r10
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  rdi
    push                  r10
    call              shift_l
     pop                  r10
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                  rdi
main_20_inline_exit:
     mov      qword [rbp - 8],                  rsi
     mov                  rsi,      qword [rbp - 8]
     and                  rsi,     qword [rbp - 24]
     mov     qword [rbp - 40],                  rsi
     mov                  rsi,      qword [rbp - 8]
main_21_inline_enter:
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  rdi
    push                  r10
    call              shift_l
     pop                  r10
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  rdi
    push                  r10
    call              shift_r
     pop                  r10
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  rdi
    push                  r10
    call              shift_l
     pop                  r10
     pop                  rdi
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                  rdi
main_22_inline_exit:
     mov      qword [rbp - 8],                  rsi
     mov                  rsi,      qword [rbp - 8]
     and                  rsi,     qword [rbp - 24]
     mov     qword [rbp - 48],                  rsi
     mov                  rsi,      qword [rbp - 8]
main_23_inline_enter:
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  r10
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  r10
    push                  rdi
    call              shift_r
     pop                  rdi
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  r10
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                  rdi
main_24_inline_exit:
     mov      qword [rbp - 8],                  rsi
     mov                  rsi,      qword [rbp - 8]
     and                  rsi,     qword [rbp - 24]
     mov     qword [rbp - 56],                  rsi
     mov                  rsi,      qword [rbp - 8]
main_25_inline_enter:
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  r10
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  r10
    push                  rdi
    call              shift_r
     pop                  rdi
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  r10
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                  rdi
main_26_inline_exit:
     mov      qword [rbp - 8],                  rsi
     mov                  rsi,      qword [rbp - 8]
     and                  rsi,     qword [rbp - 24]
     mov     qword [rbp - 64],                  rsi
     mov                  rsi,      qword [rbp - 8]
main_27_inline_enter:
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  r10
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  r10
    push                  rdi
    call              shift_r
     pop                  rdi
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  r10
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                  rdi
main_28_inline_exit:
     mov      qword [rbp - 8],                  rsi
     mov                  rsi,      qword [rbp - 8]
     and                  rsi,     qword [rbp - 24]
     mov     qword [rbp - 72],                  rsi
     mov                  rsi,      qword [rbp - 8]
main_29_inline_enter:
     mov                  rdi,                  rsi
     mov                  rsi,                   13
    push                  r11
    push                  r10
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                   17
    push                  r11
    push                  r10
    push                  rdi
    call              shift_r
     pop                  rdi
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                    5
    push                  r11
    push                  r10
    push                  rdi
    call              shift_l
     pop                  rdi
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     xor                  rdi,                  rsi
     mov                  rsi,                  rdi
main_30_inline_exit:
     mov      qword [rbp - 8],                  rsi
     mov                  rsi,      qword [rbp - 8]
     and                  rsi,     qword [rbp - 24]
     mov     qword [rbp - 80],                  rsi
     mov                  rsi,     qword [rbp - 40]
     xor                  rsi,     qword [rbp - 48]
     xor                  rsi,     qword [rbp - 56]
     mov                  r13,                  rsi
     mov                  rsi,     qword [rbp - 64]
     xor                  rsi,     qword [rbp - 72]
     xor                  rsi,     qword [rbp - 80]
     mov                  rdi,                  r13
     xor                  rdi,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,     qword [rbp - 24]
     mov                  r13,                  rsi
     mov                  rsi,     qword [rbp - 40]
     add                  rsi,     qword [rbp - 48]
     add                  rsi,     qword [rbp - 56]
     add                  rsi,                    1
     mov                   r9,                  rsi
     mov                  rsi,     qword [rbp - 64]
     add                  rsi,     qword [rbp - 72]
     add                  rsi,     qword [rbp - 80]
     mov                  rdi,                   r9
     sub                  rdi,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,     qword [rbp - 24]
     mov                   r9,                  rsi
     mov                  rdi,     qword [rbp - 40]
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,     qword [rbp - 48]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    imul                  rdi,                  rsi
     mov                  r12,     qword [rbp - 56]
     mov                  rax,                  r12
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov                  rsi,                  rdi
    imul                  rsi,                  r12
     mov                   r8,                  rsi
     mov                  rsi,     qword [rbp - 64]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                   r8
    imul                  rdi,                  rsi
     mov                  rsi,     qword [rbp - 72]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    imul                  rdi,                  rsi
     mov                  rsi,     qword [rbp - 80]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    imul                  rdi,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,     qword [rbp - 24]
     mov                   r8,                  rsi
     mov                  rsi,     qword [rbp - 40]
     xor                  rsi,     qword [rbp - 48]
     mov                  rdi,                  rsi
     xor                  rdi,     qword [rbp - 56]
     mov                  rsi,     qword [rbp - 64]
     xor                  rsi,     qword [rbp - 72]
     xor                  rsi,     qword [rbp - 80]
     cmp                  rdi,                  rsi
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
      je       main_3_if_true
     jmp      main_4_if_false
main_3_if_true:
     mov                  rsi,     qword [rbp - 40]
     add                  rsi,     qword [rbp - 48]
     and                  rsi,     qword [rbp - 24]
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,     qword [rbp - 56]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     add                  rsi,                    1
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  r12,                  rdi
     jmp       main_5_if_exit
main_4_if_false:
     mov                  rsi,     qword [rbp - 56]
     add                  rsi,     qword [rbp - 48]
     and                  rsi,     qword [rbp - 24]
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,     qword [rbp - 40]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     add                  rsi,                    1
     mov                  eax,                  edi
     mov                  ecx,                  esi
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  r12,                  rdi
main_5_if_exit:
     mov                  rsi,                  r13
     xor                  rsi,                10001
main_31_inline_enter:
     mov                  rdi,                  rsi
    push                   r8
    push                  r11
    push                  r10
    push                   r9
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r9
     pop                  r10
     pop                  r11
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r11
    push                  r10
    push                   r9
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r9
     pop                  r10
     pop                  r11
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r11
    push                  r10
    push                   r9
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r9
     pop                  r10
     pop                  r11
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r11
    push                  r10
    push                   r9
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r9
     pop                  r10
     pop                  r11
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r11
    push                  r10
    push                   r9
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r9
     pop                  r10
     pop                  r11
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r11
    push                  r10
    push                   r9
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r9
     pop                  r10
     pop                  r11
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r11
    push                  r10
    push                   r9
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r9
     pop                  r10
     pop                  r11
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r11
    push                  r10
    push                   r9
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r9
     pop                  r10
     pop                  r11
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r11
    push                  r10
    push                   r9
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r9
     pop                  r10
     pop                  r11
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r11
    push                  r10
    push                   r9
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                   r9
     pop                  r10
     pop                  r11
     pop                   r8
     mov                  rsi,                  rax
main_32_inline_exit:
     add                  r10,                  rsi
     mov                  rsi,                   r9
     xor                  rsi,                10002
main_33_inline_enter:
     mov                  rdi,                  rsi
    push                   r8
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     pop                   r8
     mov                  rsi,                  rax
main_34_inline_exit:
     add                  r11,                  rsi
     mov                  rsi,                   r8
     xor                  rsi,                10003
main_35_inline_enter:
     mov                  rdi,                  rsi
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
main_36_inline_exit:
     add     qword [rbp - 32],                  rsi
     mov                  rsi,                  r12
     xor                  rsi,                10004
main_37_inline_enter:
     mov                  rdi,                  rsi
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
main_38_inline_exit:
     add                  r15,                  rsi
     mov                  rsi,     qword [rbp - 64]
     xor                  rsi,     qword [rbp - 48]
     xor                  rsi,     qword [rbp - 56]
     xor                  rsi,     qword [rbp - 40]
     xor                  rsi,     qword [rbp - 80]
     xor                  rsi,     qword [rbp - 72]
     and                  rsi,     qword [rbp - 24]
     mov                  rdi,     qword [rbp - 64]
     neg                  rdi
     add                  rdi,     qword [rbp - 48]
     add                  rdi,     qword [rbp - 56]
     add                  rdi,     qword [rbp - 40]
     sub                  rdi,     qword [rbp - 80]
     sub                  rdi,     qword [rbp - 72]
     add                  rdi,                    1
     and                  rdi,     qword [rbp - 24]
     mov                  r12,                  rdi
     mov                  rdi,     qword [rbp - 64]
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  r13,     qword [rbp - 48]
     mov                  rax,                  r13
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  r13,                  rdx
     mov                   r8,                  rdi
    imul                   r8,                  r13
     mov                  rdi,     qword [rbp - 56]
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                   r8,                  rdi
     mov                  r13,                   r8
     mov                  rdi,     qword [rbp - 40]
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                   r8,                  r13
    imul                   r8,                  rdi
     mov                  rdi,     qword [rbp - 80]
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                   r8,                  rdi
     mov                  rdi,     qword [rbp - 72]
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                   r8,                  rdi
     mov                  rdi,                   r8
     and                  rdi,     qword [rbp - 24]
     mov                  r13,                  rdi
     mov                  rdi,     qword [rbp - 40]
     xor                  rdi,     qword [rbp - 48]
     mov                   r8,                  rdi
     xor                   r8,     qword [rbp - 56]
     mov                  rdi,     qword [rbp - 64]
     xor                  rdi,     qword [rbp - 72]
     xor                  rdi,     qword [rbp - 80]
     cmp                   r8,                  rdi
     mov                  rdi,                    0
   setle                  dil
     cmp                  rdi,                    1
      je       main_6_if_true
     jmp      main_7_if_false
main_6_if_true:
     mov                  rdi,     qword [rbp - 56]
     add                  rdi,     qword [rbp - 48]
     and                  rdi,     qword [rbp - 24]
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                   r8,     qword [rbp - 40]
     mov                  rax,                   r8
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                   r8,                  rdx
     add                   r8,                    1
     mov                  eax,                  edi
     mov                  ecx,                  r8d
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                   r8,                  rdi
     jmp       main_8_if_exit
main_7_if_false:
     mov                  rdi,     qword [rbp - 40]
     add                  rdi,     qword [rbp - 48]
     and                  rdi,     qword [rbp - 24]
     mov                   r9,                  rdi
     mov                  rax,                   r9
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                   r9,                  rdx
     mov                  rdi,     qword [rbp - 56]
     mov                  rax,                  rdi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                   r8,                  rdi
     add                   r8,                    1
     mov                  rdi,                   r9
     mov                  eax,                  edi
     mov                  ecx,                  r8d
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                   r8,                  rdi
main_8_if_exit:
     xor                  rsi,                10001
main_39_inline_enter:
     mov                  rdi,                  rsi
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
main_40_inline_exit:
     add                  r10,                  rsi
     mov                  rsi,                  r12
     xor                  rsi,                10002
main_41_inline_enter:
     mov                  rdi,                  rsi
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
main_42_inline_exit:
     add                  r11,                  rsi
     mov                  rsi,                  r13
     xor                  rsi,                10003
main_43_inline_enter:
     mov                  rdi,                  rsi
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
main_44_inline_exit:
     add     qword [rbp - 32],                  rsi
     mov                  rsi,                   r8
     xor                  rsi,                10004
main_45_inline_enter:
     mov                  rdi,                  rsi
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
main_46_inline_exit:
     add                  r15,                  rsi
     mov                  rsi,     qword [rbp - 64]
     xor                  rsi,     qword [rbp - 40]
     xor                  rsi,     qword [rbp - 56]
     xor                  rsi,     qword [rbp - 48]
     xor                  rsi,     qword [rbp - 80]
     xor                  rsi,     qword [rbp - 72]
     and                  rsi,     qword [rbp - 24]
     mov                  rdi,                  rsi
     mov                  rsi,     qword [rbp - 64]
     sub                  rsi,     qword [rbp - 48]
     mov                  r12,     qword [rbp - 56]
     neg                  r12
     add                  rsi,                  r12
     sub                  rsi,     qword [rbp - 40]
     add                  rsi,     qword [rbp - 80]
     add                  rsi,     qword [rbp - 72]
     sub                  rsi,                    1
     neg                  rsi
     and                  rsi,     qword [rbp - 24]
     mov                  r12,                  rsi
     mov                  rsi,     qword [rbp - 64]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                   r8,     qword [rbp - 72]
     mov                  rax,                   r8
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                   r8,                  rdx
    imul                  rsi,                   r8
     mov                   r8,     qword [rbp - 80]
     mov                  rax,                   r8
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                   r8,                  rdx
    imul                  rsi,                   r8
     mov                  r13,                  rsi
     mov                  rsi,     qword [rbp - 40]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                   r8,                  r13
    imul                   r8,                  rsi
     mov                  rsi,     qword [rbp - 48]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    imul                   r8,                  rsi
     mov                  rsi,     qword [rbp - 56]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    imul                   r8,                  rsi
     mov                  rsi,                   r8
     and                  rsi,     qword [rbp - 24]
     mov                  r13,                  rsi
     mov                  rsi,     qword [rbp - 64]
     xor                  rsi,     qword [rbp - 72]
     mov                   r8,                  rsi
     xor                   r8,     qword [rbp - 80]
     mov                  rsi,     qword [rbp - 56]
     xor                  rsi,     qword [rbp - 48]
     xor                  rsi,     qword [rbp - 40]
     cmp                   r8,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je       main_9_if_true
     jmp     main_10_if_false
main_9_if_true:
     mov                  rsi,     qword [rbp - 40]
     add                  rsi,     qword [rbp - 48]
     and                  rsi,     qword [rbp - 24]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                   r8,     qword [rbp - 56]
     mov                  rax,                   r8
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                   r8,                  rdx
     add                   r8,                    1
     mov                  eax,                  esi
     mov                  ecx,                  r8d
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                   r8,                  rsi
     jmp      main_11_if_exit
main_10_if_false:
     mov                  rsi,     qword [rbp - 56]
     add                  rsi,     qword [rbp - 48]
     and                  rsi,     qword [rbp - 24]
     mov                  rax,                  rsi
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                   r8,     qword [rbp - 40]
     mov                  rax,                   r8
     mov                  rcx,     qword [rbp - 16]
     cdq
    idiv                  ecx
     mov                   r8,                  rdx
     add                   r8,                    1
     mov                  eax,                  esi
     mov                  ecx,                  r8d
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                   r8,                  rsi
main_11_if_exit:
     mov                  rsi,                  rdi
     xor                  rsi,                10001
main_47_inline_enter:
     mov                  rdi,                  rsi
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
main_48_inline_exit:
     add                  r10,                  rsi
     mov                  rsi,                  r12
     xor                  rsi,                10002
main_49_inline_enter:
     mov                  rdi,                  rsi
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
    push                   r8
    call             xorshift
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
main_50_inline_exit:
     add                  r11,                  rsi
     mov                  rsi,                  r13
     xor                  rsi,                10003
main_51_inline_enter:
     mov                  rdi,                  rsi
    push                   r8
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                  r11
    push                  r10
    call             xorshift
     pop                  r10
     pop                  r11
     pop                   r8
     mov                  rsi,                  rax
main_52_inline_exit:
     add     qword [rbp - 32],                  rsi
     mov                  rsi,                   r8
     xor                  rsi,                10004
main_53_inline_enter:
     mov                  rdi,                  rsi
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    push                  r10
     sub                  rsp,                    8
    call             xorshift
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
main_54_inline_exit:
     add                  r15,                  rsi
main_12_loop_increment:
     add                  r14,                    1
     jmp main_1_loop_condition
main_13_loop_exit:
     mov                  rbx,                  r10
main_55_inline_enter:
     mov                   r8,     __const_string_9
     mov                  r12,                   28
main_56_loop_condition:
     cmp                  r12,                    0
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
      je    main_57_loop_body
     jmp    main_62_loop_exit
main_57_loop_body:
     mov                  rsi,                  rbx
     mov                  rcx,                  r12
     sar                  rsi,                   cl
     and                  rsi,                   15
     mov                  rdi,                  rsi
     cmp                  rdi,                   10
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je      main_58_if_true
     jmp     main_59_if_false
main_58_if_true:
     mov                  rsi,                   48
     add                  rsi,                  rdi
     mov                  rdi,                  rsi
    push                  r11
    push                   r8
     sub                  rsp,                    8
    call              int2chr
     add                  rsp,                    8
     pop                   r8
     pop                  r11
     mov                  rsi,                  rax
     mov                  rdi,                   r8
    push                  r11
    call  __string_connection
     pop                  r11
     mov                   r8,                  rax
     jmp      main_60_if_exit
main_59_if_false:
     mov                  rsi,                   65
     add                  rsi,                  rdi
     sub                  rsi,                   10
     mov                  rdi,                  rsi
    push                  r11
    push                   r8
     sub                  rsp,                    8
    call              int2chr
     add                  rsp,                    8
     pop                   r8
     pop                  r11
     mov                  rsi,                  rax
     mov                  rdi,                   r8
    push                  r11
    call  __string_connection
     pop                  r11
     mov                   r8,                  rax
main_60_if_exit:
main_61_loop_increment:
     sub                  r12,                    4
     jmp main_56_loop_condition
main_62_loop_exit:
     mov                  rsi,                   r8
main_63_inline_exit:
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_0
    push                  r11
    call  __string_connection
     pop                  r11
     mov                  rdi,                  rax
    push                  r11
    call                print
     pop                  r11
     mov                  rbx,                  r11
main_64_inline_enter:
     mov                   r8,    __const_string_10
     mov                  r12,                   28
main_65_loop_condition:
     cmp                  r12,                    0
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
      je    main_66_loop_body
     jmp    main_71_loop_exit
main_66_loop_body:
     mov                  rsi,                  rbx
     mov                  rcx,                  r12
     sar                  rsi,                   cl
     and                  rsi,                   15
     mov                  rdi,                  rsi
     cmp                  rdi,                   10
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je      main_67_if_true
     jmp     main_68_if_false
main_67_if_true:
     mov                  rsi,                   48
     add                  rsi,                  rdi
     mov                  rdi,                  rsi
    push                   r8
    call              int2chr
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                   r8
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                   r8,                  rax
     jmp      main_69_if_exit
main_68_if_false:
     mov                  rsi,                   65
     add                  rsi,                  rdi
     sub                  rsi,                   10
     mov                  rdi,                  rsi
    push                   r8
    call              int2chr
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                   r8
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                   r8,                  rax
main_69_if_exit:
main_70_loop_increment:
     sub                  r12,                    4
     jmp main_65_loop_condition
main_71_loop_exit:
     mov                  rsi,                   r8
main_72_inline_exit:
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_1
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rbx,     qword [rbp - 32]
main_73_inline_enter:
     mov                   r8,    __const_string_11
     mov                  r12,                   28
main_74_loop_condition:
     cmp                  r12,                    0
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
      je    main_75_loop_body
     jmp    main_80_loop_exit
main_75_loop_body:
     mov                  rsi,                  rbx
     mov                  rcx,                  r12
     sar                  rsi,                   cl
     and                  rsi,                   15
     mov                  rdi,                  rsi
     cmp                  rdi,                   10
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je      main_76_if_true
     jmp     main_77_if_false
main_76_if_true:
     mov                  rsi,                   48
     add                  rsi,                  rdi
     mov                  rdi,                  rsi
    push                   r8
    call              int2chr
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                   r8
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                   r8,                  rax
     jmp      main_78_if_exit
main_77_if_false:
     mov                  rsi,                   65
     add                  rsi,                  rdi
     sub                  rsi,                   10
     mov                  rdi,                  rsi
    push                   r8
    call              int2chr
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                   r8
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                   r8,                  rax
main_78_if_exit:
main_79_loop_increment:
     sub                  r12,                    4
     jmp main_74_loop_condition
main_80_loop_exit:
     mov                  rsi,                   r8
main_81_inline_exit:
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_2
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rbx,                  r15
main_82_inline_enter:
     mov                   r8,    __const_string_12
     mov                  r12,                   28
main_83_loop_condition:
     cmp                  r12,                    0
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
      je    main_84_loop_body
     jmp    main_89_loop_exit
main_84_loop_body:
     mov                  rsi,                  rbx
     mov                  rcx,                  r12
     sar                  rsi,                   cl
     and                  rsi,                   15
     mov                  rdi,                  rsi
     cmp                  rdi,                   10
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je      main_85_if_true
     jmp     main_86_if_false
main_85_if_true:
     mov                  rsi,                   48
     add                  rsi,                  rdi
     mov                  rdi,                  rsi
    push                   r8
    call              int2chr
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                   r8
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                   r8,                  rax
     jmp      main_87_if_exit
main_86_if_false:
     mov                  rsi,                   65
     add                  rsi,                  rdi
     sub                  rsi,                   10
     mov                  rdi,                  rsi
    push                   r8
    call              int2chr
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                   r8
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                   r8,                  rax
main_87_if_exit:
main_88_loop_increment:
     sub                  r12,                    4
     jmp main_83_loop_condition
main_89_loop_exit:
     mov                  rsi,                   r8
main_90_inline_exit:
     mov                  rdi,                  rsi
     mov                  rsi,     __const_string_3
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rdi,     __const_string_4
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
main_14_block_exit:
     pop                  rbx
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     add                  rsp,                   80
     pop                  rbp
     ret
xorshift10:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
xorshift10_0_block_enter:
     mov                  rsi,                  rdi
xorshift10_2_inline_enter:
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rsi,                  rbx
xorshift10_3_inline_exit:
xorshift10_4_inline_enter:
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rsi,                  rbx
xorshift10_5_inline_exit:
xorshift10_6_inline_enter:
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rsi,                  rbx
xorshift10_7_inline_exit:
xorshift10_8_inline_enter:
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rsi,                  rbx
xorshift10_9_inline_exit:
xorshift10_10_inline_enter:
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rsi,                  rbx
xorshift10_11_inline_exit:
xorshift10_12_inline_enter:
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rsi,                  rbx
xorshift10_13_inline_exit:
xorshift10_14_inline_enter:
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rsi,                  rbx
xorshift10_15_inline_exit:
xorshift10_16_inline_enter:
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rsi,                  rbx
xorshift10_17_inline_exit:
xorshift10_18_inline_enter:
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rsi,                  rbx
xorshift10_19_inline_exit:
xorshift10_20_inline_enter:
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   13
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   17
     sub                  rsp,                    8
    call              shift_r
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                    5
     sub                  rsp,                    8
    call              shift_l
     add                  rsp,                    8
     mov                  rsi,                  rax
     xor                  rbx,                  rsi
     mov                  rsi,                  rbx
xorshift10_21_inline_exit:
     mov                  rax,                  rsi
xorshift10_1_block_exit:
     pop                  rbx
     pop                  rbp
     ret
toStringHex:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    8
    push                  r12
    push                  r13
    push                  rbx
toStringHex_0_block_enter:
     mov                  rbx,                  rdi
     mov                   r8,     __const_string_6
     mov                  r12,                   28
toStringHex_1_loop_condition:
     cmp                  r12,                    0
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
      je toStringHex_2_loop_body
     jmp toStringHex_7_loop_exit
toStringHex_2_loop_body:
     mov                  rsi,                  rbx
     mov                  rcx,                  r12
     sar                  rsi,                   cl
     and                  rsi,                   15
     cmp                  rsi,                   10
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je toStringHex_3_if_true
     jmp toStringHex_4_if_false
toStringHex_3_if_true:
     mov                  rdi,                   48
     add                  rdi,                  rsi
     mov                  rsi,                  rdi
toStringHex_9_inline_enter:
     cmp                  rsi,                   32
     mov                  rdi,                    0
   setge                  dil
     cmp                  rdi,                    1
     jne toStringHex_11_logical_false
toStringHex_10_logical_true:
     cmp                  rsi,                  126
     mov                  rdi,                    0
   setle                  dil
     jmp toStringHex_12_logical_exit
toStringHex_11_logical_false:
     mov                  rdi,                    0
toStringHex_12_logical_exit:
     cmp                  rdi,                    1
      je toStringHex_13_if_true
     jmp toStringHex_14_if_false
toStringHex_13_if_true:
     mov                   r9,                  rsi
     sub                   r9,                   32
     mov                  r13,                  rsi
     sub                  r13,                   32
     mov                  rdi, qword [@asciiTable + 0]
     mov                  rsi,                   r9
     mov                  rdx,                  r13
    push                   r8
     sub                  rsp,                    8
    call   __string_substring
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  rax
     jmp toStringHex_16_inline_exit
toStringHex_14_if_false:
toStringHex_15_if_exit:
     mov                  rsi,    __const_string_13
toStringHex_16_inline_exit:
     mov                  rdi,                   r8
    call  __string_connection
     mov                   r8,                  rax
     jmp toStringHex_5_if_exit
toStringHex_4_if_false:
     mov                  rdi,                   65
     add                  rdi,                  rsi
     mov                  rsi,                  rdi
     sub                  rsi,                   10
toStringHex_17_inline_enter:
     cmp                  rsi,                   32
     mov                  rdi,                    0
   setge                  dil
     cmp                  rdi,                    1
     jne toStringHex_19_logical_false
toStringHex_18_logical_true:
     cmp                  rsi,                  126
     mov                  rdi,                    0
   setle                  dil
     jmp toStringHex_20_logical_exit
toStringHex_19_logical_false:
     mov                  rdi,                    0
toStringHex_20_logical_exit:
     cmp                  rdi,                    1
      je toStringHex_21_if_true
     jmp toStringHex_22_if_false
toStringHex_21_if_true:
     mov                  r13,                  rsi
     sub                  r13,                   32
     mov                   r9,                  rsi
     sub                   r9,                   32
     mov                  rdi, qword [@asciiTable + 0]
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                   r8
     sub                  rsp,                    8
    call   __string_substring
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  rax
     jmp toStringHex_24_inline_exit
toStringHex_22_if_false:
toStringHex_23_if_exit:
     mov                  rsi,    __const_string_14
toStringHex_24_inline_exit:
     mov                  rdi,                   r8
    call  __string_connection
     mov                   r8,                  rax
toStringHex_5_if_exit:
toStringHex_6_loop_increment:
     sub                  r12,                    4
     jmp toStringHex_1_loop_condition
toStringHex_7_loop_exit:
     mov                  rax,                   r8
toStringHex_8_block_exit:
     pop                  rbx
     pop                  r13
     pop                  r12
     add                  rsp,                    8
     pop                  rbp
     ret
SECTION .data
      dq                    1
__const_string_0:
	db  32,   0
      dq                    1
__const_string_1:
	db  32,   0
      dq                    1
__const_string_2:
	db  32,   0
      dq                    1
__const_string_3:
	db  32,   0
      dq                    0
__const_string_4:
	db   0
      dq                   17
__const_string_5:
	db  65, 115, 115, 101, 114, 116, 105, 111, 110,  32,  70,  97, 105, 108, 101, 100,  33,   0
      dq                    0
__const_string_6:
	db   0
      dq                    0
__const_string_7:
	db   0
      dq                   97
__const_string_8:
	db  32,  33,  34,  35,  36,  37,  38,  39,  40,  41,  42,  43,  44,  45,  46,  47,  48,  49,  50,  51,  52,  53,  54,  55,  56,  57,  58,  59,  60,  61,  62,  63,  64,  65,  66,  67,  68,  69,  70,  71,  72,  73,  74,  75,  76,  77,  78,  79,  80,  81,  82,  83,  84,  85,  86,  87,  88,  89,  90,  91,  92,  93,  94,  95,  96,  97,  98,  99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126,   0
      dq                    0
__const_string_9:
	db   0
      dq                    0
__const_string_10:
	db   0
      dq                    0
__const_string_11:
	db   0
      dq                    0
__const_string_12:
	db   0
      dq                    0
__const_string_13:
	db   0
      dq                    0
__const_string_14:
	db   0
SECTION .bss
@asciiTable:
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
