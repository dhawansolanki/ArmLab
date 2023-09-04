        area lar_small, code, readonly
        entry
        mov r5, #06
        mov r1, #0x40000000
        mov r2, #0x4000001c
        ldr r3, [r1]
loop    add r1, r1, #04
        ldr r4, [r1]
        cmp r3, r4
        bls loop1
        mov r3, r4
loop1    subs r5, r5, #01
        cmp r5, #00
        bne loopstr r3, [r2]
stop    b stop
        end