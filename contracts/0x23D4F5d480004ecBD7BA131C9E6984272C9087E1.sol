contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_86e9cc06(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    idx = 0
    while idx < arg2:
        mem[mem[64] + 4] = arg1
        require ext_code.size(stor0)
        call stor0.0xad2784bf with:
             gas gas_remaining wei
            args arg1
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
