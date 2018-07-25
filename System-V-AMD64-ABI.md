# System V AMD64 ABI
- Source: https://wiki.osdev.org/System_V_ABI

## General
- The stack is 16-byte aligned just before the call instruction is called. 

## Passing integer and address arguments to function
- rdi (1)
- rsi (2)
- rdx (3)
- rcx (4)
- r8 (5)
- r9 (6)
- rax - number of floating points
- further values are passed on the stack in reverse order
    - Parameters passed on the stack may be modified by the called function

## Return value
- rax
- if it is a 128-bit value, then the higher 64-bits go in rdx

### Non volatile registers (preserved by functions)
- rbx
- rsp
- rbp
- r12
- r13
- r14
- r15

## Volatile registers
- rax
- rdi
- rsi
- rdx
- rcx
- r8
- r9
- r10
- r11