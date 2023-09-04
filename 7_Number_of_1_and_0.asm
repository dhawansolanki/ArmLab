        area onezero, code, readonly
        entry
        mov r2, #0
        mov r3, #0
        mov r6, #0x00000002
        mov r1, #32
mov     r0,r6
loop0   movs r0, r0, ror#1
        bhi ones
zeros   add r3, r3, #1
        b loop1
ones    add r2, r2, #1
loop1   subs r1, r1, #1
bne     loop0
stop    b stop
        end