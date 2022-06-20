contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;

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

function sub_fbc44476(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    mem[96] = 0x7ae1aed800000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor1)
    staticcall stor1.mem[var177003 len 4] with:
            gas gas_remaining wei
           args mem[var177003 + 4 len var177004 - 4]
    mem[var177005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require var181002 - var181001 >= 32
    require var191002 == var191001
    s = var197001
    t = var197007
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
        _319 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _320 = mem[_319]
        require mem[_319] == mem[_319]
        require ext_code.size(stor0)
        call stor0.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), mem[_319]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = mem[_319]
        mem[mem[64] + 36] = 2596298
        mem[mem[64] + 68] = arg3
        require ext_code.size(stor2)
        call stor2.approve(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args _320, 2596298, arg3
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _325 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_325] == bool(mem[_325])
        require ext_code.size(stor3)
        call stor3.wrap(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args _320, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = arg3
        require ext_code.size(stor3)
        call stor3.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), arg3
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _331 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_331] == bool(mem[_331])
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg3
        require ext_code.size(stor3)
        call stor3.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg3
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _335 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_335] == bool(mem[_335])
        if t == -1:
            revert with 'NH{q', 17
        require ext_code.size(stor1)
        staticcall stor1.0x7ae1aed8 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _339 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_339] == mem[_339]
        s = mem[_339]
        t = t + 1
        continue 
}



}
