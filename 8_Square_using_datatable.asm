area square, code, readonly
entry
ldr r0, datatable
ladr r1, value
cmp r1, #1
beq loop1
add r0, r0, #4
subs r1, r1, #1
cmp r1, #1
bne loop2
ldr r2, [r0]
b here

area datatable, data, readonly
dcd 0x00000001
dcd 0x00000004
dcd 0x00000009
dcd 0x00000016
dcd 0x00000025
dcd 0x00000036
dcd 0x00000049
dcd 0x00000064
dcd 0x00000081
dcd 0x00000100
dcd 5
align
dcd 0
end