contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;

function getOwner() {
    return owner
}

function whitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
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

function addAddressToWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if stor1[address(arg1)]:
        return 0
    stor1[address(arg1)] = 1
    return 1
}

function removeAddressFromWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if not stor1[address(arg1)]:
        return 0
    stor1[address(arg1)] = 0
    return 1
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

function sub_123107d5(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(address(arg1))
    call address(arg1).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approveToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require stor1[msg.sender]
    require ext_code.size(arg2)
    call arg2.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), 2777777777777775 * 10^13 * 24 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function addAddressesToWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    idx = 0
    s = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if owner != msg.sender:
            revert with 0, 'Caller is not owner'
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 1
        if stor1[address(cd[((32 * idx) + arg1 + 36)])]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 1
        stor1[address(cd[((32 * idx) + arg1 + 36)])] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = 1
        continue 
    return bool(s)
}

function removeAddressesFromWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    idx = 0
    s = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if owner != msg.sender:
            revert with 0, 'Caller is not owner'
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 1
        if not stor1[address(cd[((32 * idx) + arg1 + 36)])]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 1
        stor1[address(cd[((32 * idx) + arg1 + 36)])] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = 1
        continue 
    return bool(s)
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
    mem[0] = msg.sender
    mem[32] = 1
    require stor1[msg.sender]
    idx = 0
    s = 0
    while idx < ('cd', 68).length:
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 67
        require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)])
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        if idx:
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]
            s = 0
            t = cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68
            u = mem[64] + 100
            while s < cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]:
                require cd[t] == address(cd[t])
                mem[u] = address(cd[t])
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len u + -mem[64] - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _60 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _62 = mem[_60]
            require mem[_60] <= test266151307()
            require _60 + mem[_60] + 31 < _60 + return_data.size
            _64 = mem[_60 + mem[_60]]
            if mem[_60 + mem[_60]] > test266151307():
                revert with 'NH{q', 65
            if _60 + ceil32(return_data.size) + floor32(mem[_60 + mem[_60]]) + 1 > test266151307() or floor32(mem[_60 + mem[_60]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _60 + ceil32(return_data.size) + floor32(mem[_60 + mem[_60]]) + 1
            mem[_60 + ceil32(return_data.size)] = _64
            require return_data.size >= _62 + (32 * _64) + 32
            t = _60 + _62 + 32
            u = _60 + ceil32(return_data.size) + 32
            s = 0
            while s < _64:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if 1 >= _64:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[_60 + ceil32(return_data.size) + 64]
            continue 
        mem[mem[64] + 4] = cd[4]
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]
        s = 0
        t = cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68
        u = mem[64] + 100
        while s < cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]:
            require cd[t] == address(cd[t])
            mem[u] = address(cd[t])
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
        staticcall address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len u + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _61 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _63 = mem[_61]
        require mem[_61] <= test266151307()
        require _61 + mem[_61] + 31 < _61 + return_data.size
        _65 = mem[_61 + mem[_61]]
        if mem[_61 + mem[_61]] > test266151307():
            revert with 'NH{q', 65
        if _61 + ceil32(return_data.size) + floor32(mem[_61 + mem[_61]]) + 1 > test266151307() or floor32(mem[_61 + mem[_61]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _61 + ceil32(return_data.size) + floor32(mem[_61 + mem[_61]]) + 1
        mem[_61 + ceil32(return_data.size)] = _65
        require return_data.size >= _63 + (32 * _65) + 32
        t = _61 + _63 + 32
        u = _61 + ceil32(return_data.size) + 32
        s = 0
        while s < _65:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if 1 >= _65:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[_61 + ceil32(return_data.size) + 64]
        continue 
    emit Boolean((s > cd[4]));
    mem[mem[64]] = s
    emit Result(s);
    idx = 0
    s = 0
    while idx < ('cd', 68).length:
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 67
        require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)])
        if idx:
            _70 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]
            s = 0
            t = cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68
            u = mem[64] + 196
            while s < cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]:
                require cd[t] == address(cd[t])
                mem[u] = address(cd[t])
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_70 + 100] = this.address
            mem[_70 + 132] = 1643723741
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len u + -mem[64] - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _100 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _102 = mem[_100]
            require mem[_100] <= test266151307()
            require _100 + mem[_100] + 31 < _100 + return_data.size
            _104 = mem[_100 + mem[_100]]
            if mem[_100 + mem[_100]] > test266151307():
                revert with 'NH{q', 65
            if _100 + ceil32(return_data.size) + floor32(mem[_100 + mem[_100]]) + 1 > test266151307() or floor32(mem[_100 + mem[_100]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _100 + ceil32(return_data.size) + floor32(mem[_100 + mem[_100]]) + 1
            mem[_100 + ceil32(return_data.size)] = _104
            require return_data.size >= _102 + (32 * _104) + 32
            t = _100 + _102 + 32
            u = _100 + ceil32(return_data.size) + 32
            s = 0
            while s < _104:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if 1 >= _104:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[_100 + ceil32(return_data.size) + 64]
            continue 
        _71 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[4]
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]
        s = 0
        t = cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68
        u = mem[64] + 196
        while s < cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]:
            require cd[t] == address(cd[t])
            mem[u] = address(cd[t])
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_71 + 100] = this.address
        mem[_71 + 132] = 1643723741
        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len u + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _101 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _103 = mem[_101]
        require mem[_101] <= test266151307()
        require _101 + mem[_101] + 31 < _101 + return_data.size
        _105 = mem[_101 + mem[_101]]
        if mem[_101 + mem[_101]] > test266151307():
            revert with 'NH{q', 65
        if _101 + ceil32(return_data.size) + floor32(mem[_101 + mem[_101]]) + 1 > test266151307() or floor32(mem[_101 + mem[_101]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _101 + ceil32(return_data.size) + floor32(mem[_101 + mem[_101]]) + 1
        mem[_101 + ceil32(return_data.size)] = _105
        require return_data.size >= _103 + (32 * _105) + 32
        t = _101 + _103 + 32
        u = _101 + ceil32(return_data.size) + 32
        s = 0
        while s < _105:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if 1 >= _105:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[_101 + ceil32(return_data.size) + 64]
        continue 
    emit Boolean((s > cd[4]));
    emit Result(s);
}



}
