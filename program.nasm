global __global_init
global func
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
func:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
func_0_block_enter:
     mov                  r11,                  rsi
     mov                  r10,                  rdx
     mov                  rsi,                  rcx
     mov                  rbx,                   r8
     mov                   r8,                   r9
     cmp                  rdi,                  r11
     mov                   r9,                    0
    sete                  r9b
     cmp                   r9,                    1
     jne func_2_logical_false
func_1_logical_true:
     cmp                  r10,                    0
     mov                   r9,                    0
    setg                  r9b
     jmp  func_3_logical_exit
func_2_logical_false:
     mov                   r9,                    0
func_3_logical_exit:
     cmp                   r9,                    1
      je  func_4_logical_true
     jmp func_5_logical_false
func_4_logical_true:
     mov                   r9,                    1
     jmp func_12_logical_exit
func_5_logical_false:
     cmp                  rsi,                  rbx
     mov                   r9,                    0
    sete                  r9b
     cmp                   r9,                    1
     jne func_7_logical_false
func_6_logical_true:
     cmp                   r8,                    0
     mov                   r9,                    0
    setg                  r9b
     jmp  func_8_logical_exit
func_7_logical_false:
     mov                   r9,                    0
func_8_logical_exit:
     cmp                   r9,                    1
     jne func_10_logical_false
func_9_logical_true:
     cmp     qword [rbp + 16],                    0
     mov                   r9,                    0
    setg                  r9b
     jmp func_12_logical_exit
func_10_logical_false:
     mov                   r9,                    0
func_12_logical_exit:
     cmp                   r9,                    1
      je func_13_logical_true
     jmp func_14_logical_false
func_13_logical_true:
     mov                  rdi,                    1
     jmp func_15_logical_exit
func_14_logical_false:
     cmp                  rdi,     qword [rbp + 16]
     mov                  rdi,                    0
    sete                  dil
func_15_logical_exit:
     cmp                  rdi,                    1
      je func_16_logical_true
     jmp func_17_logical_false
func_16_logical_true:
     mov                  rsi,                    1
     jmp func_21_logical_exit
func_17_logical_false:
     cmp                  rsi,                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
     jne func_19_logical_false
func_18_logical_true:
     cmp                   r8,                    0
     mov                  rsi,                    0
    setg                  sil
     jmp func_21_logical_exit
func_19_logical_false:
     mov                  rsi,                    0
func_21_logical_exit:
     cmp                  rsi,                    1
      je      func_22_if_true
     jmp     func_23_if_false
func_22_if_true:
     mov                  rax,                    1
     jmp   func_25_block_exit
func_23_if_false:
     mov                  rax,                    0
func_25_block_exit:
     pop                  rbx
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call        __global_init
    push                  rbx
main_0_block_enter:
     mov                   r8,                    1
     mov                  rbx,                    2
     mov                  r11,                    3
     mov                  rdi,                    4
     mov                  r10,                    5
     mov                  rsi,                    6
     mov                   r9,                    7
main_2_inline_enter:
     cmp                   r8,                  rbx
     mov                  rbx,                    0
    sete                   bl
     cmp                  rbx,                    1
     jne main_4_logical_false
main_3_logical_true:
     cmp                  r11,                    0
     mov                  r11,                    0
    setg                 r11b
     jmp  main_5_logical_exit
main_4_logical_false:
     mov                  r11,                    0
main_5_logical_exit:
     cmp                  r11,                    1
      je  main_6_logical_true
     jmp main_7_logical_false
main_6_logical_true:
     mov                  r10,                    1
     jmp main_14_logical_exit
main_7_logical_false:
     cmp                  rdi,                  r10
     mov                  r10,                    0
    sete                 r10b
     cmp                  r10,                    1
     jne main_9_logical_false
main_8_logical_true:
     cmp                  rsi,                    0
     mov                  r10,                    0
    setg                 r10b
     jmp main_10_logical_exit
main_9_logical_false:
     mov                  r10,                    0
main_10_logical_exit:
     cmp                  r10,                    1
     jne main_12_logical_false
main_11_logical_true:
     cmp                   r9,                    0
     mov                  r10,                    0
    setg                 r10b
     jmp main_14_logical_exit
main_12_logical_false:
     mov                  r10,                    0
main_14_logical_exit:
     cmp                  r10,                    1
      je main_15_logical_true
     jmp main_16_logical_false
main_15_logical_true:
     mov                   r8,                    1
     jmp main_17_logical_exit
main_16_logical_false:
     cmp                   r8,                   r9
     mov                   r8,                    0
    sete                  r8b
main_17_logical_exit:
     cmp                   r8,                    1
      je main_18_logical_true
     jmp main_19_logical_false
main_18_logical_true:
     mov                  rsi,                    1
     jmp main_23_logical_exit
main_19_logical_false:
     cmp                  rdi,                    0
     mov                  rdi,                    0
    setg                  dil
     cmp                  rdi,                    1
     jne main_21_logical_false
main_20_logical_true:
     cmp                  rsi,                    0
     mov                  rsi,                    0
    setg                  sil
     jmp main_23_logical_exit
main_21_logical_false:
     mov                  rsi,                    0
main_23_logical_exit:
     cmp                  rsi,                    1
      je    main_1_block_exit
main_1_block_exit:
     pop                  rbx
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
