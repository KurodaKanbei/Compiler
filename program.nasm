global Calculate_Ksm
global init
global __global_init
global Calculate_p
global Ksm
global Calculate_Comb
global Euler
global main
global Calculate_q
global Calculate_G
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
Calculate_Ksm:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   32
Calculate_Ksm_0_block_enter:
     mov                  rsi,                    1
     jmp Calculate_Ksm_1_loop_condition
Calculate_Ksm_1_loop_condition:
     cmp                  rsi,       qword [@M + 0]
     mov                  rdi,                    0
   setle                  dil
     cmp                  rdi,                    1
      je Calculate_Ksm_2_loop_body
     jmp Calculate_Ksm_8_loop_exit
Calculate_Ksm_2_loop_body:
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                   r8,     qword [@ksm + 0]
     add                   r8,                  rdi
     mov                  rdi,                    0
     sal                  rdi,                    3
     mov                   r8,       qword [r8 + 0]
     add                   r8,                  rdi
     mov       qword [r8 + 0],                    1
     mov                  rdi,                    1
     jmp Calculate_Ksm_3_loop_condition
Calculate_Ksm_3_loop_condition:
     mov                   r8,       qword [@C + 0]
     sub                   r8,                    2
     cmp                  rdi,                   r8
     mov                   r8,                    0
   setle                  r8b
     cmp                   r8,                    1
      je Calculate_Ksm_4_loop_body
     jmp Calculate_Ksm_6_loop_exit
Calculate_Ksm_4_loop_body:
     mov                   r9,                  rsi
     sal                   r9,                    3
     mov                   r8,     qword [@ksm + 0]
     add                   r8,                   r9
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                   r8,       qword [r8 + 0]
     add                   r8,                   r9
     mov                  r10,                  rsi
     sal                  r10,                    3
     mov                   r9,     qword [@ksm + 0]
     add                   r9,                  r10
     mov                  r10,                  rdi
     sub                  r10,                    1
     sal                  r10,                    3
     mov                   r9,       qword [r9 + 0]
     add                   r9,                  r10
     mov                   r9,       qword [r9 + 0]
    imul                   r9,                  rsi
     mov                  rax,                   r9
     mov                  rcx,     qword [@Mod + 0]
     cdq
    idiv                  ecx
     mov                   r9,                  rdx
     mov       qword [r8 + 0],                   r9
     jmp Calculate_Ksm_5_loop_increment
Calculate_Ksm_5_loop_increment:
     add                  rdi,                    1
     jmp Calculate_Ksm_3_loop_condition
Calculate_Ksm_6_loop_exit:
     jmp Calculate_Ksm_7_loop_increment
Calculate_Ksm_7_loop_increment:
     add                  rsi,                    1
     jmp Calculate_Ksm_1_loop_condition
Calculate_Ksm_8_loop_exit:
     jmp Calculate_Ksm_9_block_exit
Calculate_Ksm_9_block_exit:
     add                  rsp,                   32
     pop                  rbp
     ret
init:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  144
init_0_block_enter:
     mov     qword [@tot + 0],                    0
     mov       qword [@C + 0],                    0
     mov       qword [@M + 0],                    0
     mov       qword [@N + 0],                    0
     mov                  rsi,                    6
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                    6
     add                  rsi,                    8
     mov       qword [@g + 0],                  rsi
     mov                  rsi,                    0
     jmp init_1_loop_condition
init_1_loop_condition:
     cmp                  rsi,                    6
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je     init_2_loop_body
     jmp    init_12_loop_exit
init_2_loop_body:
     mov                   r8,                  rsi
     sal                   r8,                    3
     mov                  rdi,       qword [@g + 0]
     add                  rdi,                   r8
     mov                   r8,               100001
     add                   r8,                    1
     sal                   r8,                    3
    push                  rdi
    push                   r8
    push                  rsi
     mov                  rdi,                   r8
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                   r8,                  rax
     mov       qword [r8 + 0],               100001
     add                   r8,                    8
     mov      qword [rdi + 0],                   r8
     mov                  rdi,                    0
     jmp init_3_loop_condition
init_3_loop_condition:
     cmp                  rdi,               100001
     mov                   r8,                    0
    setl                  r8b
     cmp                   r8,                    1
      je     init_4_loop_body
     jmp    init_10_loop_exit
init_4_loop_body:
     mov                   r9,                  rsi
     sal                   r9,                    3
     mov                   r8,       qword [@g + 0]
     add                   r8,                   r9
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                   r8,       qword [r8 + 0]
     add                   r8,                   r9
     mov                   r9,                   15
     add                   r9,                    1
     sal                   r9,                    3
    push                   r8
    push                  rdi
    push                  rsi
    push                   r9
     mov                  rdi,                   r9
    call               malloc
     pop                   r9
     pop                  rsi
     pop                  rdi
     pop                   r8
     mov                   r9,                  rax
     mov       qword [r9 + 0],                   15
     add                   r9,                    8
     mov       qword [r8 + 0],                   r9
     mov                   r8,                    0
     jmp init_5_loop_condition
init_5_loop_condition:
     cmp                   r8,                   15
     mov                   r9,                    0
    setl                  r9b
     cmp                   r9,                    1
      je     init_6_loop_body
     jmp     init_8_loop_exit
init_6_loop_body:
     mov                  r10,                  rsi
     sal                  r10,                    3
     mov                   r9,       qword [@g + 0]
     add                   r9,                  r10
     mov                  r10,                  rdi
     sal                  r10,                    3
     mov                   r9,       qword [r9 + 0]
     add                   r9,                  r10
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                   r9,       qword [r9 + 0]
     add                   r9,                  r10
     mov       qword [r9 + 0],                    0
     jmp init_7_loop_increment
init_7_loop_increment:
     add                   r8,                    1
     jmp init_5_loop_condition
init_8_loop_exit:
     jmp init_9_loop_increment
init_9_loop_increment:
     add                  rdi,                    1
     jmp init_3_loop_condition
init_10_loop_exit:
     jmp init_11_loop_increment
init_11_loop_increment:
     add                  rsi,                    1
     jmp init_1_loop_condition
init_12_loop_exit:
     mov                  rsi,                    6
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                    6
     add                  rsi,                    8
     mov     qword [@Sum + 0],                  rsi
     mov                  rsi,                    0
     jmp init_13_loop_condition
init_13_loop_condition:
     cmp                  rsi,                    6
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je    init_14_loop_body
     jmp    init_24_loop_exit
init_14_loop_body:
     mov                   r8,                  rsi
     sal                   r8,                    3
     mov                  rdi,     qword [@Sum + 0]
     add                  rdi,                   r8
     mov                   r8,               100001
     add                   r8,                    1
     sal                   r8,                    3
    push                  rdi
    push                  rsi
    push                   r8
     mov                  rdi,                   r8
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     pop                  rdi
     mov                   r8,                  rax
     mov       qword [r8 + 0],               100001
     add                   r8,                    8
     mov      qword [rdi + 0],                   r8
     mov                  rdi,                    0
     jmp init_15_loop_condition
init_15_loop_condition:
     cmp                  rdi,               100001
     mov                   r8,                    0
    setl                  r8b
     cmp                   r8,                    1
      je    init_16_loop_body
     jmp    init_22_loop_exit
init_16_loop_body:
     mov                   r9,                  rsi
     sal                   r9,                    3
     mov                   r8,     qword [@Sum + 0]
     add                   r8,                   r9
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                   r8,       qword [r8 + 0]
     add                   r8,                   r9
     mov                   r9,                   15
     add                   r9,                    1
     sal                   r9,                    3
    push                   r8
    push                  rdi
    push                  rsi
    push                   r9
     mov                  rdi,                   r9
    call               malloc
     pop                   r9
     pop                  rsi
     pop                  rdi
     pop                   r8
     mov                   r9,                  rax
     mov       qword [r9 + 0],                   15
     add                   r9,                    8
     mov       qword [r8 + 0],                   r9
     mov                   r8,                    0
     jmp init_17_loop_condition
init_17_loop_condition:
     cmp                   r8,                   15
     mov                   r9,                    0
    setl                  r9b
     cmp                   r9,                    1
      je    init_18_loop_body
     jmp    init_20_loop_exit
init_18_loop_body:
     mov                  r10,                  rsi
     sal                  r10,                    3
     mov                   r9,     qword [@Sum + 0]
     add                   r9,                  r10
     mov                  r10,                  rdi
     sal                  r10,                    3
     mov                   r9,       qword [r9 + 0]
     add                   r9,                  r10
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                   r9,       qword [r9 + 0]
     add                   r9,                  r10
     mov       qword [r9 + 0],                    0
     jmp init_19_loop_increment
init_19_loop_increment:
     add                   r8,                    1
     jmp init_17_loop_condition
init_20_loop_exit:
     jmp init_21_loop_increment
init_21_loop_increment:
     add                  rdi,                    1
     jmp init_15_loop_condition
init_22_loop_exit:
     jmp init_23_loop_increment
init_23_loop_increment:
     add                  rsi,                    1
     jmp init_13_loop_condition
init_24_loop_exit:
     mov                  rsi,                 1001
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                 1001
     add                  rsi,                    8
     mov      qword [@fm + 0],                  rsi
     mov                  rsi,                    0
     jmp init_25_loop_condition
init_25_loop_condition:
     cmp                  rsi,                 1001
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je    init_26_loop_body
     jmp    init_32_loop_exit
init_26_loop_body:
     mov                   r8,                  rsi
     sal                   r8,                    3
     mov                  rdi,      qword [@fm + 0]
     add                  rdi,                   r8
     mov                   r8,                   13
     add                   r8,                    1
     sal                   r8,                    3
    push                  rdi
    push                   r8
    push                  rsi
     mov                  rdi,                   r8
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                   r8,                  rax
     mov       qword [r8 + 0],                   13
     add                   r8,                    8
     mov      qword [rdi + 0],                   r8
     mov                  rdi,                    0
     jmp init_27_loop_condition
init_27_loop_condition:
     cmp                  rdi,                   13
     mov                   r8,                    0
    setl                  r8b
     cmp                   r8,                    1
      je    init_28_loop_body
     jmp    init_30_loop_exit
init_28_loop_body:
     mov                   r8,                  rsi
     sal                   r8,                    3
     mov                   r9,      qword [@fm + 0]
     add                   r9,                   r8
     mov                   r8,                  rdi
     sal                   r8,                    3
     mov                   r9,       qword [r9 + 0]
     add                   r9,                   r8
     mov       qword [r9 + 0],                    0
     jmp init_29_loop_increment
init_29_loop_increment:
     add                  rdi,                    1
     jmp init_27_loop_condition
init_30_loop_exit:
     jmp init_31_loop_increment
init_31_loop_increment:
     add                  rsi,                    1
     jmp init_25_loop_condition
init_32_loop_exit:
     mov                  rsi,               100001
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],               100001
     add                  rsi,                    8
     mov     qword [@ksm + 0],                  rsi
     mov                  rsi,                    0
     jmp init_33_loop_condition
init_33_loop_condition:
     cmp                  rsi,               100001
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je    init_34_loop_body
     jmp    init_40_loop_exit
init_34_loop_body:
     mov                   r8,                  rsi
     sal                   r8,                    3
     mov                  rdi,     qword [@ksm + 0]
     add                  rdi,                   r8
     mov                   r8,                   21
     add                   r8,                    1
     sal                   r8,                    3
    push                   r8
    push                  rdi
    push                  rsi
     mov                  rdi,                   r8
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     pop                   r8
     mov                   r8,                  rax
     mov       qword [r8 + 0],                   21
     add                   r8,                    8
     mov      qword [rdi + 0],                   r8
     mov                  rdi,                    0
     jmp init_35_loop_condition
init_35_loop_condition:
     cmp                  rdi,                   21
     mov                   r8,                    0
    setl                  r8b
     cmp                   r8,                    1
      je    init_36_loop_body
     jmp    init_38_loop_exit
init_36_loop_body:
     mov                   r9,                  rsi
     sal                   r9,                    3
     mov                   r8,     qword [@ksm + 0]
     add                   r8,                   r9
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                   r8,       qword [r8 + 0]
     add                   r8,                   r9
     mov       qword [r8 + 0],                    0
     jmp init_37_loop_increment
init_37_loop_increment:
     add                  rdi,                    1
     jmp init_35_loop_condition
init_38_loop_exit:
     jmp init_39_loop_increment
init_39_loop_increment:
     add                  rsi,                    1
     jmp init_33_loop_condition
init_40_loop_exit:
     mov                  rsi,                   21
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                   21
     add                  rsi,                    8
     mov       qword [@p + 0],                  rsi
     mov                  rsi,                    0
     jmp init_41_loop_condition
init_41_loop_condition:
     cmp                  rsi,                   21
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je    init_42_loop_body
     jmp    init_48_loop_exit
init_42_loop_body:
     mov                   r8,                  rsi
     sal                   r8,                    3
     mov                  rdi,       qword [@p + 0]
     add                  rdi,                   r8
     mov                   r8,                   21
     add                   r8,                    1
     sal                   r8,                    3
    push                  rdi
    push                  rsi
    push                   r8
     mov                  rdi,                   r8
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     pop                  rdi
     mov                   r8,                  rax
     mov       qword [r8 + 0],                   21
     add                   r8,                    8
     mov      qword [rdi + 0],                   r8
     mov                  rdi,                    0
     jmp init_43_loop_condition
init_43_loop_condition:
     cmp                  rdi,                   21
     mov                   r8,                    0
    setl                  r8b
     cmp                   r8,                    1
      je    init_44_loop_body
     jmp    init_46_loop_exit
init_44_loop_body:
     mov                   r8,                  rsi
     sal                   r8,                    3
     mov                   r9,       qword [@p + 0]
     add                   r9,                   r8
     mov                   r8,                  rdi
     sal                   r8,                    3
     mov                   r9,       qword [r9 + 0]
     add                   r9,                   r8
     mov       qword [r9 + 0],                    0
     jmp init_45_loop_increment
init_45_loop_increment:
     add                  rdi,                    1
     jmp init_43_loop_condition
init_46_loop_exit:
     jmp init_47_loop_increment
init_47_loop_increment:
     add                  rsi,                    1
     jmp init_41_loop_condition
init_48_loop_exit:
     mov                  rsi,                   21
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                   21
     add                  rsi,                    8
     mov       qword [@q + 0],                  rsi
     mov                  rsi,                    0
     jmp init_49_loop_condition
init_49_loop_condition:
     cmp                  rsi,                   21
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je    init_50_loop_body
     jmp    init_56_loop_exit
init_50_loop_body:
     mov                   r8,                  rsi
     sal                   r8,                    3
     mov                  rdi,       qword [@q + 0]
     add                  rdi,                   r8
     mov                   r8,               100001
     add                   r8,                    1
     sal                   r8,                    3
    push                   r8
    push                  rdi
    push                  rsi
     mov                  rdi,                   r8
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     pop                   r8
     mov                   r8,                  rax
     mov       qword [r8 + 0],               100001
     add                   r8,                    8
     mov      qword [rdi + 0],                   r8
     mov                  rdi,                    0
     jmp init_51_loop_condition
init_51_loop_condition:
     cmp                  rdi,               100001
     mov                   r8,                    0
    setl                  r8b
     cmp                   r8,                    1
      je    init_52_loop_body
     jmp    init_54_loop_exit
init_52_loop_body:
     mov                   r9,                  rsi
     sal                   r9,                    3
     mov                   r8,       qword [@q + 0]
     add                   r8,                   r9
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                   r8,       qword [r8 + 0]
     add                   r8,                   r9
     mov       qword [r8 + 0],                    0
     jmp init_53_loop_increment
init_53_loop_increment:
     add                  rdi,                    1
     jmp init_51_loop_condition
init_54_loop_exit:
     jmp init_55_loop_increment
init_55_loop_increment:
     add                  rsi,                    1
     jmp init_49_loop_condition
init_56_loop_exit:
     mov                  rsi,               100001
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],               100001
     add                  rsi,                    8
     mov    qword [@Comb + 0],                  rsi
     mov                  rsi,                    0
     jmp init_57_loop_condition
init_57_loop_condition:
     cmp                  rsi,               100001
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je    init_58_loop_body
     jmp    init_64_loop_exit
init_58_loop_body:
     mov                   r8,                  rsi
     sal                   r8,                    3
     mov                  rdi,    qword [@Comb + 0]
     add                  rdi,                   r8
     mov                   r8,                   21
     add                   r8,                    1
     sal                   r8,                    3
    push                   r8
    push                  rdi
    push                  rsi
     mov                  rdi,                   r8
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     pop                   r8
     mov                   r8,                  rax
     mov       qword [r8 + 0],                   21
     add                   r8,                    8
     mov      qword [rdi + 0],                   r8
     mov                  rdi,                    0
     jmp init_59_loop_condition
init_59_loop_condition:
     cmp                  rdi,                   21
     mov                   r8,                    0
    setl                  r8b
     cmp                   r8,                    1
      je    init_60_loop_body
     jmp    init_62_loop_exit
init_60_loop_body:
     mov                   r9,                  rsi
     sal                   r9,                    3
     mov                   r8,    qword [@Comb + 0]
     add                   r8,                   r9
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                   r8,       qword [r8 + 0]
     add                   r8,                   r9
     mov       qword [r8 + 0],                    0
     jmp init_61_loop_increment
init_61_loop_increment:
     add                  rdi,                    1
     jmp init_59_loop_condition
init_62_loop_exit:
     jmp init_63_loop_increment
init_63_loop_increment:
     add                  rsi,                    1
     jmp init_57_loop_condition
init_64_loop_exit:
     mov                  rsi,                 1001
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                 1001
     add                  rsi,                    8
     mov      qword [@fn + 0],                  rsi
     mov                  rsi,                    0
     jmp init_65_loop_condition
init_65_loop_condition:
     cmp                  rsi,                 1001
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je    init_66_loop_body
     jmp    init_68_loop_exit
init_66_loop_body:
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                   r8,      qword [@fn + 0]
     add                   r8,                  rdi
     mov       qword [r8 + 0],                    0
     jmp init_67_loop_increment
init_67_loop_increment:
     add                  rsi,                    1
     jmp init_65_loop_condition
init_68_loop_exit:
     mov                  rsi,                 1001
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                 1001
     add                  rsi,                    8
     mov      qword [@fc + 0],                  rsi
     mov                  rsi,                    0
     jmp init_69_loop_condition
init_69_loop_condition:
     cmp                  rsi,                 1001
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je    init_70_loop_body
     jmp    init_72_loop_exit
init_70_loop_body:
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                   r8,      qword [@fc + 0]
     add                   r8,                  rdi
     mov       qword [r8 + 0],                    0
     jmp init_71_loop_increment
init_71_loop_increment:
     add                  rsi,                    1
     jmp init_69_loop_condition
init_72_loop_exit:
     mov                  rsi,                 1001
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                 1001
     add                  rsi,                    8
     mov       qword [@m + 0],                  rsi
     mov                  rsi,                    0
     jmp init_73_loop_condition
init_73_loop_condition:
     cmp                  rsi,                 1001
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je    init_74_loop_body
     jmp    init_76_loop_exit
init_74_loop_body:
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                   r8,       qword [@m + 0]
     add                   r8,                  rdi
     mov       qword [r8 + 0],                    0
     jmp init_75_loop_increment
init_75_loop_increment:
     add                  rsi,                    1
     jmp init_73_loop_condition
init_76_loop_exit:
     mov                  rsi,                 1001
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                 1001
     add                  rsi,                    8
     mov     qword [@res + 0],                  rsi
     mov                  rsi,                    0
     jmp init_77_loop_condition
init_77_loop_condition:
     cmp                  rsi,                 1001
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je    init_78_loop_body
     jmp    init_80_loop_exit
init_78_loop_body:
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                   r8,     qword [@res + 0]
     add                   r8,                  rdi
     mov       qword [r8 + 0],                    0
     jmp init_79_loop_increment
init_79_loop_increment:
     add                  rsi,                    1
     jmp init_77_loop_condition
init_80_loop_exit:
     mov                  rsi,                 1001
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                 1001
     add                  rsi,                    8
     mov       qword [@b + 0],                  rsi
     mov                  rsi,                    0
     jmp init_81_loop_condition
init_81_loop_condition:
     cmp                  rsi,                 1001
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je    init_82_loop_body
     jmp    init_84_loop_exit
init_82_loop_body:
     mov                   r8,                  rsi
     sal                   r8,                    3
     mov                  rdi,       qword [@b + 0]
     add                  rdi,                   r8
     mov      qword [rdi + 0],                    0
     jmp init_83_loop_increment
init_83_loop_increment:
     add                  rsi,                    1
     jmp init_81_loop_condition
init_84_loop_exit:
     mov                  rsi,               100001
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],               100001
     add                  rsi,                    8
     mov       qword [@v + 0],                  rsi
     mov                  rsi,                    0
     jmp init_85_loop_condition
init_85_loop_condition:
     cmp                  rsi,               100001
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je    init_86_loop_body
     jmp    init_88_loop_exit
init_86_loop_body:
     mov                   r8,                  rsi
     sal                   r8,                    3
     mov                  rdi,       qword [@v + 0]
     add                  rdi,                   r8
     mov      qword [rdi + 0],                    0
     jmp init_87_loop_increment
init_87_loop_increment:
     add                  rsi,                    1
     jmp init_85_loop_condition
init_88_loop_exit:
     mov                  rsi,               100001
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],               100001
     add                  rsi,                    8
     mov   qword [@prime + 0],                  rsi
     mov                  rsi,                    0
     jmp init_89_loop_condition
init_89_loop_condition:
     cmp                  rsi,               100001
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je    init_90_loop_body
     jmp    init_92_loop_exit
init_90_loop_body:
     mov                   r8,                  rsi
     sal                   r8,                    3
     mov                  rdi,   qword [@prime + 0]
     add                  rdi,                   r8
     mov      qword [rdi + 0],                    0
     jmp init_91_loop_increment
init_91_loop_increment:
     add                  rsi,                    1
     jmp init_89_loop_condition
init_92_loop_exit:
     jmp   init_93_block_exit
init_93_block_exit:
     add                  rsp,                  144
     pop                  rbp
     ret
__global_init:
    push                  rbp
     mov                  rbp,                  rsp
__global_init_0_block_enter:
     jmp __global_init_1_block_exit
__global_init_1_block_exit:
     pop                  rbp
     ret
Calculate_p:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   24
    push                  r12
    push                  r13
    push                  rbx
Calculate_p_0_block_enter:
     mov                  rbx,                    0
     sal                  rbx,                    3
     mov                  rsi,       qword [@p + 0]
     add                  rsi,                  rbx
     mov                  rbx,                    0
     sal                  rbx,                    3
     mov                  rsi,      qword [rsi + 0]
     add                  rsi,                  rbx
     mov      qword [rsi + 0],                    1
     mov                  rbx,                    1
     sal                  rbx,                    3
     mov                  rsi,       qword [@p + 0]
     add                  rsi,                  rbx
     mov                  rbx,                    1
     sal                  rbx,                    3
     mov                  rsi,      qword [rsi + 0]
     add                  rsi,                  rbx
     mov      qword [rsi + 0],                    1
     mov                  rbx,                    1
     sal                  rbx,                    3
     mov                  rsi,       qword [@p + 0]
     add                  rsi,                  rbx
     mov                  rbx,                    0
     sal                  rbx,                    3
     mov                  rsi,      qword [rsi + 0]
     add                  rsi,                  rbx
     mov                  rbx,     qword [@Mod + 0]
     sub                  rbx,                    1
     mov      qword [rsi + 0],                  rbx
     mov                  rbx,                    2
     jmp Calculate_p_1_loop_condition
Calculate_p_1_loop_condition:
     mov                  rsi,       qword [@C + 0]
     sub                  rsi,                    2
     cmp                  rbx,                  rsi
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
      je Calculate_p_2_loop_body
     jmp Calculate_p_12_loop_exit
Calculate_p_2_loop_body:
     mov                  rsi,     qword [@Mod + 0]
     sub                  rsi,                    2
     mov                  rdi,                  rbx
    call                  Ksm
     mov                  rsi,                  rax
     mov                  rdi,                    0
     jmp Calculate_p_3_loop_condition
Calculate_p_3_loop_condition:
     cmp                  rdi,                  rbx
     mov                  r12,                    0
    setl                 r12b
     cmp                  r12,                    1
      je Calculate_p_4_loop_body
     jmp Calculate_p_6_loop_exit
Calculate_p_4_loop_body:
     mov                   r8,                  rbx
     sal                   r8,                    3
     mov                  r12,       qword [@p + 0]
     add                  r12,                   r8
     mov                   r8,                  rdi
     add                   r8,                    1
     sal                   r8,                    3
     mov                  r12,      qword [r12 + 0]
     add                  r12,                   r8
     mov                   r8,                  rbx
     sub                   r8,                    1
     mov                  r13,                   r8
     sal                  r13,                    3
     mov                   r8,       qword [@p + 0]
     add                   r8,                  r13
     mov                  r13,                  rdi
     sal                  r13,                    3
     mov                   r8,       qword [r8 + 0]
     add                   r8,                  r13
     mov                   r8,       qword [r8 + 0]
     mov      qword [r12 + 0],                   r8
     jmp Calculate_p_5_loop_increment
Calculate_p_5_loop_increment:
     add                  rdi,                    1
     jmp Calculate_p_3_loop_condition
Calculate_p_6_loop_exit:
     mov                  rdi,                    0
     jmp Calculate_p_7_loop_condition
Calculate_p_7_loop_condition:
     cmp                  rdi,                  rbx
     mov                  r12,                    0
   setle                 r12b
     cmp                  r12,                    1
      je Calculate_p_8_loop_body
     jmp Calculate_p_10_loop_exit
Calculate_p_8_loop_body:
     mov                   r8,                  rbx
     sal                   r8,                    3
     mov                  r12,       qword [@p + 0]
     add                  r12,                   r8
     mov                   r8,                  rdi
     sal                   r8,                    3
     mov                  r12,      qword [r12 + 0]
     add                  r12,                   r8
     mov                  r13,                  rbx
     sal                  r13,                    3
     mov                   r8,       qword [@p + 0]
     add                   r8,                  r13
     mov                  r13,                  rdi
     sal                  r13,                    3
     mov                   r8,       qword [r8 + 0]
     add                   r8,                  r13
     mov                  r13,                  rbx
     sub                  r13,                    1
     sal                  r13,                    3
     mov                   r9,       qword [@p + 0]
     add                   r9,                  r13
     mov                  r13,                  rdi
     sal                  r13,                    3
     mov                   r9,       qword [r9 + 0]
     add                   r9,                  r13
     mov                  r13,       qword [r9 + 0]
    imul                  r13,                  rbx
     mov                  rax,                  r13
     mov                  rcx,     qword [@Mod + 0]
     cdq
    idiv                  ecx
     mov                  r13,                  rdx
     mov                   r8,       qword [r8 + 0]
     sub                   r8,                  r13
     add                   r8,     qword [@Mod + 0]
    imul                   r8,                  rsi
     mov                  rax,                   r8
     mov                  rcx,     qword [@Mod + 0]
     cdq
    idiv                  ecx
     mov                   r8,                  rdx
     mov      qword [r12 + 0],                   r8
     jmp Calculate_p_9_loop_increment
Calculate_p_9_loop_increment:
     add                  rdi,                    1
     jmp Calculate_p_7_loop_condition
Calculate_p_10_loop_exit:
     jmp Calculate_p_11_loop_increment
Calculate_p_11_loop_increment:
     mov                  rsi,                  rbx
     add                  rbx,                    1
     jmp Calculate_p_1_loop_condition
Calculate_p_12_loop_exit:
     jmp Calculate_p_13_block_exit
Calculate_p_13_block_exit:
     pop                  rbx
     pop                  r13
     pop                  r12
     add                  rsp,                   24
     pop                  rbp
     ret
Ksm:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    8
    push                  r12
    push                  rbx
Ksm_0_block_enter:
     mov                  rbx,                  rdi
     mov                  r12,                  rsi
     cmp                  r12,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je        Ksm_1_if_true
     jmp       Ksm_2_if_false
Ksm_1_if_true:
     mov                  rax,                    1
     jmp    Ksm_10_block_exit
Ksm_2_if_false:
     jmp        Ksm_3_if_exit
Ksm_3_if_exit:
     cmp                  r12,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je        Ksm_4_if_true
     jmp       Ksm_5_if_false
Ksm_4_if_true:
     mov                  rsi,                  rbx
     mov                  rax,                  rsi
     mov                  rcx,     qword [@Mod + 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rax,                  rsi
     jmp    Ksm_10_block_exit
Ksm_5_if_false:
     jmp        Ksm_6_if_exit
Ksm_6_if_exit:
     mov                  rsi,                  r12
     sar                  rsi,                    1
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call                  Ksm
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  r12
     mov                  rax,                  rdi
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     cmp                  rdi,                    1
     mov                  rdi,                    0
    sete                  dil
     cmp                  rdi,                    1
      je        Ksm_7_if_true
     jmp       Ksm_8_if_false
Ksm_7_if_true:
    imul                  rsi,                  rsi
     mov                  rax,                  rsi
     mov                  rcx,     qword [@Mod + 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    imul                  rsi,                  rbx
     mov                  rax,                  rsi
     mov                  rcx,     qword [@Mod + 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rax,                  rsi
     jmp    Ksm_10_block_exit
Ksm_8_if_false:
    imul                  rsi,                  rsi
     mov                  rax,                  rsi
     mov                  rcx,     qword [@Mod + 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rax,                  rsi
     jmp    Ksm_10_block_exit
Ksm_9_if_exit:
     jmp    Ksm_10_block_exit
Ksm_10_block_exit:
     pop                  rbx
     pop                  r12
     add                  rsp,                    8
     pop                  rbp
     ret
Calculate_Comb:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   32
Calculate_Comb_0_block_enter:
     mov                  rsi,                    0
     jmp Calculate_Comb_1_loop_condition
Calculate_Comb_1_loop_condition:
     cmp                  rsi,       qword [@M + 0]
     mov                  rdi,                    0
   setle                  dil
     cmp                  rdi,                    1
      je Calculate_Comb_2_loop_body
     jmp Calculate_Comb_4_loop_exit
Calculate_Comb_2_loop_body:
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                   r8,    qword [@Comb + 0]
     add                   r8,                  rdi
     mov                  rdi,                    0
     sal                  rdi,                    3
     mov                   r8,       qword [r8 + 0]
     add                   r8,                  rdi
     mov       qword [r8 + 0],                    1
     jmp Calculate_Comb_3_loop_increment
Calculate_Comb_3_loop_increment:
     add                  rsi,                    1
     jmp Calculate_Comb_1_loop_condition
Calculate_Comb_4_loop_exit:
     mov                  rsi,                    1
     jmp Calculate_Comb_5_loop_condition
Calculate_Comb_5_loop_condition:
     cmp                  rsi,       qword [@M + 0]
     mov                  rdi,                    0
   setle                  dil
     cmp                  rdi,                    1
      je Calculate_Comb_6_loop_body
     jmp Calculate_Comb_15_loop_exit
Calculate_Comb_6_loop_body:
     mov                  rdi,                    1
     jmp Calculate_Comb_7_loop_condition
Calculate_Comb_7_loop_condition:
     cmp                  rdi,       qword [@C + 0]
     mov                   r8,                    0
   setle                  r8b
     cmp                   r8,                    1
      je Calculate_Comb_8_loop_body
     jmp Calculate_Comb_13_loop_exit
Calculate_Comb_8_loop_body:
     mov                   r9,                  rsi
     sal                   r9,                    3
     mov                   r8,    qword [@Comb + 0]
     add                   r8,                   r9
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                   r8,       qword [r8 + 0]
     add                   r8,                   r9
     mov                   r9,                  rsi
     sub                   r9,                    1
     mov                  r10,                   r9
     sal                  r10,                    3
     mov                   r9,    qword [@Comb + 0]
     add                   r9,                  r10
     mov                  r10,                  rdi
     sal                  r10,                    3
     mov                   r9,       qword [r9 + 0]
     add                   r9,                  r10
     mov                  r10,                  rsi
     sub                  r10,                    1
     mov                  r11,                  r10
     sal                  r11,                    3
     mov                  r10,    qword [@Comb + 0]
     add                  r10,                  r11
     mov                  r11,                  rdi
     sub                  r11,                    1
     sal                  r11,                    3
     mov                  r10,      qword [r10 + 0]
     add                  r10,                  r11
     mov                   r9,       qword [r9 + 0]
     add                   r9,      qword [r10 + 0]
     mov       qword [r8 + 0],                   r9
     mov                   r9,                  rsi
     sal                   r9,                    3
     mov                   r8,    qword [@Comb + 0]
     add                   r8,                   r9
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                   r8,       qword [r8 + 0]
     add                   r8,                   r9
     mov                   r8,       qword [r8 + 0]
     cmp                   r8,     qword [@Mod + 0]
     mov                   r8,                    0
   setge                  r8b
     cmp                   r8,                    1
      je Calculate_Comb_9_if_true
     jmp Calculate_Comb_10_if_false
Calculate_Comb_9_if_true:
     mov                   r9,                  rsi
     sal                   r9,                    3
     mov                   r8,    qword [@Comb + 0]
     add                   r8,                   r9
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                   r8,       qword [r8 + 0]
     add                   r8,                   r9
     mov                  r10,                  rsi
     sal                  r10,                    3
     mov                   r9,    qword [@Comb + 0]
     add                   r9,                  r10
     mov                  r10,                  rdi
     sal                  r10,                    3
     mov                   r9,       qword [r9 + 0]
     add                   r9,                  r10
     mov                   r9,       qword [r9 + 0]
     sub                   r9,     qword [@Mod + 0]
     mov       qword [r8 + 0],                   r9
     jmp Calculate_Comb_11_if_exit
Calculate_Comb_10_if_false:
     jmp Calculate_Comb_11_if_exit
Calculate_Comb_11_if_exit:
     jmp Calculate_Comb_12_loop_increment
Calculate_Comb_12_loop_increment:
     add                  rdi,                    1
     jmp Calculate_Comb_7_loop_condition
Calculate_Comb_13_loop_exit:
     jmp Calculate_Comb_14_loop_increment
Calculate_Comb_14_loop_increment:
     add                  rsi,                    1
     jmp Calculate_Comb_5_loop_condition
Calculate_Comb_15_loop_exit:
     jmp Calculate_Comb_16_block_exit
Calculate_Comb_16_block_exit:
     add                  rsp,                   32
     pop                  rbp
     ret
Euler:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   56
    push                  r12
    push                  rbx
Euler_0_block_enter:
     mov                  rsi,                  rdi
     mov     qword [@tot + 0],                    0
     mov                   r8,                  rsi
     sal                   r8,                    3
     mov                  rdi,       qword [@q + 0]
     add                  rdi,                   r8
     mov                   r8,                    1
     sal                   r8,                    3
     mov                  rdi,      qword [rdi + 0]
     add                  rdi,                   r8
     mov      qword [rdi + 0],                    1
     mov                  rdi,                    0
     jmp Euler_1_loop_condition
Euler_1_loop_condition:
     cmp                  rdi,               100001
     mov                   r8,                    0
    setl                  r8b
     cmp                   r8,                    1
      je    Euler_2_loop_body
     jmp    Euler_4_loop_exit
Euler_2_loop_body:
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                   r8,       qword [@v + 0]
     add                   r8,                   r9
     mov       qword [r8 + 0],                    0
     jmp Euler_3_loop_increment
Euler_3_loop_increment:
     add                  rdi,                    1
     jmp Euler_1_loop_condition
Euler_4_loop_exit:
     mov                  rdi,                    2
     jmp Euler_5_loop_condition
Euler_5_loop_condition:
     cmp                  rdi,       qword [@M + 0]
     mov                   r8,                    0
   setle                  r8b
     cmp                   r8,                    1
      je    Euler_6_loop_body
     jmp   Euler_21_loop_exit
Euler_6_loop_body:
     mov                   r8,                  rdi
     sal                   r8,                    3
     mov                   r9,       qword [@v + 0]
     add                   r9,                   r8
     cmp       qword [r9 + 0],                    0
     mov                   r8,                    0
    sete                  r8b
     cmp                   r8,                    1
      je      Euler_7_if_true
     jmp     Euler_8_if_false
Euler_7_if_true:
     add     qword [@tot + 0],                    1
     mov                   r9,     qword [@tot + 0]
     sal                   r9,                    3
     mov                   r8,   qword [@prime + 0]
     add                   r8,                   r9
     mov       qword [r8 + 0],                  rdi
     mov                   r9,                  rsi
     sal                   r9,                    3
     mov                   r8,       qword [@q + 0]
     add                   r8,                   r9
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                   r8,       qword [r8 + 0]
     add                   r8,                   r9
     mov                  r10,                  rdi
     sal                  r10,                    3
     mov                   r9,     qword [@ksm + 0]
     add                   r9,                  r10
     mov                  r10,                  rsi
     sal                  r10,                    3
     mov                   r9,       qword [r9 + 0]
     add                   r9,                  r10
     mov                   r9,       qword [r9 + 0]
     add                   r9,     qword [@Mod + 0]
     sub                   r9,                    1
     mov                  rax,                   r9
     mov                  rcx,     qword [@Mod + 0]
     cdq
    idiv                  ecx
     mov                   r9,                  rdx
     mov       qword [r8 + 0],                   r9
     jmp      Euler_9_if_exit
Euler_8_if_false:
     jmp      Euler_9_if_exit
Euler_9_if_exit:
     mov                   r8,                    1
     jmp Euler_10_loop_condition
Euler_10_loop_condition:
     cmp                   r8,     qword [@tot + 0]
     mov                   r9,                    0
   setle                  r9b
     cmp                   r9,                    1
     jne Euler_12_logical_false
     jmp Euler_11_logical_true
Euler_11_logical_true:
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                   r9,   qword [@prime + 0]
     add                   r9,                  r10
     mov                   r9,       qword [r9 + 0]
    imul                   r9,                  rdi
     cmp                   r9,       qword [@M + 0]
     mov                   r9,                    0
   setle                  r9b
     jmp Euler_13_logical_exit
Euler_12_logical_false:
     mov                   r9,                    0
     jmp Euler_13_logical_exit
Euler_13_logical_exit:
     cmp                   r9,                    1
      je   Euler_14_loop_body
     jmp   Euler_19_loop_exit
Euler_14_loop_body:
     mov                   r9,                   r8
     sal                   r9,                    3
     mov                  r10,   qword [@prime + 0]
     add                  r10,                   r9
     mov                   r9,      qword [r10 + 0]
    imul                   r9,                  rdi
     sal                   r9,                    3
     mov                  r10,       qword [@v + 0]
     add                  r10,                   r9
     mov      qword [r10 + 0],                    1
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                   r9,   qword [@prime + 0]
     add                   r9,                  r10
     mov                  r10,                  rdi
     mov                  rax,                  r10
     mov                  rcx,       qword [r9 + 0]
     cdq
    idiv                  ecx
     mov                  r10,                  rdx
     cmp                  r10,                    0
     mov                   r9,                    0
    sete                  r9b
     cmp                   r9,                    1
      je     Euler_15_if_true
     jmp    Euler_16_if_false
Euler_15_if_true:
     mov                  r10,                  rsi
     sal                  r10,                    3
     mov                   r9,       qword [@q + 0]
     add                   r9,                  r10
     mov                  r11,                   r8
     sal                  r11,                    3
     mov                  r10,   qword [@prime + 0]
     add                  r10,                  r11
     mov                  r11,                  rdi
     mov                  rax,                  r11
    imul                  rax,      qword [r10 + 0]
     mov                  r11,                  rax
     mov                  r10,                  r11
     sal                  r10,                    3
     mov                   r9,       qword [r9 + 0]
     add                   r9,                  r10
     mov                  r11,                  rsi
     sal                  r11,                    3
     mov                  r10,       qword [@q + 0]
     add                  r10,                  r11
     mov                  r11,                  rdi
     sal                  r11,                    3
     mov                  r10,      qword [r10 + 0]
     add                  r10,                  r11
     mov                  r11,                   r8
     sal                  r11,                    3
     mov                   r8,   qword [@prime + 0]
     add                   r8,                  r11
     mov                  r11,       qword [r8 + 0]
     sal                  r11,                    3
     mov                   r8,     qword [@ksm + 0]
     add                   r8,                  r11
     mov                  r11,                  rsi
     sal                  r11,                    3
     mov                   r8,       qword [r8 + 0]
     add                   r8,                  r11
     mov                  r10,      qword [r10 + 0]
     mov                  rax,                  r10
    imul                  rax,       qword [r8 + 0]
     mov                  r10,                  rax
     mov                   r8,                  r10
     mov                  rax,                   r8
     mov                  rcx,     qword [@Mod + 0]
     cdq
    idiv                  ecx
     mov                   r8,                  rdx
     mov       qword [r9 + 0],                   r8
     jmp   Euler_19_loop_exit
Euler_16_if_false:
     mov                  r10,                  rsi
     sal                  r10,                    3
     mov                   r9,       qword [@q + 0]
     add                   r9,                  r10
     mov                  r11,                   r8
     sal                  r11,                    3
     mov                  r10,   qword [@prime + 0]
     add                  r10,                  r11
     mov                  r11,                  rdi
     mov                  rax,                  r11
    imul                  rax,      qword [r10 + 0]
     mov                  r11,                  rax
     mov                  r10,                  r11
     sal                  r10,                    3
     mov                   r9,       qword [r9 + 0]
     add                   r9,                  r10
     mov                  r11,                  rsi
     sal                  r11,                    3
     mov                  r10,       qword [@q + 0]
     add                  r10,                  r11
     mov                  r11,                  rdi
     sal                  r11,                    3
     mov                  r10,      qword [r10 + 0]
     add                  r10,                  r11
     mov                  rbx,                  rsi
     sal                  rbx,                    3
     mov                  r11,       qword [@q + 0]
     add                  r11,                  rbx
     mov                  r12,                   r8
     sal                  r12,                    3
     mov                  rbx,   qword [@prime + 0]
     add                  rbx,                  r12
     mov                  rbx,      qword [rbx + 0]
     sal                  rbx,                    3
     mov                  r11,      qword [r11 + 0]
     add                  r11,                  rbx
     mov                  r10,      qword [r10 + 0]
     mov                  rax,                  r10
    imul                  rax,      qword [r11 + 0]
     mov                  r10,                  rax
     mov                  rax,                  r10
     mov                  rcx,     qword [@Mod + 0]
     cdq
    idiv                  ecx
     mov                  r10,                  rdx
     mov       qword [r9 + 0],                  r10
     jmp     Euler_17_if_exit
Euler_17_if_exit:
     jmp Euler_18_loop_increment
Euler_18_loop_increment:
     add                   r8,                    1
     jmp Euler_10_loop_condition
Euler_19_loop_exit:
     jmp Euler_20_loop_increment
Euler_20_loop_increment:
     add                  rdi,                    1
     jmp Euler_5_loop_condition
Euler_21_loop_exit:
     jmp  Euler_22_block_exit
Euler_22_block_exit:
     pop                  rbx
     pop                  r12
     add                  rsp,                   56
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call        __global_init
     sub                  rsp,                  120
    push                  r12
    push                  r14
    push                  r13
    push                  r15
    push                  rbx
main_0_block_enter:
     mov                  rsi,                    3
    push                  rsi
     sub                  rsp,                    8
    call                 init
     add                  rsp,                    8
     pop                  rsi
     mov                  rbx,                    1
     sal                  rbx,                    3
     mov                  rdi,      qword [@fn + 0]
     add                  rdi,                  rbx
     mov      qword [rdi + 0],                    2
     mov                  rdi,                    1
     sal                  rdi,                    3
     mov                  rbx,      qword [@fc + 0]
     add                  rbx,                  rdi
     mov      qword [rbx + 0],                    3
     mov                  rdi,                    1
     sal                  rdi,                    3
     mov                  rbx,      qword [@fm + 0]
     add                  rbx,                  rdi
     mov                  rdi,                    1
     sal                  rdi,                    3
     mov                  rbx,      qword [rbx + 0]
     add                  rbx,                  rdi
     mov      qword [rbx + 0],                    3
     mov                  rbx,                    1
     sal                  rbx,                    3
     mov                  rdi,      qword [@fm + 0]
     add                  rdi,                  rbx
     mov                  rbx,                    2
     sal                  rbx,                    3
     mov                  rdi,      qword [rdi + 0]
     add                  rdi,                  rbx
     mov      qword [rdi + 0],                    4
     mov                  rdi,                    2
     sal                  rdi,                    3
     mov                  rbx,      qword [@fn + 0]
     add                  rbx,                  rdi
     mov      qword [rbx + 0],                    3
     mov                  rbx,                    2
     sal                  rbx,                    3
     mov                  rdi,      qword [@fc + 0]
     add                  rdi,                  rbx
     mov      qword [rdi + 0],                    3
     mov                  rbx,                    2
     sal                  rbx,                    3
     mov                  rdi,      qword [@fm + 0]
     add                  rdi,                  rbx
     mov                  rbx,                    1
     sal                  rbx,                    3
     mov                  rdi,      qword [rdi + 0]
     add                  rdi,                  rbx
     mov      qword [rdi + 0],                    3
     mov                  rbx,                    2
     sal                  rbx,                    3
     mov                  rdi,      qword [@fm + 0]
     add                  rdi,                  rbx
     mov                  rbx,                    2
     sal                  rbx,                    3
     mov                  rdi,      qword [rdi + 0]
     add                  rdi,                  rbx
     mov      qword [rdi + 0],                    4
     mov                  rdi,                    2
     sal                  rdi,                    3
     mov                  rbx,      qword [@fm + 0]
     add                  rbx,                  rdi
     mov                  rdi,                    3
     sal                  rdi,                    3
     mov                  rbx,      qword [rbx + 0]
     add                  rbx,                  rdi
     mov      qword [rbx + 0],                    4
     mov                  rdi,                    3
     sal                  rdi,                    3
     mov                  rbx,      qword [@fn + 0]
     add                  rbx,                  rdi
     mov      qword [rbx + 0],                    4
     mov                  rbx,                    3
     sal                  rbx,                    3
     mov                  rdi,      qword [@fc + 0]
     add                  rdi,                  rbx
     mov      qword [rdi + 0],                    4
     mov                  rdi,                    3
     sal                  rdi,                    3
     mov                  rbx,      qword [@fm + 0]
     add                  rbx,                  rdi
     mov                  rdi,                    1
     sal                  rdi,                    3
     mov                  rbx,      qword [rbx + 0]
     add                  rbx,                  rdi
     mov      qword [rbx + 0],                    5
     mov                  rdi,                    3
     sal                  rdi,                    3
     mov                  rbx,      qword [@fm + 0]
     add                  rbx,                  rdi
     mov                  rdi,                    2
     sal                  rdi,                    3
     mov                  rbx,      qword [rbx + 0]
     add                  rbx,                  rdi
     mov      qword [rbx + 0],                    7
     mov                  rbx,                    3
     sal                  rbx,                    3
     mov                  rdi,      qword [@fm + 0]
     add                  rdi,                  rbx
     mov                  rbx,                    3
     sal                  rbx,                    3
     mov                  rdi,      qword [rdi + 0]
     add                  rdi,                  rbx
     mov      qword [rdi + 0],                    8
     mov                  rdi,                    3
     sal                  rdi,                    3
     mov                  rbx,      qword [@fm + 0]
     add                  rbx,                  rdi
     mov                  rdi,                    4
     sal                  rdi,                    3
     mov                  rbx,      qword [rbx + 0]
     add                  rbx,                  rdi
     mov      qword [rbx + 0],                    9
     mov       qword [@C + 0],                    4
     mov       qword [@M + 0],                    9
     mov       qword [@N + 0],                    4
     mov     qword [@Mod + 0],                10007
    push                  rsi
     sub                  rsp,                    8
    call          Calculate_G
     add                  rsp,                    8
     pop                  rsi
    push                  rsi
     sub                  rsp,                    8
    call       Calculate_Comb
     add                  rsp,                    8
     pop                  rsi
     mov                  rbx,                    1
     jmp main_1_loop_condition
main_1_loop_condition:
     cmp                  rbx,                  rsi
     mov                  rdi,                    0
   setle                  dil
     cmp                  rdi,                    1
      je     main_2_loop_body
     jmp    main_48_loop_exit
main_2_loop_body:
     mov                  r12,                  rbx
     sal                  r12,                    3
     mov                  rdi,      qword [@fn + 0]
     add                  rdi,                  r12
     mov                  r12,      qword [rdi + 0]
     mov                   r8,                  rbx
     sal                   r8,                    3
     mov                  rdi,      qword [@fc + 0]
     add                  rdi,                   r8
     mov                  rdi,      qword [rdi + 0]
     mov                   r8,                    1
     jmp main_3_loop_condition
main_3_loop_condition:
     cmp                   r8,                  r12
     mov                  r13,                    0
   setle                 r13b
     cmp                  r13,                    1
      je     main_4_loop_body
     jmp     main_6_loop_exit
main_4_loop_body:
     mov                   r9,                   r8
     sal                   r9,                    3
     mov                  r13,       qword [@m + 0]
     add                  r13,                   r9
     mov                  r14,                  rbx
     sal                  r14,                    3
     mov                   r9,      qword [@fm + 0]
     add                   r9,                  r14
     mov                  r14,                   r8
     sal                  r14,                    3
     mov                   r9,       qword [r9 + 0]
     add                   r9,                  r14
     mov                   r9,       qword [r9 + 0]
     mov      qword [r13 + 0],                   r9
     jmp main_5_loop_increment
main_5_loop_increment:
     add                   r8,                    1
     jmp main_3_loop_condition
main_6_loop_exit:
     cmp                  r12,                    1
     mov                   r8,                    0
    sete                  r8b
     cmp                   r8,                    1
      je       main_7_if_true
     jmp      main_8_if_false
main_7_if_true:
     mov                   r8,                    1
     sal                   r8,                    3
     mov                  r12,       qword [@m + 0]
     add                  r12,                   r8
     mov                   r8,      qword [r12 + 0]
     sal                   r8,                    3
     mov                  r12,    qword [@Comb + 0]
     add                  r12,                   r8
     sal                  rdi,                    3
     mov                  r12,      qword [r12 + 0]
     add                  r12,                  rdi
     mov                  rdi,      qword [r12 + 0]
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rsi
     jmp      main_46_if_exit
main_8_if_false:
     mov                  r13,                    0
     mov                   r8,                    0
     mov                   r8,                    0
     mov     qword [rbp - 80],                    1
     jmp main_9_loop_condition
main_9_loop_condition:
     mov                  r14,                    1
     sal                  r14,                    3
     mov                   r9,       qword [@m + 0]
     add                   r9,                  r14
     mov                  rax,     qword [rbp - 80]
     cmp                  rax,       qword [r9 + 0]
     mov                   r9,                    0
   setle                  r9b
     cmp                   r9,                    1
      je    main_10_loop_body
     jmp    main_42_loop_exit
main_10_loop_body:
     mov                  r14,                    1
     sal                  r14,                    3
     mov                   r9,       qword [@m + 0]
     add                   r9,                  r14
     mov                  r10,                    1
     sal                  r10,                    3
     mov                  r14,       qword [@m + 0]
     add                  r14,                  r10
     mov                  r14,      qword [r14 + 0]
     mov                  rax,                  r14
     mov                  rcx,     qword [rbp - 80]
     cdq
    idiv                  ecx
     mov                  r14,                  rax
     mov                   r9,       qword [r9 + 0]
     mov                  rax,                   r9
     mov                  rcx,                  r14
     cdq
    idiv                  ecx
     mov                   r9,                  rax
     mov     qword [rbp - 88],                    2
     jmp main_11_loop_condition
main_11_loop_condition:
     cmp     qword [rbp - 88],                  r12
     mov                  r14,                    0
   setle                 r14b
     cmp                  r14,                    1
      je    main_12_loop_body
     jmp    main_17_loop_exit
main_12_loop_body:
     mov                  r10,     qword [rbp - 88]
     sal                  r10,                    3
     mov                  r14,       qword [@m + 0]
     add                  r14,                  r10
     mov                  r10,     qword [rbp - 88]
     sal                  r10,                    3
     mov                  r15,       qword [@m + 0]
     add                  r15,                  r10
     mov                  r10,      qword [r15 + 0]
     mov                  rax,                  r10
     mov                  rcx,     qword [rbp - 80]
     cdq
    idiv                  ecx
     mov                  r10,                  rax
     mov                  r14,      qword [r14 + 0]
     mov                  rax,                  r14
     mov                  rcx,                  r10
     cdq
    idiv                  ecx
     mov                  r14,                  rax
     mov                  r10,                  r14
     cmp                  r10,                   r9
     mov                  r14,                    0
    setl                 r14b
     cmp                  r14,                    1
      je      main_13_if_true
     jmp     main_14_if_false
main_13_if_true:
     mov                   r9,                  r10
     jmp      main_15_if_exit
main_14_if_false:
     jmp      main_15_if_exit
main_15_if_exit:
     jmp main_16_loop_increment
main_16_loop_increment:
     mov                  r14,     qword [rbp - 88]
     add     qword [rbp - 88],                    1
     jmp main_11_loop_condition
main_17_loop_exit:
     mov                  r10,                    1
     sal                  r10,                    3
     mov                  r14,       qword [@m + 0]
     add                  r14,                  r10
     cmp      qword [r14 + 0],                   r9
     mov                  r14,                    0
    setl                 r14b
     cmp                  r14,                    1
      je      main_18_if_true
     jmp     main_19_if_false
main_18_if_true:
     mov                   r9,                    1
     sal                   r9,                    3
     mov                  r14,       qword [@m + 0]
     add                  r14,                   r9
     mov                   r9,      qword [r14 + 0]
     jmp      main_20_if_exit
main_19_if_false:
     jmp      main_20_if_exit
main_20_if_exit:
     mov     qword [rbp - 80],                   r9
     mov                  r14,                    0
     sal                  r14,                    3
     mov                   r9,       qword [@b + 0]
     add                   r9,                  r14
     mov       qword [r9 + 0],                    1
     mov     qword [rbp - 88],                    1
     jmp main_21_loop_condition
main_21_loop_condition:
     cmp     qword [rbp - 88],                  r12
     mov                   r9,                    0
   setle                  r9b
     cmp                   r9,                    1
      je    main_22_loop_body
     jmp    main_36_loop_exit
main_22_loop_body:
     mov                  r14,     qword [rbp - 88]
     sal                  r14,                    3
     mov                   r9,       qword [@m + 0]
     add                   r9,                  r14
     mov                   r9,       qword [r9 + 0]
     mov                  rax,                   r9
     mov                  rcx,     qword [rbp - 80]
     cdq
    idiv                  ecx
     mov                   r9,                  rax
     mov                  rax,                   r9
     mov                  rcx,     qword [@Mod + 0]
     cdq
    idiv                  ecx
     mov                   r9,                  rdx
     mov                  r10,                   r9
     add                  r10,                    1
     mov                  r14,                   r9
    imul                  r14,                  r10
     mov                  rax,                  r14
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov                  r14,                  rax
     mov                  rax,                  r14
     mov                  rcx,     qword [@Mod + 0]
     cdq
    idiv                  ecx
     mov                  r14,                  rdx
     mov                  r15,     qword [rbp - 88]
     sal                  r15,                    3
     mov                  r10,       qword [@m + 0]
     add                  r10,                  r15
     mov                  r10,      qword [r10 + 0]
    imul                  r10,                   r9
     mov                   r9,                  r10
     mov                  rax,                   r9
     mov                  rcx,     qword [@Mod + 0]
     cdq
    idiv                  ecx
     mov                   r9,                  rdx
     mov    qword [rbp - 104],                    0
     jmp main_23_loop_condition
main_23_loop_condition:
     mov                  rax,    qword [rbp - 104]
     cmp                  rax,     qword [rbp - 88]
     mov                  r10,                    0
    setl                 r10b
     cmp                  r10,                    1
      je    main_24_loop_body
     jmp    main_26_loop_exit
main_24_loop_body:
     mov                  r10,    qword [rbp - 104]
     add                  r10,                    1
     mov                  r15,                  r10
     sal                  r15,                    3
     mov                  r10,     qword [@res + 0]
     add                  r10,                  r15
     mov                  r15,    qword [rbp - 104]
     sal                  r15,                    3
     mov                  r11,       qword [@b + 0]
     add                  r11,                  r15
     mov                  r15,     qword [@Mod + 0]
     sub                  r15,                  r14
     mov                  r11,      qword [r11 + 0]
    imul                  r11,                  r15
     mov                  r15,                  r11
     mov                  rax,                  r15
     mov                  rcx,     qword [@Mod + 0]
     cdq
    idiv                  ecx
     mov                  r15,                  rdx
     mov      qword [r10 + 0],                  r15
     jmp main_25_loop_increment
main_25_loop_increment:
     mov                  r10,    qword [rbp - 104]
     add    qword [rbp - 104],                    1
     jmp main_23_loop_condition
main_26_loop_exit:
     mov                  r14,                    0
     sal                  r14,                    3
     mov                  r10,     qword [@res + 0]
     add                  r10,                  r14
     mov      qword [r10 + 0],                    0
     mov    qword [rbp - 104],                    0
     jmp main_27_loop_condition
main_27_loop_condition:
     mov                  rax,    qword [rbp - 104]
     cmp                  rax,     qword [rbp - 88]
     mov                  r14,                    0
    setl                 r14b
     cmp                  r14,                    1
      je    main_28_loop_body
     jmp    main_30_loop_exit
main_28_loop_body:
     mov                  r10,    qword [rbp - 104]
     sal                  r10,                    3
     mov                  r14,     qword [@res + 0]
     add                  r14,                  r10
     mov                  r15,    qword [rbp - 104]
     sal                  r15,                    3
     mov                  r10,     qword [@res + 0]
     add                  r10,                  r15
     mov                  r15,    qword [rbp - 104]
     sal                  r15,                    3
     mov                  r11,       qword [@b + 0]
     add                  r11,                  r15
     mov                  r15,                   r9
     mov                  rax,                  r15
    imul                  rax,      qword [r11 + 0]
     mov                  r15,                  rax
     mov                  r10,      qword [r10 + 0]
     add                  r10,                  r15
     mov                  rax,                  r10
     mov                  rcx,     qword [@Mod + 0]
     cdq
    idiv                  ecx
     mov                  r10,                  rdx
     mov      qword [r14 + 0],                  r10
     jmp main_29_loop_increment
main_29_loop_increment:
     mov                  r14,    qword [rbp - 104]
     add    qword [rbp - 104],                    1
     jmp main_27_loop_condition
main_30_loop_exit:
     mov    qword [rbp - 104],                    0
     jmp main_31_loop_condition
main_31_loop_condition:
     mov                  rax,    qword [rbp - 104]
     cmp                  rax,     qword [rbp - 88]
     mov                   r9,                    0
   setle                  r9b
     cmp                   r9,                    1
      je    main_32_loop_body
     jmp    main_34_loop_exit
main_32_loop_body:
     mov                  r14,    qword [rbp - 104]
     sal                  r14,                    3
     mov                   r9,       qword [@b + 0]
     add                   r9,                  r14
     mov                  r14,    qword [rbp - 104]
     sal                  r14,                    3
     mov                  r10,     qword [@res + 0]
     add                  r10,                  r14
     mov                  r14,      qword [r10 + 0]
     mov       qword [r9 + 0],                  r14
     jmp main_33_loop_increment
main_33_loop_increment:
     mov                   r9,    qword [rbp - 104]
     add    qword [rbp - 104],                    1
     jmp main_31_loop_condition
main_34_loop_exit:
     jmp main_35_loop_increment
main_35_loop_increment:
     mov                   r9,     qword [rbp - 88]
     add     qword [rbp - 88],                    1
     jmp main_21_loop_condition
main_36_loop_exit:
     mov     qword [rbp - 88],                    0
     jmp main_37_loop_condition
main_37_loop_condition:
     cmp     qword [rbp - 88],                  r12
     mov                   r9,                    0
   setle                  r9b
     cmp                   r9,                    1
      je    main_38_loop_body
     jmp    main_40_loop_exit
main_38_loop_body:
     mov                  r14,     qword [rbp - 88]
     sal                  r14,                    3
     mov                   r9,       qword [@b + 0]
     add                   r9,                  r14
     mov                  r14,     qword [rbp - 88]
     sal                  r14,                    3
     mov                  r10,     qword [@Sum + 0]
     add                  r10,                  r14
     mov                  r14,     qword [rbp - 80]
     sal                  r14,                    3
     mov                  r15,      qword [r10 + 0]
     add                  r15,                  r14
     mov                  r10,                  rdi
     sal                  r10,                    3
     mov                  r14,      qword [r15 + 0]
     add                  r14,                  r10
     mov                  r15,     qword [rbp - 88]
     sal                  r15,                    3
     mov                  r10,     qword [@Sum + 0]
     add                  r10,                  r15
     mov                  r15,                   r8
     sal                  r15,                    3
     mov                  r10,      qword [r10 + 0]
     add                  r10,                  r15
     mov                  r15,                  rdi
     sal                  r15,                    3
     mov                  r10,      qword [r10 + 0]
     add                  r10,                  r15
     mov                  r14,      qword [r14 + 0]
     sub                  r14,      qword [r10 + 0]
     mov                   r9,       qword [r9 + 0]
    imul                   r9,                  r14
     add                  r13,                   r9
     mov                  rax,                  r13
     mov                  rcx,     qword [@Mod + 0]
     cdq
    idiv                  ecx
     mov                  r13,                  rdx
     jmp main_39_loop_increment
main_39_loop_increment:
     mov                   r9,     qword [rbp - 88]
     add     qword [rbp - 88],                    1
     jmp main_37_loop_condition
main_40_loop_exit:
     mov                   r8,     qword [rbp - 80]
     jmp main_41_loop_increment
main_41_loop_increment:
     mov                   r9,     qword [rbp - 80]
     add     qword [rbp - 80],                    1
     jmp main_9_loop_condition
main_42_loop_exit:
     cmp                  r13,                    0
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je      main_43_if_true
     jmp     main_44_if_false
main_43_if_true:
     mov                  rdi,                  r13
     add                  rdi,     qword [@Mod + 0]
     mov                  r13,                  rdi
     jmp      main_45_if_exit
main_44_if_false:
     jmp      main_45_if_exit
main_45_if_exit:
     mov                  rdi,                  r13
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rsi
     jmp      main_46_if_exit
main_46_if_exit:
     jmp main_47_loop_increment
main_47_loop_increment:
     add                  rbx,                    1
     jmp main_1_loop_condition
main_48_loop_exit:
     mov                  rax,                    0
     jmp   main_49_block_exit
main_49_block_exit:
     pop                  rbx
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     add                  rsp,                  120
     pop                  rbp
     ret
Calculate_q:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    8
    push                  rbx
Calculate_q_0_block_enter:
     mov                  rsi,                    0
     jmp Calculate_q_1_loop_condition
Calculate_q_1_loop_condition:
     mov                  rbx,       qword [@C + 0]
     sub                  rbx,                    2
     cmp                  rsi,                  rbx
     mov                  rbx,                    0
   setle                   bl
     cmp                  rbx,                    1
      je Calculate_q_2_loop_body
     jmp Calculate_q_4_loop_exit
Calculate_q_2_loop_body:
     mov                  rdi,                  rsi
    push                  rsi
     sub                  rsp,                    8
    call                Euler
     add                  rsp,                    8
     pop                  rsi
     jmp Calculate_q_3_loop_increment
Calculate_q_3_loop_increment:
     add                  rsi,                    1
     jmp Calculate_q_1_loop_condition
Calculate_q_4_loop_exit:
     jmp Calculate_q_5_block_exit
Calculate_q_5_block_exit:
     pop                  rbx
     add                  rsp,                    8
     pop                  rbp
     ret
Calculate_G:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   64
    push                  r12
    push                  r14
    push                  r13
    push                  rbx
Calculate_G_0_block_enter:
    call        Calculate_Ksm
    call          Calculate_p
    call          Calculate_q
     mov                  rsi,                    1
     jmp Calculate_G_1_loop_condition
Calculate_G_1_loop_condition:
     cmp                  rsi,       qword [@M + 0]
     mov                  rbx,                    0
   setle                   bl
     cmp                  rbx,                    1
      je Calculate_G_2_loop_body
     jmp Calculate_G_16_loop_exit
Calculate_G_2_loop_body:
     mov                  rdi,                    2
     jmp Calculate_G_3_loop_condition
Calculate_G_3_loop_condition:
     cmp                  rdi,       qword [@C + 0]
     mov                  rbx,                    0
   setle                   bl
     cmp                  rbx,                    1
      je Calculate_G_4_loop_body
     jmp Calculate_G_14_loop_exit
Calculate_G_4_loop_body:
     mov                  rbx,                    0
     jmp Calculate_G_5_loop_condition
Calculate_G_5_loop_condition:
     mov                  r12,                  rdi
     sub                  r12,                    2
     cmp                  rbx,                  r12
     mov                  r12,                    0
   setle                 r12b
     cmp                  r12,                    1
      je Calculate_G_6_loop_body
     jmp Calculate_G_8_loop_exit
Calculate_G_6_loop_body:
     mov                   r8,                    0
     sal                   r8,                    3
     mov                  r12,       qword [@g + 0]
     add                  r12,                   r8
     mov                   r8,                  rsi
     sal                   r8,                    3
     mov                  r12,      qword [r12 + 0]
     add                  r12,                   r8
     mov                   r8,                  rdi
     sal                   r8,                    3
     mov                  r12,      qword [r12 + 0]
     add                  r12,                   r8
     mov                  r13,                    0
     sal                  r13,                    3
     mov                   r8,       qword [@g + 0]
     add                   r8,                  r13
     mov                  r13,                  rsi
     sal                  r13,                    3
     mov                   r8,       qword [r8 + 0]
     add                   r8,                  r13
     mov                  r13,                  rdi
     sal                  r13,                    3
     mov                   r8,       qword [r8 + 0]
     add                   r8,                  r13
     mov                  r13,                  rdi
     sub                  r13,                    2
     mov                   r9,                  r13
     sal                   r9,                    3
     mov                  r13,       qword [@p + 0]
     add                  r13,                   r9
     mov                   r9,                  rbx
     sal                   r9,                    3
     mov                  r13,      qword [r13 + 0]
     add                  r13,                   r9
     mov                  r14,                  rbx
     sal                  r14,                    3
     mov                   r9,       qword [@q + 0]
     add                   r9,                  r14
     mov                  r14,                  rsi
     sal                  r14,                    3
     mov                   r9,       qword [r9 + 0]
     add                   r9,                  r14
     mov                  r13,      qword [r13 + 0]
     mov                  rax,                  r13
    imul                  rax,       qword [r9 + 0]
     mov                  r13,                  rax
     mov                   r8,       qword [r8 + 0]
     add                   r8,                  r13
     mov                  rax,                   r8
     mov                  rcx,     qword [@Mod + 0]
     cdq
    idiv                  ecx
     mov                   r8,                  rdx
     mov      qword [r12 + 0],                   r8
     jmp Calculate_G_7_loop_increment
Calculate_G_7_loop_increment:
     add                  rbx,                    1
     jmp Calculate_G_5_loop_condition
Calculate_G_8_loop_exit:
     mov                  rbx,                    1
     jmp Calculate_G_9_loop_condition
Calculate_G_9_loop_condition:
     cmp                  rbx,       qword [@N + 0]
     mov                  r12,                    0
   setle                 r12b
     cmp                  r12,                    1
      je Calculate_G_10_loop_body
     jmp Calculate_G_12_loop_exit
Calculate_G_10_loop_body:
     mov                  r12,                  rbx
     sal                  r12,                    3
     mov                   r8,       qword [@g + 0]
     add                   r8,                  r12
     mov                  r12,                  rsi
     sal                  r12,                    3
     mov                   r8,       qword [r8 + 0]
     add                   r8,                  r12
     mov                  r13,                  rdi
     sal                  r13,                    3
     mov                  r12,       qword [r8 + 0]
     add                  r12,                  r13
     mov                   r8,                  rbx
     sub                   r8,                    1
     mov                  r13,                   r8
     sal                  r13,                    3
     mov                   r8,       qword [@g + 0]
     add                   r8,                  r13
     mov                  r13,                  rsi
     sal                  r13,                    3
     mov                   r8,       qword [r8 + 0]
     add                   r8,                  r13
     mov                  r13,                  rdi
     sal                  r13,                    3
     mov                   r8,       qword [r8 + 0]
     add                   r8,                  r13
     mov                   r8,       qword [r8 + 0]
    imul                   r8,                  rsi
     mov                  rax,                   r8
     mov                  rcx,     qword [@Mod + 0]
     cdq
    idiv                  ecx
     mov                   r8,                  rdx
     mov      qword [r12 + 0],                   r8
     jmp Calculate_G_11_loop_increment
Calculate_G_11_loop_increment:
     add                  rbx,                    1
     jmp Calculate_G_9_loop_condition
Calculate_G_12_loop_exit:
     jmp Calculate_G_13_loop_increment
Calculate_G_13_loop_increment:
     mov                  rbx,                  rdi
     add                  rdi,                    1
     jmp Calculate_G_3_loop_condition
Calculate_G_14_loop_exit:
     jmp Calculate_G_15_loop_increment
Calculate_G_15_loop_increment:
     add                  rsi,                    1
     jmp Calculate_G_1_loop_condition
Calculate_G_16_loop_exit:
     mov                  rbx,                    0
     jmp Calculate_G_17_loop_condition
Calculate_G_17_loop_condition:
     cmp                  rbx,       qword [@N + 0]
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
      je Calculate_G_18_loop_body
     jmp Calculate_G_31_loop_exit
Calculate_G_18_loop_body:
     mov                  rsi,                    2
     jmp Calculate_G_19_loop_condition
Calculate_G_19_loop_condition:
     cmp                  rsi,       qword [@C + 0]
     mov                  rdi,                    0
   setle                  dil
     cmp                  rdi,                    1
      je Calculate_G_20_loop_body
     jmp Calculate_G_29_loop_exit
Calculate_G_20_loop_body:
     mov                  rdi,                    1
     jmp Calculate_G_21_loop_condition
Calculate_G_21_loop_condition:
     cmp                  rdi,       qword [@M + 0]
     mov                  r12,                    0
   setle                 r12b
     cmp                  r12,                    1
      je Calculate_G_22_loop_body
     jmp Calculate_G_27_loop_exit
Calculate_G_22_loop_body:
     mov                   r8,                  rbx
     sal                   r8,                    3
     mov                  r12,     qword [@Sum + 0]
     add                  r12,                   r8
     mov                   r8,                  rdi
     sal                   r8,                    3
     mov                  r12,      qword [r12 + 0]
     add                  r12,                   r8
     mov                   r8,                  rsi
     sal                   r8,                    3
     mov                  r12,      qword [r12 + 0]
     add                  r12,                   r8
     mov                  r13,                  rbx
     sal                  r13,                    3
     mov                   r8,     qword [@Sum + 0]
     add                   r8,                  r13
     mov                  r13,                  rdi
     sub                  r13,                    1
     sal                  r13,                    3
     mov                   r8,       qword [r8 + 0]
     add                   r8,                  r13
     mov                  r13,                  rsi
     sal                  r13,                    3
     mov                   r8,       qword [r8 + 0]
     add                   r8,                  r13
     mov                   r9,                  rbx
     sal                   r9,                    3
     mov                  r13,       qword [@g + 0]
     add                  r13,                   r9
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  r14,      qword [r13 + 0]
     add                  r14,                   r9
     mov                  r13,                  rsi
     sal                  r13,                    3
     mov                   r9,      qword [r14 + 0]
     add                   r9,                  r13
     mov                   r8,       qword [r8 + 0]
     add                   r8,       qword [r9 + 0]
     mov      qword [r12 + 0],                   r8
     mov                  r12,                  rbx
     sal                  r12,                    3
     mov                   r8,     qword [@Sum + 0]
     add                   r8,                  r12
     mov                  r12,                  rdi
     sal                  r12,                    3
     mov                   r8,       qword [r8 + 0]
     add                   r8,                  r12
     mov                  r12,                  rsi
     sal                  r12,                    3
     mov                   r8,       qword [r8 + 0]
     add                   r8,                  r12
     mov                  r12,       qword [r8 + 0]
     cmp                  r12,     qword [@Mod + 0]
     mov                  r12,                    0
   setge                 r12b
     cmp                  r12,                    1
      je Calculate_G_23_if_true
     jmp Calculate_G_24_if_false
Calculate_G_23_if_true:
     mov                   r8,                  rbx
     sal                   r8,                    3
     mov                  r12,     qword [@Sum + 0]
     add                  r12,                   r8
     mov                   r8,                  rdi
     sal                   r8,                    3
     mov                  r12,      qword [r12 + 0]
     add                  r12,                   r8
     mov                   r8,                  rsi
     sal                   r8,                    3
     mov                  r12,      qword [r12 + 0]
     add                  r12,                   r8
     mov                   r8,                  rbx
     sal                   r8,                    3
     mov                  r13,     qword [@Sum + 0]
     add                  r13,                   r8
     mov                   r8,                  rdi
     sal                   r8,                    3
     mov                  r13,      qword [r13 + 0]
     add                  r13,                   r8
     mov                   r8,                  rsi
     sal                   r8,                    3
     mov                  r13,      qword [r13 + 0]
     add                  r13,                   r8
     mov                   r8,      qword [r13 + 0]
     sub                   r8,     qword [@Mod + 0]
     mov      qword [r12 + 0],                   r8
     jmp Calculate_G_25_if_exit
Calculate_G_24_if_false:
     jmp Calculate_G_25_if_exit
Calculate_G_25_if_exit:
     jmp Calculate_G_26_loop_increment
Calculate_G_26_loop_increment:
     add                  rdi,                    1
     jmp Calculate_G_21_loop_condition
Calculate_G_27_loop_exit:
     jmp Calculate_G_28_loop_increment
Calculate_G_28_loop_increment:
     add                  rsi,                    1
     jmp Calculate_G_19_loop_condition
Calculate_G_29_loop_exit:
     jmp Calculate_G_30_loop_increment
Calculate_G_30_loop_increment:
     mov                  rsi,                  rbx
     add                  rbx,                    1
     jmp Calculate_G_17_loop_condition
Calculate_G_31_loop_exit:
     jmp Calculate_G_32_block_exit
Calculate_G_32_block_exit:
     pop                  rbx
     pop                  r13
     pop                  r14
     pop                  r12
     add                  rsp,                   64
     pop                  rbp
     ret
SECTION .data
SECTION .bss
@Mod:
    resq                    1
@p:
    resq                    1
@res:
    resq                    1
@ksm:
    resq                    1
@prime:
    resq                    1
@tot:
    resq                    1
@v:
    resq                    1
@q:
    resq                    1
@g:
    resq                    1
@Sum:
    resq                    1
@m:
    resq                    1
@b:
    resq                    1
@Comb:
    resq                    1
@C:
    resq                    1
@M:
    resq                    1
@N:
    resq                    1
@fn:
    resq                    1
@fc:
    resq                    1
@fm:
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
