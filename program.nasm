global random
global move
global __global_init
global pd
global swap
global merge
global show
global main
global initialize
global win
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
random:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   40
random_0_block_enter:
     mov                  rsi,    qword [@seed + 0]
     mov                  rax,                  rsi
     mov                  rcx,       qword [@Q + 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,       qword [@A + 0]
    imul                  rdi,                  rsi
     mov                   r8,    qword [@seed + 0]
     mov                  rax,                   r8
     mov                  rcx,       qword [@Q + 0]
     cdq
    idiv                  ecx
     mov                   r8,                  rax
     mov                  rsi,       qword [@R + 0]
    imul                  rsi,                   r8
     sub                  rdi,                  rsi
     cmp                  rdi,                    0
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
      je     random_1_if_true
     jmp    random_2_if_false
random_1_if_true:
     mov    qword [@seed + 0],                  rdi
     jmp     random_3_if_exit
random_2_if_false:
     mov                  rsi,                  rdi
     add                  rsi,       qword [@M + 0]
     mov    qword [@seed + 0],                  rsi
random_3_if_exit:
     mov                  rax,    qword [@seed + 0]
random_4_block_exit:
     add                  rsp,                   40
     pop                  rbp
     ret
move:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   16
move_0_block_enter:
     mov                  rsi,                    0
move_1_loop_condition:
     cmp                  rsi,     qword [@now + 0]
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je     move_2_loop_body
     jmp     move_4_loop_exit
move_2_loop_body:
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                   r8,       qword [@a + 0]
     add                   r8,                  rdi
     sub       qword [r8 + 0],                    1
     add                  rsi,                    1
move_3_loop_increment:
     jmp move_1_loop_condition
move_4_loop_exit:
     mov                  rsi,     qword [@now + 0]
     sal                  rsi,                    3
     mov                  rdi,       qword [@a + 0]
     add                  rdi,                  rsi
     mov                  rax,     qword [@now + 0]
     mov      qword [rdi + 0],                  rax
     add     qword [@now + 0],                    1
move_5_block_exit:
     add                  rsp,                   16
     pop                  rbp
     ret
__global_init:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   24
__global_init_0_block_enter:
     mov       qword [@A + 0],                48271
     mov       qword [@M + 0],           2147483647
     mov    qword [@seed + 0],                    1
__global_init_1_block_exit:
     add                  rsp,                   24
     pop                  rbp
     ret
pd:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    8
pd_0_block_enter:
     mov                  rsi,                  rdi
pd_1_loop_condition:
     cmp       qword [@h + 0],                  rsi
     mov                  rdi,                    0
   setle                  dil
     cmp                  rdi,                    1
      je       pd_2_loop_body
     jmp       pd_7_loop_exit
pd_2_loop_body:
     mov                   r8,       qword [@h + 0]
     add                   r8,                    1
     mov                  rdi,       qword [@h + 0]
    imul                  rdi,                   r8
     mov                  rax,                  rdi
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov                  rdi,                  rax
     cmp                  rsi,                  rdi
     mov                  rdi,                    0
    sete                  dil
     cmp                  rdi,                    1
      je         pd_3_if_true
     jmp        pd_4_if_false
pd_3_if_true:
     mov                  rax,                    1
     jmp      pd_8_block_exit
pd_4_if_false:
pd_5_if_exit:
pd_6_loop_increment:
     add       qword [@h + 0],                    1
     jmp  pd_1_loop_condition
pd_7_loop_exit:
     mov                  rax,                    0
pd_8_block_exit:
     add                  rsp,                    8
     pop                  rbp
     ret
swap:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    8
swap_0_block_enter:
     mov                   r8,                  rdi
     mov                  rdi,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                   r9,       qword [@a + 0]
     add                   r9,                  rsi
     mov                  rsi,       qword [r9 + 0]
     mov                   r9,                   r8
     sal                   r9,                    3
     mov                   r8,       qword [@a + 0]
     add                   r8,                   r9
     mov                  r10,                  rdi
     sal                  r10,                    3
     mov                   r9,       qword [@a + 0]
     add                   r9,                  r10
     mov                  rax,       qword [r9 + 0]
     mov       qword [r8 + 0],                  rax
     mov                   r8,                  rdi
     sal                   r8,                    3
     mov                  rdi,       qword [@a + 0]
     add                  rdi,                   r8
     mov      qword [rdi + 0],                  rsi
swap_1_block_exit:
     add                  rsp,                    8
     pop                  rbp
     ret
merge:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   16
merge_0_block_enter:
     mov                  rsi,                    0
merge_1_loop_condition:
     cmp                  rsi,     qword [@now + 0]
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je    merge_2_loop_body
     jmp   merge_14_loop_exit
merge_2_loop_body:
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                   r8,       qword [@a + 0]
     add                   r8,                  rdi
     cmp       qword [r8 + 0],                    0
     mov                  rdi,                    0
    sete                  dil
     cmp                  rdi,                    1
      je      merge_3_if_true
     jmp    merge_11_if_false
merge_3_if_true:
     mov                  rdi,                  rsi
     add                  rdi,                    1
merge_4_loop_condition:
     cmp                  rdi,     qword [@now + 0]
     mov                   r8,                    0
    setl                  r8b
     cmp                   r8,                    1
      je    merge_5_loop_body
     jmp   merge_10_loop_exit
merge_5_loop_body:
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                   r8,       qword [@a + 0]
     add                   r8,                   r9
     cmp       qword [r8 + 0],                    0
     mov                   r8,                    0
   setne                  r8b
     cmp                   r8,                    1
      je      merge_6_if_true
     jmp     merge_7_if_false
merge_6_if_true:
     mov                   r8,                  rdi
merge_23_inline_enter:
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                   r9,       qword [@a + 0]
     add                   r9,                  rdi
     mov                  rdi,       qword [r9 + 0]
     mov                  r10,                  rsi
     sal                  r10,                    3
     mov                   r9,       qword [@a + 0]
     add                   r9,                  r10
     mov                  r11,                   r8
     sal                  r11,                    3
     mov                  r10,       qword [@a + 0]
     add                  r10,                  r11
     mov                  rax,      qword [r10 + 0]
     mov       qword [r9 + 0],                  rax
     mov                   r9,                   r8
     sal                   r9,                    3
     mov                   r8,       qword [@a + 0]
     add                   r8,                   r9
     mov       qword [r8 + 0],                  rdi
merge_24_inline_exit:
     jmp   merge_10_loop_exit
merge_7_if_false:
merge_8_if_exit:
merge_9_loop_increment:
     add                  rdi,                    1
     jmp merge_4_loop_condition
merge_10_loop_exit:
     jmp     merge_12_if_exit
merge_11_if_false:
merge_12_if_exit:
merge_13_loop_increment:
     add                  rsi,                    1
     jmp merge_1_loop_condition
merge_14_loop_exit:
     mov                  rsi,                    0
merge_15_loop_condition:
     cmp                  rsi,     qword [@now + 0]
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je   merge_16_loop_body
     jmp   merge_21_loop_exit
merge_16_loop_body:
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                   r8,       qword [@a + 0]
     add                   r8,                  rdi
     cmp       qword [r8 + 0],                    0
     mov                  rdi,                    0
    sete                  dil
     cmp                  rdi,                    1
      je     merge_17_if_true
     jmp    merge_18_if_false
merge_17_if_true:
     mov     qword [@now + 0],                  rsi
     jmp   merge_21_loop_exit
merge_18_if_false:
merge_19_if_exit:
merge_20_loop_increment:
     add                  rsi,                    1
     jmp merge_15_loop_condition
merge_21_loop_exit:
merge_22_block_exit:
     add                  rsp,                   16
     pop                  rbp
     ret
show:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   16
    push                  rbx
show_0_block_enter:
     mov                  rbx,                    0
show_1_loop_condition:
     cmp                  rbx,     qword [@now + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     show_2_loop_body
     jmp     show_4_loop_exit
show_2_loop_body:
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rdi
     mov                  rdi,      qword [rsi + 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_0
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
show_3_loop_increment:
     add                  rbx,                    1
     jmp show_1_loop_condition
show_4_loop_exit:
     mov                  rdi,     __const_string_1
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
show_5_block_exit:
     pop                  rbx
     add                  rsp,                   16
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call        __global_init
     sub                  rsp,                   72
    push                  r12
    push                  r14
    push                  r13
    push                  rbx
main_0_block_enter:
     mov                  r12,                    0
     mov                  rsi,                    0
     mov                  rbx,                    0
     mov       qword [@n + 0],                  210
     mov       qword [@h + 0],                    0
     mov                  rdi,                  100
     add                  rdi,                    1
     sal                  rdi,                    3
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rdi,                  rax
     mov      qword [rdi + 0],                  100
     add                  rdi,                    8
     mov       qword [@a + 0],                  rdi
     mov                  rdi,       qword [@M + 0]
     mov                  rax,                  rdi
     mov                  rcx,       qword [@A + 0]
     cdq
    idiv                  ecx
     mov                  rdi,                  rax
     mov       qword [@Q + 0],                  rdi
     mov                  rdi,       qword [@M + 0]
     mov                  rax,                  rdi
     mov                  rcx,       qword [@A + 0]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov       qword [@R + 0],                  rdi
     mov                  rdi,       qword [@n + 0]
main_15_inline_enter:
main_16_loop_condition:
     cmp       qword [@h + 0],                  rdi
     mov                   r8,                    0
   setle                  r8b
     cmp                   r8,                    1
      je    main_17_loop_body
     jmp    main_22_loop_exit
main_17_loop_body:
     mov                   r8,       qword [@h + 0]
     add                   r8,                    1
     mov                  r13,       qword [@h + 0]
    imul                  r13,                   r8
     mov                   r8,                  r13
     mov                  rax,                   r8
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov                   r8,                  rax
     cmp                  rdi,                   r8
     mov                   r8,                    0
    sete                  r8b
     cmp                   r8,                    1
      je      main_18_if_true
     jmp     main_19_if_false
main_18_if_true:
     mov                  rdi,                    1
     jmp  main_23_inline_exit
main_19_if_false:
main_20_if_exit:
main_21_loop_increment:
     add       qword [@h + 0],                    1
     jmp main_16_loop_condition
main_22_loop_exit:
     mov                  rdi,                    0
main_23_inline_exit:
     xor                  rdi,                    1
     cmp                  rdi,                    1
      je       main_1_if_true
     jmp      main_2_if_false
main_1_if_true:
     mov                  rdi,     __const_string_2
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    1
     jmp   main_14_block_exit
main_2_if_false:
main_3_if_exit:
     mov                  rdi,     __const_string_3
    push                  rsi
    call              println
     pop                  rsi
     mov                  rdi,              3654898
main_24_inline_enter:
     mov    qword [@seed + 0],                  rdi
main_25_inline_exit:
main_26_inline_enter:
     mov                  rdi,    qword [@seed + 0]
     mov                  rax,                  rdi
     mov                  rcx,       qword [@Q + 0]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                   r8,       qword [@A + 0]
    imul                   r8,                  rdi
     mov                  r13,    qword [@seed + 0]
     mov                  rax,                  r13
     mov                  rcx,       qword [@Q + 0]
     cdq
    idiv                  ecx
     mov                  r13,                  rax
     mov                  rdi,       qword [@R + 0]
    imul                  rdi,                  r13
     sub                   r8,                  rdi
     cmp                   r8,                    0
     mov                  rdi,                    0
   setge                  dil
     cmp                  rdi,                    1
      je      main_27_if_true
     jmp     main_28_if_false
main_27_if_true:
     mov    qword [@seed + 0],                   r8
     jmp      main_29_if_exit
main_28_if_false:
     mov                  rdi,                   r8
     add                  rdi,       qword [@M + 0]
     mov    qword [@seed + 0],                  rdi
main_29_if_exit:
     mov                  rdi,    qword [@seed + 0]
main_30_inline_exit:
     mov                  rax,                  rdi
     mov                  rcx,                   10
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     add                  rdi,                    1
     mov     qword [@now + 0],                  rdi
     mov                  rdi,     qword [@now + 0]
    push                  rsi
    call          println_Int
     pop                  rsi
main_4_loop_condition:
     mov                  rdi,     qword [@now + 0]
     sub                  rdi,                    1
     cmp                  r12,                  rdi
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je     main_5_loop_body
     jmp    main_10_loop_exit
main_5_loop_body:
     mov                   r8,                  r12
     sal                   r8,                    3
     mov                  rdi,       qword [@a + 0]
     add                  rdi,                   r8
main_31_inline_enter:
     mov                  r13,    qword [@seed + 0]
     mov                  rax,                  r13
     mov                  rcx,       qword [@Q + 0]
     cdq
    idiv                  ecx
     mov                  r13,                  rdx
     mov                   r8,       qword [@A + 0]
    imul                   r8,                  r13
     mov                   r9,    qword [@seed + 0]
     mov                  rax,                   r9
     mov                  rcx,       qword [@Q + 0]
     cdq
    idiv                  ecx
     mov                   r9,                  rax
     mov                  r13,       qword [@R + 0]
    imul                  r13,                   r9
     sub                   r8,                  r13
     cmp                   r8,                    0
     mov                  r13,                    0
   setge                 r13b
     cmp                  r13,                    1
      je      main_32_if_true
     jmp     main_33_if_false
main_32_if_true:
     mov    qword [@seed + 0],                   r8
     jmp      main_34_if_exit
main_33_if_false:
     add                   r8,       qword [@M + 0]
     mov    qword [@seed + 0],                   r8
main_34_if_exit:
     mov                   r8,    qword [@seed + 0]
main_35_inline_exit:
     mov                  rax,                   r8
     mov                  rcx,                   10
     cdq
    idiv                  ecx
     mov                   r8,                  rdx
     add                   r8,                    1
     mov      qword [rdi + 0],                   r8
main_6_loop_condition:
     mov                   r8,                  r12
     sal                   r8,                    3
     mov                  rdi,       qword [@a + 0]
     add                  rdi,                   r8
     mov                  rdi,      qword [rdi + 0]
     add                  rdi,                  rsi
     cmp                  rdi,       qword [@n + 0]
     mov                  rdi,                    0
    setg                  dil
     cmp                  rdi,                    1
      je     main_7_loop_body
     jmp     main_8_loop_exit
main_7_loop_body:
     mov                   r8,                  r12
     sal                   r8,                    3
     mov                  rdi,       qword [@a + 0]
     add                  rdi,                   r8
main_36_inline_enter:
     mov                   r8,    qword [@seed + 0]
     mov                  rax,                   r8
     mov                  rcx,       qword [@Q + 0]
     cdq
    idiv                  ecx
     mov                   r8,                  rdx
     mov                  r13,       qword [@A + 0]
    imul                  r13,                   r8
     mov                   r9,    qword [@seed + 0]
     mov                  rax,                   r9
     mov                  rcx,       qword [@Q + 0]
     cdq
    idiv                  ecx
     mov                   r9,                  rax
     mov                   r8,       qword [@R + 0]
    imul                   r8,                   r9
     sub                  r13,                   r8
     mov                   r8,                  r13
     cmp                   r8,                    0
     mov                  r13,                    0
   setge                 r13b
     cmp                  r13,                    1
      je      main_37_if_true
     jmp     main_38_if_false
main_37_if_true:
     mov    qword [@seed + 0],                   r8
     jmp      main_39_if_exit
main_38_if_false:
     add                   r8,       qword [@M + 0]
     mov    qword [@seed + 0],                   r8
main_39_if_exit:
     mov                   r8,    qword [@seed + 0]
main_40_inline_exit:
     mov                  rax,                   r8
     mov                  rcx,                   10
     cdq
    idiv                  ecx
     mov                   r8,                  rdx
     add                   r8,                    1
     mov      qword [rdi + 0],                   r8
     jmp main_6_loop_condition
main_8_loop_exit:
     mov                  rdi,                  r12
     sal                  rdi,                    3
     mov                   r8,       qword [@a + 0]
     add                   r8,                  rdi
     add                  rsi,       qword [r8 + 0]
main_9_loop_increment:
     add                  r12,                    1
     jmp main_4_loop_condition
main_10_loop_exit:
     mov                  rdi,     qword [@now + 0]
     sub                  rdi,                    1
     mov                  r12,                  rdi
     sal                  r12,                    3
     mov                  rdi,       qword [@a + 0]
     add                  rdi,                  r12
     mov                  r12,       qword [@n + 0]
     sub                  r12,                  rsi
     mov      qword [rdi + 0],                  r12
main_41_inline_enter:
     mov                  r12,                    0
main_42_loop_condition:
     cmp                  r12,     qword [@now + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je    main_43_loop_body
     jmp    main_45_loop_exit
main_43_loop_body:
     mov                  rdi,                  r12
     sal                  rdi,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rdi
     mov                  rdi,      qword [rsi + 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_8
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
main_44_loop_increment:
     add                  r12,                    1
     jmp main_42_loop_condition
main_45_loop_exit:
     mov                  rdi,     __const_string_9
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
main_46_inline_exit:
main_47_inline_enter:
     mov                  rdi,                    0
main_48_loop_condition:
     cmp                  rdi,     qword [@now + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je    main_49_loop_body
     jmp    main_61_loop_exit
main_49_loop_body:
     mov                  r12,                  rdi
     sal                  r12,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  r12
     cmp      qword [rsi + 0],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je      main_50_if_true
     jmp     main_58_if_false
main_50_if_true:
     mov                  rsi,                  rdi
     add                  rsi,                    1
main_51_loop_condition:
     cmp                  rsi,     qword [@now + 0]
     mov                  r12,                    0
    setl                 r12b
     cmp                  r12,                    1
      je    main_52_loop_body
     jmp    main_57_loop_exit
main_52_loop_body:
     mov                  r12,                  rsi
     sal                  r12,                    3
     mov                   r8,       qword [@a + 0]
     add                   r8,                  r12
     cmp       qword [r8 + 0],                    0
     mov                  r12,                    0
   setne                 r12b
     cmp                  r12,                    1
      je      main_53_if_true
     jmp     main_54_if_false
main_53_if_true:
    push                  rdi
    call                 swap
     pop                  rdi
     jmp    main_57_loop_exit
main_54_if_false:
main_55_if_exit:
main_56_loop_increment:
     add                  rsi,                    1
     jmp main_51_loop_condition
main_57_loop_exit:
     jmp      main_59_if_exit
main_58_if_false:
main_59_if_exit:
main_60_loop_increment:
     add                  rdi,                    1
     jmp main_48_loop_condition
main_61_loop_exit:
     mov                  rdi,                    0
main_62_loop_condition:
     cmp                  rdi,     qword [@now + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je    main_63_loop_body
     jmp    main_68_loop_exit
main_63_loop_body:
     mov                  r12,                  rdi
     sal                  r12,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  r12
     cmp      qword [rsi + 0],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je      main_64_if_true
     jmp     main_65_if_false
main_64_if_true:
     mov     qword [@now + 0],                  rdi
     jmp    main_68_loop_exit
main_65_if_false:
main_66_if_exit:
main_67_loop_increment:
     add                  rdi,                    1
     jmp main_62_loop_condition
main_68_loop_exit:
main_69_inline_exit:
main_11_loop_condition:
main_70_inline_enter:
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                  rdi,     qword [@now + 0]
     cmp                  rdi,       qword [@h + 0]
     mov                  rdi,                    0
   setne                  dil
     cmp                  rdi,                    1
      je      main_71_if_true
     jmp     main_72_if_false
main_71_if_true:
     mov                  rsi,                    0
     jmp  main_96_inline_exit
main_72_if_false:
main_73_if_exit:
     mov                  r12,                    0
main_74_loop_condition:
     cmp                  r12,     qword [@now + 0]
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je    main_75_loop_body
     jmp    main_77_loop_exit
main_75_loop_body:
     mov                   r8,                  r12
     sal                   r8,                    3
     mov                  rdi,                  rsi
     add                  rdi,                   r8
     mov                  r13,                  r12
     sal                  r13,                    3
     mov                   r8,       qword [@a + 0]
     add                   r8,                  r13
     mov                  rax,       qword [r8 + 0]
     mov      qword [rdi + 0],                  rax
main_76_loop_increment:
     add                  r12,                    1
     jmp main_74_loop_condition
main_77_loop_exit:
     mov                  rdi,                    0
main_78_loop_condition:
     mov                  r12,     qword [@now + 0]
     sub                  r12,                    1
     cmp                  rdi,                  r12
     mov                  r12,                    0
    setl                 r12b
     cmp                  r12,                    1
      je    main_79_loop_body
     jmp    main_88_loop_exit
main_79_loop_body:
     mov                  r12,                  rdi
     add                  r12,                    1
main_80_loop_condition:
     cmp                  r12,     qword [@now + 0]
     mov                   r8,                    0
    setl                  r8b
     cmp                   r8,                    1
      je    main_81_loop_body
     jmp    main_86_loop_exit
main_81_loop_body:
     mov                  r13,                  rdi
     sal                  r13,                    3
     mov                   r8,                  rsi
     add                   r8,                  r13
     mov                   r9,                  r12
     sal                   r9,                    3
     mov                  r13,                  rsi
     add                  r13,                   r9
     mov                   r8,       qword [r8 + 0]
     cmp                   r8,      qword [r13 + 0]
     mov                   r8,                    0
    setg                  r8b
     cmp                   r8,                    1
      je      main_82_if_true
     jmp     main_83_if_false
main_82_if_true:
     mov                   r8,                  rdi
     sal                   r8,                    3
     mov                  r13,                  rsi
     add                  r13,                   r8
     mov                   r8,      qword [r13 + 0]
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  r13,                  rsi
     add                  r13,                   r9
     mov                   r9,                  r12
     sal                   r9,                    3
     mov                  r14,                  rsi
     add                  r14,                   r9
     mov                  rax,      qword [r14 + 0]
     mov      qword [r13 + 0],                  rax
     mov                   r9,                  r12
     sal                   r9,                    3
     mov                  r13,                  rsi
     add                  r13,                   r9
     mov      qword [r13 + 0],                   r8
     jmp      main_84_if_exit
main_83_if_false:
main_84_if_exit:
main_85_loop_increment:
     add                  r12,                    1
     jmp main_80_loop_condition
main_86_loop_exit:
main_87_loop_increment:
     add                  rdi,                    1
     jmp main_78_loop_condition
main_88_loop_exit:
     mov                  rdi,                    0
main_89_loop_condition:
     cmp                  rdi,     qword [@now + 0]
     mov                  r12,                    0
    setl                 r12b
     cmp                  r12,                    1
      je    main_90_loop_body
     jmp    main_95_loop_exit
main_90_loop_body:
     mov                   r8,                  rdi
     sal                   r8,                    3
     mov                  r12,                  rsi
     add                  r12,                   r8
     mov                   r8,                  rdi
     add                   r8,                    1
     cmp      qword [r12 + 0],                   r8
     mov                  r12,                    0
   setne                 r12b
     cmp                  r12,                    1
      je      main_91_if_true
     jmp     main_92_if_false
main_91_if_true:
     mov                  rsi,                    0
     jmp  main_96_inline_exit
main_92_if_false:
main_93_if_exit:
main_94_loop_increment:
     add                  rdi,                    1
     jmp main_89_loop_condition
main_95_loop_exit:
     mov                  rsi,                    1
main_96_inline_exit:
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je    main_12_loop_body
     jmp    main_13_loop_exit
main_12_loop_body:
     add                  rbx,                    1
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_4
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_5
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
main_97_inline_enter:
     mov                  rsi,                    0
main_98_loop_condition:
     cmp                  rsi,     qword [@now + 0]
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je    main_99_loop_body
     jmp   main_101_loop_exit
main_99_loop_body:
     mov                  r12,                  rsi
     sal                  r12,                    3
     mov                  rdi,       qword [@a + 0]
     add                  rdi,                  r12
     sub      qword [rdi + 0],                    1
     add                  rsi,                    1
main_100_loop_increment:
     jmp main_98_loop_condition
main_101_loop_exit:
     mov                  rdi,     qword [@now + 0]
     sal                  rdi,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rdi
     mov                  rax,     qword [@now + 0]
     mov      qword [rsi + 0],                  rax
     add     qword [@now + 0],                    1
main_102_inline_exit:
main_103_inline_enter:
     mov                  rdi,                    0
main_104_loop_condition:
     cmp                  rdi,     qword [@now + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je   main_105_loop_body
     jmp   main_117_loop_exit
main_105_loop_body:
     mov                  r12,                  rdi
     sal                  r12,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  r12
     cmp      qword [rsi + 0],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je     main_106_if_true
     jmp    main_114_if_false
main_106_if_true:
     mov                  rsi,                  rdi
     add                  rsi,                    1
main_107_loop_condition:
     cmp                  rsi,     qword [@now + 0]
     mov                  r12,                    0
    setl                 r12b
     cmp                  r12,                    1
      je   main_108_loop_body
     jmp   main_113_loop_exit
main_108_loop_body:
     mov                   r8,                  rsi
     sal                   r8,                    3
     mov                  r12,       qword [@a + 0]
     add                  r12,                   r8
     cmp      qword [r12 + 0],                    0
     mov                  r12,                    0
   setne                 r12b
     cmp                  r12,                    1
      je     main_109_if_true
     jmp    main_110_if_false
main_109_if_true:
    push                  rdi
    call                 swap
     pop                  rdi
     jmp   main_113_loop_exit
main_110_if_false:
main_111_if_exit:
main_112_loop_increment:
     add                  rsi,                    1
     jmp main_107_loop_condition
main_113_loop_exit:
     jmp     main_115_if_exit
main_114_if_false:
main_115_if_exit:
main_116_loop_increment:
     add                  rdi,                    1
     jmp main_104_loop_condition
main_117_loop_exit:
     mov                  rdi,                    0
main_118_loop_condition:
     cmp                  rdi,     qword [@now + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je   main_119_loop_body
     jmp   main_124_loop_exit
main_119_loop_body:
     mov                  rsi,                  rdi
     sal                  rsi,                    3
     mov                  r12,       qword [@a + 0]
     add                  r12,                  rsi
     cmp      qword [r12 + 0],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je     main_120_if_true
     jmp    main_121_if_false
main_120_if_true:
     mov     qword [@now + 0],                  rdi
     jmp   main_124_loop_exit
main_121_if_false:
main_122_if_exit:
main_123_loop_increment:
     add                  rdi,                    1
     jmp main_118_loop_condition
main_124_loop_exit:
main_125_inline_exit:
main_126_inline_enter:
     mov                  r12,                    0
main_127_loop_condition:
     cmp                  r12,     qword [@now + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je   main_128_loop_body
     jmp   main_130_loop_exit
main_128_loop_body:
     mov                  rdi,                  r12
     sal                  rdi,                    3
     mov                  rsi,       qword [@a + 0]
     add                  rsi,                  rdi
     mov                  rdi,      qword [rsi + 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,    __const_string_10
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
main_129_loop_increment:
     add                  r12,                    1
     jmp main_127_loop_condition
main_130_loop_exit:
     mov                  rdi,    __const_string_11
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
main_131_inline_exit:
     jmp main_11_loop_condition
main_13_loop_exit:
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_6
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_7
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
main_14_block_exit:
     pop                  rbx
     pop                  r13
     pop                  r14
     pop                  r12
     add                  rsp,                   72
     pop                  rbp
     ret
initialize:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    8
initialize_0_block_enter:
     mov    qword [@seed + 0],                  rdi
initialize_1_block_exit:
     add                  rsp,                    8
     pop                  rbp
     ret
win:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   24
    push                  rbx
win_0_block_enter:
     mov                  rsi,                  100
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  100
     add                  rsi,                    8
     mov                  rdi,     qword [@now + 0]
     cmp                  rdi,       qword [@h + 0]
     mov                  rdi,                    0
   setne                  dil
     cmp                  rdi,                    1
      je        win_1_if_true
     jmp       win_2_if_false
win_1_if_true:
     mov                  rax,                    0
     jmp    win_26_block_exit
win_2_if_false:
win_3_if_exit:
     mov                   r8,                    0
win_4_loop_condition:
     cmp                   r8,     qword [@now + 0]
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je      win_5_loop_body
     jmp      win_7_loop_exit
win_5_loop_body:
     mov                   r9,                   r8
     sal                   r9,                    3
     mov                  rdi,                  rsi
     add                  rdi,                   r9
     mov                   r9,                   r8
     sal                   r9,                    3
     mov                  r10,       qword [@a + 0]
     add                  r10,                   r9
     mov                  rax,      qword [r10 + 0]
     mov      qword [rdi + 0],                  rax
win_6_loop_increment:
     add                   r8,                    1
     jmp win_4_loop_condition
win_7_loop_exit:
     mov                  rdi,                    0
win_8_loop_condition:
     mov                   r8,     qword [@now + 0]
     sub                   r8,                    1
     cmp                  rdi,                   r8
     mov                   r8,                    0
    setl                  r8b
     cmp                   r8,                    1
      je      win_9_loop_body
     jmp     win_18_loop_exit
win_9_loop_body:
     mov                   r8,                  rdi
     add                   r8,                    1
win_10_loop_condition:
     cmp                   r8,     qword [@now + 0]
     mov                   r9,                    0
    setl                  r9b
     cmp                   r9,                    1
      je     win_11_loop_body
     jmp     win_16_loop_exit
win_11_loop_body:
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  r10,                  rsi
     add                  r10,                   r9
     mov                  r11,                   r8
     sal                  r11,                    3
     mov                   r9,                  rsi
     add                   r9,                  r11
     mov                  r10,      qword [r10 + 0]
     cmp                  r10,       qword [r9 + 0]
     mov                   r9,                    0
    setg                  r9b
     cmp                   r9,                    1
      je       win_12_if_true
     jmp      win_13_if_false
win_12_if_true:
     mov                  r10,                  rdi
     sal                  r10,                    3
     mov                   r9,                  rsi
     add                   r9,                  r10
     mov                   r9,       qword [r9 + 0]
     mov                  r11,                  rdi
     sal                  r11,                    3
     mov                  r10,                  rsi
     add                  r10,                  r11
     mov                  rbx,                   r8
     sal                  rbx,                    3
     mov                  r11,                  rsi
     add                  r11,                  rbx
     mov                  rax,      qword [r11 + 0]
     mov      qword [r10 + 0],                  rax
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  r11,                  rsi
     add                  r11,                  r10
     mov      qword [r11 + 0],                   r9
     jmp       win_14_if_exit
win_13_if_false:
win_14_if_exit:
win_15_loop_increment:
     add                   r8,                    1
     jmp win_10_loop_condition
win_16_loop_exit:
win_17_loop_increment:
     add                  rdi,                    1
     jmp win_8_loop_condition
win_18_loop_exit:
     mov                  rdi,                    0
win_19_loop_condition:
     cmp                  rdi,     qword [@now + 0]
     mov                   r8,                    0
    setl                  r8b
     cmp                   r8,                    1
      je     win_20_loop_body
     jmp     win_25_loop_exit
win_20_loop_body:
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                   r8,                  rsi
     add                   r8,                   r9
     mov                   r9,                  rdi
     add                   r9,                    1
     cmp       qword [r8 + 0],                   r9
     mov                   r8,                    0
   setne                  r8b
     cmp                   r8,                    1
      je       win_21_if_true
     jmp      win_22_if_false
win_21_if_true:
     mov                  rax,                    0
     jmp    win_26_block_exit
win_22_if_false:
win_23_if_exit:
win_24_loop_increment:
     add                  rdi,                    1
     jmp win_19_loop_condition
win_25_loop_exit:
     mov                  rax,                    1
win_26_block_exit:
     pop                  rbx
     add                  rsp,                   24
     pop                  rbp
     ret
SECTION .data
      dq                    1
__const_string_0:
	db  32,   0
      dq                    0
__const_string_1:
	db   0
      dq                   79
__const_string_2:
	db  83, 111, 114, 114, 121,  44,  32, 116, 104, 101,  32, 110, 117, 109,  98, 101, 114,  32, 110,  32, 109, 117, 115, 116,  32,  98, 101,  32,  97,  32, 110, 117, 109,  98, 101, 114,  32, 115,  46, 116,  46,  32, 116, 104, 101, 114, 101,  32, 101, 120, 105, 115, 116, 115,  32, 105,  32, 115,  97, 116, 105, 115, 102, 121, 105, 110, 103,  32, 110,  61,  49,  43,  50,  43,  46,  46,  46,  43, 105,   0
      dq                   12
__const_string_3:
	db  76, 101, 116,  39, 115,  32, 115, 116,  97, 114, 116,  33,   0
      dq                    5
__const_string_4:
	db 115, 116, 101, 112,  32,   0
      dq                    1
__const_string_5:
	db  58,   0
      dq                    7
__const_string_6:
	db  84, 111, 116,  97, 108,  58,  32,   0
      dq                    8
__const_string_7:
	db  32, 115, 116, 101, 112,  40, 115,  41,   0
      dq                    1
__const_string_8:
	db  32,   0
      dq                    0
__const_string_9:
	db   0
      dq                    1
__const_string_10:
	db  32,   0
      dq                    0
__const_string_11:
	db   0
SECTION .bss
@n:
    resq                    1
@h:
    resq                    1
@now:
    resq                    1
@a:
    resq                    1
@A:
    resq                    1
@M:
    resq                    1
@Q:
    resq                    1
@R:
    resq                    1
@seed:
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
