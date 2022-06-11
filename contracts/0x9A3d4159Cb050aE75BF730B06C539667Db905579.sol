contract main {




// =====================  Runtime code  =====================


address stor1;
address stor2;

function _fallback() payable {
    revert
}

function sub_763d000b(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[96] = 0x7ae1aed800000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor2)
    staticcall stor2.mem[var70003 len 4] with:
            gas gas_remaining wei
           args mem[var70003 + 4 len var70004 - 4]
    mem[var70005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require var74002 - var74001 >= 32
    require var84002 == var84001
    s = var90001
    t = var90007
    while t < s:
        if arg1 > -arg2 - 1:
            revert with 'NH{q', 17
        if t >= arg1 + arg2:
        mem[mem[64] + 4] = t
        require ext_code.size(stor2)
        staticcall stor2.0xd38b576d with:
                gas gas_remaining wei
               args t
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _204 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _205 = mem[_204]
        require mem[_204] == mem[_204]
        if not mem[_204]:
            if t == -1:
                revert with 'NH{q', 17
            require ext_code.size(stor2)
            staticcall stor2.0x7ae1aed8 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _211 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_211] == mem[_211]
            s = mem[_211]
            t = t + 1
            continue 
        mem[mem[64] + 4] = mem[_204]
        require ext_code.size(stor1)
        call stor1.0xce0a32ce with:
             gas gas_remaining wei
            args _205
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _210 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_210] == bool(mem[_210])
        if t == -1:
            revert with 'NH{q', 17
        require ext_code.size(stor2)
        staticcall stor2.0x7ae1aed8 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _216 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_216] == mem[_216]
        s = mem[_216]
        t = t + 1
        continue 
}



}
