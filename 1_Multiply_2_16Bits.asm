        area multiply, code, readonly
        entry
        mov r1, #0x64000
        mov r2, #0x32000
        mul r0, r1,r2
here    b here
        end