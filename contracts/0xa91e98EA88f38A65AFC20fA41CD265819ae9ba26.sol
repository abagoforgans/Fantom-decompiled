contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function transfer(uint256 arg1, uint256[] arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    while idx < arg2.length:
        mem[mem[64] + 4] = cd[((32 * idx) + arg2 + 36)]
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = 100
        require ext_code.size(stor0)
        call stor0.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args cd[((32 * idx) + arg2 + 36)], arg1, 100
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _7 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_7] == bool(mem[_7])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
