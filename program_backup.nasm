main:
    push                  rbp
     mov                  rbp,                  rsp
    call        __global_init
     sub                  rsp,                   32
    push                  rbx
main_0_block_enter:
     sub                  rsp,                    8
    call            getString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov       qword [@A + 0],                  rsi
     sub                  rsp,                    8
    call            getString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov       qword [@B + 0],                  rsi
     mov                  rdi,       qword [@B + 0]
     sub                  rsp,                    8
    call    __string_parseInt
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov       qword [@N + 0],                  rsi
     mov                  rdi,       qword [@A + 0]
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     mov                  rsi,                  rax
     cmp                  rsi,       qword [@N + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je       main_1_if_true
     jmp      main_2_if_false
main_1_if_true:
     mov                  rdi,     __const_string_0
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp    main_4_block_exit
main_2_if_false:
     jmp       main_3_if_exit
main_3_if_exit:
     mov                  rbx,       qword [@N + 0]
     sub                  rbx,                    1
     mov                  rdi,       qword [@A + 0]
     mov                  rsi,                    0
     mov                  rdx,                  rbx
     sub                  rsp,                    8
    call   __string_substring
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                 calc
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov       qword [@C + 0],                  rsi
     mov                  rdi,       qword [@C + 0]
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp    main_4_block_exit
main_4_block_exit:
     pop                  rbx
     add                  rsp,                   32
     pop                  rbp
     ret
calc:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r12
    push                  r13
    push                  rbx
calc_0_block_enter:
     mov                  r13,                  rdi
     mov                  rdi,                  r13
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rax,                    1
     cmp                  rax,                   r8
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je       calc_1_if_true
     jmp      calc_2_if_false
calc_1_if_true:
     mov                  rax,                  r13
     jmp   calc_16_block_exit
calc_2_if_false:
     jmp       calc_3_if_exit
calc_3_if_exit:
     mov                  rsi,                   r8
     mov                  rax,                  rsi
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  r12,                  rbx
     sub                  r12,                    1
     mov                  rdi,                  r13
     mov                  rsi,                    0
     mov                  rdx,                  r12
    push                   r8
    call   __string_substring
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    call                 calc
     pop                   r8
     mov                  rsi,                  rax
     mov                   r9,                  rsi
     mov                  r12,                   r8
     sub                  r12,                    1
     mov                  rdi,                  r13
     mov                  rsi,                  rbx
     mov                  rdx,                  r12
    push                   r9
    call   __string_substring
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r9
    call                 calc
     pop                   r9
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rdi,                   r9
     mov                  rsi,                  r12
    push                   r9
    call          __string_LE
     pop                   r9
     mov                  rsi,                  rax
     cmp                  rsi,                    1
      je       calc_4_if_true
     jmp      calc_5_if_false
calc_4_if_true:
     mov                  rdi,                   r9
     mov                  rsi,                  r12
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rax,                  rsi
     jmp   calc_16_block_exit
calc_5_if_false:
     mov                  rdi,                   r9
     mov                  rsi,                  r12
    push                   r9
    call          __string_EQ
     pop                   r9
     mov                  rsi,                  rax
     cmp                  rsi,                    1
      je       calc_6_if_true
     jmp     calc_10_if_false
calc_6_if_true:
     mov                  rdi,                   r9
     mov                  rsi,                    0
    push                   r9
    call         __string_ord
     pop                   r9
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                  r12
     mov                  rsi,                    0
    push                   r9
    call         __string_ord
     pop                   r9
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je       calc_7_if_true
     jmp      calc_8_if_false
calc_7_if_true:
     mov                  rdi,                   r9
     mov                  rsi,                  r12
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rax,                  rsi
     jmp   calc_16_block_exit
calc_8_if_false:
     jmp       calc_9_if_exit
calc_9_if_exit:
     mov                  rdi,                  r12
     mov                  rsi,                   r9
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rax,                  rsi
     jmp   calc_16_block_exit
calc_10_if_false:
     mov                  rdi,                   r9
     mov                  rsi,                  r12
    push                   r9
    call          __string_GR
     pop                   r9
     mov                  rsi,                  rax
     cmp                  rsi,                    1
      je      calc_11_if_true
     jmp     calc_12_if_false
calc_11_if_true:
     mov                  rdi,                  r12
     mov                  rsi,                   r9
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rax,                  rsi
     jmp   calc_16_block_exit
calc_12_if_false:
     jmp      calc_13_if_exit
calc_13_if_exit:
     jmp      calc_14_if_exit
calc_14_if_exit:
     jmp      calc_15_if_exit
calc_15_if_exit:
     mov                  rdi,     __const_string_1
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     jmp   calc_16_block_exit
calc_16_block_exit:
     pop                  rbx
     pop                  r13
     pop                  r12
     pop                  rbp
     ret
