contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    revert
}

function claim(uint256 arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[96] = 0x7ae1aed800000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor1)
    staticcall stor1.mem[var90003 len 4] with:
            gas gas_remaining wei
           args mem[var90003 + 4 len var90004 - 4]
    mem[var90005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require var94002 - var94001 >= 32
    require var104002 == var104001
    s = var110001
    t = var110007
    while t < s:
        if arg1 > -arg2 - 1:
            revert with 'NH{q', 17
        if t >= arg1 + arg2:
        mem[mem[64] + 4] = t
        require ext_code.size(stor1)
        staticcall stor1.0x5290d68f with:
                gas gas_remaining wei
               args t
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _163 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _164 = mem[_163]
        require mem[_163] == mem[_163]
        mem[mem[64] + 36] = mem[_163]
        require ext_code.size(stor0)
        call stor0.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), _164
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = _164
        require ext_code.size(stor2)
        call stor2.claim(uint256 arg1) with:
             gas gas_remaining wei
            args _164
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if t == -1:
            revert with 'NH{q', 17
        require ext_code.size(stor1)
        staticcall stor1.0x7ae1aed8 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _171 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_171] == mem[_171]
        s = mem[_171]
        t = t + 1
        continue 
}



}
