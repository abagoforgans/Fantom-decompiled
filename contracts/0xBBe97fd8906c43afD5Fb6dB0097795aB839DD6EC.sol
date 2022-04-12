contract main {




// =====================  Runtime code  =====================


address owner;

function getOwner() {
    return owner
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    owner = arg1
}

function sub_109b6c88(?) payable {
    call owner with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
}

function sub_2a5d3b51(?) {
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approveToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(arg2)
    call arg2.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), 2777777777777775 * 10^13 * 24 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_ee74a541(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_cbac1eff(?) {
    require calldata.size - 4 >= 96
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 36).length) + 97 < 96 or floor32(('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require calldata.size > cd[68] + 35
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 68).length) + 98 < 97 or floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98
    mem[floor32(('cd', 36).length) + 97] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        require cd[68] + cd[s] + 67 < calldata.size
        if cd[(cd[68] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _51 = mem[64]
        if mem[64] + floor32(cd[(cd[68] + cd[s] + 36)]) + 1 < mem[64] or mem[64] + floor32(cd[(cd[68] + cd[s] + 36)]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + floor32(cd[(cd[68] + cd[s] + 36)]) + 1
        mem[_51] = cd[(cd[68] + cd[s] + 36)]
        require calldata.size >= cd[68] + cd[s] + (32 * cd[(cd[68] + cd[s] + 36)]) + 68
        u = 0
        v = cd[68] + cd[s] + 68
        w = _51 + 32
        while u < cd[(cd[68] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _51
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    _46 = mem[floor32(('cd', 36).length) + 97]
    idx = 0
    s = 0
    while idx < _46:
        if idx >= mem[96]:
            revert with 0, 50
        if idx:
            _70 = mem[(32 * idx) + 128]
            if idx >= mem[floor32(('cd', 36).length) + 97]:
                revert with 0, 50
            _75 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
            _76 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _79 = mem[_75]
            mem[mem[64] + 164] = mem[_75]
            s = 0
            t = mem[64] + 196
            u = _75 + 32
            while s < _79:
                mem[t] = mem[u + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_76 + 100] = this.address
            mem[_76 + 132] = 1643723741
            require ext_code.size(address(_70))
            call address(_70).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _76 + (32 * _79) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _103 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _105 = mem[_103]
            require mem[_103] <= test266151307()
            require _103 + return_data.size > _103 + mem[_103] + 31
            _107 = mem[_103 + mem[_103]]
            if mem[_103 + mem[_103]] > test266151307():
                revert with 0, 65
            if floor32(mem[_103 + mem[_103]]) + 1 < 0 or _103 + ceil32(return_data.size) + floor32(mem[_103 + mem[_103]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _103 + ceil32(return_data.size) + floor32(mem[_103 + mem[_103]]) + 1
            mem[_103 + ceil32(return_data.size)] = _107
            require return_data.size >= _105 + (32 * _107) + 32
            t = _103 + _105 + 32
            u = _103 + ceil32(return_data.size) + 32
            s = 0
            while s < _107:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if 1 >= _107:
                revert with 0, 50
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[_103 + ceil32(return_data.size) + 64]
            continue 
        _72 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(('cd', 36).length) + 97]:
            revert with 0, 50
        _77 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
        _78 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[4]
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _80 = mem[_77]
        mem[mem[64] + 164] = mem[_77]
        s = 0
        t = mem[64] + 196
        u = _77 + 32
        while s < _80:
            mem[t] = mem[u + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_78 + 100] = this.address
        mem[_78 + 132] = 1643723741
        require ext_code.size(address(_72))
        call address(_72).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _78 + (32 * _80) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _104 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _106 = mem[_104]
        require mem[_104] <= test266151307()
        require _104 + return_data.size > _104 + mem[_104] + 31
        _108 = mem[_104 + mem[_104]]
        if mem[_104 + mem[_104]] > test266151307():
            revert with 0, 65
        if floor32(mem[_104 + mem[_104]]) + 1 < 0 or _104 + ceil32(return_data.size) + floor32(mem[_104 + mem[_104]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _104 + ceil32(return_data.size) + floor32(mem[_104 + mem[_104]]) + 1
        mem[_104 + ceil32(return_data.size)] = _108
        require return_data.size >= _106 + (32 * _108) + 32
        t = _104 + _106 + 32
        u = _104 + ceil32(return_data.size) + 32
        s = 0
        while s < _108:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if 1 >= _108:
            revert with 0, 50
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = mem[_104 + ceil32(return_data.size) + 64]
        continue 
    if s <= cd[4]:
        revert with 0, 'blop'
}



}
