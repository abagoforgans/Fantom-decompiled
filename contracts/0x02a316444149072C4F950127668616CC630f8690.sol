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
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_cbac1eff(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    idx = 0
    s = 0
    while idx < ('cd', 68).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 68).length:
            revert with 0, 50
        require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 67
        require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)])
        if idx:
            _16 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]
            s = 0
            t = mem[64] + 196
            u = cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68
            while s < cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]:
                require cd[u] == address(cd[u])
                mem[t] = address(cd[u])
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_16 + 100] = this.address
            mem[_16 + 132] = 1643723741
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len t + -mem[64] - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _36 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _38 = mem[_36]
            require mem[_36] <= test266151307()
            require _36 + mem[_36] + 31 < _36 + return_data.size
            _40 = mem[_36 + mem[_36]]
            if mem[_36 + mem[_36]] > test266151307():
                revert with 0, 65
            if _36 + ceil32(return_data.size) + floor32(mem[_36 + mem[_36]]) + 1 > test266151307() or floor32(mem[_36 + mem[_36]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _36 + ceil32(return_data.size) + floor32(mem[_36 + mem[_36]]) + 1
            mem[_36 + ceil32(return_data.size)] = _40
            require return_data.size >= _38 + (32 * _40) + 32
            t = _36 + _38 + 32
            u = _36 + ceil32(return_data.size) + 32
            s = 0
            while s < _40:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if 1 >= _40:
                revert with 0, 50
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[_36 + ceil32(return_data.size) + 64]
            continue 
        _17 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[4]
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]
        s = 0
        t = mem[64] + 196
        u = cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68
        while s < cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]:
            require cd[u] == address(cd[u])
            mem[t] = address(cd[u])
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_17 + 100] = this.address
        mem[_17 + 132] = 1643723741
        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len t + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _37 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _39 = mem[_37]
        require mem[_37] <= test266151307()
        require _37 + mem[_37] + 31 < _37 + return_data.size
        _41 = mem[_37 + mem[_37]]
        if mem[_37 + mem[_37]] > test266151307():
            revert with 0, 65
        if _37 + ceil32(return_data.size) + floor32(mem[_37 + mem[_37]]) + 1 > test266151307() or floor32(mem[_37 + mem[_37]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _37 + ceil32(return_data.size) + floor32(mem[_37 + mem[_37]]) + 1
        mem[_37 + ceil32(return_data.size)] = _41
        require return_data.size >= _39 + (32 * _41) + 32
        t = _37 + _39 + 32
        u = _37 + ceil32(return_data.size) + 32
        s = 0
        while s < _41:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if 1 >= _41:
            revert with 0, 50
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = mem[_37 + ceil32(return_data.size) + 64]
        continue 
    if s <= cd[4]:
        revert with 0, 'blop'
}



}
