global main
global global_init
extern printf, malloc, strcpy, scanf, strlen, sscanf, sprintf, memcpy, strcmp, puts
SECTION .data
SECTION .bss
SECTION .text
main:
    push                  rbp
     mov                  rbp,                  rsp
    call          global_init
    push                  rbx
    push                  r12
    push                  r13
    push                  r14
    push                  r15
main_0_block_enter:
     mov                  rsi,                    1
     add                  rsi,                    1
     mov                  rcx,                  rsi
     sal                  rsi,                   cl
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi + 0],                    1
     add                  rsi,                  rsi
     mov                  rsi,                  rsi
     mov                   r8,                    0
     mov                  rcx,                   r8
     sal                   r8,                   cl
     mov                  rdi,                  rsi
     add                  rdi,                  rdi
     mov      qword [rdi + 0],                   10
     mov                  rdi,                    0
     mov                  rcx,                  rdi
     sal                  rdi,                   cl
     mov                  rsi,                  rsi
     add                  rsi,                  rsi
     mov                  rsi,      qword [rsi + 0]
     add                  rsi,                  rsi
     mov                  rax,                  rsi
     jmp    main_1_block_exit
main_1_block_exit:
     pop                  r15
     pop                  r14
     pop                  r13
     pop                  r12
     pop                  rbx
     pop                  rbp
     ret
global_init:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
    push                  r12
    push                  r13
    push                  r14
    push                  r15
global_init_0_block_enter:
     jmp global_init_1_block_exit
global_init_1_block_exit:
     pop                  r15
     pop                  r14
     pop                  r13
     pop                  r12
     pop                  rbx
     pop                  rbp
     ret
