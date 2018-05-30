global search
global __global_init
global origin
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
search:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   24
    push                  r12
    push                  r13
    push                  rbx
search_0_block_enter:
     mov                   r8,                  rdi
     mov                   r9,                  rsi
     mov                  r12,                  rdx
     cmp                   r9,                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
      je search_1_logical_true
     jmp search_2_logical_false
search_1_logical_true:
     mov                  rsi,                    1
     jmp search_3_logical_exit
search_2_logical_false:
     cmp                   r9,                    0
     mov                  rsi,                    0
    setl                  sil
search_3_logical_exit:
     cmp                  rsi,                    1
      je search_4_logical_true
     jmp search_5_logical_false
search_4_logical_true:
     mov                  rsi,                    1
     jmp search_6_logical_exit
search_5_logical_false:
     cmp                   r8,                    0
     mov                  rsi,                    0
    sete                  sil
search_6_logical_exit:
     cmp                  rsi,                    1
      je search_7_logical_true
     jmp search_8_logical_false
search_7_logical_true:
     mov                  rsi,                    1
     jmp search_9_logical_exit
search_8_logical_false:
     mov                  rsi,                   r8
     sub                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,    qword [@make + 0]
     add                  rbx,                  rsi
     mov                  rdi,                    0
     sal                  rdi,                    3
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,                  rdi
     mov                  rbx,                   r8
     sub                  rbx,                    1
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rbx,    qword [@make + 0]
     add                  rbx,                  rdi
     mov                  r13,                    1
     sal                  r13,                    3
     mov                  rdi,      qword [rbx + 0]
     add                  rdi,                  r13
     mov                  rbx,      qword [rsi + 0]
     add                  rbx,      qword [rdi + 0]
     mov                  rsi,                   r8
     sub                  rsi,                    1
     sal                  rsi,                    3
     mov                  rdi,    qword [@make + 0]
     add                  rdi,                  rsi
     mov                  rsi,                    2
     sal                  rsi,                    3
     mov                  rdi,      qword [rdi + 0]
     add                  rdi,                  rsi
     mov                  rsi,                  rbx
     add                  rsi,      qword [rdi + 0]
     cmp                  rsi,                   15
     mov                  rsi,                    0
    sete                  sil
search_9_logical_exit:
     cmp                  rsi,                    1
      je    search_10_if_true
     jmp   search_71_if_false
search_10_if_true:
     cmp                   r8,                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
     jne search_12_logical_false
search_11_logical_true:
     cmp                   r9,                    2
     mov                  rsi,                    0
    sete                  sil
     jmp search_13_logical_exit
search_12_logical_false:
     mov                  rsi,                    0
search_13_logical_exit:
     cmp                  rsi,                    1
      je    search_14_if_true
     jmp   search_44_if_false
search_14_if_true:
     mov                  rbx,                    2
     sal                  rbx,                    3
     mov                  rsi,    qword [@make + 0]
     add                  rsi,                  rbx
     mov                  rbx,                    2
     sal                  rbx,                    3
     mov                  rdi,      qword [rsi + 0]
     add                  rdi,                  rbx
     mov                  rsi,                   45
     sub                  rsi,                  r12
     mov      qword [rdi + 0],                  rsi
     mov                  rbx,                    0
     sal                  rbx,                    3
     mov                  rsi,    qword [@make + 0]
     add                  rsi,                  rbx
     mov                  rbx,                    0
     sal                  rbx,                    3
     mov                  rsi,      qword [rsi + 0]
     add                  rsi,                  rbx
     mov                  rbx,                    0
     sal                  rbx,                    3
     mov                  rdi,    qword [@make + 0]
     add                  rdi,                  rbx
     mov                  r12,                    1
     sal                  r12,                    3
     mov                  rbx,      qword [rdi + 0]
     add                  rbx,                  r12
     mov                  r12,      qword [rsi + 0]
     add                  r12,      qword [rbx + 0]
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rdi,    qword [@make + 0]
     add                  rdi,                  rsi
     mov                  rbx,                    2
     sal                  rbx,                    3
     mov                  rsi,      qword [rdi + 0]
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     add                  rbx,      qword [rsi + 0]
     mov                  rdi,                  rbx
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,    qword [@make + 0]
     add                  rbx,                  rsi
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,      qword [rbx + 0]
     add                  rbx,                  rsi
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  r12,    qword [@make + 0]
     add                  r12,                  rsi
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  r12,      qword [r12 + 0]
     add                  r12,                  rsi
     mov                  rbx,      qword [rbx + 0]
     add                  rbx,      qword [r12 + 0]
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  r12,    qword [@make + 0]
     add                  r12,                  rsi
     mov                   r8,                    2
     sal                   r8,                    3
     mov                  rsi,      qword [r12 + 0]
     add                  rsi,                   r8
     add                  rbx,      qword [rsi + 0]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
     jne search_16_logical_false
search_15_logical_true:
     mov                  rbx,                    2
     sal                  rbx,                    3
     mov                  rsi,    qword [@make + 0]
     add                  rsi,                  rbx
     mov                  r12,                    0
     sal                  r12,                    3
     mov                  rbx,      qword [rsi + 0]
     add                  rbx,                  r12
     mov                  rsi,                    2
     sal                  rsi,                    3
     mov                  r12,    qword [@make + 0]
     add                  r12,                  rsi
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  r12,      qword [r12 + 0]
     add                  r12,                  rsi
     mov                   r8,      qword [rbx + 0]
     add                   r8,      qword [r12 + 0]
     mov                  rsi,                    2
     sal                  rsi,                    3
     mov                  rbx,    qword [@make + 0]
     add                  rbx,                  rsi
     mov                  rsi,                    2
     sal                  rsi,                    3
     mov                  rbx,      qword [rbx + 0]
     add                  rbx,                  rsi
     mov                  rsi,                   r8
     add                  rsi,      qword [rbx + 0]
     cmp                  rsi,                  rdi
     mov                  rsi,                    0
    sete                  sil
     jmp search_17_logical_exit
search_16_logical_false:
     mov                  rsi,                    0
search_17_logical_exit:
     cmp                  rsi,                    1
     jne search_19_logical_false
search_18_logical_true:
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,    qword [@make + 0]
     add                  rbx,                  rsi
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  r12,      qword [rbx + 0]
     add                  r12,                  rsi
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,    qword [@make + 0]
     add                  rbx,                  rsi
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,      qword [rbx + 0]
     add                  rbx,                  rsi
     mov                  r12,      qword [r12 + 0]
     add                  r12,      qword [rbx + 0]
     mov                  rsi,                    2
     sal                  rsi,                    3
     mov                  rbx,    qword [@make + 0]
     add                  rbx,                  rsi
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,      qword [rbx + 0]
     add                  rbx,                  rsi
     mov                  rsi,                  r12
     add                  rsi,      qword [rbx + 0]
     cmp                  rsi,                  rdi
     mov                  rsi,                    0
    sete                  sil
     jmp search_20_logical_exit
search_19_logical_false:
     mov                  rsi,                    0
search_20_logical_exit:
     cmp                  rsi,                    1
     jne search_22_logical_false
search_21_logical_true:
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,    qword [@make + 0]
     add                  rbx,                  rsi
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  r12,      qword [rbx + 0]
     add                  r12,                  rsi
     mov                  rbx,                    1
     sal                  rbx,                    3
     mov                  rsi,    qword [@make + 0]
     add                  rsi,                  rbx
     mov                  rbx,                    1
     sal                  rbx,                    3
     mov                  rsi,      qword [rsi + 0]
     add                  rsi,                  rbx
     mov                  r12,      qword [r12 + 0]
     add                  r12,      qword [rsi + 0]
     mov                  rsi,                    2
     sal                  rsi,                    3
     mov                  rbx,    qword [@make + 0]
     add                  rbx,                  rsi
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,      qword [rbx + 0]
     add                  rbx,                  rsi
     mov                  rsi,                  r12
     add                  rsi,      qword [rbx + 0]
     cmp                  rsi,                  rdi
     mov                  rsi,                    0
    sete                  sil
     jmp search_23_logical_exit
search_22_logical_false:
     mov                  rsi,                    0
search_23_logical_exit:
     cmp                  rsi,                    1
     jne search_25_logical_false
search_24_logical_true:
     mov                  rbx,                    0
     sal                  rbx,                    3
     mov                  rsi,    qword [@make + 0]
     add                  rsi,                  rbx
     mov                  rbx,                    2
     sal                  rbx,                    3
     mov                  r12,      qword [rsi + 0]
     add                  r12,                  rbx
     mov                  rbx,                    1
     sal                  rbx,                    3
     mov                  rsi,    qword [@make + 0]
     add                  rsi,                  rbx
     mov                  rbx,                    2
     sal                  rbx,                    3
     mov                  rsi,      qword [rsi + 0]
     add                  rsi,                  rbx
     mov                  rbx,      qword [r12 + 0]
     add                  rbx,      qword [rsi + 0]
     mov                  r12,                    2
     sal                  r12,                    3
     mov                  rsi,    qword [@make + 0]
     add                  rsi,                  r12
     mov                  r12,                    2
     sal                  r12,                    3
     mov                  rsi,      qword [rsi + 0]
     add                  rsi,                  r12
     add                  rbx,      qword [rsi + 0]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     jmp search_26_logical_exit
search_25_logical_false:
     mov                  rsi,                    0
search_26_logical_exit:
     cmp                  rsi,                    1
     jne search_28_logical_false
search_27_logical_true:
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,    qword [@make + 0]
     add                  rbx,                  rsi
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  r12,      qword [rbx + 0]
     add                  r12,                  rsi
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,    qword [@make + 0]
     add                  rbx,                  rsi
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,      qword [rbx + 0]
     add                  rbx,                  rsi
     mov                  r12,      qword [r12 + 0]
     add                  r12,      qword [rbx + 0]
     mov                  rbx,                    2
     sal                  rbx,                    3
     mov                  rsi,    qword [@make + 0]
     add                  rsi,                  rbx
     mov                  rbx,                    2
     sal                  rbx,                    3
     mov                  rsi,      qword [rsi + 0]
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     add                  rbx,      qword [rsi + 0]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     jmp search_29_logical_exit
search_28_logical_false:
     mov                  rsi,                    0
search_29_logical_exit:
     cmp                  rsi,                    1
     jne search_31_logical_false
search_30_logical_true:
     mov                  rbx,                    2
     sal                  rbx,                    3
     mov                  rsi,    qword [@make + 0]
     add                  rsi,                  rbx
     mov                  rbx,                    0
     sal                  rbx,                    3
     mov                  r12,      qword [rsi + 0]
     add                  r12,                  rbx
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,    qword [@make + 0]
     add                  rbx,                  rsi
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,      qword [rbx + 0]
     add                  rbx,                  rsi
     mov                  r12,      qword [r12 + 0]
     add                  r12,      qword [rbx + 0]
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,    qword [@make + 0]
     add                  rbx,                  rsi
     mov                  rsi,                    2
     sal                  rsi,                    3
     mov                  rbx,      qword [rbx + 0]
     add                  rbx,                  rsi
     mov                  rsi,                  r12
     add                  rsi,      qword [rbx + 0]
     cmp                  rsi,                  rdi
     mov                  rsi,                    0
    sete                  sil
     jmp search_32_logical_exit
search_31_logical_false:
     mov                  rsi,                    0
search_32_logical_exit:
     cmp                  rsi,                    1
      je    search_33_if_true
     jmp   search_42_if_false
search_33_if_true:
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rdi,   qword [@count + 0]
     add                  rdi,                  rsi
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,   qword [@count + 0]
     add                  rbx,                  rsi
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,                    1
     mov      qword [rdi + 0],                  rsi
     mov                  r13,                    0
search_34_loop_condition:
     cmp                  r13,                    2
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
      je  search_35_loop_body
     jmp  search_41_loop_exit
search_35_loop_body:
     mov                  r12,                    0
search_36_loop_condition:
     cmp                  r12,                    2
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
      je  search_37_loop_body
     jmp  search_39_loop_exit
search_37_loop_body:
     mov                  rbx,                  r13
     sal                  rbx,                    3
     mov                  rsi,    qword [@make + 0]
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     sal                  rbx,                    3
     mov                  rsi,      qword [rsi + 0]
     add                  rsi,                  rbx
     mov                  rdi,      qword [rsi + 0]
    call             toString
     mov                  rdi,                  rax
    call                print
     mov                  rdi,     __const_string_0
    call                print
search_38_loop_increment:
     mov                  rsi,                  r12
     add                  r12,                    1
     jmp search_36_loop_condition
search_39_loop_exit:
     mov                  rdi,     __const_string_1
    call                print
search_40_loop_increment:
     mov                  rsi,                  r13
     add                  r13,                    1
     jmp search_34_loop_condition
search_41_loop_exit:
     mov                  rdi,     __const_string_2
    call                print
     jmp    search_43_if_exit
search_42_if_false:
search_43_if_exit:
     jmp    search_70_if_exit
search_44_if_false:
     cmp                   r9,                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je    search_45_if_true
     jmp   search_58_if_false
search_45_if_true:
     mov                  rbx,                   r8
     sal                  rbx,                    3
     mov                  rsi,    qword [@make + 0]
     add                  rsi,                  rbx
     mov                  rbx,                   r9
     sal                  rbx,                    3
     mov                  r13,      qword [rsi + 0]
     add                  r13,                  rbx
     mov                  rbx,                   r8
     sal                  rbx,                    3
     mov                  rsi,    qword [@make + 0]
     add                  rsi,                  rbx
     mov                  rbx,                    0
     sal                  rbx,                    3
     mov                  rsi,      qword [rsi + 0]
     add                  rsi,                  rbx
     mov                  rdi,                   15
     sub                  rdi,      qword [rsi + 0]
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rbx,    qword [@make + 0]
     add                  rbx,                  rsi
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,      qword [rbx + 0]
     add                  rbx,                  rsi
     mov                  rsi,                  rdi
     sub                  rsi,      qword [rbx + 0]
     mov      qword [r13 + 0],                  rsi
     mov                  rbx,                   r8
     sal                  rbx,                    3
     mov                  rsi,    qword [@make + 0]
     add                  rsi,                  rbx
     mov                  rbx,                   r9
     sal                  rbx,                    3
     mov                  rsi,      qword [rsi + 0]
     add                  rsi,                  rbx
     cmp      qword [rsi + 0],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
     jne search_47_logical_false
search_46_logical_true:
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rbx,    qword [@make + 0]
     add                  rbx,                  rsi
     mov                  rsi,                   r9
     sal                  rsi,                    3
     mov                  rbx,      qword [rbx + 0]
     add                  rbx,                  rsi
     cmp      qword [rbx + 0],                   10
     mov                  rsi,                    0
    setl                  sil
     jmp search_48_logical_exit
search_47_logical_false:
     mov                  rsi,                    0
search_48_logical_exit:
     cmp                  rsi,                    1
     jne search_50_logical_false
search_49_logical_true:
     mov                  rbx,                   r8
     sal                  rbx,                    3
     mov                  rsi,    qword [@make + 0]
     add                  rsi,                  rbx
     mov                  rbx,                   r9
     sal                  rbx,                    3
     mov                  rsi,      qword [rsi + 0]
     add                  rsi,                  rbx
     mov                  rsi,      qword [rsi + 0]
     sal                  rsi,                    3
     mov                  rbx,   qword [@color + 0]
     add                  rbx,                  rsi
     cmp      qword [rbx + 0],                    0
     mov                  rsi,                    0
    sete                  sil
     jmp search_51_logical_exit
search_50_logical_false:
     mov                  rsi,                    0
search_51_logical_exit:
     cmp                  rsi,                    1
      je    search_52_if_true
     jmp   search_56_if_false
search_52_if_true:
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rbx,    qword [@make + 0]
     add                  rbx,                  rsi
     mov                  rsi,                   r9
     sal                  rsi,                    3
     mov                  rbx,      qword [rbx + 0]
     add                  rbx,                  rsi
     mov                  rbx,      qword [rbx + 0]
     sal                  rbx,                    3
     mov                  rsi,   qword [@color + 0]
     add                  rsi,                  rbx
     mov      qword [rsi + 0],                    1
     cmp                   r9,                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je    search_53_if_true
     jmp   search_54_if_false
search_53_if_true:
     mov                  rdi,                   r8
     add                  rdi,                    1
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rbx,    qword [@make + 0]
     add                  rbx,                  rsi
     mov                  rsi,                   r9
     sal                  rsi,                    3
     mov                  rbx,      qword [rbx + 0]
     add                  rbx,                  rsi
     add                  r12,      qword [rbx + 0]
     mov                  rsi,                    0
     mov                  rdx,                  r12
    push                   r8
    push                   r9
    call               search
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     jmp    search_55_if_exit
search_54_if_false:
     mov                  r13,                   r9
     add                  r13,                    1
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rbx,    qword [@make + 0]
     add                  rbx,                  rsi
     mov                  rsi,                   r9
     sal                  rsi,                    3
     mov                  rdi,      qword [rbx + 0]
     add                  rdi,                  rsi
     mov                  rbx,                  r12
     add                  rbx,      qword [rdi + 0]
     mov                  rdi,                   r8
     mov                  rsi,                  r13
     mov                  rdx,                  rbx
    push                   r8
    push                   r9
    call               search
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
search_55_if_exit:
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rbx,    qword [@make + 0]
     add                  rbx,                  rsi
     mov                  rsi,                   r9
     sal                  rsi,                    3
     mov                  rbx,      qword [rbx + 0]
     add                  rbx,                  rsi
     mov                  rsi,      qword [rbx + 0]
     sal                  rsi,                    3
     mov                  rbx,   qword [@color + 0]
     add                  rbx,                  rsi
     mov      qword [rbx + 0],                    0
     jmp    search_57_if_exit
search_56_if_false:
search_57_if_exit:
     jmp    search_69_if_exit
search_58_if_false:
     mov                  r13,                    1
search_59_loop_condition:
     cmp                  r13,                    9
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
      je  search_60_loop_body
     jmp  search_68_loop_exit
search_60_loop_body:
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  rbx,   qword [@color + 0]
     add                  rbx,                  rsi
     cmp      qword [rbx + 0],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je    search_61_if_true
     jmp   search_65_if_false
search_61_if_true:
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  rbx,   qword [@color + 0]
     add                  rbx,                  rsi
     mov      qword [rbx + 0],                    1
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rbx,    qword [@make + 0]
     add                  rbx,                  rsi
     mov                  rsi,                   r9
     sal                  rsi,                    3
     mov                  rbx,      qword [rbx + 0]
     add                  rbx,                  rsi
     mov      qword [rbx + 0],                  r13
     cmp                   r9,                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je    search_62_if_true
     jmp   search_63_if_false
search_62_if_true:
     mov                  rsi,                   r8
     add                  rsi,                    1
     mov                  rbx,                  r12
     add                  rbx,                  r13
     mov                  rdi,                  rsi
     mov                  rsi,                    0
     mov                  rdx,                  rbx
    push                   r8
    push                   r9
    call               search
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     jmp    search_64_if_exit
search_63_if_false:
     mov                  rsi,                   r9
     add                  rsi,                    1
     mov                  rbx,                  r12
     add                  rbx,                  r13
     mov                  rdi,                   r8
     mov                  rdx,                  rbx
    push                   r8
    push                   r9
    call               search
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
search_64_if_exit:
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rbx,    qword [@make + 0]
     add                  rbx,                  rsi
     mov                  rsi,                   r9
     sal                  rsi,                    3
     mov                  rbx,      qword [rbx + 0]
     add                  rbx,                  rsi
     mov      qword [rbx + 0],                    0
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  rbx,   qword [@color + 0]
     add                  rbx,                  rsi
     mov      qword [rbx + 0],                    0
     jmp    search_66_if_exit
search_65_if_false:
search_66_if_exit:
search_67_loop_increment:
     mov                  rsi,                  r13
     add                  r13,                    1
     jmp search_59_loop_condition
search_68_loop_exit:
search_69_if_exit:
search_70_if_exit:
     jmp    search_72_if_exit
search_71_if_false:
search_72_if_exit:
search_73_block_exit:
     pop                  rbx
     pop                  r13
     pop                  r12
     add                  rsp,                   24
     pop                  rbp
     ret
__global_init:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   16
__global_init_0_block_enter:
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
     add                  rsi,                    8
     mov   qword [@color + 0],                  rsi
     mov                  rsi,                    1
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                    1
     add                  rsi,                    8
     mov   qword [@count + 0],                  rsi
__global_init_1_block_exit:
     add                  rsp,                   16
     pop                  rbp
     ret
origin:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   24
origin_0_block_enter:
     mov                  rsi,                  rdi
     mov                  rdi,                  rsi
     add                  rdi,                    1
     sal                  rdi,                    3
    push                  rsi
    push                  rdi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     mov                  rdi,                  rax
     mov      qword [rdi + 0],                  rsi
     add                  rdi,                    8
     mov    qword [@make + 0],                  rdi
     mov       qword [@i + 0],                    0
origin_1_loop_condition:
     cmp       qword [@i + 0],                  rsi
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je   origin_2_loop_body
     jmp   origin_8_loop_exit
origin_2_loop_body:
     mov                  rdi,       qword [@i + 0]
     sal                  rdi,                    3
     mov                   r8,    qword [@make + 0]
     add                   r8,                  rdi
     mov                  rdi,                  rsi
     add                  rdi,                    1
     sal                  rdi,                    3
    push                  rsi
    push                  rdi
    push                   r8
    call               malloc
     pop                   r8
     pop                  rdi
     pop                  rsi
     mov                  rdi,                  rax
     mov      qword [rdi + 0],                  rsi
     add                  rdi,                    8
     mov       qword [r8 + 0],                  rdi
     mov       qword [@j + 0],                    0
origin_3_loop_condition:
     cmp       qword [@j + 0],                  rsi
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je   origin_4_loop_body
     jmp   origin_6_loop_exit
origin_4_loop_body:
     mov                  rdi,       qword [@i + 0]
     sal                  rdi,                    3
     mov                   r8,    qword [@make + 0]
     add                   r8,                  rdi
     mov                  rdi,       qword [@j + 0]
     sal                  rdi,                    3
     mov                   r8,       qword [r8 + 0]
     add                   r8,                  rdi
     mov       qword [r8 + 0],                    0
origin_5_loop_increment:
     mov                  rdi,       qword [@j + 0]
     add       qword [@j + 0],                    1
     jmp origin_3_loop_condition
origin_6_loop_exit:
origin_7_loop_increment:
     mov                  rdi,       qword [@i + 0]
     add       qword [@i + 0],                    1
     jmp origin_1_loop_condition
origin_8_loop_exit:
origin_9_block_exit:
     add                  rsp,                   24
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call        __global_init
     sub                  rsp,                    8
    push                  rbx
main_0_block_enter:
     mov                  rdi,                    3
    call               origin
     mov                  rdi,                    0
     mov                  rsi,                    0
     mov                  rdx,                    0
    call               search
     mov                  rsi,                  rax
     mov                  rbx,                    0
     sal                  rbx,                    3
     mov                  rsi,   qword [@count + 0]
     add                  rsi,                  rbx
     mov                  rdi,      qword [rsi + 0]
    call             toString
     mov                  rdi,                  rax
    call              println
     mov                  rax,                    0
main_1_block_exit:
     pop                  rbx
     add                  rsp,                    8
     pop                  rbp
     ret
SECTION .data
      dq                    1
__const_string_0:
	db  32,   0
      dq                    2
__const_string_1:
	db  10,   0
      dq                    2
__const_string_2:
	db  10,   0
SECTION .bss
@make:
    resq                    1
@color:
    resq                    1
@count:
    resq                    1
@i:
    resq                    1
@j:
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
