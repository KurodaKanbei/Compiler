global __global_init
global main
global fibo
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
main_0_block_enter:
     mov                  rdi,                   32
    call                 fibo
     mov                  rdi,                  rax
    call          println_Int
     mov                  rsi,                    0
     cmp                  rsi,                  100
     jle     main_2_loop_body
     mov                  rax,                    0
     jmp    main_5_block_exit
main_1_loop_condition:
     cmp                  rsi,                  100
     jle     main_2_loop_body
     mov                  rax,                    0
     jmp    main_5_block_exit
main_2_loop_body:
     mov                  rdi,                   30
    push                  rsi
     sub                  rsp,                    8
    call                 fibo
     add                  rsp,                    8
     pop                  rsi
     mov                  rdi,                  rax
    push                  rsi
     sub                  rsp,                    8
    call          println_Int
     add                  rsp,                    8
     pop                  rsi
     add                  rsi,                    1
     cmp                  rsi,                  100
     jle     main_2_loop_body
     mov                  rax,                    0
     jmp    main_5_block_exit
main_3_loop_increment:
     add                  rsi,                    1
     cmp                  rsi,                  100
     jle     main_2_loop_body
     mov                  rax,                    0
     jmp    main_5_block_exit
main_4_loop_exit:
     mov                  rax,                    0
main_5_block_exit:
     pop                  rbp
     ret
fibo:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   24
    push                  r12
    push                  rbx
fibo_0_block_enter:
     mov                   r8,                  rdi
     sal                   r8,                    3
     mov                  r12,            @fibo_int
     add                  r12,                   r8
     sar                   r8,                    3
     cmp                  rdi,                    0
     jge  fibo_1_fibo_success
     cmp                  rdi,                    2
      jl       fibo_5_if_true
     mov                  rsi,                  rdi
     sub                  rsi,                    1
     mov                  rdi,                  rsi
    push                   r8
    call                 fibo
     pop                   r8
     mov                  rsi,                  rax
     mov                  rbx,                  rdi
     sub                  rbx,                    2
     mov                  rdi,                  rbx
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call                 fibo
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rbx,                  rax
     add                  rsi,                  rbx
     mov                  rax,                  rsi
     cmp                   r8,                    0
     jge fibo_9_fibo_positive
     jmp   fibo_12_block_exit
fibo_1_fibo_success:
     cmp                  rdi,                  200
      jl   fibo_2_fibo_escape
     cmp                  rdi,                    2
      jl       fibo_5_if_true
     mov                  rsi,                  rdi
     sub                  rsi,                    1
     mov                  rdi,                  rsi
    push                   r8
    call                 fibo
     pop                   r8
     mov                  rsi,                  rax
     mov                  rbx,                  rdi
     sub                  rbx,                    2
     mov                  rdi,                  rbx
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call                 fibo
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rbx,                  rax
     add                  rsi,                  rbx
     mov                  rax,                  rsi
     cmp                   r8,                    0
     jge fibo_9_fibo_positive
     jmp   fibo_12_block_exit
fibo_2_fibo_escape:
     cmp      qword [r12 + 0],                    0
      je    fibo_4_fibo_start
     mov                  rax,      qword [r12 + 0]
     jmp   fibo_12_block_exit
fibo_3_fibo_return:
     mov                  rax,      qword [r12 + 0]
     jmp   fibo_12_block_exit
fibo_4_fibo_start:
     cmp                  rdi,                    2
      jl       fibo_5_if_true
     mov                  rsi,                  rdi
     sub                  rsi,                    1
     mov                  rdi,                  rsi
    push                   r8
    call                 fibo
     pop                   r8
     mov                  rsi,                  rax
     mov                  rbx,                  rdi
     sub                  rbx,                    2
     mov                  rdi,                  rbx
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call                 fibo
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rbx,                  rax
     add                  rsi,                  rbx
     mov                  rax,                  rsi
     cmp                   r8,                    0
     jge fibo_9_fibo_positive
     jmp   fibo_12_block_exit
fibo_5_if_true:
     mov                  rax,                  rdi
     jmp   fibo_12_block_exit
fibo_7_if_exit:
     mov                  rsi,                  rdi
     sub                  rsi,                    1
     mov                  rdi,                  rsi
    push                   r8
    call                 fibo
     pop                   r8
     mov                  rsi,                  rax
     mov                  rbx,                  rdi
     sub                  rbx,                    2
     mov                  rdi,                  rbx
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call                 fibo
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rbx,                  rax
     add                  rsi,                  rbx
     mov                  rax,                  rsi
     cmp                   r8,                    0
     jge fibo_9_fibo_positive
     jmp   fibo_12_block_exit
fibo_8_fibo_save:
     cmp                   r8,                    0
     jge fibo_9_fibo_positive
     jmp   fibo_12_block_exit
fibo_9_fibo_positive:
     cmp                   r8,                  200
      jl  fibo_10_fibo_update
     jmp   fibo_12_block_exit
fibo_10_fibo_update:
     mov      qword [r12 + 0],                  rax
fibo_12_block_exit:
     pop                  rbx
     pop                  r12
     add                  rsp,                   24
     pop                  rbp
     ret
SECTION .data
@fibo_int:
	dq           0,           1,           1,           2,           3,           5,           8,          13,          21,          34,          55,          89,         144,         233,         377,         610,         987,        1597,        2584,        4181,        6765,       10946,       17711,       28657,       46368,       75025,      121393,      196418,      317811,      514229,      832040,     1346269,     2178309,     3524578,     5702887,     9227465,    14930352,    24157817,    39088169,    63245986,   102334155,   165580141,   267914296,   433494437,   701408733,  1134903170,  1836311903, -1323752223,   512559680,  -811192543,  -298632863, -1109825406, -1408458269,  1776683621,   368225352,  2144908973, -1781832971,   363076002, -1418756969, -1055680967,  1820529360,   764848393, -1709589543,  -944741150,  1640636603,   695895453, -1958435240, -1262539787,  1073992269,  -188547518,   885444751,   696897233,  1582341984, -2015728079,  -433386095,  1845853122,  1412467027, -1036647147,   375819880,  -660827267,  -285007387,  -945834654, -1230842041,  2118290601,   887448560, -1289228135,  -401779575, -1691007710, -2092787285,   511172301, -1581614984, -1070442683,  1642909629,   572466946, -2079590721, -1507123775,   708252800,  -798870975,   -90618175,  -889489150,  -980107325, -1869596475,  1445263496,  -424332979,  1020930517,   596597538,  1617528055, -2080841703,  -463313648,  1750811945,  1287498297, -1256657054,    30841243, -1225815811, -1194974568,  1874176917,   679202349, -1741588030, -1062385681,  1490993585,   428607904,  1919601489, -1946757903,   -27156414, -1973914317, -2001070731,   319982248, -1681088483, -1361106235,  1252772578,  -108333657,  1144438921,  1036105264, -2114423111, -1078317847,  1102226338,    23908491,  1126134829,  1150043320, -2018789147,  -868745827,  1407432322,   538686495,  1946118817, -1810161984,   135956833, -1674205151, -1538248318,  1082513827,  -455734491,   626779336,   171044845,   797824181,   968869026,  1766693207, -1559405063,   207288144, -1352116919, -1144828775,  1798021602,   653192827, -1843752867, -1190560040,  1260654389,    70094349,  1330748738,  1400843087, -1563375471,  -162532384, -1725907855, -1888440239,   680619202, -1207821037,  -527201835, -1735022872,  2032742589,   297719717, -1964504990, -1666785273,   663677033, -1003108240,  -339431207, -1342539447, -1681970654,  1270457195,  -411513459,   858943736,   447430277,  1306374013,  1753804290, -1234788993,   519015297,  -715773696,  -196758399,  -912532095, -1109290494, -2021822589,  1163854213,  -857968376,   305885837,    0
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
