section .data

var: dq 0
%macro scall 4
mov rax,%1
mov rdi,%2
mov rsi,%3
mov rdx,%4
syscall
%endmacro

section .text

global _start
_start:
b1:
pop rsi

pop rsi

mov rax,qword[rsi]
b2:
mov qword[var],rax
scall 1,1,var,8

exit:

mov rax,60
mov rdi,0
syscall
