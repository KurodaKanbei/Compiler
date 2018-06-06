global myprint
global dfs
global __global_init
global print_last_cond
global payoff
global main
global print_cond
global check
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
myprint:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    8
    push                  r12
    push                  rbx
myprint_0_block_enter:
     xor                  r12,                  r12
    push                  rdi
    call      __string_length
     pop                  rdi
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
      jl  myprint_2_loop_body
     jmp myprint_5_block_exit
myprint_1_loop_condition:
    push                  rdi
    call      __string_length
     pop                  rdi
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
      jl  myprint_2_loop_body
     jmp myprint_5_block_exit
myprint_2_loop_body:
     mov                  rsi,                  r12
    push                  rdi
    call         __string_ord
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rsi,  qword [@myHash + 0]
     add                  rsi,                  rbx
     mov  qword [@myHash + 0],                  rsi
     inc                  r12
    push                  rdi
    call      __string_length
     pop                  rdi
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
      jl  myprint_2_loop_body
     jmp myprint_5_block_exit
myprint_3_loop_increment:
     inc                  r12
    push                  rdi
    call      __string_length
     pop                  rdi
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
      jl  myprint_2_loop_body
myprint_5_block_exit:
     pop                  rbx
     pop                  r12
     add                  rsp,                    8
     pop                  rbp
     ret
dfs:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   48
    push                  r12
    push                  r13
    push                  rbx
dfs_0_block_enter:
     mov                  r12,                  rdi
     cmp                  r12,       qword [@n + 0]
      je   dfs_8_inline_enter
     mov                  rsi,                  r12
     inc                  rsi
     mov                  rbx,                  rsi
     sal                  rbx,                    3
     mov                  rsi, qword [@assignment + 0]
     add                  rsi,                  rbx
     mov      qword [rsi + 0],                    1
     mov                  rsi,                  r12
     inc                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                  dfs
     add                  rsp,                    8
     mov                  rsi,                  r12
     inc                  rsi
     mov                  rbx,                  rsi
     sal                  rbx,                    3
     mov                  rsi, qword [@assignment + 0]
     add                  rsi,                  rbx
     mov      qword [rsi + 0],                    0
     mov                  rsi,                  r12
     inc                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                  dfs
     add                  rsp,                    8
     jmp     dfs_7_block_exit
dfs_8_inline_enter:
     xor                  r13,                  r13
     cmp                  r13,       qword [@m + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_10_loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
      je        dfs_2_if_true
     jmp     dfs_7_block_exit
dfs_9_loop_condition:
     cmp                  r13,       qword [@m + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_10_loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
      je        dfs_2_if_true
     jmp     dfs_7_block_exit
dfs_10_loop_body:
     xor                  rdi,                  rdi
     xor                  r12,                  r12
     cmp                  r12,                    3
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_12_loop_body
     cmp                  rdi,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je       dfs_27_if_true
     inc                  r13
     cmp                  r13,       qword [@m + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_10_loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
      je        dfs_2_if_true
     jmp     dfs_7_block_exit
dfs_11_loop_condition:
     cmp                  r12,                    3
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_12_loop_body
     cmp                  rdi,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je       dfs_27_if_true
     inc                  r13
     cmp                  r13,       qword [@m + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_10_loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
      je        dfs_2_if_true
     jmp     dfs_7_block_exit
dfs_12_loop_body:
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  rbx,     qword [@sat + 0]
     add                  rbx,                  rsi
     mov                   r8,                  r12
     sal                   r8,                    3
     mov                  rsi,      qword [rbx + 0]
     add                  rsi,                   r8
     mov                   r8,      qword [rsi + 0]
     cmp                   r8,                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
     jne dfs_14_logical_false
     mov                  rbx,                   r8
     sal                  rbx,                    3
     mov                  rsi, qword [@assignment + 0]
     add                  rsi,                  rbx
     cmp      qword [rsi + 0],                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je       dfs_16_if_true
     cmp                   r8,                    0
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
     jne dfs_20_logical_false
     mov                  rsi,                   r8
     neg                  rsi
     sal                  rsi,                    3
     mov                  rbx, qword [@assignment + 0]
     add                  rbx,                  rsi
     cmp      qword [rbx + 0],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je       dfs_22_if_true
     inc                  r12
     cmp                  r12,                    3
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_12_loop_body
     cmp                  rdi,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je       dfs_27_if_true
     inc                  r13
     cmp                  r13,       qword [@m + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_10_loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
      je        dfs_2_if_true
     jmp     dfs_7_block_exit
dfs_13_logical_true:
     mov                  rbx,                   r8
     sal                  rbx,                    3
     mov                  rsi, qword [@assignment + 0]
     add                  rsi,                  rbx
     cmp      qword [rsi + 0],                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je       dfs_16_if_true
     cmp                   r8,                    0
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
     jne dfs_20_logical_false
     mov                  rsi,                   r8
     neg                  rsi
     sal                  rsi,                    3
     mov                  rbx, qword [@assignment + 0]
     add                  rbx,                  rsi
     cmp      qword [rbx + 0],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je       dfs_22_if_true
     inc                  r12
     cmp                  r12,                    3
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_12_loop_body
     cmp                  rdi,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je       dfs_27_if_true
     inc                  r13
     cmp                  r13,       qword [@m + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_10_loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
      je        dfs_2_if_true
     jmp     dfs_7_block_exit
dfs_14_logical_false:
     xor                  rsi,                  rsi
     cmp                  rsi,                    1
      je       dfs_16_if_true
     cmp                   r8,                    0
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
     jne dfs_20_logical_false
     mov                  rsi,                   r8
     neg                  rsi
     sal                  rsi,                    3
     mov                  rbx, qword [@assignment + 0]
     add                  rbx,                  rsi
     cmp      qword [rbx + 0],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je       dfs_22_if_true
     inc                  r12
     cmp                  r12,                    3
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_12_loop_body
     cmp                  rdi,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je       dfs_27_if_true
     inc                  r13
     cmp                  r13,       qword [@m + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_10_loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
      je        dfs_2_if_true
     jmp     dfs_7_block_exit
dfs_15_logical_exit:
     cmp                  rsi,                    1
      je       dfs_16_if_true
     cmp                   r8,                    0
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
     jne dfs_20_logical_false
     mov                  rsi,                   r8
     neg                  rsi
     sal                  rsi,                    3
     mov                  rbx, qword [@assignment + 0]
     add                  rbx,                  rsi
     cmp      qword [rbx + 0],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je       dfs_22_if_true
     inc                  r12
     cmp                  r12,                    3
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_12_loop_body
     cmp                  rdi,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je       dfs_27_if_true
     inc                  r13
     cmp                  r13,       qword [@m + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_10_loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
      je        dfs_2_if_true
     jmp     dfs_7_block_exit
dfs_16_if_true:
     mov                  rdi,                    1
     cmp                   r8,                    0
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
     jne dfs_20_logical_false
     mov                  rsi,                   r8
     neg                  rsi
     sal                  rsi,                    3
     mov                  rbx, qword [@assignment + 0]
     add                  rbx,                  rsi
     cmp      qword [rbx + 0],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je       dfs_22_if_true
     inc                  r12
     cmp                  r12,                    3
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_12_loop_body
     cmp                  rdi,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je       dfs_27_if_true
     inc                  r13
     cmp                  r13,       qword [@m + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_10_loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
      je        dfs_2_if_true
     jmp     dfs_7_block_exit
dfs_18_if_exit:
     cmp                   r8,                    0
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
     jne dfs_20_logical_false
     mov                  rsi,                   r8
     neg                  rsi
     sal                  rsi,                    3
     mov                  rbx, qword [@assignment + 0]
     add                  rbx,                  rsi
     cmp      qword [rbx + 0],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je       dfs_22_if_true
     inc                  r12
     cmp                  r12,                    3
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_12_loop_body
     cmp                  rdi,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je       dfs_27_if_true
     inc                  r13
     cmp                  r13,       qword [@m + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_10_loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
      je        dfs_2_if_true
     jmp     dfs_7_block_exit
dfs_19_logical_true:
     mov                  rsi,                   r8
     neg                  rsi
     sal                  rsi,                    3
     mov                  rbx, qword [@assignment + 0]
     add                  rbx,                  rsi
     cmp      qword [rbx + 0],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je       dfs_22_if_true
     inc                  r12
     cmp                  r12,                    3
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_12_loop_body
     cmp                  rdi,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je       dfs_27_if_true
     inc                  r13
     cmp                  r13,       qword [@m + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_10_loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
      je        dfs_2_if_true
     jmp     dfs_7_block_exit
dfs_20_logical_false:
     xor                  rsi,                  rsi
     cmp                  rsi,                    1
      je       dfs_22_if_true
     inc                  r12
     cmp                  r12,                    3
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_12_loop_body
     cmp                  rdi,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je       dfs_27_if_true
     inc                  r13
     cmp                  r13,       qword [@m + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_10_loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
      je        dfs_2_if_true
     jmp     dfs_7_block_exit
dfs_21_logical_exit:
     cmp                  rsi,                    1
      je       dfs_22_if_true
     inc                  r12
     cmp                  r12,                    3
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_12_loop_body
     cmp                  rdi,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je       dfs_27_if_true
     inc                  r13
     cmp                  r13,       qword [@m + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_10_loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
      je        dfs_2_if_true
     jmp     dfs_7_block_exit
dfs_22_if_true:
     mov                  rdi,                    1
     inc                  r12
     cmp                  r12,                    3
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_12_loop_body
     cmp                  rdi,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je       dfs_27_if_true
     inc                  r13
     cmp                  r13,       qword [@m + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_10_loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
      je        dfs_2_if_true
     jmp     dfs_7_block_exit
dfs_25_loop_increment:
     inc                  r12
     cmp                  r12,                    3
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_12_loop_body
     cmp                  rdi,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je       dfs_27_if_true
     inc                  r13
     cmp                  r13,       qword [@m + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_10_loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
      je        dfs_2_if_true
     jmp     dfs_7_block_exit
dfs_26_loop_exit:
     cmp                  rdi,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je       dfs_27_if_true
     inc                  r13
     cmp                  r13,       qword [@m + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_10_loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
      je        dfs_2_if_true
     jmp     dfs_7_block_exit
dfs_27_if_true:
     xor                  rsi,                  rsi
     cmp                  rsi,                    1
      je        dfs_2_if_true
     jmp     dfs_7_block_exit
dfs_30_loop_increment:
     inc                  r13
     cmp                  r13,       qword [@m + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_10_loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
      je        dfs_2_if_true
     jmp     dfs_7_block_exit
dfs_31_loop_exit:
     mov                  rsi,                    1
     cmp                  rsi,                    1
      je        dfs_2_if_true
     jmp     dfs_7_block_exit
dfs_32_inline_exit:
     cmp                  rsi,                    1
      je        dfs_2_if_true
     jmp     dfs_7_block_exit
dfs_2_if_true:
     mov                  rbx,     __const_string_3
     xor                  r12,                  r12
     mov                  rdi,                  rbx
    push                  rsi
    call      __string_length
     pop                  rsi
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_35_loop_body
     xor                  rsi,                  rsi
     cmp                  rsi,       qword [@n + 0]
     mov                  rbx,                    0
    sete                   bl
     cmp                  rbx,                    1
      je       dfs_40_if_true
     mov                  rbx,                  rsi
     inc                  rbx
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rbx, qword [@cond_ass + 0]
     add                  rbx,                  rdi
     mov      qword [rbx + 0],                    1
     mov                  rbx,                  rsi
     inc                  rbx
     mov                  rdi,                  rbx
    push                  rsi
    call           print_cond
     pop                  rsi
     mov                  rbx,                  rsi
     inc                  rbx
     sal                  rbx,                    3
     mov                  rdi, qword [@cond_ass + 0]
     add                  rdi,                  rbx
     mov      qword [rdi + 0],                    0
     inc                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call           print_cond
     add                  rsp,                    8
     mov                  rbx,     __const_string_4
     xor                  r12,                  r12
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_53_loop_body
     jmp     dfs_7_block_exit
dfs_33_inline_enter:
     xor                  r12,                  r12
     mov                  rdi,                  rbx
    push                  rsi
    call      __string_length
     pop                  rsi
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_35_loop_body
     xor                  rsi,                  rsi
     cmp                  rsi,       qword [@n + 0]
     mov                  rbx,                    0
    sete                   bl
     cmp                  rbx,                    1
      je       dfs_40_if_true
     mov                  rbx,                  rsi
     inc                  rbx
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rbx, qword [@cond_ass + 0]
     add                  rbx,                  rdi
     mov      qword [rbx + 0],                    1
     mov                  rbx,                  rsi
     inc                  rbx
     mov                  rdi,                  rbx
    push                  rsi
    call           print_cond
     pop                  rsi
     mov                  rbx,                  rsi
     inc                  rbx
     sal                  rbx,                    3
     mov                  rdi, qword [@cond_ass + 0]
     add                  rdi,                  rbx
     mov      qword [rdi + 0],                    0
     inc                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call           print_cond
     add                  rsp,                    8
     mov                  rbx,     __const_string_4
     xor                  r12,                  r12
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_53_loop_body
     jmp     dfs_7_block_exit
dfs_34_loop_condition:
     mov                  rdi,                  rbx
    push                  rsi
    call      __string_length
     pop                  rsi
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_35_loop_body
     xor                  rsi,                  rsi
     cmp                  rsi,       qword [@n + 0]
     mov                  rbx,                    0
    sete                   bl
     cmp                  rbx,                    1
      je       dfs_40_if_true
     mov                  rbx,                  rsi
     inc                  rbx
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rbx, qword [@cond_ass + 0]
     add                  rbx,                  rdi
     mov      qword [rbx + 0],                    1
     mov                  rbx,                  rsi
     inc                  rbx
     mov                  rdi,                  rbx
    push                  rsi
    call           print_cond
     pop                  rsi
     mov                  rbx,                  rsi
     inc                  rbx
     sal                  rbx,                    3
     mov                  rdi, qword [@cond_ass + 0]
     add                  rdi,                  rbx
     mov      qword [rdi + 0],                    0
     inc                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call           print_cond
     add                  rsp,                    8
     mov                  rbx,     __const_string_4
     xor                  r12,                  r12
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_53_loop_body
     jmp     dfs_7_block_exit
dfs_35_loop_body:
     mov                  rdi,                  rbx
     mov                  rsi,                  r12
    push                  rsi
    call         __string_ord
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,  qword [@myHash + 0]
     add                  rdi,                  rsi
     mov  qword [@myHash + 0],                  rdi
     inc                  r12
     mov                  rdi,                  rbx
    push                  rsi
    call      __string_length
     pop                  rsi
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_35_loop_body
     xor                  rsi,                  rsi
     cmp                  rsi,       qword [@n + 0]
     mov                  rbx,                    0
    sete                   bl
     cmp                  rbx,                    1
      je       dfs_40_if_true
     mov                  rbx,                  rsi
     inc                  rbx
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rbx, qword [@cond_ass + 0]
     add                  rbx,                  rdi
     mov      qword [rbx + 0],                    1
     mov                  rbx,                  rsi
     inc                  rbx
     mov                  rdi,                  rbx
    push                  rsi
    call           print_cond
     pop                  rsi
     mov                  rbx,                  rsi
     inc                  rbx
     sal                  rbx,                    3
     mov                  rdi, qword [@cond_ass + 0]
     add                  rdi,                  rbx
     mov      qword [rdi + 0],                    0
     inc                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call           print_cond
     add                  rsp,                    8
     mov                  rbx,     __const_string_4
     xor                  r12,                  r12
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_53_loop_body
     jmp     dfs_7_block_exit
dfs_36_loop_increment:
     inc                  r12
     mov                  rdi,                  rbx
    push                  rsi
    call      __string_length
     pop                  rsi
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_35_loop_body
     xor                  rsi,                  rsi
     cmp                  rsi,       qword [@n + 0]
     mov                  rbx,                    0
    sete                   bl
     cmp                  rbx,                    1
      je       dfs_40_if_true
     mov                  rbx,                  rsi
     inc                  rbx
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rbx, qword [@cond_ass + 0]
     add                  rbx,                  rdi
     mov      qword [rbx + 0],                    1
     mov                  rbx,                  rsi
     inc                  rbx
     mov                  rdi,                  rbx
    push                  rsi
    call           print_cond
     pop                  rsi
     mov                  rbx,                  rsi
     inc                  rbx
     sal                  rbx,                    3
     mov                  rdi, qword [@cond_ass + 0]
     add                  rdi,                  rbx
     mov      qword [rdi + 0],                    0
     inc                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call           print_cond
     add                  rsp,                    8
     mov                  rbx,     __const_string_4
     xor                  r12,                  r12
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_53_loop_body
     jmp     dfs_7_block_exit
dfs_38_inline_exit:
     xor                  rsi,                  rsi
     cmp                  rsi,       qword [@n + 0]
     mov                  rbx,                    0
    sete                   bl
     cmp                  rbx,                    1
      je       dfs_40_if_true
     mov                  rbx,                  rsi
     inc                  rbx
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rbx, qword [@cond_ass + 0]
     add                  rbx,                  rdi
     mov      qword [rbx + 0],                    1
     mov                  rbx,                  rsi
     inc                  rbx
     mov                  rdi,                  rbx
    push                  rsi
    call           print_cond
     pop                  rsi
     mov                  rbx,                  rsi
     inc                  rbx
     sal                  rbx,                    3
     mov                  rdi, qword [@cond_ass + 0]
     add                  rdi,                  rbx
     mov      qword [rdi + 0],                    0
     inc                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call           print_cond
     add                  rsp,                    8
     mov                  rbx,     __const_string_4
     xor                  r12,                  r12
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_53_loop_body
     jmp     dfs_7_block_exit
dfs_39_inline_enter:
     cmp                  rsi,       qword [@n + 0]
     mov                  rbx,                    0
    sete                   bl
     cmp                  rbx,                    1
      je       dfs_40_if_true
     mov                  rbx,                  rsi
     inc                  rbx
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rbx, qword [@cond_ass + 0]
     add                  rbx,                  rdi
     mov      qword [rbx + 0],                    1
     mov                  rbx,                  rsi
     inc                  rbx
     mov                  rdi,                  rbx
    push                  rsi
    call           print_cond
     pop                  rsi
     mov                  rbx,                  rsi
     inc                  rbx
     sal                  rbx,                    3
     mov                  rdi, qword [@cond_ass + 0]
     add                  rdi,                  rbx
     mov      qword [rdi + 0],                    0
     inc                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call           print_cond
     add                  rsp,                    8
     mov                  rbx,     __const_string_4
     xor                  r12,                  r12
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_53_loop_body
     jmp     dfs_7_block_exit
dfs_40_if_true:
     mov                  rdi, qword [@cond_ass + 0]
     mov                  rsi, qword [@assignment + 0]
     sub                  rsp,                    8
    call               payoff
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_8
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_9
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              myprint
     add                  rsp,                    8
     xor                  rbx,                  rbx
     cmp                  rbx,       qword [@n + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_42_loop_body
     mov                  rbx,     __const_string_4
     xor                  r12,                  r12
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_53_loop_body
     jmp     dfs_7_block_exit
dfs_41_loop_condition:
     cmp                  rbx,       qword [@n + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_42_loop_body
     mov                  rbx,     __const_string_4
     xor                  r12,                  r12
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_53_loop_body
     jmp     dfs_7_block_exit
dfs_42_loop_body:
     mov                  rsi,                  rbx
     mov                  rax,                  rsi
     mov                  rcx,                   10
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     cmp                  rsi,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je       dfs_43_if_true
     inc                  rbx
     cmp                  rbx,       qword [@n + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_42_loop_body
     mov                  rbx,     __const_string_4
     xor                  r12,                  r12
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_53_loop_body
     jmp     dfs_7_block_exit
dfs_43_if_true:
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                  rsi, qword [@cond_ass + 0]
     add                  rsi,                  rdi
     mov                  rdi,      qword [rsi + 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              myprint
     add                  rsp,                    8
     inc                  rbx
     cmp                  rbx,       qword [@n + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_42_loop_body
     mov                  rbx,     __const_string_4
     xor                  r12,                  r12
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_53_loop_body
     jmp     dfs_7_block_exit
dfs_46_loop_increment:
     inc                  rbx
     cmp                  rbx,       qword [@n + 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_42_loop_body
     mov                  rbx,     __const_string_4
     xor                  r12,                  r12
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_53_loop_body
     jmp     dfs_7_block_exit
dfs_49_if_exit:
     mov                  rbx,                  rsi
     inc                  rbx
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rbx, qword [@cond_ass + 0]
     add                  rbx,                  rdi
     mov      qword [rbx + 0],                    1
     mov                  rbx,                  rsi
     inc                  rbx
     mov                  rdi,                  rbx
    push                  rsi
    call           print_cond
     pop                  rsi
     mov                  rbx,                  rsi
     inc                  rbx
     sal                  rbx,                    3
     mov                  rdi, qword [@cond_ass + 0]
     add                  rdi,                  rbx
     mov      qword [rdi + 0],                    0
     inc                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call           print_cond
     add                  rsp,                    8
     mov                  rbx,     __const_string_4
     xor                  r12,                  r12
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_53_loop_body
     jmp     dfs_7_block_exit
dfs_50_inline_exit:
     mov                  rbx,     __const_string_4
     xor                  r12,                  r12
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_53_loop_body
     jmp     dfs_7_block_exit
dfs_51_inline_enter:
     xor                  r12,                  r12
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_53_loop_body
     jmp     dfs_7_block_exit
dfs_52_loop_condition:
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_53_loop_body
     jmp     dfs_7_block_exit
dfs_53_loop_body:
     mov                  rdi,                  rbx
     mov                  rsi,                  r12
     sub                  rsp,                    8
    call         __string_ord
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,  qword [@myHash + 0]
     add                  rsi,                  rdi
     mov  qword [@myHash + 0],                  rsi
     inc                  r12
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_53_loop_body
     jmp     dfs_7_block_exit
dfs_54_loop_increment:
     inc                  r12
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     dfs_53_loop_body
     jmp     dfs_7_block_exit
dfs_6_if_exit:
     mov                  rsi,                  r12
     inc                  rsi
     mov                  rbx,                  rsi
     sal                  rbx,                    3
     mov                  rsi, qword [@assignment + 0]
     add                  rsi,                  rbx
     mov      qword [rsi + 0],                    1
     mov                  rsi,                  r12
     inc                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                  dfs
     add                  rsp,                    8
     mov                  rsi,                  r12
     inc                  rsi
     mov                  rbx,                  rsi
     sal                  rbx,                    3
     mov                  rsi, qword [@assignment + 0]
     add                  rsi,                  rbx
     mov      qword [rsi + 0],                    0
     mov                  rsi,                  r12
     inc                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                  dfs
     add                  rsp,                    8
dfs_7_block_exit:
     pop                  rbx
     pop                  r13
     pop                  r12
     add                  rsp,                   48
     pop                  rbp
     ret
__global_init:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    8
__global_init_0_block_enter:
     mov  qword [@myHash + 0],                    0
__global_init_1_block_exit:
     add                  rsp,                    8
     pop                  rbp
     ret
print_last_cond:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   24
    push                  r12
    push                  r13
    push                  rbx
print_last_cond_0_block_enter:
     mov                  rbx,                  rdi
     cmp                  rbx,       qword [@n + 0]
      je print_last_cond_1_if_true
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
     mov                  rdi, qword [@assignment + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                    1
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
    call      print_last_cond
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
     mov                  rdi, qword [@assignment + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                    0
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
    call      print_last_cond
     jmp print_last_cond_14_block_exit
print_last_cond_1_if_true:
     mov                  rbx,     __const_string_5
     xor                  r13,                  r13
     mov                  rdi,                  rbx
    call      __string_length
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_last_cond_17_loop_body
     mov                   r8,                    1
     xor                  r12,                  r12
     cmp                  r12,       qword [@n + 0]
      jl print_last_cond_3_loop_body
     cmp                   r8,                    0
      je print_last_cond_9_if_true
     mov                  rbx,     __const_string_7
     xor                  r13,                  r13
     mov                  rdi,                  rbx
    call      __string_length
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_last_cond_35_loop_body
     jmp print_last_cond_14_block_exit
print_last_cond_15_inline_enter:
     xor                  r13,                  r13
     mov                  rdi,                  rbx
    call      __string_length
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_last_cond_17_loop_body
     mov                   r8,                    1
     xor                  r12,                  r12
     cmp                  r12,       qword [@n + 0]
      jl print_last_cond_3_loop_body
     cmp                   r8,                    0
      je print_last_cond_9_if_true
     mov                  rbx,     __const_string_7
     xor                  r13,                  r13
     mov                  rdi,                  rbx
    call      __string_length
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_last_cond_35_loop_body
     jmp print_last_cond_14_block_exit
print_last_cond_16_loop_condition:
     mov                  rdi,                  rbx
    call      __string_length
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_last_cond_17_loop_body
     mov                   r8,                    1
     xor                  r12,                  r12
     cmp                  r12,       qword [@n + 0]
      jl print_last_cond_3_loop_body
     cmp                   r8,                    0
      je print_last_cond_9_if_true
     mov                  rbx,     __const_string_7
     xor                  r13,                  r13
     mov                  rdi,                  rbx
    call      __string_length
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_last_cond_35_loop_body
     jmp print_last_cond_14_block_exit
print_last_cond_17_loop_body:
     mov                  rdi,                  rbx
     mov                  rsi,                  r13
    call         __string_ord
     mov                  rdi,                  rax
     mov                  rsi,  qword [@myHash + 0]
     add                  rsi,                  rdi
     mov  qword [@myHash + 0],                  rsi
     inc                  r13
     mov                  rdi,                  rbx
    call      __string_length
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_last_cond_17_loop_body
     mov                   r8,                    1
     xor                  r12,                  r12
     cmp                  r12,       qword [@n + 0]
      jl print_last_cond_3_loop_body
     cmp                   r8,                    0
      je print_last_cond_9_if_true
     mov                  rbx,     __const_string_7
     xor                  r13,                  r13
     mov                  rdi,                  rbx
    call      __string_length
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_last_cond_35_loop_body
     jmp print_last_cond_14_block_exit
print_last_cond_18_loop_increment:
     inc                  r13
     mov                  rdi,                  rbx
    call      __string_length
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_last_cond_17_loop_body
     mov                   r8,                    1
     xor                  r12,                  r12
     cmp                  r12,       qword [@n + 0]
      jl print_last_cond_3_loop_body
     cmp                   r8,                    0
      je print_last_cond_9_if_true
     mov                  rbx,     __const_string_7
     xor                  r13,                  r13
     mov                  rdi,                  rbx
    call      __string_length
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_last_cond_35_loop_body
     jmp print_last_cond_14_block_exit
print_last_cond_20_inline_exit:
     mov                   r8,                    1
     xor                  r12,                  r12
     cmp                  r12,       qword [@n + 0]
      jl print_last_cond_3_loop_body
     cmp                   r8,                    0
      je print_last_cond_9_if_true
     mov                  rbx,     __const_string_7
     xor                  r13,                  r13
     mov                  rdi,                  rbx
    call      __string_length
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_last_cond_35_loop_body
     jmp print_last_cond_14_block_exit
print_last_cond_2_loop_condition:
     cmp                  r12,       qword [@n + 0]
      jl print_last_cond_3_loop_body
     cmp                   r8,                    0
      je print_last_cond_9_if_true
     mov                  rbx,     __const_string_7
     xor                  r13,                  r13
     mov                  rdi,                  rbx
    call      __string_length
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_last_cond_35_loop_body
     jmp print_last_cond_14_block_exit
print_last_cond_3_loop_body:
     mov                  rsi,                  r12
     inc                  rsi
     sal                  rsi,                    3
     mov                  rbx, qword [@assignment + 0]
     add                  rbx,                  rsi
     cmp      qword [rbx + 0],                    1
      je print_last_cond_4_if_true
     mov                  rsi,                  r12
     inc                  rsi
     sal                  rsi,                    3
     mov                  rbx, qword [@assignment + 0]
     add                  rbx,                  rsi
     mov                  rdi,      qword [rbx + 0]
    push                   r8
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                   r8
     mov                  rbx,                  rax
     xor                  r13,                  r13
     mov                  rdi,                  rbx
    push                   r8
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_last_cond_23_loop_body
     inc                  r12
     cmp                  r12,       qword [@n + 0]
      jl print_last_cond_3_loop_body
     cmp                   r8,                    0
      je print_last_cond_9_if_true
     mov                  rbx,     __const_string_7
     xor                  r13,                  r13
     mov                  rdi,                  rbx
    call      __string_length
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_last_cond_35_loop_body
     jmp print_last_cond_14_block_exit
print_last_cond_4_if_true:
     xor                   r8,                   r8
     mov                  rsi,                  r12
     inc                  rsi
     sal                  rsi,                    3
     mov                  rbx, qword [@assignment + 0]
     add                  rbx,                  rsi
     mov                  rdi,      qword [rbx + 0]
    push                   r8
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                   r8
     mov                  rbx,                  rax
     xor                  r13,                  r13
     mov                  rdi,                  rbx
    push                   r8
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_last_cond_23_loop_body
     inc                  r12
     cmp                  r12,       qword [@n + 0]
      jl print_last_cond_3_loop_body
     cmp                   r8,                    0
      je print_last_cond_9_if_true
     mov                  rbx,     __const_string_7
     xor                  r13,                  r13
     mov                  rdi,                  rbx
    call      __string_length
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_last_cond_35_loop_body
     jmp print_last_cond_14_block_exit
print_last_cond_6_if_exit:
     mov                  rsi,                  r12
     inc                  rsi
     sal                  rsi,                    3
     mov                  rbx, qword [@assignment + 0]
     add                  rbx,                  rsi
     mov                  rdi,      qword [rbx + 0]
    push                   r8
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                   r8
     mov                  rbx,                  rax
     xor                  r13,                  r13
     mov                  rdi,                  rbx
    push                   r8
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_last_cond_23_loop_body
     inc                  r12
     cmp                  r12,       qword [@n + 0]
      jl print_last_cond_3_loop_body
     cmp                   r8,                    0
      je print_last_cond_9_if_true
     mov                  rbx,     __const_string_7
     xor                  r13,                  r13
     mov                  rdi,                  rbx
    call      __string_length
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_last_cond_35_loop_body
     jmp print_last_cond_14_block_exit
print_last_cond_21_inline_enter:
     xor                  r13,                  r13
     mov                  rdi,                  rbx
    push                   r8
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_last_cond_23_loop_body
     inc                  r12
     cmp                  r12,       qword [@n + 0]
      jl print_last_cond_3_loop_body
     cmp                   r8,                    0
      je print_last_cond_9_if_true
     mov                  rbx,     __const_string_7
     xor                  r13,                  r13
     mov                  rdi,                  rbx
    call      __string_length
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_last_cond_35_loop_body
     jmp print_last_cond_14_block_exit
print_last_cond_22_loop_condition:
     mov                  rdi,                  rbx
    push                   r8
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_last_cond_23_loop_body
     inc                  r12
     cmp                  r12,       qword [@n + 0]
      jl print_last_cond_3_loop_body
     cmp                   r8,                    0
      je print_last_cond_9_if_true
     mov                  rbx,     __const_string_7
     xor                  r13,                  r13
     mov                  rdi,                  rbx
    call      __string_length
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_last_cond_35_loop_body
     jmp print_last_cond_14_block_exit
print_last_cond_23_loop_body:
     mov                  rdi,                  rbx
     mov                  rsi,                  r13
    push                   r8
     sub                  rsp,                    8
    call         __string_ord
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,  qword [@myHash + 0]
     add                  rdi,                  rsi
     mov  qword [@myHash + 0],                  rdi
     inc                  r13
     mov                  rdi,                  rbx
    push                   r8
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_last_cond_23_loop_body
     inc                  r12
     cmp                  r12,       qword [@n + 0]
      jl print_last_cond_3_loop_body
     cmp                   r8,                    0
      je print_last_cond_9_if_true
     mov                  rbx,     __const_string_7
     xor                  r13,                  r13
     mov                  rdi,                  rbx
    call      __string_length
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_last_cond_35_loop_body
     jmp print_last_cond_14_block_exit
print_last_cond_24_loop_increment:
     inc                  r13
     mov                  rdi,                  rbx
    push                   r8
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_last_cond_23_loop_body
     inc                  r12
     cmp                  r12,       qword [@n + 0]
      jl print_last_cond_3_loop_body
     cmp                   r8,                    0
      je print_last_cond_9_if_true
     mov                  rbx,     __const_string_7
     xor                  r13,                  r13
     mov                  rdi,                  rbx
    call      __string_length
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_last_cond_35_loop_body
     jmp print_last_cond_14_block_exit
print_last_cond_7_loop_increment:
     inc                  r12
     cmp                  r12,       qword [@n + 0]
      jl print_last_cond_3_loop_body
     cmp                   r8,                    0
      je print_last_cond_9_if_true
     mov                  rbx,     __const_string_7
     xor                  r13,                  r13
     mov                  rdi,                  rbx
    call      __string_length
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_last_cond_35_loop_body
     jmp print_last_cond_14_block_exit
print_last_cond_8_loop_exit:
     cmp                   r8,                    0
      je print_last_cond_9_if_true
     mov                  rbx,     __const_string_7
     xor                  r13,                  r13
     mov                  rdi,                  rbx
    call      __string_length
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_last_cond_35_loop_body
     jmp print_last_cond_14_block_exit
print_last_cond_9_if_true:
     mov                  rbx,     __const_string_6
     xor                  r13,                  r13
     mov                  rdi,                  rbx
    call      __string_length
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_last_cond_29_loop_body
     jmp print_last_cond_14_block_exit
print_last_cond_27_inline_enter:
     xor                  r13,                  r13
     mov                  rdi,                  rbx
    call      __string_length
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_last_cond_29_loop_body
     jmp print_last_cond_14_block_exit
print_last_cond_28_loop_condition:
     mov                  rdi,                  rbx
    call      __string_length
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_last_cond_29_loop_body
     jmp print_last_cond_14_block_exit
print_last_cond_29_loop_body:
     mov                  rdi,                  rbx
     mov                  rsi,                  r13
    call         __string_ord
     mov                  rsi,                  rax
     mov                  rdi,  qword [@myHash + 0]
     add                  rdi,                  rsi
     mov  qword [@myHash + 0],                  rdi
     inc                  r13
     mov                  rdi,                  rbx
    call      __string_length
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_last_cond_29_loop_body
     jmp print_last_cond_14_block_exit
print_last_cond_30_loop_increment:
     inc                  r13
     mov                  rdi,                  rbx
    call      __string_length
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_last_cond_29_loop_body
     jmp print_last_cond_14_block_exit
print_last_cond_10_if_false:
     mov                  rbx,     __const_string_7
     xor                  r13,                  r13
     mov                  rdi,                  rbx
    call      __string_length
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_last_cond_35_loop_body
     jmp print_last_cond_14_block_exit
print_last_cond_33_inline_enter:
     xor                  r13,                  r13
     mov                  rdi,                  rbx
    call      __string_length
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_last_cond_35_loop_body
     jmp print_last_cond_14_block_exit
print_last_cond_34_loop_condition:
     mov                  rdi,                  rbx
    call      __string_length
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_last_cond_35_loop_body
     jmp print_last_cond_14_block_exit
print_last_cond_35_loop_body:
     mov                  rdi,                  rbx
     mov                  rsi,                  r13
    call         __string_ord
     mov                  rdi,                  rax
     mov                  rsi,  qword [@myHash + 0]
     add                  rsi,                  rdi
     mov  qword [@myHash + 0],                  rsi
     inc                  r13
     mov                  rdi,                  rbx
    call      __string_length
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_last_cond_35_loop_body
     jmp print_last_cond_14_block_exit
print_last_cond_36_loop_increment:
     inc                  r13
     mov                  rdi,                  rbx
    call      __string_length
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_last_cond_35_loop_body
     jmp print_last_cond_14_block_exit
print_last_cond_13_if_exit:
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
     mov                  rdi, qword [@assignment + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                    1
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
    call      print_last_cond
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
     mov                  rdi, qword [@assignment + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                    0
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
    call      print_last_cond
print_last_cond_14_block_exit:
     pop                  rbx
     pop                  r13
     pop                  r12
     add                  rsp,                   24
     pop                  rbp
     ret
payoff:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
payoff_0_block_enter:
     mov                  r11,                  rdi
     mov                  rbx,                  rsi
     xor                  r10,                  r10
     xor                  rdi,                  rdi
     cmp                  rdi,                    3
      jl   payoff_2_loop_body
     mov                  rax,                  r10
     jmp  payoff_8_block_exit
payoff_1_loop_condition:
     cmp                  rdi,                    3
      jl   payoff_2_loop_body
     mov                  rax,                  r10
     jmp  payoff_8_block_exit
payoff_2_loop_body:
     mov                  rsi,                  rdi
     sal                  rsi,                    3
     mov                   r9,                  r11
     add                   r9,                  rsi
     mov                  rsi,                  rdi
     sal                  rsi,                    3
     mov                   r8,                  rbx
     add                   r8,                  rsi
     mov                  rsi,       qword [r9 + 0]
     cmp                  rsi,       qword [r8 + 0]
     jne     payoff_3_if_true
     inc                  rdi
     cmp                  rdi,                    3
      jl   payoff_2_loop_body
     mov                  rax,                  r10
     jmp  payoff_8_block_exit
payoff_3_if_true:
     inc                  r10
     inc                  rdi
     cmp                  rdi,                    3
      jl   payoff_2_loop_body
     mov                  rax,                  r10
     jmp  payoff_8_block_exit
payoff_6_loop_increment:
     inc                  rdi
     cmp                  rdi,                    3
      jl   payoff_2_loop_body
     mov                  rax,                  r10
     jmp  payoff_8_block_exit
payoff_7_loop_exit:
     mov                  rax,                  r10
payoff_8_block_exit:
     pop                  rbx
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call        __global_init
     sub                  rsp,                   64
    push                  r12
    push                  rbx
main_0_block_enter:
     mov       qword [@k + 0],                    5
     mov                  rsi,       qword [@k + 0]
     sal                  rsi,                    1
     inc                  rsi
     mov       qword [@n + 0],                  rsi
     mov                  rax,       qword [@k + 0]
     mov       qword [@m + 0],                  rax
     mov    qword [@last + 0],                    1
     mov                  rbx,     __const_string_0
     xor                  r12,                  r12
     mov                  rdi,                  rbx
    push                  rsi
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     pop                  rsi
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     main_8_loop_body
     mov                  rsi,       qword [@m + 0]
     inc                  rsi
     sal                  rsi,                    3
    push                  rsi
    push                  rdi
    push                  rsi
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     pop                  rsi
     pop                  rdi
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rax,       qword [@m + 0]
     mov      qword [rsi + 0],                  rax
     add                  rsi,                    8
     mov     qword [@sat + 0],                  rsi
     xor                  rbx,                  rbx
     cmp                  rbx,       qword [@m + 0]
      jl     main_2_loop_body
     mov                  rbx,       qword [@n + 0]
     inc                  rbx
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
    push                  rdi
    push                  rsi
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rsi
     pop                  rdi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  rbx
     add                  rsi,                    8
     mov qword [@assignment + 0],                  rsi
     mov                  rsi,       qword [@n + 0]
     inc                  rsi
     mov                  rbx,                  rsi
     inc                  rbx
     sal                  rbx,                    3
    push                  rdi
    push                  rsi
    push                  rsi
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rsi
     pop                  rdi
     mov                  rbx,                  rax
     mov      qword [rbx + 0],                  rsi
     add                  rbx,                    8
     mov qword [@cond_ass + 0],                  rbx
     xor                  r12,                  r12
     cmp                  r12,       qword [@n + 0]
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je      main_13_if_true
     mov                  rsi,                  r12
     inc                  rsi
     sal                  rsi,                    3
     mov                  rbx, qword [@assignment + 0]
     add                  rbx,                  rsi
     mov      qword [rbx + 0],                    1
     mov                  rsi,                  r12
     inc                  rsi
     mov                  rdi,                  rsi
    push                  rsi
     sub                  rsp,                    8
    call                  dfs
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  r12
     inc                  rsi
     sal                  rsi,                    3
     mov                  rbx, qword [@assignment + 0]
     add                  rbx,                  rsi
     mov      qword [rbx + 0],                    0
     mov                  rsi,                  r12
     inc                  rsi
     mov                  rdi,                  rsi
    push                  rsi
     sub                  rsp,                    8
    call                  dfs
     add                  rsp,                    8
     pop                  rsi
     xor                  rbx,                  rbx
     cmp                  rbx,       qword [@n + 0]
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je      main_21_if_true
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
     mov                  rdi, qword [@assignment + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                    1
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
    call      print_last_cond
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
     mov                  rdi, qword [@assignment + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                    0
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
    call      print_last_cond
     mov                  rdi,  qword [@myHash + 0]
    call          println_Int
     mov                  rax,                    0
     jmp    main_5_block_exit
main_6_inline_enter:
     xor                  r12,                  r12
     mov                  rdi,                  rbx
    push                  rsi
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     pop                  rsi
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     main_8_loop_body
     mov                  rsi,       qword [@m + 0]
     inc                  rsi
     sal                  rsi,                    3
    push                  rsi
    push                  rdi
    push                  rsi
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     pop                  rsi
     pop                  rdi
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rax,       qword [@m + 0]
     mov      qword [rsi + 0],                  rax
     add                  rsi,                    8
     mov     qword [@sat + 0],                  rsi
     xor                  rbx,                  rbx
     cmp                  rbx,       qword [@m + 0]
      jl     main_2_loop_body
     mov                  rbx,       qword [@n + 0]
     inc                  rbx
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
    push                  rdi
    push                  rsi
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rsi
     pop                  rdi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  rbx
     add                  rsi,                    8
     mov qword [@assignment + 0],                  rsi
     mov                  rsi,       qword [@n + 0]
     inc                  rsi
     mov                  rbx,                  rsi
     inc                  rbx
     sal                  rbx,                    3
    push                  rdi
    push                  rsi
    push                  rsi
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rsi
     pop                  rdi
     mov                  rbx,                  rax
     mov      qword [rbx + 0],                  rsi
     add                  rbx,                    8
     mov qword [@cond_ass + 0],                  rbx
     xor                  r12,                  r12
     cmp                  r12,       qword [@n + 0]
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je      main_13_if_true
     mov                  rsi,                  r12
     inc                  rsi
     sal                  rsi,                    3
     mov                  rbx, qword [@assignment + 0]
     add                  rbx,                  rsi
     mov      qword [rbx + 0],                    1
     mov                  rsi,                  r12
     inc                  rsi
     mov                  rdi,                  rsi
    push                  rsi
     sub                  rsp,                    8
    call                  dfs
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  r12
     inc                  rsi
     sal                  rsi,                    3
     mov                  rbx, qword [@assignment + 0]
     add                  rbx,                  rsi
     mov      qword [rbx + 0],                    0
     mov                  rsi,                  r12
     inc                  rsi
     mov                  rdi,                  rsi
    push                  rsi
     sub                  rsp,                    8
    call                  dfs
     add                  rsp,                    8
     pop                  rsi
     xor                  rbx,                  rbx
     cmp                  rbx,       qword [@n + 0]
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je      main_21_if_true
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
     mov                  rdi, qword [@assignment + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                    1
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
    call      print_last_cond
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
     mov                  rdi, qword [@assignment + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                    0
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
    call      print_last_cond
     mov                  rdi,  qword [@myHash + 0]
    call          println_Int
     mov                  rax,                    0
     jmp    main_5_block_exit
main_7_loop_condition:
     mov                  rdi,                  rbx
    push                  rsi
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     pop                  rsi
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     main_8_loop_body
     mov                  rsi,       qword [@m + 0]
     inc                  rsi
     sal                  rsi,                    3
    push                  rsi
    push                  rdi
    push                  rsi
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     pop                  rsi
     pop                  rdi
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rax,       qword [@m + 0]
     mov      qword [rsi + 0],                  rax
     add                  rsi,                    8
     mov     qword [@sat + 0],                  rsi
     xor                  rbx,                  rbx
     cmp                  rbx,       qword [@m + 0]
      jl     main_2_loop_body
     mov                  rbx,       qword [@n + 0]
     inc                  rbx
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
    push                  rdi
    push                  rsi
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rsi
     pop                  rdi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  rbx
     add                  rsi,                    8
     mov qword [@assignment + 0],                  rsi
     mov                  rsi,       qword [@n + 0]
     inc                  rsi
     mov                  rbx,                  rsi
     inc                  rbx
     sal                  rbx,                    3
    push                  rdi
    push                  rsi
    push                  rsi
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rsi
     pop                  rdi
     mov                  rbx,                  rax
     mov      qword [rbx + 0],                  rsi
     add                  rbx,                    8
     mov qword [@cond_ass + 0],                  rbx
     xor                  r12,                  r12
     cmp                  r12,       qword [@n + 0]
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je      main_13_if_true
     mov                  rsi,                  r12
     inc                  rsi
     sal                  rsi,                    3
     mov                  rbx, qword [@assignment + 0]
     add                  rbx,                  rsi
     mov      qword [rbx + 0],                    1
     mov                  rsi,                  r12
     inc                  rsi
     mov                  rdi,                  rsi
    push                  rsi
     sub                  rsp,                    8
    call                  dfs
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  r12
     inc                  rsi
     sal                  rsi,                    3
     mov                  rbx, qword [@assignment + 0]
     add                  rbx,                  rsi
     mov      qword [rbx + 0],                    0
     mov                  rsi,                  r12
     inc                  rsi
     mov                  rdi,                  rsi
    push                  rsi
     sub                  rsp,                    8
    call                  dfs
     add                  rsp,                    8
     pop                  rsi
     xor                  rbx,                  rbx
     cmp                  rbx,       qword [@n + 0]
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je      main_21_if_true
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
     mov                  rdi, qword [@assignment + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                    1
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
    call      print_last_cond
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
     mov                  rdi, qword [@assignment + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                    0
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
    call      print_last_cond
     mov                  rdi,  qword [@myHash + 0]
    call          println_Int
     mov                  rax,                    0
     jmp    main_5_block_exit
main_8_loop_body:
     mov                  rdi,                  rbx
     mov                  rsi,                  r12
    push                  rsi
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
    call         __string_ord
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     pop                  rsi
     mov                  rdi,                  rax
     mov                  rsi,  qword [@myHash + 0]
     add                  rsi,                  rdi
     mov  qword [@myHash + 0],                  rsi
     inc                  r12
     mov                  rdi,                  rbx
    push                  rsi
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     pop                  rsi
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     main_8_loop_body
     mov                  rsi,       qword [@m + 0]
     inc                  rsi
     sal                  rsi,                    3
    push                  rsi
    push                  rdi
    push                  rsi
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     pop                  rsi
     pop                  rdi
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rax,       qword [@m + 0]
     mov      qword [rsi + 0],                  rax
     add                  rsi,                    8
     mov     qword [@sat + 0],                  rsi
     xor                  rbx,                  rbx
     cmp                  rbx,       qword [@m + 0]
      jl     main_2_loop_body
     mov                  rbx,       qword [@n + 0]
     inc                  rbx
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
    push                  rdi
    push                  rsi
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rsi
     pop                  rdi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  rbx
     add                  rsi,                    8
     mov qword [@assignment + 0],                  rsi
     mov                  rsi,       qword [@n + 0]
     inc                  rsi
     mov                  rbx,                  rsi
     inc                  rbx
     sal                  rbx,                    3
    push                  rdi
    push                  rsi
    push                  rsi
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rsi
     pop                  rdi
     mov                  rbx,                  rax
     mov      qword [rbx + 0],                  rsi
     add                  rbx,                    8
     mov qword [@cond_ass + 0],                  rbx
     xor                  r12,                  r12
     cmp                  r12,       qword [@n + 0]
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je      main_13_if_true
     mov                  rsi,                  r12
     inc                  rsi
     sal                  rsi,                    3
     mov                  rbx, qword [@assignment + 0]
     add                  rbx,                  rsi
     mov      qword [rbx + 0],                    1
     mov                  rsi,                  r12
     inc                  rsi
     mov                  rdi,                  rsi
    push                  rsi
     sub                  rsp,                    8
    call                  dfs
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  r12
     inc                  rsi
     sal                  rsi,                    3
     mov                  rbx, qword [@assignment + 0]
     add                  rbx,                  rsi
     mov      qword [rbx + 0],                    0
     mov                  rsi,                  r12
     inc                  rsi
     mov                  rdi,                  rsi
    push                  rsi
     sub                  rsp,                    8
    call                  dfs
     add                  rsp,                    8
     pop                  rsi
     xor                  rbx,                  rbx
     cmp                  rbx,       qword [@n + 0]
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je      main_21_if_true
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
     mov                  rdi, qword [@assignment + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                    1
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
    call      print_last_cond
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
     mov                  rdi, qword [@assignment + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                    0
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
    call      print_last_cond
     mov                  rdi,  qword [@myHash + 0]
    call          println_Int
     mov                  rax,                    0
     jmp    main_5_block_exit
main_9_loop_increment:
     inc                  r12
     mov                  rdi,                  rbx
    push                  rsi
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     pop                  rsi
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     main_8_loop_body
     mov                  rsi,       qword [@m + 0]
     inc                  rsi
     sal                  rsi,                    3
    push                  rsi
    push                  rdi
    push                  rsi
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     pop                  rsi
     pop                  rdi
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rax,       qword [@m + 0]
     mov      qword [rsi + 0],                  rax
     add                  rsi,                    8
     mov     qword [@sat + 0],                  rsi
     xor                  rbx,                  rbx
     cmp                  rbx,       qword [@m + 0]
      jl     main_2_loop_body
     mov                  rbx,       qword [@n + 0]
     inc                  rbx
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
    push                  rdi
    push                  rsi
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rsi
     pop                  rdi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  rbx
     add                  rsi,                    8
     mov qword [@assignment + 0],                  rsi
     mov                  rsi,       qword [@n + 0]
     inc                  rsi
     mov                  rbx,                  rsi
     inc                  rbx
     sal                  rbx,                    3
    push                  rdi
    push                  rsi
    push                  rsi
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rsi
     pop                  rdi
     mov                  rbx,                  rax
     mov      qword [rbx + 0],                  rsi
     add                  rbx,                    8
     mov qword [@cond_ass + 0],                  rbx
     xor                  r12,                  r12
     cmp                  r12,       qword [@n + 0]
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je      main_13_if_true
     mov                  rsi,                  r12
     inc                  rsi
     sal                  rsi,                    3
     mov                  rbx, qword [@assignment + 0]
     add                  rbx,                  rsi
     mov      qword [rbx + 0],                    1
     mov                  rsi,                  r12
     inc                  rsi
     mov                  rdi,                  rsi
    push                  rsi
     sub                  rsp,                    8
    call                  dfs
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  r12
     inc                  rsi
     sal                  rsi,                    3
     mov                  rbx, qword [@assignment + 0]
     add                  rbx,                  rsi
     mov      qword [rbx + 0],                    0
     mov                  rsi,                  r12
     inc                  rsi
     mov                  rdi,                  rsi
    push                  rsi
     sub                  rsp,                    8
    call                  dfs
     add                  rsp,                    8
     pop                  rsi
     xor                  rbx,                  rbx
     cmp                  rbx,       qword [@n + 0]
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je      main_21_if_true
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
     mov                  rdi, qword [@assignment + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                    1
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
    call      print_last_cond
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
     mov                  rdi, qword [@assignment + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                    0
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
    call      print_last_cond
     mov                  rdi,  qword [@myHash + 0]
    call          println_Int
     mov                  rax,                    0
     jmp    main_5_block_exit
main_11_inline_exit:
     mov                  rsi,       qword [@m + 0]
     inc                  rsi
     sal                  rsi,                    3
    push                  rsi
    push                  rdi
    push                  rsi
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     pop                  rsi
     pop                  rdi
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rax,       qword [@m + 0]
     mov      qword [rsi + 0],                  rax
     add                  rsi,                    8
     mov     qword [@sat + 0],                  rsi
     xor                  rbx,                  rbx
     cmp                  rbx,       qword [@m + 0]
      jl     main_2_loop_body
     mov                  rbx,       qword [@n + 0]
     inc                  rbx
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
    push                  rdi
    push                  rsi
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rsi
     pop                  rdi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  rbx
     add                  rsi,                    8
     mov qword [@assignment + 0],                  rsi
     mov                  rsi,       qword [@n + 0]
     inc                  rsi
     mov                  rbx,                  rsi
     inc                  rbx
     sal                  rbx,                    3
    push                  rdi
    push                  rsi
    push                  rsi
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rsi
     pop                  rdi
     mov                  rbx,                  rax
     mov      qword [rbx + 0],                  rsi
     add                  rbx,                    8
     mov qword [@cond_ass + 0],                  rbx
     xor                  r12,                  r12
     cmp                  r12,       qword [@n + 0]
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je      main_13_if_true
     mov                  rsi,                  r12
     inc                  rsi
     sal                  rsi,                    3
     mov                  rbx, qword [@assignment + 0]
     add                  rbx,                  rsi
     mov      qword [rbx + 0],                    1
     mov                  rsi,                  r12
     inc                  rsi
     mov                  rdi,                  rsi
    push                  rsi
     sub                  rsp,                    8
    call                  dfs
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  r12
     inc                  rsi
     sal                  rsi,                    3
     mov                  rbx, qword [@assignment + 0]
     add                  rbx,                  rsi
     mov      qword [rbx + 0],                    0
     mov                  rsi,                  r12
     inc                  rsi
     mov                  rdi,                  rsi
    push                  rsi
     sub                  rsp,                    8
    call                  dfs
     add                  rsp,                    8
     pop                  rsi
     xor                  rbx,                  rbx
     cmp                  rbx,       qword [@n + 0]
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je      main_21_if_true
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
     mov                  rdi, qword [@assignment + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                    1
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
    call      print_last_cond
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
     mov                  rdi, qword [@assignment + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                    0
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
    call      print_last_cond
     mov                  rdi,  qword [@myHash + 0]
    call          println_Int
     mov                  rax,                    0
     jmp    main_5_block_exit
main_1_loop_condition:
     cmp                  rbx,       qword [@m + 0]
      jl     main_2_loop_body
     mov                  rbx,       qword [@n + 0]
     inc                  rbx
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
    push                  rdi
    push                  rsi
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rsi
     pop                  rdi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  rbx
     add                  rsi,                    8
     mov qword [@assignment + 0],                  rsi
     mov                  rsi,       qword [@n + 0]
     inc                  rsi
     mov                  rbx,                  rsi
     inc                  rbx
     sal                  rbx,                    3
    push                  rdi
    push                  rsi
    push                  rsi
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rsi
     pop                  rdi
     mov                  rbx,                  rax
     mov      qword [rbx + 0],                  rsi
     add                  rbx,                    8
     mov qword [@cond_ass + 0],                  rbx
     xor                  r12,                  r12
     cmp                  r12,       qword [@n + 0]
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je      main_13_if_true
     mov                  rsi,                  r12
     inc                  rsi
     sal                  rsi,                    3
     mov                  rbx, qword [@assignment + 0]
     add                  rbx,                  rsi
     mov      qword [rbx + 0],                    1
     mov                  rsi,                  r12
     inc                  rsi
     mov                  rdi,                  rsi
    push                  rsi
     sub                  rsp,                    8
    call                  dfs
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  r12
     inc                  rsi
     sal                  rsi,                    3
     mov                  rbx, qword [@assignment + 0]
     add                  rbx,                  rsi
     mov      qword [rbx + 0],                    0
     mov                  rsi,                  r12
     inc                  rsi
     mov                  rdi,                  rsi
    push                  rsi
     sub                  rsp,                    8
    call                  dfs
     add                  rsp,                    8
     pop                  rsi
     xor                  rbx,                  rbx
     cmp                  rbx,       qword [@n + 0]
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je      main_21_if_true
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
     mov                  rdi, qword [@assignment + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                    1
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
    call      print_last_cond
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
     mov                  rdi, qword [@assignment + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                    0
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
    call      print_last_cond
     mov                  rdi,  qword [@myHash + 0]
    call          println_Int
     mov                  rax,                    0
     jmp    main_5_block_exit
main_2_loop_body:
     mov                  rsi,                    3
     inc                  rsi
     sal                  rsi,                    3
    push                  rsi
    push                  rdi
    push                  rsi
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     pop                  rsi
     pop                  rdi
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                    3
     add                  rsi,                    8
     mov                  rdi,                  rsi
     xor                  rsi,                  rsi
     sal                  rsi,                    3
     mov                  rax,    qword [@last + 0]
     mov    qword [rdi + rsi],                  rax
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  r12,                  rdi
     add                  r12,                  rsi
     mov                  rsi,    qword [@last + 0]
     inc                  rsi
     mov      qword [r12 + 0],                  rsi
     mov                  rsi,                    2
     sal                  rsi,                    3
     mov                  r12,                  rdi
     add                  r12,                  rsi
     mov                  rsi,    qword [@last + 0]
     add                  rsi,                    2
     neg                  rsi
     mov      qword [r12 + 0],                  rsi
     mov                  rsi,    qword [@last + 0]
     add                  rsi,                    2
     mov    qword [@last + 0],                  rsi
     mov                  r12,                  rbx
     sal                  r12,                    3
     mov                  rsi,     qword [@sat + 0]
     add                  rsi,                  r12
     mov      qword [rsi + 0],                  rdi
     inc                  rbx
     cmp                  rbx,       qword [@m + 0]
      jl     main_2_loop_body
     mov                  rbx,       qword [@n + 0]
     inc                  rbx
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
    push                  rdi
    push                  rsi
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rsi
     pop                  rdi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  rbx
     add                  rsi,                    8
     mov qword [@assignment + 0],                  rsi
     mov                  rsi,       qword [@n + 0]
     inc                  rsi
     mov                  rbx,                  rsi
     inc                  rbx
     sal                  rbx,                    3
    push                  rdi
    push                  rsi
    push                  rsi
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rsi
     pop                  rdi
     mov                  rbx,                  rax
     mov      qword [rbx + 0],                  rsi
     add                  rbx,                    8
     mov qword [@cond_ass + 0],                  rbx
     xor                  r12,                  r12
     cmp                  r12,       qword [@n + 0]
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je      main_13_if_true
     mov                  rsi,                  r12
     inc                  rsi
     sal                  rsi,                    3
     mov                  rbx, qword [@assignment + 0]
     add                  rbx,                  rsi
     mov      qword [rbx + 0],                    1
     mov                  rsi,                  r12
     inc                  rsi
     mov                  rdi,                  rsi
    push                  rsi
     sub                  rsp,                    8
    call                  dfs
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  r12
     inc                  rsi
     sal                  rsi,                    3
     mov                  rbx, qword [@assignment + 0]
     add                  rbx,                  rsi
     mov      qword [rbx + 0],                    0
     mov                  rsi,                  r12
     inc                  rsi
     mov                  rdi,                  rsi
    push                  rsi
     sub                  rsp,                    8
    call                  dfs
     add                  rsp,                    8
     pop                  rsi
     xor                  rbx,                  rbx
     cmp                  rbx,       qword [@n + 0]
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je      main_21_if_true
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
     mov                  rdi, qword [@assignment + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                    1
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
    call      print_last_cond
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
     mov                  rdi, qword [@assignment + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                    0
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
    call      print_last_cond
     mov                  rdi,  qword [@myHash + 0]
    call          println_Int
     mov                  rax,                    0
     jmp    main_5_block_exit
main_3_loop_increment:
     inc                  rbx
     cmp                  rbx,       qword [@m + 0]
      jl     main_2_loop_body
     mov                  rbx,       qword [@n + 0]
     inc                  rbx
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
    push                  rdi
    push                  rsi
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rsi
     pop                  rdi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  rbx
     add                  rsi,                    8
     mov qword [@assignment + 0],                  rsi
     mov                  rsi,       qword [@n + 0]
     inc                  rsi
     mov                  rbx,                  rsi
     inc                  rbx
     sal                  rbx,                    3
    push                  rdi
    push                  rsi
    push                  rsi
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rsi
     pop                  rdi
     mov                  rbx,                  rax
     mov      qword [rbx + 0],                  rsi
     add                  rbx,                    8
     mov qword [@cond_ass + 0],                  rbx
     xor                  r12,                  r12
     cmp                  r12,       qword [@n + 0]
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je      main_13_if_true
     mov                  rsi,                  r12
     inc                  rsi
     sal                  rsi,                    3
     mov                  rbx, qword [@assignment + 0]
     add                  rbx,                  rsi
     mov      qword [rbx + 0],                    1
     mov                  rsi,                  r12
     inc                  rsi
     mov                  rdi,                  rsi
    push                  rsi
     sub                  rsp,                    8
    call                  dfs
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  r12
     inc                  rsi
     sal                  rsi,                    3
     mov                  rbx, qword [@assignment + 0]
     add                  rbx,                  rsi
     mov      qword [rbx + 0],                    0
     mov                  rsi,                  r12
     inc                  rsi
     mov                  rdi,                  rsi
    push                  rsi
     sub                  rsp,                    8
    call                  dfs
     add                  rsp,                    8
     pop                  rsi
     xor                  rbx,                  rbx
     cmp                  rbx,       qword [@n + 0]
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je      main_21_if_true
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
     mov                  rdi, qword [@assignment + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                    1
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
    call      print_last_cond
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
     mov                  rdi, qword [@assignment + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                    0
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
    call      print_last_cond
     mov                  rdi,  qword [@myHash + 0]
    call          println_Int
     mov                  rax,                    0
     jmp    main_5_block_exit
main_4_loop_exit:
     mov                  rbx,       qword [@n + 0]
     inc                  rbx
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
    push                  rdi
    push                  rsi
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rsi
     pop                  rdi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                  rbx
     add                  rsi,                    8
     mov qword [@assignment + 0],                  rsi
     mov                  rsi,       qword [@n + 0]
     inc                  rsi
     mov                  rbx,                  rsi
     inc                  rbx
     sal                  rbx,                    3
    push                  rdi
    push                  rsi
    push                  rsi
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rsi
     pop                  rdi
     mov                  rbx,                  rax
     mov      qword [rbx + 0],                  rsi
     add                  rbx,                    8
     mov qword [@cond_ass + 0],                  rbx
     xor                  r12,                  r12
     cmp                  r12,       qword [@n + 0]
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je      main_13_if_true
     mov                  rsi,                  r12
     inc                  rsi
     sal                  rsi,                    3
     mov                  rbx, qword [@assignment + 0]
     add                  rbx,                  rsi
     mov      qword [rbx + 0],                    1
     mov                  rsi,                  r12
     inc                  rsi
     mov                  rdi,                  rsi
    push                  rsi
     sub                  rsp,                    8
    call                  dfs
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  r12
     inc                  rsi
     sal                  rsi,                    3
     mov                  rbx, qword [@assignment + 0]
     add                  rbx,                  rsi
     mov      qword [rbx + 0],                    0
     mov                  rsi,                  r12
     inc                  rsi
     mov                  rdi,                  rsi
    push                  rsi
     sub                  rsp,                    8
    call                  dfs
     add                  rsp,                    8
     pop                  rsi
     xor                  rbx,                  rbx
     cmp                  rbx,       qword [@n + 0]
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je      main_21_if_true
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
     mov                  rdi, qword [@assignment + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                    1
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
    call      print_last_cond
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
     mov                  rdi, qword [@assignment + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                    0
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
    call      print_last_cond
     mov                  rdi,  qword [@myHash + 0]
    call          println_Int
     mov                  rax,                    0
     jmp    main_5_block_exit
main_12_inline_enter:
     cmp                  r12,       qword [@n + 0]
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je      main_13_if_true
     mov                  rsi,                  r12
     inc                  rsi
     sal                  rsi,                    3
     mov                  rbx, qword [@assignment + 0]
     add                  rbx,                  rsi
     mov      qword [rbx + 0],                    1
     mov                  rsi,                  r12
     inc                  rsi
     mov                  rdi,                  rsi
    push                  rsi
     sub                  rsp,                    8
    call                  dfs
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  r12
     inc                  rsi
     sal                  rsi,                    3
     mov                  rbx, qword [@assignment + 0]
     add                  rbx,                  rsi
     mov      qword [rbx + 0],                    0
     mov                  rsi,                  r12
     inc                  rsi
     mov                  rdi,                  rsi
    push                  rsi
     sub                  rsp,                    8
    call                  dfs
     add                  rsp,                    8
     pop                  rsi
     xor                  rbx,                  rbx
     cmp                  rbx,       qword [@n + 0]
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je      main_21_if_true
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
     mov                  rdi, qword [@assignment + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                    1
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
    call      print_last_cond
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
     mov                  rdi, qword [@assignment + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                    0
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
    call      print_last_cond
     mov                  rdi,  qword [@myHash + 0]
    call          println_Int
     mov                  rax,                    0
     jmp    main_5_block_exit
main_13_if_true:
    push                  rdi
    push                  rsi
    call                check
     pop                  rsi
     pop                  rdi
     mov                  rsi,                  rax
     cmp                  rsi,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je      main_14_if_true
     xor                  rbx,                  rbx
     cmp                  rbx,       qword [@n + 0]
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je      main_21_if_true
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
     mov                  rdi, qword [@assignment + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                    1
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
    call      print_last_cond
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
     mov                  rdi, qword [@assignment + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                    0
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
    call      print_last_cond
     mov                  rdi,  qword [@myHash + 0]
    call          println_Int
     mov                  rax,                    0
     jmp    main_5_block_exit
main_14_if_true:
     mov                  rdi,    __const_string_10
    push                  rdi
    push                  rsi
    call              myprint
     pop                  rsi
     pop                  rdi
     xor                  rdi,                  rdi
    push                  rsi
     sub                  rsp,                    8
    call           print_cond
     add                  rsp,                    8
     pop                  rsi
     mov                  rdi,    __const_string_11
    push                  rsi
     sub                  rsp,                    8
    call              myprint
     add                  rsp,                    8
     pop                  rsi
     xor                  rbx,                  rbx
     cmp                  rbx,       qword [@n + 0]
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je      main_21_if_true
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
     mov                  rdi, qword [@assignment + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                    1
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
    call      print_last_cond
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
     mov                  rdi, qword [@assignment + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                    0
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
    call      print_last_cond
     mov                  rdi,  qword [@myHash + 0]
    call          println_Int
     mov                  rax,                    0
     jmp    main_5_block_exit
main_18_if_exit:
     mov                  rsi,                  r12
     inc                  rsi
     sal                  rsi,                    3
     mov                  rbx, qword [@assignment + 0]
     add                  rbx,                  rsi
     mov      qword [rbx + 0],                    1
     mov                  rsi,                  r12
     inc                  rsi
     mov                  rdi,                  rsi
    push                  rsi
     sub                  rsp,                    8
    call                  dfs
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  r12
     inc                  rsi
     sal                  rsi,                    3
     mov                  rbx, qword [@assignment + 0]
     add                  rbx,                  rsi
     mov      qword [rbx + 0],                    0
     mov                  rsi,                  r12
     inc                  rsi
     mov                  rdi,                  rsi
    push                  rsi
     sub                  rsp,                    8
    call                  dfs
     add                  rsp,                    8
     pop                  rsi
     xor                  rbx,                  rbx
     cmp                  rbx,       qword [@n + 0]
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je      main_21_if_true
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
     mov                  rdi, qword [@assignment + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                    1
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
    call      print_last_cond
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
     mov                  rdi, qword [@assignment + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                    0
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
    call      print_last_cond
     mov                  rdi,  qword [@myHash + 0]
    call          println_Int
     mov                  rax,                    0
     jmp    main_5_block_exit
main_19_inline_exit:
     xor                  rbx,                  rbx
     cmp                  rbx,       qword [@n + 0]
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je      main_21_if_true
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
     mov                  rdi, qword [@assignment + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                    1
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
    call      print_last_cond
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
     mov                  rdi, qword [@assignment + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                    0
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
    call      print_last_cond
     mov                  rdi,  qword [@myHash + 0]
    call          println_Int
     mov                  rax,                    0
     jmp    main_5_block_exit
main_20_inline_enter:
     cmp                  rbx,       qword [@n + 0]
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je      main_21_if_true
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
     mov                  rdi, qword [@assignment + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                    1
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
    call      print_last_cond
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
     mov                  rdi, qword [@assignment + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                    0
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
    call      print_last_cond
     mov                  rdi,  qword [@myHash + 0]
    call          println_Int
     mov                  rax,                    0
     jmp    main_5_block_exit
main_21_if_true:
     mov                  rdi,    __const_string_12
    push                  rsi
     sub                  rsp,                    8
    call              myprint
     add                  rsp,                    8
     pop                  rsi
     mov                  r12,                    1
     xor                  rsi,                  rsi
     cmp                  rsi,       qword [@n + 0]
     mov                  rbx,                    0
    setl                   bl
     cmp                  rbx,                    1
      je    main_23_loop_body
     cmp                  r12,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je      main_29_if_true
     mov                  rdi,    __const_string_14
    call              myprint
     mov                  rdi,  qword [@myHash + 0]
    call          println_Int
     mov                  rax,                    0
     jmp    main_5_block_exit
main_22_loop_condition:
     cmp                  rsi,       qword [@n + 0]
     mov                  rbx,                    0
    setl                   bl
     cmp                  rbx,                    1
      je    main_23_loop_body
     cmp                  r12,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je      main_29_if_true
     mov                  rdi,    __const_string_14
    call              myprint
     mov                  rdi,  qword [@myHash + 0]
    call          println_Int
     mov                  rax,                    0
     jmp    main_5_block_exit
main_23_loop_body:
     mov                  rbx,                  rsi
     inc                  rbx
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rbx, qword [@assignment + 0]
     add                  rbx,                  rdi
     cmp      qword [rbx + 0],                    1
     mov                  rbx,                    0
    sete                   bl
     cmp                  rbx,                    1
      je      main_24_if_true
     mov                  rbx,                  rsi
     inc                  rbx
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rbx, qword [@assignment + 0]
     add                  rbx,                  rdi
     mov                  rdi,      qword [rbx + 0]
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
     sub                  rsp,                    8
    call              myprint
     add                  rsp,                    8
     pop                  rsi
     inc                  rsi
     cmp                  rsi,       qword [@n + 0]
     mov                  rbx,                    0
    setl                   bl
     cmp                  rbx,                    1
      je    main_23_loop_body
     cmp                  r12,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je      main_29_if_true
     mov                  rdi,    __const_string_14
    call              myprint
     mov                  rdi,  qword [@myHash + 0]
    call          println_Int
     mov                  rax,                    0
     jmp    main_5_block_exit
main_24_if_true:
     xor                  r12,                  r12
     mov                  rbx,                  rsi
     inc                  rbx
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rbx, qword [@assignment + 0]
     add                  rbx,                  rdi
     mov                  rdi,      qword [rbx + 0]
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
     sub                  rsp,                    8
    call              myprint
     add                  rsp,                    8
     pop                  rsi
     inc                  rsi
     cmp                  rsi,       qword [@n + 0]
     mov                  rbx,                    0
    setl                   bl
     cmp                  rbx,                    1
      je    main_23_loop_body
     cmp                  r12,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je      main_29_if_true
     mov                  rdi,    __const_string_14
    call              myprint
     mov                  rdi,  qword [@myHash + 0]
    call          println_Int
     mov                  rax,                    0
     jmp    main_5_block_exit
main_26_if_exit:
     mov                  rbx,                  rsi
     inc                  rbx
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rbx, qword [@assignment + 0]
     add                  rbx,                  rdi
     mov                  rdi,      qword [rbx + 0]
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
     sub                  rsp,                    8
    call              myprint
     add                  rsp,                    8
     pop                  rsi
     inc                  rsi
     cmp                  rsi,       qword [@n + 0]
     mov                  rbx,                    0
    setl                   bl
     cmp                  rbx,                    1
      je    main_23_loop_body
     cmp                  r12,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je      main_29_if_true
     mov                  rdi,    __const_string_14
    call              myprint
     mov                  rdi,  qword [@myHash + 0]
    call          println_Int
     mov                  rax,                    0
     jmp    main_5_block_exit
main_27_loop_increment:
     inc                  rsi
     cmp                  rsi,       qword [@n + 0]
     mov                  rbx,                    0
    setl                   bl
     cmp                  rbx,                    1
      je    main_23_loop_body
     cmp                  r12,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je      main_29_if_true
     mov                  rdi,    __const_string_14
    call              myprint
     mov                  rdi,  qword [@myHash + 0]
    call          println_Int
     mov                  rax,                    0
     jmp    main_5_block_exit
main_28_loop_exit:
     cmp                  r12,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je      main_29_if_true
     mov                  rdi,    __const_string_14
    call              myprint
     mov                  rdi,  qword [@myHash + 0]
    call          println_Int
     mov                  rax,                    0
     jmp    main_5_block_exit
main_29_if_true:
     mov                  rdi,    __const_string_13
    call              myprint
     mov                  rdi,  qword [@myHash + 0]
    call          println_Int
     mov                  rax,                    0
     jmp    main_5_block_exit
main_30_if_false:
     mov                  rdi,    __const_string_14
    call              myprint
     mov                  rdi,  qword [@myHash + 0]
    call          println_Int
     mov                  rax,                    0
     jmp    main_5_block_exit
main_33_if_exit:
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
     mov                  rdi, qword [@assignment + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                    1
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
    call      print_last_cond
     mov                  rsi,                  rbx
     inc                  rsi
     sal                  rsi,                    3
     mov                  rdi, qword [@assignment + 0]
     add                  rdi,                  rsi
     mov      qword [rdi + 0],                    0
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
    call      print_last_cond
     mov                  rdi,  qword [@myHash + 0]
    call          println_Int
     mov                  rax,                    0
     jmp    main_5_block_exit
main_34_inline_exit:
     mov                  rdi,  qword [@myHash + 0]
    call          println_Int
     mov                  rax,                    0
main_5_block_exit:
     pop                  rbx
     pop                  r12
     add                  rsp,                   64
     pop                  rbp
     ret
print_cond:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   32
    push                  r12
    push                  r13
    push                  rbx
print_cond_0_block_enter:
     mov                  rbx,                  rdi
     cmp                  rbx,       qword [@n + 0]
      je print_cond_1_if_true
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                  rsi, qword [@cond_ass + 0]
     add                  rsi,                  rdi
     mov      qword [rsi + 0],                    1
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call           print_cond
     add                  rsp,                    8
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                  rsi, qword [@cond_ass + 0]
     add                  rsi,                  rdi
     mov      qword [rsi + 0],                    0
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call           print_cond
     add                  rsp,                    8
     jmp print_cond_11_block_exit
print_cond_1_if_true:
     mov                  r13, qword [@cond_ass + 0]
     mov                  rbx, qword [@assignment + 0]
     xor                  rsi,                  rsi
     xor                   r9,                   r9
     cmp                   r9,                    3
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je print_cond_14_loop_body
     mov                  rdi,                  rsi
    push                   r8
    call             toString
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_1
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_2
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rbx,                  rax
     xor                  r12,                  r12
     mov                  rdi,                  rbx
    push                   r8
    call      __string_length
     pop                   r8
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_cond_23_loop_body
     xor                   r8,                   r8
     cmp                   r8,       qword [@n + 0]
      jl print_cond_3_loop_body
     jmp print_cond_11_block_exit
print_cond_12_inline_enter:
     xor                  rsi,                  rsi
     xor                   r9,                   r9
     cmp                   r9,                    3
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je print_cond_14_loop_body
     mov                  rdi,                  rsi
    push                   r8
    call             toString
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_1
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_2
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rbx,                  rax
     xor                  r12,                  r12
     mov                  rdi,                  rbx
    push                   r8
    call      __string_length
     pop                   r8
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_cond_23_loop_body
     xor                   r8,                   r8
     cmp                   r8,       qword [@n + 0]
      jl print_cond_3_loop_body
     jmp print_cond_11_block_exit
print_cond_13_loop_condition:
     cmp                   r9,                    3
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je print_cond_14_loop_body
     mov                  rdi,                  rsi
    push                   r8
    call             toString
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_1
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_2
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rbx,                  rax
     xor                  r12,                  r12
     mov                  rdi,                  rbx
    push                   r8
    call      __string_length
     pop                   r8
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_cond_23_loop_body
     xor                   r8,                   r8
     cmp                   r8,       qword [@n + 0]
      jl print_cond_3_loop_body
     jmp print_cond_11_block_exit
print_cond_14_loop_body:
     mov                  rdi,                   r9
     sal                  rdi,                    3
     mov                  r12,                  r13
     add                  r12,                  rdi
     mov                  rdi,                   r9
     sal                  rdi,                    3
     mov                   r8,                  rbx
     add                   r8,                  rdi
     mov                  rdi,      qword [r12 + 0]
     cmp                  rdi,       qword [r8 + 0]
     mov                  rdi,                    0
   setne                  dil
     cmp                  rdi,                    1
      je print_cond_15_if_true
     inc                   r9
     cmp                   r9,                    3
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je print_cond_14_loop_body
     mov                  rdi,                  rsi
    push                   r8
    call             toString
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_1
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_2
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rbx,                  rax
     xor                  r12,                  r12
     mov                  rdi,                  rbx
    push                   r8
    call      __string_length
     pop                   r8
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_cond_23_loop_body
     xor                   r8,                   r8
     cmp                   r8,       qword [@n + 0]
      jl print_cond_3_loop_body
     jmp print_cond_11_block_exit
print_cond_15_if_true:
     inc                  rsi
     inc                   r9
     cmp                   r9,                    3
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je print_cond_14_loop_body
     mov                  rdi,                  rsi
    push                   r8
    call             toString
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_1
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_2
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rbx,                  rax
     xor                  r12,                  r12
     mov                  rdi,                  rbx
    push                   r8
    call      __string_length
     pop                   r8
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_cond_23_loop_body
     xor                   r8,                   r8
     cmp                   r8,       qword [@n + 0]
      jl print_cond_3_loop_body
     jmp print_cond_11_block_exit
print_cond_18_loop_increment:
     inc                   r9
     cmp                   r9,                    3
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je print_cond_14_loop_body
     mov                  rdi,                  rsi
    push                   r8
    call             toString
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_1
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_2
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rbx,                  rax
     xor                  r12,                  r12
     mov                  rdi,                  rbx
    push                   r8
    call      __string_length
     pop                   r8
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_cond_23_loop_body
     xor                   r8,                   r8
     cmp                   r8,       qword [@n + 0]
      jl print_cond_3_loop_body
     jmp print_cond_11_block_exit
print_cond_20_inline_exit:
     mov                  rdi,                  rsi
    push                   r8
    call             toString
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,     __const_string_1
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,     __const_string_2
    push                   r8
    call  __string_connection
     pop                   r8
     mov                  rbx,                  rax
     xor                  r12,                  r12
     mov                  rdi,                  rbx
    push                   r8
    call      __string_length
     pop                   r8
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_cond_23_loop_body
     xor                   r8,                   r8
     cmp                   r8,       qword [@n + 0]
      jl print_cond_3_loop_body
     jmp print_cond_11_block_exit
print_cond_21_inline_enter:
     xor                  r12,                  r12
     mov                  rdi,                  rbx
    push                   r8
    call      __string_length
     pop                   r8
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_cond_23_loop_body
     xor                   r8,                   r8
     cmp                   r8,       qword [@n + 0]
      jl print_cond_3_loop_body
     jmp print_cond_11_block_exit
print_cond_22_loop_condition:
     mov                  rdi,                  rbx
    push                   r8
    call      __string_length
     pop                   r8
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_cond_23_loop_body
     xor                   r8,                   r8
     cmp                   r8,       qword [@n + 0]
      jl print_cond_3_loop_body
     jmp print_cond_11_block_exit
print_cond_23_loop_body:
     mov                  rdi,                  rbx
     mov                  rsi,                  r12
    push                   r8
    call         __string_ord
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,  qword [@myHash + 0]
     add                  rsi,                  rdi
     mov  qword [@myHash + 0],                  rsi
     inc                  r12
     mov                  rdi,                  rbx
    push                   r8
    call      __string_length
     pop                   r8
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_cond_23_loop_body
     xor                   r8,                   r8
     cmp                   r8,       qword [@n + 0]
      jl print_cond_3_loop_body
     jmp print_cond_11_block_exit
print_cond_24_loop_increment:
     inc                  r12
     mov                  rdi,                  rbx
    push                   r8
    call      __string_length
     pop                   r8
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_cond_23_loop_body
     xor                   r8,                   r8
     cmp                   r8,       qword [@n + 0]
      jl print_cond_3_loop_body
     jmp print_cond_11_block_exit
print_cond_26_inline_exit:
     xor                   r8,                   r8
     cmp                   r8,       qword [@n + 0]
      jl print_cond_3_loop_body
     jmp print_cond_11_block_exit
print_cond_2_loop_condition:
     cmp                   r8,       qword [@n + 0]
      jl print_cond_3_loop_body
     jmp print_cond_11_block_exit
print_cond_3_loop_body:
     mov                  rsi,                   r8
     mov                  rax,                  rsi
     mov                  rcx,                   10
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     cmp                  rsi,                    0
      je print_cond_4_if_true
     inc                   r8
     cmp                   r8,       qword [@n + 0]
      jl print_cond_3_loop_body
     jmp print_cond_11_block_exit
print_cond_4_if_true:
     mov                  rsi,                   r8
     inc                  rsi
     mov                  rbx,                  rsi
     sal                  rbx,                    3
     mov                  rsi, qword [@cond_ass + 0]
     add                  rsi,                  rbx
     mov                  rdi,      qword [rsi + 0]
    push                   r8
    call             toString
     pop                   r8
     mov                  rbx,                  rax
     xor                  r12,                  r12
     mov                  rdi,                  rbx
    push                   r8
    call      __string_length
     pop                   r8
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_cond_29_loop_body
     inc                   r8
     cmp                   r8,       qword [@n + 0]
      jl print_cond_3_loop_body
     jmp print_cond_11_block_exit
print_cond_27_inline_enter:
     xor                  r12,                  r12
     mov                  rdi,                  rbx
    push                   r8
    call      __string_length
     pop                   r8
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_cond_29_loop_body
     inc                   r8
     cmp                   r8,       qword [@n + 0]
      jl print_cond_3_loop_body
     jmp print_cond_11_block_exit
print_cond_28_loop_condition:
     mov                  rdi,                  rbx
    push                   r8
    call      __string_length
     pop                   r8
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_cond_29_loop_body
     inc                   r8
     cmp                   r8,       qword [@n + 0]
      jl print_cond_3_loop_body
     jmp print_cond_11_block_exit
print_cond_29_loop_body:
     mov                  rdi,                  rbx
     mov                  rsi,                  r12
    push                   r8
    call         __string_ord
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,  qword [@myHash + 0]
     add                  rsi,                  rdi
     mov  qword [@myHash + 0],                  rsi
     inc                  r12
     mov                  rdi,                  rbx
    push                   r8
    call      __string_length
     pop                   r8
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_cond_29_loop_body
     inc                   r8
     cmp                   r8,       qword [@n + 0]
      jl print_cond_3_loop_body
     jmp print_cond_11_block_exit
print_cond_30_loop_increment:
     inc                  r12
     mov                  rdi,                  rbx
    push                   r8
    call      __string_length
     pop                   r8
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je print_cond_29_loop_body
     inc                   r8
     cmp                   r8,       qword [@n + 0]
      jl print_cond_3_loop_body
     jmp print_cond_11_block_exit
print_cond_7_loop_increment:
     inc                   r8
     cmp                   r8,       qword [@n + 0]
      jl print_cond_3_loop_body
     jmp print_cond_11_block_exit
print_cond_10_if_exit:
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                  rsi, qword [@cond_ass + 0]
     add                  rsi,                  rdi
     mov      qword [rsi + 0],                    1
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call           print_cond
     add                  rsp,                    8
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                  rsi, qword [@cond_ass + 0]
     add                  rsi,                  rdi
     mov      qword [rsi + 0],                    0
     mov                  rsi,                  rbx
     inc                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call           print_cond
     add                  rsp,                    8
print_cond_11_block_exit:
     pop                  rbx
     pop                  r13
     pop                  r12
     add                  rsp,                   32
     pop                  rbp
     ret
check:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   24
check_0_block_enter:
     xor                  r10,                  r10
     cmp                  r10,       qword [@m + 0]
      jl    check_2_loop_body
     mov                  rax,                    1
     jmp  check_24_block_exit
check_1_loop_condition:
     cmp                  r10,       qword [@m + 0]
      jl    check_2_loop_body
     mov                  rax,                    1
     jmp  check_24_block_exit
check_2_loop_body:
     xor                  rdi,                  rdi
     xor                  r11,                  r11
     cmp                  r11,                    3
      jl    check_4_loop_body
     cmp                  rdi,                    0
      je     check_19_if_true
     inc                  r10
     cmp                  r10,       qword [@m + 0]
      jl    check_2_loop_body
     mov                  rax,                    1
     jmp  check_24_block_exit
check_3_loop_condition:
     cmp                  r11,                    3
      jl    check_4_loop_body
     cmp                  rdi,                    0
      je     check_19_if_true
     inc                  r10
     cmp                  r10,       qword [@m + 0]
      jl    check_2_loop_body
     mov                  rax,                    1
     jmp  check_24_block_exit
check_4_loop_body:
     mov                  rsi,                  r10
     sal                  rsi,                    3
     mov                   r9,     qword [@sat + 0]
     add                   r9,                  rsi
     mov                   r8,                  r11
     sal                   r8,                    3
     mov                  rsi,       qword [r9 + 0]
     add                  rsi,                   r8
     mov                   r8,      qword [rsi + 0]
     cmp                   r8,                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
     jne check_6_logical_false
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                   r9, qword [@assignment + 0]
     add                   r9,                  rsi
     cmp       qword [r9 + 0],                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je      check_8_if_true
     cmp                   r8,                    0
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
     jne check_12_logical_false
     mov                  rsi,                   r8
     neg                  rsi
     sal                  rsi,                    3
     mov                   r8, qword [@assignment + 0]
     add                   r8,                  rsi
     cmp       qword [r8 + 0],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je     check_14_if_true
     inc                  r11
     cmp                  r11,                    3
      jl    check_4_loop_body
     cmp                  rdi,                    0
      je     check_19_if_true
     inc                  r10
     cmp                  r10,       qword [@m + 0]
      jl    check_2_loop_body
     mov                  rax,                    1
     jmp  check_24_block_exit
check_5_logical_true:
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                   r9, qword [@assignment + 0]
     add                   r9,                  rsi
     cmp       qword [r9 + 0],                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je      check_8_if_true
     cmp                   r8,                    0
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
     jne check_12_logical_false
     mov                  rsi,                   r8
     neg                  rsi
     sal                  rsi,                    3
     mov                   r8, qword [@assignment + 0]
     add                   r8,                  rsi
     cmp       qword [r8 + 0],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je     check_14_if_true
     inc                  r11
     cmp                  r11,                    3
      jl    check_4_loop_body
     cmp                  rdi,                    0
      je     check_19_if_true
     inc                  r10
     cmp                  r10,       qword [@m + 0]
      jl    check_2_loop_body
     mov                  rax,                    1
     jmp  check_24_block_exit
check_6_logical_false:
     xor                  rsi,                  rsi
     cmp                  rsi,                    1
      je      check_8_if_true
     cmp                   r8,                    0
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
     jne check_12_logical_false
     mov                  rsi,                   r8
     neg                  rsi
     sal                  rsi,                    3
     mov                   r8, qword [@assignment + 0]
     add                   r8,                  rsi
     cmp       qword [r8 + 0],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je     check_14_if_true
     inc                  r11
     cmp                  r11,                    3
      jl    check_4_loop_body
     cmp                  rdi,                    0
      je     check_19_if_true
     inc                  r10
     cmp                  r10,       qword [@m + 0]
      jl    check_2_loop_body
     mov                  rax,                    1
     jmp  check_24_block_exit
check_7_logical_exit:
     cmp                  rsi,                    1
      je      check_8_if_true
     cmp                   r8,                    0
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
     jne check_12_logical_false
     mov                  rsi,                   r8
     neg                  rsi
     sal                  rsi,                    3
     mov                   r8, qword [@assignment + 0]
     add                   r8,                  rsi
     cmp       qword [r8 + 0],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je     check_14_if_true
     inc                  r11
     cmp                  r11,                    3
      jl    check_4_loop_body
     cmp                  rdi,                    0
      je     check_19_if_true
     inc                  r10
     cmp                  r10,       qword [@m + 0]
      jl    check_2_loop_body
     mov                  rax,                    1
     jmp  check_24_block_exit
check_8_if_true:
     mov                  rdi,                    1
     cmp                   r8,                    0
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
     jne check_12_logical_false
     mov                  rsi,                   r8
     neg                  rsi
     sal                  rsi,                    3
     mov                   r8, qword [@assignment + 0]
     add                   r8,                  rsi
     cmp       qword [r8 + 0],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je     check_14_if_true
     inc                  r11
     cmp                  r11,                    3
      jl    check_4_loop_body
     cmp                  rdi,                    0
      je     check_19_if_true
     inc                  r10
     cmp                  r10,       qword [@m + 0]
      jl    check_2_loop_body
     mov                  rax,                    1
     jmp  check_24_block_exit
check_10_if_exit:
     cmp                   r8,                    0
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
     jne check_12_logical_false
     mov                  rsi,                   r8
     neg                  rsi
     sal                  rsi,                    3
     mov                   r8, qword [@assignment + 0]
     add                   r8,                  rsi
     cmp       qword [r8 + 0],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je     check_14_if_true
     inc                  r11
     cmp                  r11,                    3
      jl    check_4_loop_body
     cmp                  rdi,                    0
      je     check_19_if_true
     inc                  r10
     cmp                  r10,       qword [@m + 0]
      jl    check_2_loop_body
     mov                  rax,                    1
     jmp  check_24_block_exit
check_11_logical_true:
     mov                  rsi,                   r8
     neg                  rsi
     sal                  rsi,                    3
     mov                   r8, qword [@assignment + 0]
     add                   r8,                  rsi
     cmp       qword [r8 + 0],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je     check_14_if_true
     inc                  r11
     cmp                  r11,                    3
      jl    check_4_loop_body
     cmp                  rdi,                    0
      je     check_19_if_true
     inc                  r10
     cmp                  r10,       qword [@m + 0]
      jl    check_2_loop_body
     mov                  rax,                    1
     jmp  check_24_block_exit
check_12_logical_false:
     xor                  rsi,                  rsi
     cmp                  rsi,                    1
      je     check_14_if_true
     inc                  r11
     cmp                  r11,                    3
      jl    check_4_loop_body
     cmp                  rdi,                    0
      je     check_19_if_true
     inc                  r10
     cmp                  r10,       qword [@m + 0]
      jl    check_2_loop_body
     mov                  rax,                    1
     jmp  check_24_block_exit
check_13_logical_exit:
     cmp                  rsi,                    1
      je     check_14_if_true
     inc                  r11
     cmp                  r11,                    3
      jl    check_4_loop_body
     cmp                  rdi,                    0
      je     check_19_if_true
     inc                  r10
     cmp                  r10,       qword [@m + 0]
      jl    check_2_loop_body
     mov                  rax,                    1
     jmp  check_24_block_exit
check_14_if_true:
     mov                  rdi,                    1
     inc                  r11
     cmp                  r11,                    3
      jl    check_4_loop_body
     cmp                  rdi,                    0
      je     check_19_if_true
     inc                  r10
     cmp                  r10,       qword [@m + 0]
      jl    check_2_loop_body
     mov                  rax,                    1
     jmp  check_24_block_exit
check_17_loop_increment:
     inc                  r11
     cmp                  r11,                    3
      jl    check_4_loop_body
     cmp                  rdi,                    0
      je     check_19_if_true
     inc                  r10
     cmp                  r10,       qword [@m + 0]
      jl    check_2_loop_body
     mov                  rax,                    1
     jmp  check_24_block_exit
check_18_loop_exit:
     cmp                  rdi,                    0
      je     check_19_if_true
     inc                  r10
     cmp                  r10,       qword [@m + 0]
      jl    check_2_loop_body
     mov                  rax,                    1
     jmp  check_24_block_exit
check_19_if_true:
     mov                  rax,                    0
     jmp  check_24_block_exit
check_22_loop_increment:
     inc                  r10
     cmp                  r10,       qword [@m + 0]
      jl    check_2_loop_body
     mov                  rax,                    1
     jmp  check_24_block_exit
check_23_loop_exit:
     mov                  rax,                    1
check_24_block_exit:
     add                  rsp,                   24
     pop                  rbp
     ret
SECTION .data
      dq                    9
__const_string_0:
	db 109,  97, 120,  58,  32, 120, 122,  59,  10,   0
      dq                    2
__const_string_1:
	db  45,  32,   0
      dq                    2
__const_string_2:
	db  42, 120,   0
      dq                    3
__const_string_3:
	db 120, 122,  32,   0
      dq                    7
__const_string_4:
	db  32,  60,  61,  32,  48,  59,  10,   0
      dq                    1
__const_string_5:
	db 120,   0
      dq                    3
__const_string_6:
	db  32,  43,  32,   0
      dq                    6
__const_string_7:
	db  32,  61,  32,  49,  59,  10,   0
      dq                    2
__const_string_8:
	db  45,  32,   0
      dq                    2
__const_string_9:
	db  42, 120,   0
      dq                    3
__const_string_10:
	db 120, 122,  32,   0
      dq                    7
__const_string_11:
	db  32,  60,  61,  32,  48,  59,  10,   0
      dq                    1
__const_string_12:
	db 120,   0
      dq                    3
__const_string_13:
	db  32,  43,  32,   0
      dq                    6
__const_string_14:
	db  32,  61,  32,  49,  59,  10,   0
SECTION .bss
@sat:
    resq                    1
@assignment:
    resq                    1
@cond_ass:
    resq                    1
@k:
    resq                    1
@n:
    resq                    1
@m:
    resq                    1
@last:
    resq                    1
@myHash:
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
