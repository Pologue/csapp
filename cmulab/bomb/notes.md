# Notes

## phase_1

Simply compare input string and target string.

## phase_2

Is about for loop and multiply, which I didn't solved on my own actually.

## phase_3

Is about switch case, simple phase.

## phase_4

First number is between 0 and 0xe(14), second number is 0. Nesting function.

## phase_5

Input string's length is 6, each char & with 0xf to get index of:
'maduiersnfotvbylSo you think you can stop the bomb with ctrl-c, do you?'

Then compare with:
'flyers'

So index should be: 9 15 14 5 6 7

Corresponding char: 9 /  .  5 6 7

## phase_6

```cpp
Dump of assembler code for function phase_6:
=> 0x00000000004010f4 <+0>:     push   r14
   0x00000000004010f6 <+2>:     push   r13
   0x00000000004010f8 <+4>:     push   r12
   0x00000000004010fa <+6>:     push   rbp
   0x00000000004010fb <+7>:     push   rbx
   0x00000000004010fc <+8>:     sub    rsp,0x50
   0x0000000000401100 <+12>:    mov    r13,rsp
   0x0000000000401103 <+15>:    mov    rsi,rsp
   0x0000000000401106 <+18>:    call   0x40145c <read_six_numbers>
   0x000000000040110b <+23>:    mov    r14,rsp
   0x000000000040110e <+26>:    mov    r12d,0x0
   0x0000000000401114 <+32>:    mov    rbp,r13
   0x0000000000401117 <+35>:    mov    eax,DWORD PTR [r13+0x0]
   0x000000000040111b <+39>:    sub    eax,0x1
   0x000000000040111e <+42>:    cmp    eax,0x5
   0x0000000000401121 <+45>:    jbe    0x401128 <phase_6+52>
   0x0000000000401123 <+47>:    call   0x40143a <explode_bomb>
   0x0000000000401128 <+52>:    add    r12d,0x1
   0x000000000040112c <+56>:    cmp    r12d,0x6
   0x0000000000401130 <+60>:    je     0x401153 <phase_6+95>
   0x0000000000401132 <+62>:    mov    ebx,r12d
   0x0000000000401135 <+65>:    movsxd rax,ebx
   0x0000000000401138 <+68>:    mov    eax,DWORD PTR [rsp+rax*4]
   0x000000000040113b <+71>:    cmp    DWORD PTR [rbp+0x0],eax
   0x000000000040113e <+74>:    jne    0x401145 <phase_6+81>
   0x0000000000401140 <+76>:    call   0x40143a <explode_bomb>
   0x0000000000401145 <+81>:    add    ebx,0x1
   0x0000000000401148 <+84>:    cmp    ebx,0x5
   0x000000000040114b <+87>:    jle    0x401135 <phase_6+65>
   0x000000000040114d <+89>:    add    r13,0x4
   0x0000000000401151 <+93>:    jmp    0x401114 <phase_6+32>
   0x0000000000401153 <+95>:    lea    rsi,[rsp+0x18]
   0x0000000000401158 <+100>:   mov    rax,r14
   0x000000000040115b <+103>:   mov    ecx,0x7
   0x0000000000401160 <+108>:   mov    edx,ecx
   0x0000000000401162 <+110>:   sub    edx,DWORD PTR [rax]
   0x0000000000401164 <+112>:   mov    DWORD PTR [rax],edx
   0x0000000000401166 <+114>:   add    rax,0x4
   0x000000000040116a <+118>:   cmp    rax,rsi
   0x000000000040116d <+121>:   jne    0x401160 <phase_6+108>
   0x000000000040116f <+123>:   mov    esi,0x0
   0x0000000000401174 <+128>:   jmp    0x401197 <phase_6+163>
   0x0000000000401176 <+130>:   mov    rdx,QWORD PTR [rdx+0x8]
   0x000000000040117a <+134>:   add    eax,0x1
   0x000000000040117d <+137>:   cmp    eax,ecx
   0x000000000040117f <+139>:   jne    0x401176 <phase_6+130>
   0x0000000000401181 <+141>:   jmp    0x401188 <phase_6+148>
   0x0000000000401183 <+143>:   mov    edx,0x6032d0
   0x0000000000401188 <+148>:   mov    QWORD PTR [rsp+rsi*2+0x20],rdx
   0x000000000040118d <+153>:   add    rsi,0x4
   0x0000000000401191 <+157>:   cmp    rsi,0x18
   0x0000000000401195 <+161>:   je     0x4011ab <phase_6+183>
   0x0000000000401197 <+163>:   mov    ecx,DWORD PTR [rsp+rsi*1]
   0x000000000040119a <+166>:   cmp    ecx,0x1
   0x000000000040119d <+169>:   jle    0x401183 <phase_6+143>
   0x000000000040119f <+171>:   mov    eax,0x1
   0x00000000004011a4 <+176>:   mov    edx,0x6032d0
   0x00000000004011a9 <+181>:   jmp    0x401176 <phase_6+130>
   0x00000000004011ab <+183>:   mov    rbx,QWORD PTR [rsp+0x20]
   0x00000000004011b0 <+188>:   lea    rax,[rsp+0x28]
   0x00000000004011b5 <+193>:   lea    rsi,[rsp+0x50]
   0x00000000004011ba <+198>:   mov    rcx,rbx
   0x00000000004011bd <+201>:   mov    rdx,QWORD PTR [rax]
   0x00000000004011c0 <+204>:   mov    QWORD PTR [rcx+0x8],rdx
   0x00000000004011c4 <+208>:   add    rax,0x8
   0x00000000004011c8 <+212>:   cmp    rax,rsi
   0x00000000004011cb <+215>:   je     0x4011d2 <phase_6+222>
   0x00000000004011cd <+217>:   mov    rcx,rdx
   0x00000000004011d0 <+220>:   jmp    0x4011bd <phase_6+201>
   0x00000000004011d2 <+222>:   mov    QWORD PTR [rdx+0x8],0x0
   0x00000000004011da <+230>:   mov    ebp,0x5
   0x00000000004011df <+235>:   mov    rax,QWORD PTR [rbx+0x8]
   0x00000000004011e3 <+239>:   mov    eax,DWORD PTR [rax]
   0x00000000004011e5 <+241>:   cmp    DWORD PTR [rbx],eax
   0x00000000004011e7 <+243>:   jge    0x4011ee <phase_6+250>
   0x00000000004011e9 <+245>:   call   0x40143a <explode_bomb>
   0x00000000004011ee <+250>:   mov    rbx,QWORD PTR [rbx+0x8]
   0x00000000004011f2 <+254>:   sub    ebp,0x1
   0x00000000004011f5 <+257>:   jne    0x4011df <phase_6+235>
   0x00000000004011f7 <+259>:   add    rsp,0x50
   0x00000000004011fb <+263>:   pop    rbx
   0x00000000004011fc <+264>:   pop    rbp
   0x00000000004011fd <+265>:   pop    r12
   0x00000000004011ff <+267>:   pop    r13
   0x0000000000401201 <+269>:   pop    r14
   0x0000000000401203 <+271>:   ret
End of assembler dump.
```
