            area ascending, code, readonly
            entry
            mov r0, #05
outerloop   mov r5, #0x40000000
            add r6, r5, #4
            mov r3, r4
            ldr r1, [r5]
innerloop   ldr r2, [r6]
            cmp r1, r2
            blo loop3
            mov r4, r2
            mov r2, r1
            mov r1, r4
loop3       str r1, [r5]
            str r2, [r6]
            adr r5, r5, #04
            subs r3, r3, #01
            bne innerloop
            subs r0, r0, #1
            bne outerloop
stop        b stop
            end