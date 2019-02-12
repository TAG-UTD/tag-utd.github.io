extern printf
extern scanf
global main

section .data
; data

sumVars: dd 0
input: dd 0
arr: times 5 dd 0
i: dd 0
prompt: db "Input a number: ", 0
scan_fmt: db "%d", 0
res_fmt: db "The sum of numbers is %d", 0xa, 0


section .text
; code

main:
  ; For stack alignment...
  sub rsp, 8

  mov dword  [i], 0
.loop:
  mov rdi, prompt
  call printf

  mov rsi, input
  mov rdi, scan_fmt
  call scanf

  ; arr[i] = input
  mov eax, dword [i]
  mov edx, dword [input]
  ;shl eax, 2 ; eax *= 4
  ;add eax, arr
  ;mov dword [eax], edx
  ; -- is the same as --
  mov dword [eax * 4 + arr], edx

  ; edx = &arr[eax]
  ; lea edx, [eax * 4 + arr]

  ; i++
  add dword [i], 1

  ; i < 5
  cmp dword [i], 5
  jl .loop

  mov dword  [i], 0
.loop2:
  ; sumVars += arr[i]
  mov eax, dword [i]
  mov eax, dword [eax * 4 + arr]
  add dword [sumVars], eax

  ; i++
  add dword [i], 1

  ; i < 5
  cmp dword [i], 5
  jl .loop2

  ; Print the sum
  mov esi, dword [sumVars]
  mov rdi, res_fmt
  call printf

  add rsp, 8
  ret

