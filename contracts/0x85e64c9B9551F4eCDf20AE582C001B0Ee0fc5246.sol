contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function claim(uint256 arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[96] = 0x7ae1aed800000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor0)
    staticcall stor0.mem[var76003 len 4] with:
            gas gas_remaining wei
           args mem[var76003 + 4 len var76004 - 4]
    mem[var76005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require var80002 - var80001 >= 32
    require var90002 == var90001
    s = var96001
    t = var96007
    while t < s:
        if arg1 > -arg2 - 1:
            revert with 'NH{q', 17
        if t >= arg1 + arg2:
        mem[mem[64] + 4] = t
        require ext_code.size(stor0)
        staticcall stor0.0x5290d68f with:
                gas gas_remaining wei
               args t
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _137 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _138 = mem[_137]
        require mem[_137] == mem[_137]
        mem[mem[64] + 4] = mem[_137]
        require ext_code.size(stor1)
        call stor1.claim(uint256 arg1) with:
             gas gas_remaining wei
            args _138
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if t == -1:
            revert with 'NH{q', 17
        require ext_code.size(stor0)
        staticcall stor0.0x7ae1aed8 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _143 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_143] == mem[_143]
        s = mem[_143]
        t = t + 1
        continue 
}



}
