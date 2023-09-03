        area intsum, code, readonly
        entry
        mov r1, #10
        mov r2, #10
loop    add r2, r2,r1
        subs r1, #0x01
        bne loop
here    b here        
        end