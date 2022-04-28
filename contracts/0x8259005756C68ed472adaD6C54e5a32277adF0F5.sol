contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;

function getOwner() {
    return owner
}

function whitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function sub_e784837c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor2[arg1])
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    owner = arg1
}

function sub_7ae13a3c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor2[address(arg1)] = 1
    return 1
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
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 1
        stor1[address(cd[((32 * idx) + arg1 + 36)])] = 1
        if idx == -1:
            revert with 0, 17
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
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 1
        stor1[address(cd[((32 * idx) + arg1 + 36)])] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = 1
        continue 
    return bool(s)
}

function sub_73d930c0(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 1
    require stor1[msg.sender]
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64] + 4] = address(cd[4])
        mem[mem[64] + 36] = 2777777777777775 * 10^13 * 24 * 3600
        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
        call address(cd[((32 * idx) + cd[36] + 36)]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(cd[4]), 2777777777777775 * 10^13 * 24 * 3600
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _16 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_16] == bool(mem[_16])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = address(cd[4])
    mem[mem[64] + 36] = 2777777777777775 * 10^13 * 24 * 3600
    require ext_code.size(0xe1c8f3d529bea8e3fa1fac5b416335a2f998ee1c)
    call 0xe1c8f3d529bea8e3fa1fac5b416335a2f998ee1c.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(cd[4]), 2777777777777775 * 10^13 * 24 * 3600
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _12 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_12] == bool(mem[_12])
}

function sub_cbac1eff(?) {
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
    mem[100] = this.address
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
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
            _79 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _81 = mem[_79]
            require mem[_79] <= test266151307()
            require _79 + mem[_79] + 31 < _79 + return_data.size
            _83 = mem[_79 + mem[_79]]
            if mem[_79 + mem[_79]] > test266151307():
                revert with 0, 65
            if _79 + ceil32(return_data.size) + ceil32(32 * mem[_79 + mem[_79]]) + 1 > test266151307() or ceil32(32 * mem[_79 + mem[_79]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _79 + ceil32(return_data.size) + ceil32(32 * mem[_79 + mem[_79]]) + 1
            mem[_79 + ceil32(return_data.size)] = _83
            require return_data.size >= _81 + (32 * _83) + 32
            t = _79 + _81 + 32
            u = _79 + ceil32(return_data.size) + 32
            s = 0
            while s < _83:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if 1 >= _83:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[_79 + ceil32(return_data.size) + 64]
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
        _80 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _82 = mem[_80]
        require mem[_80] <= test266151307()
        require _80 + mem[_80] + 31 < _80 + return_data.size
        _84 = mem[_80 + mem[_80]]
        if mem[_80 + mem[_80]] > test266151307():
            revert with 0, 65
        if _80 + ceil32(return_data.size) + ceil32(32 * mem[_80 + mem[_80]]) + 1 > test266151307() or ceil32(32 * mem[_80 + mem[_80]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _80 + ceil32(return_data.size) + ceil32(32 * mem[_80 + mem[_80]]) + 1
        mem[_80 + ceil32(return_data.size)] = _84
        require return_data.size >= _82 + (32 * _84) + 32
        t = _80 + _82 + 32
        u = _80 + ceil32(return_data.size) + 32
        s = 0
        while s < _84:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if 1 >= _84:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = mem[_80 + ceil32(return_data.size) + 64]
        continue 
    if s <= cd[4]:
        revert with 0, 'blop'
    if s < cd[4]:
        revert with 0, 17
    if s - cd[4] <= 3 * 10^16:
        revert with 0, 'blop'
    if cd[4] > ext_call.return_data[0]:
        idx = 0
        t = s
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
                _89 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = t
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
                mem[_89 + 100] = this.address
                mem[_89 + 132] = 1643723741
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len u + -mem[64] - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _139 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _143 = mem[_139]
                require mem[_139] <= test266151307()
                require _139 + mem[_139] + 31 < _139 + return_data.size
                _147 = mem[_139 + mem[_139]]
                if mem[_139 + mem[_139]] > test266151307():
                    revert with 0, 65
                if _139 + ceil32(return_data.size) + ceil32(32 * mem[_139 + mem[_139]]) + 1 > test266151307() or ceil32(32 * mem[_139 + mem[_139]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _139 + ceil32(return_data.size) + ceil32(32 * mem[_139 + mem[_139]]) + 1
                mem[_139 + ceil32(return_data.size)] = _147
                require return_data.size >= _143 + (32 * _147) + 32
                t = _139 + _143 + 32
                u = _139 + ceil32(return_data.size) + 32
                s = 0
                while s < _147:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if 1 >= _147:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = mem[_139 + ceil32(return_data.size) + 64]
                continue 
            _90 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = ext_call.return_data[0]
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
            mem[_90 + 100] = this.address
            mem[_90 + 132] = 1643723741
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len u + -mem[64] - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _140 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _144 = mem[_140]
            require mem[_140] <= test266151307()
            require _140 + mem[_140] + 31 < _140 + return_data.size
            _148 = mem[_140 + mem[_140]]
            if mem[_140 + mem[_140]] > test266151307():
                revert with 0, 65
            if _140 + ceil32(return_data.size) + ceil32(32 * mem[_140 + mem[_140]]) + 1 > test266151307() or ceil32(32 * mem[_140 + mem[_140]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _140 + ceil32(return_data.size) + ceil32(32 * mem[_140 + mem[_140]]) + 1
            mem[_140 + ceil32(return_data.size)] = _148
            require return_data.size >= _144 + (32 * _148) + 32
            t = _140 + _144 + 32
            u = _140 + ceil32(return_data.size) + 32
            s = 0
            while s < _148:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if 1 >= _148:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = mem[_140 + ceil32(return_data.size) + 64]
            continue 
    else:
        idx = 0
        t = s
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
                _91 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = t
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
                mem[_91 + 100] = this.address
                mem[_91 + 132] = 1643723741
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len u + -mem[64] - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _141 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _145 = mem[_141]
                require mem[_141] <= test266151307()
                require _141 + mem[_141] + 31 < _141 + return_data.size
                _149 = mem[_141 + mem[_141]]
                if mem[_141 + mem[_141]] > test266151307():
                    revert with 0, 65
                if _141 + ceil32(return_data.size) + ceil32(32 * mem[_141 + mem[_141]]) + 1 > test266151307() or ceil32(32 * mem[_141 + mem[_141]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _141 + ceil32(return_data.size) + ceil32(32 * mem[_141 + mem[_141]]) + 1
                mem[_141 + ceil32(return_data.size)] = _149
                require return_data.size >= _145 + (32 * _149) + 32
                t = _141 + _145 + 32
                u = _141 + ceil32(return_data.size) + 32
                s = 0
                while s < _149:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if 1 >= _149:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = mem[_141 + ceil32(return_data.size) + 64]
                continue 
            _92 = mem[64]
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
            mem[_92 + 100] = this.address
            mem[_92 + 132] = 1643723741
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len u + -mem[64] - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _142 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _146 = mem[_142]
            require mem[_142] <= test266151307()
            require _142 + mem[_142] + 31 < _142 + return_data.size
            _150 = mem[_142 + mem[_142]]
            if mem[_142 + mem[_142]] > test266151307():
                revert with 0, 65
            if _142 + ceil32(return_data.size) + ceil32(32 * mem[_142 + mem[_142]]) + 1 > test266151307() or ceil32(32 * mem[_142 + mem[_142]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _142 + ceil32(return_data.size) + ceil32(32 * mem[_142 + mem[_142]]) + 1
            mem[_142 + ceil32(return_data.size)] = _150
            require return_data.size >= _146 + (32 * _150) + 32
            t = _142 + _146 + 32
            u = _142 + ceil32(return_data.size) + 32
            s = 0
            while s < _150:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if 1 >= _150:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = mem[_142 + ceil32(return_data.size) + 64]
            continue 
}

function _fallback() payable {
    mem[64] = 128
    if calldata.size < 4:
        require not calldata.size
        emit Received(msg.sender, msg.value);
    else:
        if unknown_0x7ae13a3c(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x24953eaa(?????) > uint32(call.func_hash) >> 224:
                if approveToken(address rg1, address rg2) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require cd[36] == address(cd[36])
                    require stor1[msg.sender]
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(cd[4]), 2777777777777775 * 10^13 * 24 * 3600
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x123107d5(?????):
                        require unknown_0x13af4035(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Caller is not owner'
                        owner = address(cd[4])
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Caller is not owner'
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args owner, cd[36]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if unknown_0x24953eaa(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    require ('cd', 4).length <= test266151307()
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    if owner != msg.sender:
                        revert with 0, 'Caller is not owner'
                    idx = 0
                    s = 0
                    while idx < ('cd', 4).length:
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        if owner != msg.sender:
                            revert with 0, 'Caller is not owner'
                        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[32] = 1
                        if not stor1[address(cd[((32 * idx) + cd[4] + 36)])]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[32] = 1
                        stor1[address(cd[((32 * idx) + cd[4] + 36)])] = 0
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 1
                        continue 
                    return bool(s)
                if unknown_0x286dd3f5(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Caller is not owner'
                    if not stor1[address(cd[4])]:
                        return 0
                    stor1[address(cd[4])] = 0
                    return 1
                if unknown_0x2a5d3b51(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Caller is not owner'
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require unknown_0x73d930c0(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require cd[36] <= test266151307()
                    require cd[36] + 35 < calldata.size
                    require ('cd', 36).length <= test266151307()
                    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                    mem[0] = msg.sender
                    mem[32] = 1
                    require stor1[msg.sender]
                    idx = 0
                    while idx < ('cd', 36).length:
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[4])
                        mem[mem[64] + 36] = 2777777777777775 * 10^13 * 24 * 3600
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(cd[4]), 2777777777777775 * 10^13 * 24 * 3600
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _125 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_125] == bool(mem[_125])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[mem[64] + 4] = address(cd[4])
                    mem[mem[64] + 36] = 2777777777777775 * 10^13 * 24 * 3600
                    require ext_code.size(0xe1c8f3d529bea8e3fa1fac5b416335a2f998ee1c)
                    call 0xe1c8f3d529bea8e3fa1fac5b416335a2f998ee1c.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(cd[4]), 2777777777777775 * 10^13 * 24 * 3600
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _114 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_114] == bool(mem[_114])
        else:
            if unknown_0x9b19251a(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x7ae13a3c(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Caller is not owner'
                    stor2[address(cd[4])] = 1
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x7b9417c8(?????):
                        require unknown_0x893d20e8(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return owner
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Caller is not owner'
                    if stor1[address(cd[4])]:
                        return 0
                    stor1[address(cd[4])] = 1
                return 1
            if unknown_0x9b19251a(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                return bool(stor1[cd[4]])
            if uint32(call.func_hash) >> 224 != unknown_0xcbac1eff(?????):
                if uint32(call.func_hash) >> 224 != unknown_0xe2ec6ec3(?????):
                    require unknown_0xe784837c(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return bool(stor2[cd[4]])
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                require ('cd', 4).length <= test266151307()
                require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                if owner != msg.sender:
                    revert with 0, 'Caller is not owner'
                idx = 0
                s = 0
                while idx < ('cd', 4).length:
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    if owner != msg.sender:
                        revert with 0, 'Caller is not owner'
                    mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 1
                    if stor1[address(cd[((32 * idx) + cd[4] + 36)])]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 1
                    stor1[address(cd[((32 * idx) + cd[4] + 36)])] = 1
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 1
                    continue 
                return bool(s)
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
            mem[132] = this.address
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 128
            require return_data.size >= 32
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
                    _171 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _173 = mem[_171]
                    require mem[_171] <= test266151307()
                    require _171 + mem[_171] + 31 < _171 + return_data.size
                    _175 = mem[_171 + mem[_171]]
                    if mem[_171 + mem[_171]] > test266151307():
                        revert with 0, 65
                    if _171 + ceil32(return_data.size) + ceil32(32 * mem[_171 + mem[_171]]) + 1 > test266151307() or ceil32(32 * mem[_171 + mem[_171]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _171 + ceil32(return_data.size) + ceil32(32 * mem[_171 + mem[_171]]) + 1
                    mem[_171 + ceil32(return_data.size)] = _175
                    require return_data.size >= _173 + (32 * _175) + 32
                    t = _171 + _173 + 32
                    u = _171 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _175:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if 1 >= _175:
                        revert with 'NH{q', 50
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_171 + ceil32(return_data.size) + 64]
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
                _172 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _174 = mem[_172]
                require mem[_172] <= test266151307()
                require _172 + mem[_172] + 31 < _172 + return_data.size
                _176 = mem[_172 + mem[_172]]
                if mem[_172 + mem[_172]] > test266151307():
                    revert with 0, 65
                if _172 + ceil32(return_data.size) + ceil32(32 * mem[_172 + mem[_172]]) + 1 > test266151307() or ceil32(32 * mem[_172 + mem[_172]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _172 + ceil32(return_data.size) + ceil32(32 * mem[_172 + mem[_172]]) + 1
                mem[_172 + ceil32(return_data.size)] = _176
                require return_data.size >= _174 + (32 * _176) + 32
                t = _172 + _174 + 32
                u = _172 + ceil32(return_data.size) + 32
                s = 0
                while s < _176:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if 1 >= _176:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_172 + ceil32(return_data.size) + 64]
                continue 
            if s <= cd[4]:
                revert with 0, 'blop'
            if s < cd[4]:
                revert with 0, 17
            if s - cd[4] <= 3 * 10^16:
                revert with 0, 'blop'
            if cd[4] > ext_call.return_data[0]:
                idx = 0
                t = s
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
                        _181 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = t
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
                        mem[_181 + 100] = this.address
                        mem[_181 + 132] = 1643723741
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len u + -mem[64] - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _231 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _235 = mem[_231]
                        require mem[_231] <= test266151307()
                        require _231 + mem[_231] + 31 < _231 + return_data.size
                        _239 = mem[_231 + mem[_231]]
                        if mem[_231 + mem[_231]] > test266151307():
                            revert with 0, 65
                        if _231 + ceil32(return_data.size) + ceil32(32 * mem[_231 + mem[_231]]) + 1 > test266151307() or ceil32(32 * mem[_231 + mem[_231]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _231 + ceil32(return_data.size) + ceil32(32 * mem[_231 + mem[_231]]) + 1
                        mem[_231 + ceil32(return_data.size)] = _239
                        require return_data.size >= _235 + (32 * _239) + 32
                        t = _231 + _235 + 32
                        u = _231 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _239:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        if 1 >= _239:
                            revert with 'NH{q', 50
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = mem[_231 + ceil32(return_data.size) + 64]
                        continue 
                    _182 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0]
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
                    mem[_182 + 100] = this.address
                    mem[_182 + 132] = 1643723741
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len u + -mem[64] - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _232 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _236 = mem[_232]
                    require mem[_232] <= test266151307()
                    require _232 + mem[_232] + 31 < _232 + return_data.size
                    _240 = mem[_232 + mem[_232]]
                    if mem[_232 + mem[_232]] > test266151307():
                        revert with 0, 65
                    if _232 + ceil32(return_data.size) + ceil32(32 * mem[_232 + mem[_232]]) + 1 > test266151307() or ceil32(32 * mem[_232 + mem[_232]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _232 + ceil32(return_data.size) + ceil32(32 * mem[_232 + mem[_232]]) + 1
                    mem[_232 + ceil32(return_data.size)] = _240
                    require return_data.size >= _236 + (32 * _240) + 32
                    t = _232 + _236 + 32
                    u = _232 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _240:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if 1 >= _240:
                        revert with 'NH{q', 50
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = mem[_232 + ceil32(return_data.size) + 64]
                    continue 
            else:
                idx = 0
                t = s
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
                        _183 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = t
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
                        mem[_183 + 100] = this.address
                        mem[_183 + 132] = 1643723741
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len u + -mem[64] - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _233 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _237 = mem[_233]
                        require mem[_233] <= test266151307()
                        require _233 + mem[_233] + 31 < _233 + return_data.size
                        _241 = mem[_233 + mem[_233]]
                        if mem[_233 + mem[_233]] > test266151307():
                            revert with 0, 65
                        if _233 + ceil32(return_data.size) + ceil32(32 * mem[_233 + mem[_233]]) + 1 > test266151307() or ceil32(32 * mem[_233 + mem[_233]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _233 + ceil32(return_data.size) + ceil32(32 * mem[_233 + mem[_233]]) + 1
                        mem[_233 + ceil32(return_data.size)] = _241
                        require return_data.size >= _237 + (32 * _241) + 32
                        t = _233 + _237 + 32
                        u = _233 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _241:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        if 1 >= _241:
                            revert with 'NH{q', 50
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = mem[_233 + ceil32(return_data.size) + 64]
                        continue 
                    _184 = mem[64]
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
                    mem[_184 + 100] = this.address
                    mem[_184 + 132] = 1643723741
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len u + -mem[64] - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _234 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _238 = mem[_234]
                    require mem[_234] <= test266151307()
                    require _234 + mem[_234] + 31 < _234 + return_data.size
                    _242 = mem[_234 + mem[_234]]
                    if mem[_234 + mem[_234]] > test266151307():
                        revert with 0, 65
                    if _234 + ceil32(return_data.size) + ceil32(32 * mem[_234 + mem[_234]]) + 1 > test266151307() or ceil32(32 * mem[_234 + mem[_234]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _234 + ceil32(return_data.size) + ceil32(32 * mem[_234 + mem[_234]]) + 1
                    mem[_234 + ceil32(return_data.size)] = _242
                    require return_data.size >= _238 + (32 * _242) + 32
                    t = _234 + _238 + 32
                    u = _234 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _242:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if 1 >= _242:
                        revert with 'NH{q', 50
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = mem[_234 + ceil32(return_data.size) + 64]
                    continue 
}



}
