contract main {




// =====================  Runtime code  =====================


#
#  - create(address arg1, string arg2, string arg3, uint8 arg4)
#
function getTotalTokens() payable {
    return stor0.length
}

function _fallback() payable {
    revert
}

function getTokens(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 < arg1:
        revert with 0, 'OUT_OF_BOUNDS'
    if arg2 - arg1 > stor0.length:
        revert with 0, 'OUT_OF_BOUNDS'
    require arg2 - arg1 <= test266151307()
    mem[96] = arg2 - arg1
    mem[64] = (32 * arg2 - arg1) + 128
    if arg2 - arg1:
        mem[128 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
    idx = 0
    while idx < mem[96]:
        if arg1 + idx >= stor0.length:
            revert with 0, 32, 7, 'BAL#0' + 3223552 << 200
        mem[0] = 0
        require idx < mem[96]
        mem[(32 * idx) + 128] = stor[('name', 'stor0', 0) + arg1 + idx]
        idx = idx + 1
        continue 
    mem[(32 * arg2 - arg1) + 128] = 32
    mem[(32 * arg2 - arg1) + 160] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < mem[96]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (32 * arg2 - arg1) + (32 * mem[96]) + -mem[64] + 192
}



}
