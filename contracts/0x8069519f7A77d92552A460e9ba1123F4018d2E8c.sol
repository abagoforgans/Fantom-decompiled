contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function aa(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    s = arg1
    while gas_remaining > 50000:
        mem[mem[64] + 32] = s
        _12 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        call Mask(64, 96, sha3(mem[_12 + 32 len mem[_12]])) >> 96 with:
           value 1 wei
             gas 0 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        continue 
    return 1
}



}
