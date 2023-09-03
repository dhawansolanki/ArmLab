        area array, code, readonly
        entry
        mov r1, #05
        sub r1, #01
        mov r0, #0x40000000
        ldrh r2 [r0]
up      add r0, r0, #2
        ldrh r3, [r0]
        add r2, r2, r3
        subs r1, #01
        bne up
        mov r0, #0x40000020
        str r2, [r0]
here    b here
        end