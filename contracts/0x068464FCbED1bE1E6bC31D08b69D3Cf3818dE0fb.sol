contract main {




// =====================  Runtime code  =====================


#
#  - sub_0a902594(?)
#  - _fallback()
#
address owner;
mapping of uint8 stor1;
mapping of address sub_e784837c;

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
    return sub_e784837c[arg1]
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    owner = arg1
}

function sub_26b6b1bb(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    sub_e784837c[address(arg1)] = address(arg2)
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
        _8 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_8] == bool(mem[_8])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
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
    if cd[4] > ext_call.return_data[0]:
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
                _128 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _132 = mem[_128]
                require mem[_128] <= test266151307()
                require _128 + mem[_128] + 31 < _128 + return_data.size
                _136 = mem[_128 + mem[_128]]
                if mem[_128 + mem[_128]] > test266151307():
                    revert with 0, 65
                if _128 + ceil32(return_data.size) + ceil32(32 * mem[_128 + mem[_128]]) + 1 > test266151307() or ceil32(32 * mem[_128 + mem[_128]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _128 + ceil32(return_data.size) + ceil32(32 * mem[_128 + mem[_128]]) + 1
                mem[_128 + ceil32(return_data.size)] = _136
                require return_data.size >= _132 + (32 * _136) + 32
                t = _128 + _132 + 32
                u = _128 + ceil32(return_data.size) + 32
                s = 0
                while s < _136:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if 1 >= _136:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_128 + ceil32(return_data.size) + 64]
                continue 
            mem[mem[64] + 4] = ext_call.return_data[0]
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
            _129 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _133 = mem[_129]
            require mem[_129] <= test266151307()
            require _129 + mem[_129] + 31 < _129 + return_data.size
            _137 = mem[_129 + mem[_129]]
            if mem[_129 + mem[_129]] > test266151307():
                revert with 0, 65
            if _129 + ceil32(return_data.size) + ceil32(32 * mem[_129 + mem[_129]]) + 1 > test266151307() or ceil32(32 * mem[_129 + mem[_129]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _129 + ceil32(return_data.size) + ceil32(32 * mem[_129 + mem[_129]]) + 1
            mem[_129 + ceil32(return_data.size)] = _137
            require return_data.size >= _133 + (32 * _137) + 32
            t = _129 + _133 + 32
            u = _129 + ceil32(return_data.size) + 32
            s = 0
            while s < _137:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if 1 >= _137:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[_129 + ceil32(return_data.size) + 64]
            continue 
        if s < ext_call.return_data[0]:
            revert with 0, 17
        if s - ext_call.return_data[0] <= 3 * 10^16:
            revert with 0, 'blop'
        if s <= ext_call.return_data[0]:
            revert with 0, 'blop'
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
                _148 = mem[64]
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
                mem[_148 + 100] = this.address
                mem[_148 + 132] = 1643723741
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len u + -mem[64] - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _208 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _212 = mem[_208]
                require mem[_208] <= test266151307()
                require _208 + mem[_208] + 31 < _208 + return_data.size
                _216 = mem[_208 + mem[_208]]
                if mem[_208 + mem[_208]] > test266151307():
                    revert with 0, 65
                if _208 + ceil32(return_data.size) + ceil32(32 * mem[_208 + mem[_208]]) + 1 > test266151307() or ceil32(32 * mem[_208 + mem[_208]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _208 + ceil32(return_data.size) + ceil32(32 * mem[_208 + mem[_208]]) + 1
                mem[_208 + ceil32(return_data.size)] = _216
                require return_data.size >= _212 + (32 * _216) + 32
                t = _208 + _212 + 32
                u = _208 + ceil32(return_data.size) + 32
                s = 0
                while s < _216:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if 1 >= _216:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_208 + ceil32(return_data.size) + 64]
                continue 
            _149 = mem[64]
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
            mem[_149 + 100] = this.address
            mem[_149 + 132] = 1643723741
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len u + -mem[64] - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _209 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _213 = mem[_209]
            require mem[_209] <= test266151307()
            require _209 + mem[_209] + 31 < _209 + return_data.size
            _217 = mem[_209 + mem[_209]]
            if mem[_209 + mem[_209]] > test266151307():
                revert with 0, 65
            if _209 + ceil32(return_data.size) + ceil32(32 * mem[_209 + mem[_209]]) + 1 > test266151307() or ceil32(32 * mem[_209 + mem[_209]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _209 + ceil32(return_data.size) + ceil32(32 * mem[_209 + mem[_209]]) + 1
            mem[_209 + ceil32(return_data.size)] = _217
            require return_data.size >= _213 + (32 * _217) + 32
            t = _209 + _213 + 32
            u = _209 + ceil32(return_data.size) + 32
            s = 0
            while s < _217:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if 1 >= _217:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[_209 + ceil32(return_data.size) + 64]
            continue 
        if s <= ext_call.return_data[0]:
            revert with 0, 'blop'
    else:
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
                _130 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _134 = mem[_130]
                require mem[_130] <= test266151307()
                require _130 + mem[_130] + 31 < _130 + return_data.size
                _138 = mem[_130 + mem[_130]]
                if mem[_130 + mem[_130]] > test266151307():
                    revert with 0, 65
                if _130 + ceil32(return_data.size) + ceil32(32 * mem[_130 + mem[_130]]) + 1 > test266151307() or ceil32(32 * mem[_130 + mem[_130]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _130 + ceil32(return_data.size) + ceil32(32 * mem[_130 + mem[_130]]) + 1
                mem[_130 + ceil32(return_data.size)] = _138
                require return_data.size >= _134 + (32 * _138) + 32
                t = _130 + _134 + 32
                u = _130 + ceil32(return_data.size) + 32
                s = 0
                while s < _138:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if 1 >= _138:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_130 + ceil32(return_data.size) + 64]
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
            _131 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _135 = mem[_131]
            require mem[_131] <= test266151307()
            require _131 + mem[_131] + 31 < _131 + return_data.size
            _139 = mem[_131 + mem[_131]]
            if mem[_131 + mem[_131]] > test266151307():
                revert with 0, 65
            if _131 + ceil32(return_data.size) + ceil32(32 * mem[_131 + mem[_131]]) + 1 > test266151307() or ceil32(32 * mem[_131 + mem[_131]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _131 + ceil32(return_data.size) + ceil32(32 * mem[_131 + mem[_131]]) + 1
            mem[_131 + ceil32(return_data.size)] = _139
            require return_data.size >= _135 + (32 * _139) + 32
            t = _131 + _135 + 32
            u = _131 + ceil32(return_data.size) + 32
            s = 0
            while s < _139:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if 1 >= _139:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[_131 + ceil32(return_data.size) + 64]
            continue 
        if s < cd[4]:
            revert with 0, 17
        if s - cd[4] <= 3 * 10^16:
            revert with 0, 'blop'
        if s <= cd[4]:
            revert with 0, 'blop'
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
                _152 = mem[64]
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
                mem[_152 + 100] = this.address
                mem[_152 + 132] = 1643723741
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len u + -mem[64] - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _210 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _214 = mem[_210]
                require mem[_210] <= test266151307()
                require _210 + mem[_210] + 31 < _210 + return_data.size
                _218 = mem[_210 + mem[_210]]
                if mem[_210 + mem[_210]] > test266151307():
                    revert with 0, 65
                if _210 + ceil32(return_data.size) + ceil32(32 * mem[_210 + mem[_210]]) + 1 > test266151307() or ceil32(32 * mem[_210 + mem[_210]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _210 + ceil32(return_data.size) + ceil32(32 * mem[_210 + mem[_210]]) + 1
                mem[_210 + ceil32(return_data.size)] = _218
                require return_data.size >= _214 + (32 * _218) + 32
                t = _210 + _214 + 32
                u = _210 + ceil32(return_data.size) + 32
                s = 0
                while s < _218:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if 1 >= _218:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_210 + ceil32(return_data.size) + 64]
                continue 
            _153 = mem[64]
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
            mem[_153 + 100] = this.address
            mem[_153 + 132] = 1643723741
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len u + -mem[64] - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _211 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _215 = mem[_211]
            require mem[_211] <= test266151307()
            require _211 + mem[_211] + 31 < _211 + return_data.size
            _219 = mem[_211 + mem[_211]]
            if mem[_211 + mem[_211]] > test266151307():
                revert with 0, 65
            if _211 + ceil32(return_data.size) + ceil32(32 * mem[_211 + mem[_211]]) + 1 > test266151307() or ceil32(32 * mem[_211 + mem[_211]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _211 + ceil32(return_data.size) + ceil32(32 * mem[_211 + mem[_211]]) + 1
            mem[_211 + ceil32(return_data.size)] = _219
            require return_data.size >= _215 + (32 * _219) + 32
            t = _211 + _215 + 32
            u = _211 + ceil32(return_data.size) + 32
            s = 0
            while s < _219:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if 1 >= _219:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[_211 + ceil32(return_data.size) + 64]
            continue 
        if s <= cd[4]:
            revert with 0, 'blop'
}



}
