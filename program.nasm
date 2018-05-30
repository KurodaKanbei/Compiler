global add
global nextText
global main
global hex2int
global crackSHA1
global computeSHA1
global toStringHex
global sha1
global __global_init
global array_equal
global int2chr
global rotate_left
global lohi
global nextLetter
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
     mov                   r8,                  rdi
     mov                  rdi,                  rsi
     mov                   r9,                   r8
     and                   r9,                65535
     mov                  rsi,                  rdi
     and                  rsi,                65535
     add                   r9,                  rsi
     mov                  rsi,                   r9
     sar                   r8,                   16
     and                   r8,                65535
     sar                  rdi,                   16
     and                  rdi,                65535
     add                   r8,                  rdi
     mov                  rdi,                  rsi
     sar                  rdi,                   16
     add                   r8,                  rdi
     mov                  rdi,                   r8
     and                  rdi,                65535
     sal                  rdi,                   16
     and                  rsi,                65535
     xor                  rdi,                  rsi
     mov                  rax,                  rdi
add_1_block_exit:
     pop                  rbp
     ret
nextText:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r12
    push                  rbx
nextText_0_block_enter:
     mov                  rbx,                  rdi
     sub                  rsi,                    1
nextText_1_loop_condition:
     cmp                  rsi,                    0
     mov                  rdi,                    0
   setge                  dil
     cmp                  rdi,                    1
      je nextText_2_loop_body
     jmp nextText_7_loop_exit
nextText_2_loop_body:
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                  r12,                  rbx
     add                  r12,                  rdi
     mov                   r8,                  rsi
     sal                   r8,                    3
     mov                  rdi,                  rbx
     add                  rdi,                   r8
     mov                  rdi,      qword [rdi + 0]
    push                  rsi
     sub                  rsp,                    8
    call           nextLetter
     add                  rsp,                    8
     pop                  rsi
     mov      qword [r12 + 0],                  rax
     mov                  r12,                  rsi
     sal                  r12,                    3
     mov                  rdi,                  rbx
     add                  rdi,                  r12
     mov                  r12,                    1
     neg                  r12
     cmp      qword [rdi + 0],                  r12
     mov                  rdi,                    0
    sete                  dil
     cmp                  rdi,                    1
      je   nextText_3_if_true
     jmp  nextText_4_if_false
nextText_3_if_true:
     mov                  r12,                  rsi
     sal                  r12,                    3
     mov                  rdi,                  rbx
     add                  rdi,                  r12
     mov      qword [rdi + 0],                   48
     jmp   nextText_5_if_exit
nextText_4_if_false:
     mov                  rax,                    1
     jmp nextText_8_block_exit
nextText_5_if_exit:
nextText_6_loop_increment:
     sub                  rsi,                    1
     jmp nextText_1_loop_condition
nextText_7_loop_exit:
     mov                  rax,                    0
nextText_8_block_exit:
     pop                  rbx
     pop                  r12
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call        __global_init
    push                  rbx
main_0_block_enter:
main_1_loop_condition:
     mov                  rax,                    1
     cmp                  rax,                    1
      je     main_2_loop_body
     jmp    main_12_loop_exit
main_2_loop_body:
     sub                  rsp,                    8
    call               getInt
     add                  rsp,                    8
     mov                  rsi,                  rax
     cmp                  rsi,                    0
     mov                  rbx,                    0
    sete                   bl
     cmp                  rbx,                    1
      je       main_3_if_true
     jmp      main_4_if_false
main_3_if_true:
     jmp    main_12_loop_exit
main_4_if_false:
main_5_if_exit:
     cmp                  rsi,                    1
     mov                  rbx,                    0
    sete                   bl
     cmp                  rbx,                    1
      je       main_6_if_true
     jmp      main_7_if_false
main_6_if_true:
     sub                  rsp,                    8
    call            getString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call          computeSHA1
     add                  rsp,                    8
     jmp      main_11_if_exit
main_7_if_false:
     cmp                  rsi,                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je       main_8_if_true
     jmp      main_9_if_false
main_8_if_true:
     sub                  rsp,                    8
    call            getString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call            crackSHA1
     add                  rsp,                    8
     jmp      main_10_if_exit
main_9_if_false:
main_10_if_exit:
main_11_if_exit:
     jmp main_1_loop_condition
main_12_loop_exit:
     mov                  rax,                    0
main_13_block_exit:
     pop                  rbx
     pop                  rbp
     ret
hex2int:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r12
    push                  rbx
hex2int_0_block_enter:
     mov                  rbx,                  rdi
     mov                  r12,                    0
     mov                  rsi,                    0
hex2int_1_loop_condition:
     mov                  rdi,                  rbx
    push                  rsi
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     pop                  rsi
     mov                  rdi,                  rax
     cmp                  rsi,                  rdi
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je  hex2int_2_loop_body
     jmp hex2int_22_loop_exit
hex2int_2_loop_body:
     mov                  rdi,                  rbx
    push                  rsi
     sub                  rsp,                    8
    call         __string_ord
     add                  rsp,                    8
     pop                  rsi
     mov                  rdi,                  rax
     cmp                  rdi,                   48
     mov                   r8,                    0
   setge                  r8b
     cmp                   r8,                    1
     jne hex2int_4_logical_false
hex2int_3_logical_true:
     cmp                  rdi,                   57
     mov                   r8,                    0
   setle                  r8b
     jmp hex2int_5_logical_exit
hex2int_4_logical_false:
     mov                   r8,                    0
hex2int_5_logical_exit:
     cmp                   r8,                    1
      je    hex2int_6_if_true
     jmp   hex2int_7_if_false
hex2int_6_if_true:
     sal                  r12,                    4
     add                  r12,                  rdi
     mov                  rdi,                  r12
     sub                  rdi,                   48
     mov                  r12,                  rdi
     jmp   hex2int_20_if_exit
hex2int_7_if_false:
     cmp                  rdi,                   65
     mov                   r8,                    0
   setge                  r8b
     cmp                   r8,                    1
     jne hex2int_9_logical_false
hex2int_8_logical_true:
     cmp                  rdi,                   70
     mov                   r8,                    0
   setle                  r8b
     jmp hex2int_10_logical_exit
hex2int_9_logical_false:
     mov                   r8,                    0
hex2int_10_logical_exit:
     cmp                   r8,                    1
      je   hex2int_11_if_true
     jmp  hex2int_12_if_false
hex2int_11_if_true:
     sal                  r12,                    4
     add                  r12,                  rdi
     mov                  rdi,                  r12
     sub                  rdi,                   65
     add                  rdi,                   10
     mov                  r12,                  rdi
     jmp   hex2int_19_if_exit
hex2int_12_if_false:
     cmp                  rdi,                   97
     mov                   r8,                    0
   setge                  r8b
     cmp                   r8,                    1
     jne hex2int_14_logical_false
hex2int_13_logical_true:
     cmp                  rdi,                  102
     mov                   r8,                    0
   setle                  r8b
     jmp hex2int_15_logical_exit
hex2int_14_logical_false:
     mov                   r8,                    0
hex2int_15_logical_exit:
     cmp                   r8,                    1
      je   hex2int_16_if_true
     jmp  hex2int_17_if_false
hex2int_16_if_true:
     sal                  r12,                    4
     add                  r12,                  rdi
     mov                  rdi,                  r12
     sub                  rdi,                   97
     add                  rdi,                   10
     mov                  r12,                  rdi
     jmp   hex2int_18_if_exit
hex2int_17_if_false:
     mov                  rax,                    0
     jmp hex2int_23_block_exit
hex2int_18_if_exit:
hex2int_19_if_exit:
hex2int_20_if_exit:
hex2int_21_loop_increment:
     add                  rsi,                    1
     jmp hex2int_1_loop_condition
hex2int_22_loop_exit:
     mov                  rax,                  r12
hex2int_23_block_exit:
     pop                  rbx
     pop                  r12
     pop                  rbp
     ret
crackSHA1:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    8
    push                  r12
    push                  r14
    push                  r13
    push                  rbx
crackSHA1_0_block_enter:
     mov                  r12,                  rdi
     mov                  rsi,                    5
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                    5
     add                  rsi,                    8
     mov                  rbx,                  rsi
     mov                  rdi,                  r12
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     mov                  rsi,                  rax
     cmp                  rsi,                   40
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
      je  crackSHA1_1_if_true
     jmp crackSHA1_2_if_false
crackSHA1_1_if_true:
     mov                  rdi,     __const_string_1
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     jmp crackSHA1_33_block_exit
crackSHA1_2_if_false:
crackSHA1_3_if_exit:
     mov                  rsi,                    0
crackSHA1_4_loop_condition:
     cmp                  rsi,                    5
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je crackSHA1_5_loop_body
     jmp crackSHA1_7_loop_exit
crackSHA1_5_loop_body:
     mov                   r8,                  rsi
     sal                   r8,                    3
     mov                  rdi,                  rbx
     add                  rdi,                   r8
     mov      qword [rdi + 0],                    0
crackSHA1_6_loop_increment:
     add                  rsi,                    1
     jmp crackSHA1_4_loop_condition
crackSHA1_7_loop_exit:
     mov                  rsi,                    0
crackSHA1_8_loop_condition:
     cmp                  rsi,                   40
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je crackSHA1_9_loop_body
     jmp crackSHA1_11_loop_exit
crackSHA1_9_loop_body:
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,                    8
     cdq
    idiv                  ecx
     mov                  rdi,                  rax
     sal                  rdi,                    3
     mov                   r8,                  rbx
     add                   r8,                  rdi
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,                    8
     cdq
    idiv                  ecx
     mov                  rdi,                  rax
     sal                  rdi,                    3
     mov                  r13,                  rbx
     add                  r13,                  rdi
     mov                   r9,                  rsi
     add                   r9,                    3
     mov                  rdi,                  r12
     mov                  rdx,                   r9
    push                  rsi
    push                   r8
     sub                  rsp,                    8
    call   __string_substring
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
    push                   r8
     sub                  rsp,                    8
    call              hex2int
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rdi,                  rax
     mov                   r9,                  rsi
     mov                  rax,                   r9
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                   r9,                  rax
     mov                  r14,                   r9
     mov                  rax,                  r14
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov                  r14,                  rdx
     mov                   r9,                    1
     sub                   r9,                  r14
     sal                   r9,                    4
     mov                  rcx,                   r9
     sal                  rdi,                   cl
     mov                  r13,      qword [r13 + 0]
     xor                  r13,                  rdi
     mov       qword [r8 + 0],                  r13
crackSHA1_10_loop_increment:
     add                  rsi,                    4
     jmp crackSHA1_8_loop_condition
crackSHA1_11_loop_exit:
     mov                   r8,                    4
     mov                  r12,                    1
crackSHA1_12_loop_condition:
     cmp                  r12,                   r8
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
      je crackSHA1_13_loop_body
     jmp crackSHA1_32_loop_exit
crackSHA1_13_loop_body:
     mov                  rsi,                    0
crackSHA1_14_loop_condition:
     cmp                  rsi,                  r12
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je crackSHA1_15_loop_body
     jmp crackSHA1_17_loop_exit
crackSHA1_15_loop_body:
     mov                  r13,                  rsi
     sal                  r13,                    3
     mov                  rdi, qword [@inputBuffer + 0]
     add                  rdi,                  r13
     mov      qword [rdi + 0],                   48
crackSHA1_16_loop_increment:
     add                  rsi,                    1
     jmp crackSHA1_14_loop_condition
crackSHA1_17_loop_exit:
crackSHA1_18_loop_condition:
     mov                  rax,                    1
     cmp                  rax,                    1
      je crackSHA1_19_loop_body
     jmp crackSHA1_30_loop_exit
crackSHA1_19_loop_body:
     mov                  rdi, qword [@inputBuffer + 0]
     mov                  rsi,                  r12
    push                   r8
    call                 sha1
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
    push                   r8
    call          array_equal
     pop                   r8
     mov                  rsi,                  rax
     cmp                  rsi,                    1
      je crackSHA1_20_if_true
     jmp crackSHA1_25_if_false
crackSHA1_20_if_true:
     mov                  rsi,                    0
crackSHA1_21_loop_condition:
     cmp                  rsi,                  r12
     mov                  rbx,                    0
    setl                   bl
     cmp                  rbx,                    1
      je crackSHA1_22_loop_body
     jmp crackSHA1_24_loop_exit
crackSHA1_22_loop_body:
     mov                  rbx,                  rsi
     sal                  rbx,                    3
     mov                  rdi, qword [@inputBuffer + 0]
     add                  rdi,                  rbx
     mov                  rdi,      qword [rdi + 0]
    push                  rsi
    call              int2chr
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
    call                print
     pop                  rsi
crackSHA1_23_loop_increment:
     add                  rsi,                    1
     jmp crackSHA1_21_loop_condition
crackSHA1_24_loop_exit:
     mov                  rdi,     __const_string_2
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     jmp crackSHA1_33_block_exit
crackSHA1_25_if_false:
crackSHA1_26_if_exit:
     mov                  rdi, qword [@inputBuffer + 0]
     mov                  rsi,                  r12
    push                   r8
    call             nextText
     pop                   r8
     mov                  rsi,                  rax
     xor                  rsi,                    1
     cmp                  rsi,                    1
      je crackSHA1_27_if_true
     jmp crackSHA1_28_if_false
crackSHA1_27_if_true:
     jmp crackSHA1_30_loop_exit
crackSHA1_28_if_false:
crackSHA1_29_if_exit:
     jmp crackSHA1_18_loop_condition
crackSHA1_30_loop_exit:
crackSHA1_31_loop_increment:
     mov                  rsi,                  r12
     add                  r12,                    1
     jmp crackSHA1_12_loop_condition
crackSHA1_32_loop_exit:
     mov                  rdi,     __const_string_3
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
crackSHA1_33_block_exit:
     pop                  rbx
     pop                  r13
     pop                  r14
     pop                  r12
     add                  rsp,                    8
     pop                  rbp
     ret
computeSHA1:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    8
    push                  r12
    push                  rbx
computeSHA1_0_block_enter:
     mov                  rbx,                  rdi
     mov                  rsi,                    0
computeSHA1_1_loop_condition:
     mov                  rdi,                  rbx
    push                  rsi
    call      __string_length
     pop                  rsi
     mov                  rdi,                  rax
     cmp                  rsi,                  rdi
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je computeSHA1_2_loop_body
     jmp computeSHA1_4_loop_exit
computeSHA1_2_loop_body:
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                  r12, qword [@inputBuffer + 0]
     add                  r12,                  rdi
     mov                  rdi,                  rbx
    push                  rsi
    call         __string_ord
     pop                  rsi
     mov      qword [r12 + 0],                  rax
computeSHA1_3_loop_increment:
     add                  rsi,                    1
     jmp computeSHA1_1_loop_condition
computeSHA1_4_loop_exit:
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi, qword [@inputBuffer + 0]
     sub                  rsp,                    8
    call                 sha1
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov                  rsi,                    0
computeSHA1_5_loop_condition:
     mov                  rdi,                  rbx
    push                  rsi
    call         __array_size
     pop                  rsi
     mov                  rdi,                  rax
     cmp                  rsi,                  rdi
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je computeSHA1_6_loop_body
     jmp computeSHA1_8_loop_exit
computeSHA1_6_loop_body:
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                  r12,                  rbx
     add                  r12,                  rdi
     mov                  rdi,      qword [r12 + 0]
    push                  rsi
    call          toStringHex
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
    call                print
     pop                  rsi
computeSHA1_7_loop_increment:
     add                  rsi,                    1
     jmp computeSHA1_5_loop_condition
computeSHA1_8_loop_exit:
     mov                  rdi,     __const_string_0
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
computeSHA1_9_block_exit:
     pop                  rbx
     pop                  r12
     add                  rsp,                    8
     pop                  rbp
     ret
toStringHex:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r12
    push                  rbx
toStringHex_0_block_enter:
     mov                  rbx,                  rdi
     mov                  rsi,     __const_string_4
     mov                  r12,                   28
toStringHex_1_loop_condition:
     cmp                  r12,                    0
     mov                  rdi,                    0
   setge                  dil
     cmp                  rdi,                    1
      je toStringHex_2_loop_body
     jmp toStringHex_7_loop_exit
toStringHex_2_loop_body:
     mov                  rdi,                  rbx
     mov                  rcx,                  r12
     sar                  rdi,                   cl
     and                  rdi,                   15
     cmp                  rdi,                   10
     mov                   r8,                    0
    setl                  r8b
     cmp                   r8,                    1
      je toStringHex_3_if_true
     jmp toStringHex_4_if_false
toStringHex_3_if_true:
     mov                   r8,                   48
     add                   r8,                  rdi
     mov                  rdi,                   r8
    push                  rsi
     sub                  rsp,                    8
    call              int2chr
     add                  rsp,                    8
     pop                  rsi
     mov                   r8,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                   r8
    call  __string_connection
     mov                  rsi,                  rax
     jmp toStringHex_5_if_exit
toStringHex_4_if_false:
     mov                   r8,                   65
     add                   r8,                  rdi
     mov                  rdi,                   r8
     sub                  rdi,                   10
    push                  rsi
     sub                  rsp,                    8
    call              int2chr
     add                  rsp,                    8
     pop                  rsi
     mov                   r8,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                   r8
    call  __string_connection
     mov                  rsi,                  rax
toStringHex_5_if_exit:
toStringHex_6_loop_increment:
     sub                  r12,                    4
     jmp toStringHex_1_loop_condition
toStringHex_7_loop_exit:
     mov                  rax,                  rsi
toStringHex_8_block_exit:
     pop                  rbx
     pop                  r12
     pop                  rbp
     ret
sha1:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   72
    push                  r12
    push                  r14
    push                  r13
    push                  r15
    push                  rbx
sha1_0_block_enter:
     mov                  rbx,                  rdi
     mov                  rdi,                  rsi
     add                  rdi,                   64
     sub                  rdi,                   56
     mov                  rax,                  rdi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rdi,                  rax
     add                  rdi,                    1
     mov      qword [rbp - 8],                  rdi
     mov                  rax,      qword [rbp - 8]
     cmp                  rax, qword [@MAXCHUNK + 0]
     mov                  rdi,                    0
    setg                  dil
     cmp                  rdi,                    1
      je       sha1_1_if_true
     jmp      sha1_2_if_false
sha1_1_if_true:
     mov                  rdi,     __const_string_5
    call              println
     mov                  rax,                    0
     jmp   sha1_37_block_exit
sha1_2_if_false:
sha1_3_if_exit:
     mov     qword [rbp - 24],                    0
sha1_4_loop_condition:
     mov                  rax,     qword [rbp - 24]
     cmp                  rax,      qword [rbp - 8]
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je     sha1_5_loop_body
     jmp    sha1_11_loop_exit
sha1_5_loop_body:
     mov     qword [rbp - 32],                    0
sha1_6_loop_condition:
     cmp     qword [rbp - 32],                   80
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je     sha1_7_loop_body
     jmp     sha1_9_loop_exit
sha1_7_loop_body:
     mov                  r12,     qword [rbp - 24]
     sal                  r12,                    3
     mov                  rdi,  qword [@chunks + 0]
     add                  rdi,                  r12
     mov                  r12,     qword [rbp - 32]
     sal                  r12,                    3
     mov                  rdi,      qword [rdi + 0]
     add                  rdi,                  r12
     mov      qword [rdi + 0],                    0
sha1_8_loop_increment:
     mov                  rdi,     qword [rbp - 32]
     add     qword [rbp - 32],                    1
     jmp sha1_6_loop_condition
sha1_9_loop_exit:
sha1_10_loop_increment:
     mov                  rdi,     qword [rbp - 24]
     add     qword [rbp - 24],                    1
     jmp sha1_4_loop_condition
sha1_11_loop_exit:
     mov     qword [rbp - 24],                    0
sha1_12_loop_condition:
     cmp     qword [rbp - 24],                  rsi
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je    sha1_13_loop_body
     jmp    sha1_15_loop_exit
sha1_13_loop_body:
     mov                  rdi,     qword [rbp - 24]
     mov                  rax,                  rdi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rdi,                  rax
     mov                  r12,                  rdi
     sal                  r12,                    3
     mov                  rdi,  qword [@chunks + 0]
     add                  rdi,                  r12
     mov                  r12,     qword [rbp - 24]
     mov                  rax,                  r12
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov                  rax,                  r12
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  r12,                  rax
     sal                  r12,                    3
     mov                  rdi,      qword [rdi + 0]
     add                  rdi,                  r12
     mov                  r12,     qword [rbp - 24]
     mov                  rax,                  r12
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  r12,                  rax
     mov                   r8,                  r12
     sal                   r8,                    3
     mov                  r12,  qword [@chunks + 0]
     add                  r12,                   r8
     mov                   r8,     qword [rbp - 24]
     mov                  rax,                   r8
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                   r8,                  rdx
     mov                  rax,                   r8
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                   r8,                  rax
     sal                   r8,                    3
     mov                  r12,      qword [r12 + 0]
     add                  r12,                   r8
     mov                  r13,     qword [rbp - 24]
     sal                  r13,                    3
     mov                   r8,                  rbx
     add                   r8,                  r13
     mov                   r9,     qword [rbp - 24]
     mov                  rax,                   r9
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                   r9,                  rdx
     mov                  r13,                    3
     sub                  r13,                   r9
     sal                  r13,                    3
     mov                   r8,       qword [r8 + 0]
     mov                  rcx,                  r13
     sal                   r8,                   cl
     mov                  r12,      qword [r12 + 0]
     xor                  r12,                   r8
     mov      qword [rdi + 0],                  r12
sha1_14_loop_increment:
     mov                  rdi,     qword [rbp - 24]
     add     qword [rbp - 24],                    1
     jmp sha1_12_loop_condition
sha1_15_loop_exit:
     mov                  rbx,     qword [rbp - 24]
     mov                  rax,                  rbx
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rbx,  qword [@chunks + 0]
     add                  rbx,                  rdi
     mov                  rdi,     qword [rbp - 24]
     mov                  rax,                  rdi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rax,                  rdi
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rdi,                  rax
     sal                  rdi,                    3
     mov                  rbx,      qword [rbx + 0]
     add                  rbx,                  rdi
     mov                  rdi,     qword [rbp - 24]
     mov                  rax,                  rdi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rdi,                  rax
     mov                  r12,                  rdi
     sal                  r12,                    3
     mov                  rdi,  qword [@chunks + 0]
     add                  rdi,                  r12
     mov                  r12,     qword [rbp - 24]
     mov                  rax,                  r12
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov                  rax,                  r12
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  r12,                  rax
     sal                  r12,                    3
     mov                  rdi,      qword [rdi + 0]
     add                  rdi,                  r12
     mov                  r12,     qword [rbp - 24]
     mov                  rax,                  r12
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov                   r8,                    3
     sub                   r8,                  r12
     sal                   r8,                    3
     mov                  r12,                  128
     mov                  rcx,                   r8
     sal                  r12,                   cl
     mov                  rdi,      qword [rdi + 0]
     xor                  rdi,                  r12
     mov      qword [rbx + 0],                  rdi
     mov                  rbx,      qword [rbp - 8]
     sub                  rbx,                    1
     sal                  rbx,                    3
     mov                  rdi,  qword [@chunks + 0]
     add                  rdi,                  rbx
     mov                  rbx,                   15
     sal                  rbx,                    3
     mov                  rdi,      qword [rdi + 0]
     add                  rdi,                  rbx
     mov                  rbx,                  rsi
     sal                  rbx,                    3
     mov      qword [rdi + 0],                  rbx
     mov                  rbx,      qword [rbp - 8]
     sub                  rbx,                    1
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rbx,  qword [@chunks + 0]
     add                  rbx,                  rdi
     mov                  rdi,                   14
     sal                  rdi,                    3
     mov                  rbx,      qword [rbx + 0]
     add                  rbx,                  rdi
     sar                  rsi,                   29
     and                  rsi,                    7
     mov      qword [rbx + 0],                  rsi
     mov                  rbx,           1732584193
     mov                  rdi,                43913
     mov                  rsi,                61389
    call                 lohi
     mov                   r8,                  rax
     mov                  rdi,                56574
     mov                  rsi,                39098
    push                   r8
     sub                  rsp,                    8
    call                 lohi
     add                  rsp,                    8
     pop                   r8
     mov                   r9,                  rax
     mov                  r12,            271733878
     mov                  rdi,                57840
     mov                  rsi,                50130
    push                   r9
    push                   r8
    call                 lohi
     pop                   r8
     pop                   r9
     mov                  r13,                  rax
     mov     qword [rbp - 24],                    0
sha1_16_loop_condition:
     mov                  rax,     qword [rbp - 24]
     cmp                  rax,      qword [rbp - 8]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je    sha1_17_loop_body
     jmp    sha1_36_loop_exit
sha1_17_loop_body:
     mov     qword [rbp - 32],                   16
sha1_18_loop_condition:
     cmp     qword [rbp - 32],                   80
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je    sha1_19_loop_body
     jmp    sha1_21_loop_exit
sha1_19_loop_body:
     mov                  rdi,     qword [rbp - 24]
     sal                  rdi,                    3
     mov                  rsi,  qword [@chunks + 0]
     add                  rsi,                  rdi
     mov                  rdi,     qword [rbp - 32]
     sal                  rdi,                    3
     mov                  r14,      qword [rsi + 0]
     add                  r14,                  rdi
     mov                  rdi,     qword [rbp - 24]
     sal                  rdi,                    3
     mov                  rsi,  qword [@chunks + 0]
     add                  rsi,                  rdi
     mov                  rdi,     qword [rbp - 32]
     sub                  rdi,                    3
     sal                  rdi,                    3
     mov                  rsi,      qword [rsi + 0]
     add                  rsi,                  rdi
     mov                  r10,     qword [rbp - 24]
     sal                  r10,                    3
     mov                  rdi,  qword [@chunks + 0]
     add                  rdi,                  r10
     mov                  r10,     qword [rbp - 32]
     sub                  r10,                    8
     sal                  r10,                    3
     mov                  rdi,      qword [rdi + 0]
     add                  rdi,                  r10
     mov                  rsi,      qword [rsi + 0]
      or                  rsi,      qword [rdi + 0]
     mov                  r10,     qword [rbp - 24]
     sal                  r10,                    3
     mov                  rdi,  qword [@chunks + 0]
     add                  rdi,                  r10
     mov                  r10,     qword [rbp - 32]
     sub                  r10,                   14
     sal                  r10,                    3
     mov                  rdi,      qword [rdi + 0]
     add                  rdi,                  r10
      or                  rsi,      qword [rdi + 0]
     mov                  r10,     qword [rbp - 24]
     sal                  r10,                    3
     mov                  rdi,  qword [@chunks + 0]
     add                  rdi,                  r10
     mov                  r10,     qword [rbp - 32]
     sub                  r10,                   16
     sal                  r10,                    3
     mov                  rdi,      qword [rdi + 0]
     add                  rdi,                  r10
      or                  rsi,      qword [rdi + 0]
     mov                  rdi,                  rsi
     mov                  rsi,                    1
    push                   r9
    push                   r8
    call          rotate_left
     pop                   r8
     pop                   r9
     mov      qword [r14 + 0],                  rax
sha1_20_loop_increment:
     mov                  rsi,     qword [rbp - 32]
     add     qword [rbp - 32],                    1
     jmp sha1_18_loop_condition
sha1_21_loop_exit:
     mov                  r14,                  rbx
     mov     qword [rbp - 48],                   r8
     mov     qword [rbp - 56],                   r9
     mov     qword [rbp - 64],                  r12
     mov                  r10,                  r13
     mov     qword [rbp - 32],                    0
sha1_22_loop_condition:
     cmp     qword [rbp - 32],                   80
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je    sha1_23_loop_body
     jmp    sha1_34_loop_exit
sha1_23_loop_body:
     cmp     qword [rbp - 32],                   20
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je      sha1_24_if_true
     jmp     sha1_25_if_false
sha1_24_if_true:
     mov                  rsi,     qword [rbp - 48]
     and                  rsi,     qword [rbp - 56]
     mov                  rdi,     qword [rbp - 48]
     not                  rdi
     and                  rdi,     qword [rbp - 64]
     xor                  rsi,                  rdi
     mov                  r15,                  rsi
     mov                  r11,           1518500249
     jmp      sha1_32_if_exit
sha1_25_if_false:
     cmp     qword [rbp - 32],                   40
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je      sha1_26_if_true
     jmp     sha1_27_if_false
sha1_26_if_true:
     mov                  rsi,     qword [rbp - 48]
      or                  rsi,     qword [rbp - 56]
      or                  rsi,     qword [rbp - 64]
     mov                  r15,                  rsi
     mov                  r11,           1859775393
     jmp      sha1_31_if_exit
sha1_27_if_false:
     cmp     qword [rbp - 32],                   60
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je      sha1_28_if_true
     jmp     sha1_29_if_false
sha1_28_if_true:
     mov                  rsi,     qword [rbp - 48]
     and                  rsi,     qword [rbp - 56]
     mov                  rdi,     qword [rbp - 48]
     and                  rdi,     qword [rbp - 64]
     xor                  rsi,                  rdi
     mov                  rdi,     qword [rbp - 56]
     and                  rdi,     qword [rbp - 64]
     xor                  rsi,                  rdi
     mov                  r15,                  rsi
     mov                  rdi,                48348
     mov                  rsi,                36635
    push                   r9
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call                 lohi
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     pop                   r9
     mov                  r11,                  rax
     jmp      sha1_30_if_exit
sha1_29_if_false:
     mov                  rsi,     qword [rbp - 48]
      or                  rsi,     qword [rbp - 56]
      or                  rsi,     qword [rbp - 64]
     mov                  r15,                  rsi
     mov                  rdi,                49622
     mov                  rsi,                51810
    push                   r9
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call                 lohi
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     pop                   r9
     mov                  r11,                  rax
sha1_30_if_exit:
sha1_31_if_exit:
sha1_32_if_exit:
     mov                  rdi,                  r14
     mov                  rsi,                    5
    push                   r9
    push                  r11
    push                   r8
    push                  r10
    call          rotate_left
     pop                  r10
     pop                   r8
     pop                  r11
     pop                   r9
     mov                  rdi,                  rax
     mov                  rsi,                  r10
    push                   r9
    push                  r11
    push                   r8
     sub                  rsp,                    8
    call                  add
     add                  rsp,                    8
     pop                   r8
     pop                  r11
     pop                   r9
     mov                  r10,                  rax
     mov                  rdi,                  r15
     mov                  rsi,                  r11
    push                  r10
    push                   r9
    push                   r8
     sub                  rsp,                    8
    call                  add
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  r10
    push                   r9
    push                   r8
    call                  add
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,     qword [rbp - 24]
     sal                  rdi,                    3
     mov                  r10,  qword [@chunks + 0]
     add                  r10,                  rdi
     mov                  rdi,     qword [rbp - 32]
     sal                  rdi,                    3
     mov                  r10,      qword [r10 + 0]
     add                  r10,                  rdi
     mov                  rdi,                  rsi
     mov                  rsi,      qword [r10 + 0]
    push                   r9
    push                   r8
    call                  add
     pop                   r8
     pop                   r9
     mov                  r15,                  rax
     mov                  r10,     qword [rbp - 64]
     mov                  rax,     qword [rbp - 56]
     mov     qword [rbp - 64],                  rax
     mov                  rdi,     qword [rbp - 48]
     mov                  rsi,                   30
    push                   r9
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call          rotate_left
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     pop                   r9
     mov     qword [rbp - 56],                  rax
     mov     qword [rbp - 48],                  r14
     mov                  r14,                  r15
sha1_33_loop_increment:
     mov                  rsi,     qword [rbp - 32]
     add     qword [rbp - 32],                    1
     jmp sha1_22_loop_condition
sha1_34_loop_exit:
     mov                  rdi,                  rbx
     mov                  rsi,                  r14
    push                   r9
    push                   r8
    push                  r10
     sub                  rsp,                    8
    call                  add
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     pop                   r9
     mov                  rbx,                  rax
     mov                  rdi,                   r8
     mov                  rsi,     qword [rbp - 48]
    push                   r9
    push                  r10
    call                  add
     pop                  r10
     pop                   r9
     mov                   r8,                  rax
     mov                  rdi,                   r9
     mov                  rsi,     qword [rbp - 56]
    push                  r10
    push                   r8
    call                  add
     pop                   r8
     pop                  r10
     mov                   r9,                  rax
     mov                  rdi,                  r12
     mov                  rsi,     qword [rbp - 64]
    push                   r9
    push                  r10
    push                   r8
     sub                  rsp,                    8
    call                  add
     add                  rsp,                    8
     pop                   r8
     pop                  r10
     pop                   r9
     mov                  r12,                  rax
     mov                  rdi,                  r13
     mov                  rsi,                  r10
    push                   r9
    push                   r8
    call                  add
     pop                   r8
     pop                   r9
     mov                  r13,                  rax
sha1_35_loop_increment:
     mov                  rsi,     qword [rbp - 24]
     add     qword [rbp - 24],                    1
     jmp sha1_16_loop_condition
sha1_36_loop_exit:
     mov                  rdi,                    0
     sal                  rdi,                    3
     mov                  rsi, qword [@outputBuffer + 0]
     add                  rsi,                  rdi
     mov      qword [rsi + 0],                  rbx
     mov                  rbx,                    1
     sal                  rbx,                    3
     mov                  rsi, qword [@outputBuffer + 0]
     add                  rsi,                  rbx
     mov      qword [rsi + 0],                   r8
     mov                  rbx,                    2
     sal                  rbx,                    3
     mov                  rsi, qword [@outputBuffer + 0]
     add                  rsi,                  rbx
     mov      qword [rsi + 0],                   r9
     mov                  rsi,                    3
     sal                  rsi,                    3
     mov                  rbx, qword [@outputBuffer + 0]
     add                  rbx,                  rsi
     mov      qword [rbx + 0],                  r12
     mov                  rbx,                    4
     sal                  rbx,                    3
     mov                  rsi, qword [@outputBuffer + 0]
     add                  rsi,                  rbx
     mov      qword [rsi + 0],                  r13
     mov                  rax, qword [@outputBuffer + 0]
sha1_37_block_exit:
     pop                  rbx
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     add                  rsp,                   72
     pop                  rbp
     ret
__global_init:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   48
__global_init_0_block_enter:
     mov qword [@asciiTable + 0],     __const_string_7
     mov qword [@MAXCHUNK + 0],                  100
     mov                  rsi, qword [@MAXCHUNK + 0]
     sub                  rsi,                    1
     sal                  rsi,                    6
     sub                  rsi,                   16
     mov qword [@MAXLENGTH + 0],                  rsi
     mov                   r9, qword [@MAXCHUNK + 0]
     add                   r9,                    1
     sal                   r9,                    3
    push                   r9
    push                   r8
     mov                  rdi,                   r9
    call               malloc
     pop                   r8
     pop                   r9
     mov                   r8,                  rax
     mov                  rax, qword [@MAXCHUNK + 0]
     mov       qword [r8 + 0],                  rax
     add                   r8,                    8
     mov                  rdi,                   r8
     mov                  rsi,                   r8
     sub                   r9,                    8
     add                  rsi,                   r9
__global_init_1_malloc_condition:
     cmp                  rdi,                  rsi
      jl __global_init_2_malloc_body
     jmp __global_init_3_malloc_exit
__global_init_2_malloc_body:
     mov                   r9,      qword [rdi + 0]
     mov                   r9,                   80
     add                   r9,                    1
     sal                   r9,                    3
    push                  rdi
    push                  rsi
    push                   r8
    push                   r9
     mov                  rdi,                   r9
    call               malloc
     pop                   r9
     pop                   r8
     pop                  rsi
     pop                  rdi
     mov                   r9,                  rax
     mov       qword [r9 + 0],                   80
     add                   r9,                    8
     mov      qword [rdi + 0],                   r9
     add                  rdi,                    8
     jmp __global_init_1_malloc_condition
__global_init_3_malloc_exit:
     mov  qword [@chunks + 0],                   r8
     mov                  rsi, qword [@MAXLENGTH + 0]
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rax, qword [@MAXLENGTH + 0]
     mov      qword [rsi + 0],                  rax
     add                  rsi,                    8
     mov qword [@inputBuffer + 0],                  rsi
     mov                  rsi,                    5
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                    5
     add                  rsi,                    8
     mov qword [@outputBuffer + 0],                  rsi
__global_init_4_block_exit:
     add                  rsp,                   48
     pop                  rbp
     ret
array_equal:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r12
    push                  r13
    push                  rbx
array_equal_0_block_enter:
     mov                  rbx,                  rdi
     mov                  rdi,                  rbx
    push                  rsi
    call         __array_size
     pop                  rsi
     mov                  r12,                  rax
     mov                  rdi,                  rsi
    push                  rsi
    call         __array_size
     pop                  rsi
     mov                  rdi,                  rax
     cmp                  r12,                  rdi
     mov                  rdi,                    0
   setne                  dil
     cmp                  rdi,                    1
      je array_equal_1_if_true
     jmp array_equal_2_if_false
array_equal_1_if_true:
     mov                  rax,                    0
     jmp array_equal_11_block_exit
array_equal_2_if_false:
array_equal_3_if_exit:
     mov                  r12,                    0
array_equal_4_loop_condition:
     mov                  rdi,                  rbx
    push                  rsi
    call         __array_size
     pop                  rsi
     mov                  rdi,                  rax
     cmp                  r12,                  rdi
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je array_equal_5_loop_body
     jmp array_equal_10_loop_exit
array_equal_5_loop_body:
     mov                   r8,                  r12
     sal                   r8,                    3
     mov                  rdi,                  rbx
     add                  rdi,                   r8
     mov                  r13,                  r12
     sal                  r13,                    3
     mov                   r8,                  rsi
     add                   r8,                  r13
     mov                  rdi,      qword [rdi + 0]
     cmp                  rdi,       qword [r8 + 0]
     mov                  rdi,                    0
   setne                  dil
     cmp                  rdi,                    1
      je array_equal_6_if_true
     jmp array_equal_7_if_false
array_equal_6_if_true:
     mov                  rax,                    0
     jmp array_equal_11_block_exit
array_equal_7_if_false:
array_equal_8_if_exit:
array_equal_9_loop_increment:
     mov                  rdi,                  r12
     add                  r12,                    1
     jmp array_equal_4_loop_condition
array_equal_10_loop_exit:
     mov                  rax,                    1
array_equal_11_block_exit:
     pop                  rbx
     pop                  r13
     pop                  r12
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
     mov                  rax,     __const_string_6
int2chr_7_block_exit:
     pop                  rbx
     pop                  r12
     add                  rsp,                    8
     pop                  rbp
     ret
rotate_left:
    push                  rbp
     mov                  rbp,                  rsp
rotate_left_0_block_enter:
     cmp                  rsi,                    1
     mov                   r8,                    0
    sete                  r8b
     cmp                   r8,                    1
      je rotate_left_1_if_true
     jmp rotate_left_2_if_false
rotate_left_1_if_true:
     mov                  rsi,                  rdi
     and                  rsi,           2147483647
     sal                  rsi,                    1
     sar                  rdi,                   31
     and                  rdi,                    1
     xor                  rsi,                  rdi
     mov                  rax,                  rsi
     jmp rotate_left_7_block_exit
rotate_left_2_if_false:
rotate_left_3_if_exit:
     cmp                  rsi,                   31
     mov                   r8,                    0
    sete                  r8b
     cmp                   r8,                    1
      je rotate_left_4_if_true
     jmp rotate_left_5_if_false
rotate_left_4_if_true:
     mov                  rsi,                  rdi
     and                  rsi,                    1
     sal                  rsi,                   31
     sar                  rdi,                    1
     and                  rdi,           2147483647
     xor                  rsi,                  rdi
     mov                  rax,                  rsi
     jmp rotate_left_7_block_exit
rotate_left_5_if_false:
rotate_left_6_if_exit:
     mov                   r9,                   32
     sub                   r9,                  rsi
     mov                   r8,                    1
     mov                  rcx,                   r9
     sal                   r8,                   cl
     mov                   r9,                   r8
     sub                   r9,                    1
     mov                   r8,                  rdi
     and                   r8,                   r9
     mov                  rcx,                  rsi
     sal                   r8,                   cl
     mov                   r9,                   32
     sub                   r9,                  rsi
     mov                  rcx,                   r9
     sar                  rdi,                   cl
     mov                   r9,                    1
     mov                  rcx,                  rsi
     sal                   r9,                   cl
     sub                   r9,                    1
     mov                  rsi,                  rdi
     and                  rsi,                   r9
     mov                  rdi,                   r8
     xor                  rdi,                  rsi
     mov                  rax,                  rdi
rotate_left_7_block_exit:
     pop                  rbp
     ret
lohi:
    push                  rbp
     mov                  rbp,                  rsp
lohi_0_block_enter:
     sal                  rsi,                   16
     xor                  rdi,                  rsi
     mov                  rax,                  rdi
lohi_1_block_exit:
     pop                  rbp
     ret
nextLetter:
    push                  rbp
     mov                  rbp,                  rsp
nextLetter_0_block_enter:
     mov                  rsi,                  rdi
     cmp                  rsi,                  122
     mov                  rdi,                    0
    sete                  dil
     cmp                  rdi,                    1
      je nextLetter_1_if_true
     jmp nextLetter_2_if_false
nextLetter_1_if_true:
     mov                  rsi,                    1
     neg                  rsi
     mov                  rax,                  rsi
     jmp nextLetter_10_block_exit
nextLetter_2_if_false:
nextLetter_3_if_exit:
     cmp                  rsi,                   90
     mov                  rdi,                    0
    sete                  dil
     cmp                  rdi,                    1
      je nextLetter_4_if_true
     jmp nextLetter_5_if_false
nextLetter_4_if_true:
     mov                  rax,                   97
     jmp nextLetter_10_block_exit
nextLetter_5_if_false:
nextLetter_6_if_exit:
     cmp                  rsi,                   57
     mov                  rdi,                    0
    sete                  dil
     cmp                  rdi,                    1
      je nextLetter_7_if_true
     jmp nextLetter_8_if_false
nextLetter_7_if_true:
     mov                  rax,                   65
     jmp nextLetter_10_block_exit
nextLetter_8_if_false:
nextLetter_9_if_exit:
     add                  rsi,                    1
     mov                  rax,                  rsi
nextLetter_10_block_exit:
     pop                  rbp
     ret
SECTION .data
      dq                    0
__const_string_0:
	db   0
      dq                   13
__const_string_1:
	db  73, 110, 118,  97, 108, 105, 100,  32, 105, 110, 112, 117, 116,   0
      dq                    0
__const_string_2:
	db   0
      dq                   10
__const_string_3:
	db  78, 111, 116,  32,  70, 111, 117, 110, 100,  33,   0
      dq                    0
__const_string_4:
	db   0
      dq                   18
__const_string_5:
	db 110,  67, 104, 117, 110, 107,  32,  62,  32,  77,  65,  88,  67,  72,  85,  78,  75,  33,   0
      dq                    0
__const_string_6:
	db   0
      dq                   97
__const_string_7:
	db  32,  33,  34,  35,  36,  37,  38,  39,  40,  41,  42,  43,  44,  45,  46,  47,  48,  49,  50,  51,  52,  53,  54,  55,  56,  57,  58,  59,  60,  61,  62,  63,  64,  65,  66,  67,  68,  69,  70,  71,  72,  73,  74,  75,  76,  77,  78,  79,  80,  81,  82,  83,  84,  85,  86,  87,  88,  89,  90,  91,  92,  93,  94,  95,  96,  97,  98,  99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126,   0
SECTION .bss
@asciiTable:
    resq                    1
@MAXCHUNK:
    resq                    1
@MAXLENGTH:
    resq                    1
@chunks:
    resq                    1
@inputBuffer:
    resq                    1
@outputBuffer:
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
