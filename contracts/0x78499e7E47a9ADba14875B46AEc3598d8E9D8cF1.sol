contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of address sub_9518332e;

function getOwner() {
    return owner
}

function sub_9518332e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_9518332e[arg1]
}

function whitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
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
    stor1[address(arg1)] = 1
}

function removeAddressFromWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor1[address(arg1)] = 0
}

function sub_24336c7f(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    sub_9518332e[address(arg1)] = address(arg2)
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
    require stor1[msg.sender]
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
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
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if owner != msg.sender:
            revert with 0, 'Caller is not owner'
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 1
        stor1[address(cd[((32 * idx) + arg1 + 36)])] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
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
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if owner != msg.sender:
            revert with 0, 'Caller is not owner'
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 1
        stor1[address(cd[((32 * idx) + arg1 + 36)])] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_6a039829(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == address(cd[36])
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if owner != msg.sender:
            revert with 0, 'Caller is not owner'
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 2
        sub_9518332e[address(cd[((32 * idx) + cd[4] + 36)])] = address(cd[36])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_123107d5(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    if arg2 > ext_call.return_data[0]:
        call address(arg1).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
    else:
        call address(arg1).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
        call address(cd[((32 * idx) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
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
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
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
            _111 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _115 = mem[_111]
            require mem[_111] <= test266151307()
            require _111 + mem[_111] + 31 < _111 + return_data.size
            _119 = mem[_111 + mem[_111]]
            if mem[_111 + mem[_111]] > test266151307():
                revert with 'NH{q', 65
            if _111 + ceil32(return_data.size) + ceil32(32 * mem[_111 + mem[_111]]) + 1 > test266151307() or ceil32(32 * mem[_111 + mem[_111]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _111 + ceil32(return_data.size) + ceil32(32 * mem[_111 + mem[_111]]) + 1
            mem[_111 + ceil32(return_data.size)] = _119
            require return_data.size >= _115 + (32 * _119) + 32
            t = _111 + _115 + 32
            u = _111 + ceil32(return_data.size) + 32
            s = 0
            while s < _119:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if 1 >= _119:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[_111 + ceil32(return_data.size) + 64]
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
        _112 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _116 = mem[_112]
        require mem[_112] <= test266151307()
        require _112 + mem[_112] + 31 < _112 + return_data.size
        _120 = mem[_112 + mem[_112]]
        if mem[_112 + mem[_112]] > test266151307():
            revert with 'NH{q', 65
        if _112 + ceil32(return_data.size) + ceil32(32 * mem[_112 + mem[_112]]) + 1 > test266151307() or ceil32(32 * mem[_112 + mem[_112]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _112 + ceil32(return_data.size) + ceil32(32 * mem[_112 + mem[_112]]) + 1
        mem[_112 + ceil32(return_data.size)] = _120
        require return_data.size >= _116 + (32 * _120) + 32
        t = _112 + _116 + 32
        u = _112 + ceil32(return_data.size) + 32
        s = 0
        while s < _120:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if 1 >= _120:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[_112 + ceil32(return_data.size) + 64]
        continue 
    if s <= cd[4]:
        revert with 0, 'blop'
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _51 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _52 = mem[_51]
    if cd[4] > mem[_51]:
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
                _125 = mem[64]
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
                mem[_125 + 100] = this.address
                mem[_125 + 132] = 1643723741
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len u + -mem[64] - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _175 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _179 = mem[_175]
                require mem[_175] <= test266151307()
                require _175 + mem[_175] + 31 < _175 + return_data.size
                _183 = mem[_175 + mem[_175]]
                if mem[_175 + mem[_175]] > test266151307():
                    revert with 'NH{q', 65
                if _175 + ceil32(return_data.size) + ceil32(32 * mem[_175 + mem[_175]]) + 1 > test266151307() or ceil32(32 * mem[_175 + mem[_175]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _175 + ceil32(return_data.size) + ceil32(32 * mem[_175 + mem[_175]]) + 1
                mem[_175 + ceil32(return_data.size)] = _183
                require return_data.size >= _179 + (32 * _183) + 32
                t = _175 + _179 + 32
                u = _175 + ceil32(return_data.size) + 32
                s = 0
                while s < _183:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if 1 >= _183:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                t = mem[_175 + ceil32(return_data.size) + 64]
                continue 
            _126 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _52
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
            mem[_126 + 100] = this.address
            mem[_126 + 132] = 1643723741
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len u + -mem[64] - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _176 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _180 = mem[_176]
            require mem[_176] <= test266151307()
            require _176 + mem[_176] + 31 < _176 + return_data.size
            _184 = mem[_176 + mem[_176]]
            if mem[_176 + mem[_176]] > test266151307():
                revert with 'NH{q', 65
            if _176 + ceil32(return_data.size) + ceil32(32 * mem[_176 + mem[_176]]) + 1 > test266151307() or ceil32(32 * mem[_176 + mem[_176]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _176 + ceil32(return_data.size) + ceil32(32 * mem[_176 + mem[_176]]) + 1
            mem[_176 + ceil32(return_data.size)] = _184
            require return_data.size >= _180 + (32 * _184) + 32
            t = _176 + _180 + 32
            u = _176 + ceil32(return_data.size) + 32
            s = 0
            while s < _184:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if 1 >= _184:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            t = mem[_176 + ceil32(return_data.size) + 64]
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _105 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_105] <= _52:
            revert with 0, 'blop'
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
                _127 = mem[64]
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
                mem[_127 + 100] = this.address
                mem[_127 + 132] = 1643723741
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len u + -mem[64] - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _177 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _181 = mem[_177]
                require mem[_177] <= test266151307()
                require _177 + mem[_177] + 31 < _177 + return_data.size
                _185 = mem[_177 + mem[_177]]
                if mem[_177 + mem[_177]] > test266151307():
                    revert with 'NH{q', 65
                if _177 + ceil32(return_data.size) + ceil32(32 * mem[_177 + mem[_177]]) + 1 > test266151307() or ceil32(32 * mem[_177 + mem[_177]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _177 + ceil32(return_data.size) + ceil32(32 * mem[_177 + mem[_177]]) + 1
                mem[_177 + ceil32(return_data.size)] = _185
                require return_data.size >= _181 + (32 * _185) + 32
                t = _177 + _181 + 32
                u = _177 + ceil32(return_data.size) + 32
                s = 0
                while s < _185:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if 1 >= _185:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                t = mem[_177 + ceil32(return_data.size) + 64]
                continue 
            _128 = mem[64]
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
            mem[_128 + 100] = this.address
            mem[_128 + 132] = 1643723741
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len u + -mem[64] - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _178 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _182 = mem[_178]
            require mem[_178] <= test266151307()
            require _178 + mem[_178] + 31 < _178 + return_data.size
            _186 = mem[_178 + mem[_178]]
            if mem[_178 + mem[_178]] > test266151307():
                revert with 'NH{q', 65
            if _178 + ceil32(return_data.size) + ceil32(32 * mem[_178 + mem[_178]]) + 1 > test266151307() or ceil32(32 * mem[_178 + mem[_178]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _178 + ceil32(return_data.size) + ceil32(32 * mem[_178 + mem[_178]]) + 1
            mem[_178 + ceil32(return_data.size)] = _186
            require return_data.size >= _182 + (32 * _186) + 32
            t = _178 + _182 + 32
            u = _178 + ceil32(return_data.size) + 32
            s = 0
            while s < _186:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if 1 >= _186:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            t = mem[_178 + ceil32(return_data.size) + 64]
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _106 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_106] <= _52:
            revert with 0, 'blop'
}

function sub_e2529c8e(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require stor1[msg.sender]
    mem[32] = 2
    mem[0] = address(arg2)
    mem[96] = 2
    mem[128] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    require ext_code.size(address(arg1))
    staticcall address(arg1).token0() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    if ext_call.return_data[12 len 20] == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
        staticcall address(arg1).token1() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[160] = ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 192] = 2
        mem[(2 * ceil32(return_data.size)) + 224] = mem[172 len 20]
        mem[(2 * ceil32(return_data.size)) + 256] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[(2 * ceil32(return_data.size)) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 292] = arg3
        mem[(2 * ceil32(return_data.size)) + 324] = 64
        mem[(2 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = 128
        t = (2 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(sub_9518332e[address(arg1)])
        staticcall sub_9518332e[address(arg1)].getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 288
        require return_data.size >= 32
        _172 = mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
        require mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (2 * ceil32(return_data.size)) + return_data.size + 288
        _174 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
        mem[(4 * ceil32(return_data.size)) + 288] = _174
        require return_data.size >= _172 + (32 * _174) + 32
        mem[(4 * ceil32(return_data.size)) + 320 len 32 * _174] = mem[(2 * ceil32(return_data.size)) + _172 + 320 len 32 * _174]
        if 1 >= _174:
            revert with 'NH{q', 50
        _302 = mem[(4 * ceil32(return_data.size)) + 352]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _302
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 224
        t = mem[64] + 100
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(sub_9518332e[address(arg2)])
        staticcall sub_9518332e[address(arg2)].getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args _302, Array(len=2, data=mem[mem[64] + 100 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _422 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _424 = mem[_422]
        require mem[_422] <= test266151307()
        require _422 + mem[_422] + 31 < _422 + return_data.size
        _426 = mem[_422 + mem[_422]]
        if mem[_422 + mem[_422]] > test266151307():
            revert with 'NH{q', 65
        if _422 + ceil32(return_data.size) + ceil32(32 * mem[_422 + mem[_422]]) + 1 > test266151307() or ceil32(32 * mem[_422 + mem[_422]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _422 + ceil32(return_data.size) + ceil32(32 * mem[_422 + mem[_422]]) + 1
        mem[_422 + ceil32(return_data.size)] = _426
        require return_data.size >= _424 + (32 * _426) + 32
        mem[_422 + ceil32(return_data.size) + 32 len 32 * _426] = mem[_422 + _424 + 32 len 32 * _426]
        if 1 >= _426:
            revert with 'NH{q', 50
        if mem[_422 + ceil32(return_data.size) + 64] <= arg3:
            revert with 0, 'blop'
        mem[mem[64] + 4] = this.address
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _542 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _544 = mem[_542]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        if arg3 > mem[_542]:
            mem[mem[64] + 4] = _544
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 2
            idx = 0
            s = 128
            t = mem[64] + 196
            while idx < mem[96]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = 1643723741
            require ext_code.size(sub_9518332e[address(arg1)])
            call sub_9518332e[address(arg1)].mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len 96], address(this.address), 1643723741, mem[mem[64] + 164 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _634 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _638 = mem[_634]
            require mem[_634] <= test266151307()
            require _634 + mem[_634] + 31 < _634 + return_data.size
            _642 = mem[_634 + mem[_634]]
            if mem[_634 + mem[_634]] > test266151307():
                revert with 'NH{q', 65
            if _634 + ceil32(return_data.size) + ceil32(32 * mem[_634 + mem[_634]]) + 1 > test266151307() or ceil32(32 * mem[_634 + mem[_634]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _634 + ceil32(return_data.size) + ceil32(32 * mem[_634 + mem[_634]]) + 1
            mem[_634 + ceil32(return_data.size)] = _642
            require return_data.size >= _638 + (32 * _642) + 32
            mem[_634 + ceil32(return_data.size) + 32 len 32 * _642] = mem[_634 + _638 + 32 len 32 * _642]
            if 1 >= _642:
                revert with 'NH{q', 50
            _706 = mem[_634 + ceil32(return_data.size) + 64]
            _707 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _706
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _714 = mem[(2 * ceil32(return_data.size)) + 192]
            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 192]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 224
            t = mem[64] + 196
            while idx < _714:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_707 + 100] = this.address
            mem[_707 + 132] = 1643723741
            require ext_code.size(sub_9518332e[address(arg2)])
            call sub_9518332e[address(arg2)].mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _707 + (32 * _714) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _754 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_754] <= test266151307()
            require _754 + mem[_754] + 31 < _754 + return_data.size
            if mem[_754 + mem[_754]] > test266151307():
                revert with 'NH{q', 65
            if _754 + ceil32(return_data.size) + ceil32(32 * mem[_754 + mem[_754]]) + 1 > test266151307() or ceil32(32 * mem[_754 + mem[_754]]) + 1 < 0:
                revert with 'NH{q', 65
            require return_data.size >= mem[_754] + (32 * mem[_754 + mem[_754]]) + 32
        else:
            mem[mem[64] + 4] = arg3
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 2
            idx = 0
            s = 128
            t = mem[64] + 196
            while idx < mem[96]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = 1643723741
            require ext_code.size(sub_9518332e[address(arg1)])
            call sub_9518332e[address(arg1)].mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len 96], address(this.address), 1643723741, mem[mem[64] + 164 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _635 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _639 = mem[_635]
            require mem[_635] <= test266151307()
            require _635 + mem[_635] + 31 < _635 + return_data.size
            _643 = mem[_635 + mem[_635]]
            if mem[_635 + mem[_635]] > test266151307():
                revert with 'NH{q', 65
            if _635 + ceil32(return_data.size) + ceil32(32 * mem[_635 + mem[_635]]) + 1 > test266151307() or ceil32(32 * mem[_635 + mem[_635]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _635 + ceil32(return_data.size) + ceil32(32 * mem[_635 + mem[_635]]) + 1
            mem[_635 + ceil32(return_data.size)] = _643
            require return_data.size >= _639 + (32 * _643) + 32
            mem[_635 + ceil32(return_data.size) + 32 len 32 * _643] = mem[_635 + _639 + 32 len 32 * _643]
            if 1 >= _643:
                revert with 'NH{q', 50
            _708 = mem[_635 + ceil32(return_data.size) + 64]
            _709 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _708
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _715 = mem[(2 * ceil32(return_data.size)) + 192]
            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 192]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 224
            t = mem[64] + 196
            while idx < _715:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_709 + 100] = this.address
            mem[_709 + 132] = 1643723741
            require ext_code.size(sub_9518332e[address(arg2)])
            call sub_9518332e[address(arg2)].mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _709 + (32 * _715) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _755 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_755] <= test266151307()
            require _755 + mem[_755] + 31 < _755 + return_data.size
            if mem[_755 + mem[_755]] > test266151307():
                revert with 'NH{q', 65
            if _755 + ceil32(return_data.size) + ceil32(32 * mem[_755 + mem[_755]]) + 1 > test266151307() or ceil32(32 * mem[_755 + mem[_755]]) + 1 < 0:
                revert with 'NH{q', 65
            require return_data.size >= mem[_755] + (32 * mem[_755 + mem[_755]]) + 32
    else:
        staticcall address(arg1).token0() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[160] = ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 192] = 2
        mem[(2 * ceil32(return_data.size)) + 224] = mem[172 len 20]
        mem[(2 * ceil32(return_data.size)) + 256] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[(2 * ceil32(return_data.size)) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 292] = arg3
        mem[(2 * ceil32(return_data.size)) + 324] = 64
        mem[(2 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = 128
        t = (2 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(sub_9518332e[address(arg1)])
        staticcall sub_9518332e[address(arg1)].getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 288
        require return_data.size >= 32
        _173 = mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
        require mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (2 * ceil32(return_data.size)) + return_data.size + 288
        _175 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
        mem[(4 * ceil32(return_data.size)) + 288] = _175
        require return_data.size >= _173 + (32 * _175) + 32
        mem[(4 * ceil32(return_data.size)) + 320 len 32 * _175] = mem[(2 * ceil32(return_data.size)) + _173 + 320 len 32 * _175]
        if 1 >= _175:
            revert with 'NH{q', 50
        _304 = mem[(4 * ceil32(return_data.size)) + 352]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _304
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 224
        t = mem[64] + 100
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(sub_9518332e[address(arg2)])
        staticcall sub_9518332e[address(arg2)].getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args _304, Array(len=2, data=mem[mem[64] + 100 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _423 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _425 = mem[_423]
        require mem[_423] <= test266151307()
        require _423 + mem[_423] + 31 < _423 + return_data.size
        _427 = mem[_423 + mem[_423]]
        if mem[_423 + mem[_423]] > test266151307():
            revert with 'NH{q', 65
        if _423 + ceil32(return_data.size) + ceil32(32 * mem[_423 + mem[_423]]) + 1 > test266151307() or ceil32(32 * mem[_423 + mem[_423]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _423 + ceil32(return_data.size) + ceil32(32 * mem[_423 + mem[_423]]) + 1
        mem[_423 + ceil32(return_data.size)] = _427
        require return_data.size >= _425 + (32 * _427) + 32
        mem[_423 + ceil32(return_data.size) + 32 len 32 * _427] = mem[_423 + _425 + 32 len 32 * _427]
        if 1 >= _427:
            revert with 'NH{q', 50
        if mem[_423 + ceil32(return_data.size) + 64] <= arg3:
            revert with 0, 'blop'
        mem[mem[64] + 4] = this.address
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _543 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _545 = mem[_543]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        if arg3 > mem[_543]:
            mem[mem[64] + 4] = _545
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 2
            idx = 0
            s = 128
            t = mem[64] + 196
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = 1643723741
            require ext_code.size(sub_9518332e[address(arg1)])
            call sub_9518332e[address(arg1)].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _545, 0, 160, address(this.address), 1643723741, 2, mem[mem[64] + 196 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _636 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _640 = mem[_636]
            require mem[_636] <= test266151307()
            require _636 + mem[_636] + 31 < _636 + return_data.size
            _644 = mem[_636 + mem[_636]]
            if mem[_636 + mem[_636]] > test266151307():
                revert with 'NH{q', 65
            if _636 + ceil32(return_data.size) + ceil32(32 * mem[_636 + mem[_636]]) + 1 > test266151307() or ceil32(32 * mem[_636 + mem[_636]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _636 + ceil32(return_data.size) + ceil32(32 * mem[_636 + mem[_636]]) + 1
            mem[_636 + ceil32(return_data.size)] = _644
            require return_data.size >= _640 + (32 * _644) + 32
            mem[_636 + ceil32(return_data.size) + 32 len 32 * _644] = mem[_636 + _640 + 32 len 32 * _644]
            if 1 >= _644:
                revert with 'NH{q', 50
            _710 = mem[_636 + ceil32(return_data.size) + 64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _710
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _716 = mem[(2 * ceil32(return_data.size)) + 192]
            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 192]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 224
            t = mem[64] + 196
            while idx < _716:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = 1643723741
            require ext_code.size(sub_9518332e[address(arg2)])
            call sub_9518332e[address(arg2)].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _710, 0, 160, address(this.address), 1643723741, mem[mem[64] + 164 len (32 * _716) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _756 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_756] <= test266151307()
            require _756 + mem[_756] + 31 < _756 + return_data.size
            if mem[_756 + mem[_756]] > test266151307():
                revert with 'NH{q', 65
            if _756 + ceil32(return_data.size) + ceil32(32 * mem[_756 + mem[_756]]) + 1 > test266151307() or ceil32(32 * mem[_756 + mem[_756]]) + 1 < 0:
                revert with 'NH{q', 65
            require return_data.size >= mem[_756] + (32 * mem[_756 + mem[_756]]) + 32
        else:
            mem[mem[64] + 4] = arg3
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 2
            idx = 0
            s = 128
            t = mem[64] + 196
            while idx < mem[96]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = 1643723741
            require ext_code.size(sub_9518332e[address(arg1)])
            call sub_9518332e[address(arg1)].mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len 96], address(this.address), 1643723741, mem[mem[64] + 164 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _637 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _641 = mem[_637]
            require mem[_637] <= test266151307()
            require _637 + mem[_637] + 31 < _637 + return_data.size
            _645 = mem[_637 + mem[_637]]
            if mem[_637 + mem[_637]] > test266151307():
                revert with 'NH{q', 65
            if _637 + ceil32(return_data.size) + ceil32(32 * mem[_637 + mem[_637]]) + 1 > test266151307() or ceil32(32 * mem[_637 + mem[_637]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _637 + ceil32(return_data.size) + ceil32(32 * mem[_637 + mem[_637]]) + 1
            mem[_637 + ceil32(return_data.size)] = _645
            require return_data.size >= _641 + (32 * _645) + 32
            mem[_637 + ceil32(return_data.size) + 32 len 32 * _645] = mem[_637 + _641 + 32 len 32 * _645]
            if 1 >= _645:
                revert with 'NH{q', 50
            _712 = mem[_637 + ceil32(return_data.size) + 64]
            _713 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _712
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _717 = mem[(2 * ceil32(return_data.size)) + 192]
            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 192]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 224
            t = mem[64] + 196
            while idx < _717:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_713 + 100] = this.address
            mem[_713 + 132] = 1643723741
            require ext_code.size(sub_9518332e[address(arg2)])
            call sub_9518332e[address(arg2)].mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _713 + (32 * _717) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _757 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_757] <= test266151307()
            require _757 + mem[_757] + 31 < _757 + return_data.size
            if mem[_757 + mem[_757]] > test266151307():
                revert with 'NH{q', 65
            if _757 + ceil32(return_data.size) + ceil32(32 * mem[_757 + mem[_757]]) + 1 > test266151307() or ceil32(32 * mem[_757 + mem[_757]]) + 1 < 0:
                revert with 'NH{q', 65
            require return_data.size >= mem[_757] + (32 * mem[_757 + mem[_757]]) + 32
}

function _fallback() payable {
    mem[64] = 128
    if calldata.size < 4:
        require not calldata.size
        emit Received(msg.sender, msg.value);
    else:
        if unknown_0x73d930c0(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x24953eaa(?????) <= uint32(call.func_hash) >> 224:
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
                    while idx < ('cd', 4).length:
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        if owner != msg.sender:
                            revert with 0, 'Caller is not owner'
                        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[32] = 1
                        stor1[address(cd[((32 * idx) + cd[4] + 36)])] = 0
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    if unknown_0x286dd3f5(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Caller is not owner'
                        stor1[address(cd[4])] = 0
                    else:
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
                            require unknown_0x6a039829(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require cd[4] <= test266151307()
                            require cd[4] + 35 < calldata.size
                            require ('cd', 4).length <= test266151307()
                            require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                            require cd[36] == address(cd[36])
                            if owner != msg.sender:
                                revert with 0, 'Caller is not owner'
                            idx = 0
                            while idx < ('cd', 4).length:
                                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                if owner != msg.sender:
                                    revert with 0, 'Caller is not owner'
                                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 2
                                sub_9518332e[address(cd[((32 * idx) + cd[4] + 36)])] = address(cd[36])
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
            else:
                if approveToken(address arg1, address arg2) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require cd[36] == address(cd[36])
                    require stor1[msg.sender]
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[4]), 2777777777777775 * 10^13 * 24 * 3600
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x123107d5(?????):
                        if unknown_0x13af4035(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if owner != msg.sender:
                                revert with 0, 'Caller is not owner'
                            owner = address(cd[4])
                        else:
                            require unknown_0x24336c7f(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require cd[4] == address(cd[4])
                            require cd[36] == address(cd[36])
                            if owner != msg.sender:
                                revert with 0, 'Caller is not owner'
                            sub_9518332e[address(cd[4])] = address(cd[36])
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Caller is not owner'
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(cd[4]))
                        if cd[36] > ext_call.return_data[0]:
                            call address(cd[4]).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args owner, ext_call.return_data[0]
                        else:
                            call address(cd[4]).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args owner, cd[36]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if unknown_0x9b19251a(?????) > uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != unknown_0x73d930c0(?????):
                    if unknown_0x7b9417c8(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Caller is not owner'
                        stor1[address(cd[4])] = 1
                    if unknown_0x893d20e8(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return owner
                    require unknown_0x9518332e(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return sub_9518332e[cd[4]]
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
                    call address(cd[((32 * idx) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[4]), 2777777777777775 * 10^13 * 24 * 3600
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _297 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_297] == bool(mem[_297])
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            else:
                if unknown_0x9b19251a(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return bool(stor1[cd[4]])
                if unknown_0xcbac1eff(?????) == uint32(call.func_hash) >> 224:
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
                            _492 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _498 = mem[_492]
                            require mem[_492] <= test266151307()
                            require _492 + mem[_492] + 31 < _492 + return_data.size
                            _504 = mem[_492 + mem[_492]]
                            if mem[_492 + mem[_492]] > test266151307():
                                revert with 'NH{q', 65
                            if _492 + ceil32(return_data.size) + ceil32(32 * mem[_492 + mem[_492]]) + 1 > test266151307() or ceil32(32 * mem[_492 + mem[_492]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _492 + ceil32(return_data.size) + ceil32(32 * mem[_492 + mem[_492]]) + 1
                            mem[_492 + ceil32(return_data.size)] = _504
                            require return_data.size >= _498 + (32 * _504) + 32
                            t = _492 + _498 + 32
                            u = _492 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _504:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            if 1 >= _504:
                                revert with 'NH{q', 50
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[_492 + ceil32(return_data.size) + 64]
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
                        _493 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _499 = mem[_493]
                        require mem[_493] <= test266151307()
                        require _493 + mem[_493] + 31 < _493 + return_data.size
                        _505 = mem[_493 + mem[_493]]
                        if mem[_493 + mem[_493]] > test266151307():
                            revert with 'NH{q', 65
                        if _493 + ceil32(return_data.size) + ceil32(32 * mem[_493 + mem[_493]]) + 1 > test266151307() or ceil32(32 * mem[_493 + mem[_493]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _493 + ceil32(return_data.size) + ceil32(32 * mem[_493 + mem[_493]]) + 1
                        mem[_493 + ceil32(return_data.size)] = _505
                        require return_data.size >= _499 + (32 * _505) + 32
                        t = _493 + _499 + 32
                        u = _493 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _505:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        if 1 >= _505:
                            revert with 'NH{q', 50
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[_493 + ceil32(return_data.size) + 64]
                        continue 
                    if s <= cd[4]:
                        revert with 0, 'blop'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _283 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _286 = mem[_283]
                    if cd[4] > mem[_283]:
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
                                _516 = mem[64]
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
                                mem[_516 + 100] = this.address
                                mem[_516 + 132] = 1643723741
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len u + -mem[64] - 4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _672 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _678 = mem[_672]
                                require mem[_672] <= test266151307()
                                require _672 + mem[_672] + 31 < _672 + return_data.size
                                _684 = mem[_672 + mem[_672]]
                                if mem[_672 + mem[_672]] > test266151307():
                                    revert with 'NH{q', 65
                                if _672 + ceil32(return_data.size) + ceil32(32 * mem[_672 + mem[_672]]) + 1 > test266151307() or ceil32(32 * mem[_672 + mem[_672]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _672 + ceil32(return_data.size) + ceil32(32 * mem[_672 + mem[_672]]) + 1
                                mem[_672 + ceil32(return_data.size)] = _684
                                require return_data.size >= _678 + (32 * _684) + 32
                                t = _672 + _678 + 32
                                u = _672 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _684:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                if 1 >= _684:
                                    revert with 'NH{q', 50
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                t = mem[_672 + ceil32(return_data.size) + 64]
                                continue 
                            _517 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _286
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
                            mem[_517 + 100] = this.address
                            mem[_517 + 132] = 1643723741
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len u + -mem[64] - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _673 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _679 = mem[_673]
                            require mem[_673] <= test266151307()
                            require _673 + mem[_673] + 31 < _673 + return_data.size
                            _685 = mem[_673 + mem[_673]]
                            if mem[_673 + mem[_673]] > test266151307():
                                revert with 'NH{q', 65
                            if _673 + ceil32(return_data.size) + ceil32(32 * mem[_673 + mem[_673]]) + 1 > test266151307() or ceil32(32 * mem[_673 + mem[_673]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _673 + ceil32(return_data.size) + ceil32(32 * mem[_673 + mem[_673]]) + 1
                            mem[_673 + ceil32(return_data.size)] = _685
                            require return_data.size >= _679 + (32 * _685) + 32
                            t = _673 + _679 + 32
                            u = _673 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _685:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            if 1 >= _685:
                                revert with 'NH{q', 50
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            t = mem[_673 + ceil32(return_data.size) + 64]
                            continue 
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _482 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_482] <= _286:
                            revert with 0, 'blop'
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
                                _518 = mem[64]
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
                                mem[_518 + 100] = this.address
                                mem[_518 + 132] = 1643723741
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len u + -mem[64] - 4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _674 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _680 = mem[_674]
                                require mem[_674] <= test266151307()
                                require _674 + mem[_674] + 31 < _674 + return_data.size
                                _686 = mem[_674 + mem[_674]]
                                if mem[_674 + mem[_674]] > test266151307():
                                    revert with 'NH{q', 65
                                if _674 + ceil32(return_data.size) + ceil32(32 * mem[_674 + mem[_674]]) + 1 > test266151307() or ceil32(32 * mem[_674 + mem[_674]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _674 + ceil32(return_data.size) + ceil32(32 * mem[_674 + mem[_674]]) + 1
                                mem[_674 + ceil32(return_data.size)] = _686
                                require return_data.size >= _680 + (32 * _686) + 32
                                t = _674 + _680 + 32
                                u = _674 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _686:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                if 1 >= _686:
                                    revert with 'NH{q', 50
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                t = mem[_674 + ceil32(return_data.size) + 64]
                                continue 
                            _519 = mem[64]
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
                            mem[_519 + 100] = this.address
                            mem[_519 + 132] = 1643723741
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len u + -mem[64] - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _675 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _681 = mem[_675]
                            require mem[_675] <= test266151307()
                            require _675 + mem[_675] + 31 < _675 + return_data.size
                            _687 = mem[_675 + mem[_675]]
                            if mem[_675 + mem[_675]] > test266151307():
                                revert with 'NH{q', 65
                            if _675 + ceil32(return_data.size) + ceil32(32 * mem[_675 + mem[_675]]) + 1 > test266151307() or ceil32(32 * mem[_675 + mem[_675]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _675 + ceil32(return_data.size) + ceil32(32 * mem[_675 + mem[_675]]) + 1
                            mem[_675 + ceil32(return_data.size)] = _687
                            require return_data.size >= _681 + (32 * _687) + 32
                            t = _675 + _681 + 32
                            u = _675 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _687:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            if 1 >= _687:
                                revert with 'NH{q', 50
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            t = mem[_675 + ceil32(return_data.size) + 64]
                            continue 
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _483 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_483] <= _286:
                            revert with 0, 'blop'
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xe2529c8e(?????):
                        require unknown_0xe2ec6ec3(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] <= test266151307()
                        require cd[4] + 35 < calldata.size
                        require ('cd', 4).length <= test266151307()
                        require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                        if owner != msg.sender:
                            revert with 0, 'Caller is not owner'
                        idx = 0
                        while idx < ('cd', 4).length:
                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                            if owner != msg.sender:
                                revert with 0, 'Caller is not owner'
                            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 1
                            stor1[address(cd[((32 * idx) + cd[4] + 36)])] = 1
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 96
                        require cd[4] == address(cd[4])
                        require cd[36] == address(cd[36])
                        require stor1[msg.sender]
                        mem[32] = 2
                        mem[0] = address(cd[36])
                        mem[128] = 2
                        mem[160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).token0() with:
                                gas gas_remaining wei
                        mem[224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(cd[4]))
                        if ext_call.return_data[12 len 20] == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                            staticcall address(cd[4]).token1() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[192] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 224] = 2
                            mem[(2 * ceil32(return_data.size)) + 256] = mem[204 len 20]
                            mem[(2 * ceil32(return_data.size)) + 288] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                            mem[(2 * ceil32(return_data.size)) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 324] = cd[68]
                            mem[(2 * ceil32(return_data.size)) + 356] = 64
                            mem[(2 * ceil32(return_data.size)) + 388] = 2
                            idx = 0
                            s = 160
                            t = (2 * ceil32(return_data.size)) + 420
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(sub_9518332e[address(cd[4])])
                            staticcall sub_9518332e[address(cd[4])].getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args cd[68], Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 420 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 320
                            require return_data.size >= 32
                            _287 = mem[(2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, cd[68]) >> 32
                            require mem[(2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + 351 < (2 * ceil32(return_data.size)) + return_data.size + 320
                            _291 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + 320]
                            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + 320] > test266151307():
                                revert with 'NH{q', 65
                            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + 320]) + 321 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + 320]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + 320]) + 321
                            mem[(4 * ceil32(return_data.size)) + 320] = _291
                            require return_data.size >= _287 + (32 * _291) + 32
                            mem[(4 * ceil32(return_data.size)) + 352 len 32 * _291] = mem[(2 * ceil32(return_data.size)) + _287 + 352 len 32 * _291]
                            if 1 >= _291:
                                revert with 'NH{q', 50
                            _486 = mem[(4 * ceil32(return_data.size)) + 384]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _486
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = 2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 256
                            t = mem[64] + 100
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(sub_9518332e[address(cd[36])])
                            staticcall sub_9518332e[address(cd[36])].getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args _486, Array(len=2, data=mem[mem[64] + 100 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _676 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _682 = mem[_676]
                            require mem[_676] <= test266151307()
                            require _676 + mem[_676] + 31 < _676 + return_data.size
                            _688 = mem[_676 + mem[_676]]
                            if mem[_676 + mem[_676]] > test266151307():
                                revert with 'NH{q', 65
                            if _676 + ceil32(return_data.size) + ceil32(32 * mem[_676 + mem[_676]]) + 1 > test266151307() or ceil32(32 * mem[_676 + mem[_676]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _676 + ceil32(return_data.size) + ceil32(32 * mem[_676 + mem[_676]]) + 1
                            mem[_676 + ceil32(return_data.size)] = _688
                            require return_data.size >= _682 + (32 * _688) + 32
                            mem[_676 + ceil32(return_data.size) + 32 len 32 * _688] = mem[_676 + _682 + 32 len 32 * _688]
                            if 1 >= _688:
                                revert with 'NH{q', 50
                            if mem[_676 + ceil32(return_data.size) + 64] <= cd[68]:
                                revert with 0, 'blop'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _832 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _834 = mem[_832]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            if cd[68] > mem[_832]:
                                mem[mem[64] + 4] = _834
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = 2
                                idx = 0
                                s = 160
                                t = mem[64] + 196
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = 1643723741
                                require ext_code.size(sub_9518332e[address(cd[4])])
                                call sub_9518332e[address(cd[4])].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _834, 0, 160, address(this.address), 1643723741, 2, mem[mem[64] + 196 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _924 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _928 = mem[_924]
                                require mem[_924] <= test266151307()
                                require _924 + mem[_924] + 31 < _924 + return_data.size
                                _932 = mem[_924 + mem[_924]]
                                if mem[_924 + mem[_924]] > test266151307():
                                    revert with 'NH{q', 65
                                if _924 + ceil32(return_data.size) + ceil32(32 * mem[_924 + mem[_924]]) + 1 > test266151307() or ceil32(32 * mem[_924 + mem[_924]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _924 + ceil32(return_data.size) + ceil32(32 * mem[_924 + mem[_924]]) + 1
                                mem[_924 + ceil32(return_data.size)] = _932
                                require return_data.size >= _928 + (32 * _932) + 32
                                mem[_924 + ceil32(return_data.size) + 32 len 32 * _932] = mem[_924 + _928 + 32 len 32 * _932]
                                if 1 >= _932:
                                    revert with 'NH{q', 50
                                _996 = mem[_924 + ceil32(return_data.size) + 64]
                                _997 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _996
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _1004 = mem[(2 * ceil32(return_data.size)) + 224]
                                mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 224]
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 256
                                t = mem[64] + 196
                                while idx < _1004:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_997 + 100] = this.address
                                mem[_997 + 132] = 1643723741
                                require ext_code.size(sub_9518332e[address(cd[36])])
                                call sub_9518332e[address(cd[36])].mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _997 + (32 * _1004) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1044 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1044] <= test266151307()
                                require _1044 + mem[_1044] + 31 < _1044 + return_data.size
                                if mem[_1044 + mem[_1044]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1044 + ceil32(return_data.size) + ceil32(32 * mem[_1044 + mem[_1044]]) + 1 > test266151307() or ceil32(32 * mem[_1044 + mem[_1044]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                require return_data.size >= mem[_1044] + (32 * mem[_1044 + mem[_1044]]) + 32
                            else:
                                mem[mem[64] + 4] = cd[68]
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = 2
                                idx = 0
                                s = 160
                                t = mem[64] + 196
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = 1643723741
                                require ext_code.size(sub_9518332e[address(cd[4])])
                                call sub_9518332e[address(cd[4])].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args cd[68], 0, 160, address(this.address), 1643723741, 2, mem[mem[64] + 196 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _925 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _929 = mem[_925]
                                require mem[_925] <= test266151307()
                                require _925 + mem[_925] + 31 < _925 + return_data.size
                                _933 = mem[_925 + mem[_925]]
                                if mem[_925 + mem[_925]] > test266151307():
                                    revert with 'NH{q', 65
                                if _925 + ceil32(return_data.size) + ceil32(32 * mem[_925 + mem[_925]]) + 1 > test266151307() or ceil32(32 * mem[_925 + mem[_925]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _925 + ceil32(return_data.size) + ceil32(32 * mem[_925 + mem[_925]]) + 1
                                mem[_925 + ceil32(return_data.size)] = _933
                                require return_data.size >= _929 + (32 * _933) + 32
                                mem[_925 + ceil32(return_data.size) + 32 len 32 * _933] = mem[_925 + _929 + 32 len 32 * _933]
                                if 1 >= _933:
                                    revert with 'NH{q', 50
                                _998 = mem[_925 + ceil32(return_data.size) + 64]
                                _999 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _998
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _1005 = mem[(2 * ceil32(return_data.size)) + 224]
                                mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 224]
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 256
                                t = mem[64] + 196
                                while idx < _1005:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_999 + 100] = this.address
                                mem[_999 + 132] = 1643723741
                                require ext_code.size(sub_9518332e[address(cd[36])])
                                call sub_9518332e[address(cd[36])].mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _999 + (32 * _1005) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1045 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1045] <= test266151307()
                                require _1045 + mem[_1045] + 31 < _1045 + return_data.size
                                if mem[_1045 + mem[_1045]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1045 + ceil32(return_data.size) + ceil32(32 * mem[_1045 + mem[_1045]]) + 1 > test266151307() or ceil32(32 * mem[_1045 + mem[_1045]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                require return_data.size >= mem[_1045] + (32 * mem[_1045 + mem[_1045]]) + 32
                        else:
                            staticcall address(cd[4]).token0() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[192] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 224] = 2
                            mem[(2 * ceil32(return_data.size)) + 256] = mem[204 len 20]
                            mem[(2 * ceil32(return_data.size)) + 288] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                            mem[(2 * ceil32(return_data.size)) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 324] = cd[68]
                            mem[(2 * ceil32(return_data.size)) + 356] = 64
                            mem[(2 * ceil32(return_data.size)) + 388] = 2
                            idx = 0
                            s = 160
                            t = (2 * ceil32(return_data.size)) + 420
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(sub_9518332e[address(cd[4])])
                            staticcall sub_9518332e[address(cd[4])].getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args cd[68], Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 420 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 320
                            require return_data.size >= 32
                            _288 = mem[(2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, cd[68]) >> 32
                            require mem[(2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + 351 < (2 * ceil32(return_data.size)) + return_data.size + 320
                            _292 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + 320]
                            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + 320] > test266151307():
                                revert with 'NH{q', 65
                            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + 320]) + 321 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + 320]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + 320]) + 321
                            mem[(4 * ceil32(return_data.size)) + 320] = _292
                            require return_data.size >= _288 + (32 * _292) + 32
                            mem[(4 * ceil32(return_data.size)) + 352 len 32 * _292] = mem[(2 * ceil32(return_data.size)) + _288 + 352 len 32 * _292]
                            if 1 >= _292:
                                revert with 'NH{q', 50
                            _488 = mem[(4 * ceil32(return_data.size)) + 384]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _488
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = 2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 256
                            t = mem[64] + 100
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(sub_9518332e[address(cd[36])])
                            staticcall sub_9518332e[address(cd[36])].getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args _488, Array(len=2, data=mem[mem[64] + 100 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _677 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _683 = mem[_677]
                            require mem[_677] <= test266151307()
                            require _677 + mem[_677] + 31 < _677 + return_data.size
                            _689 = mem[_677 + mem[_677]]
                            if mem[_677 + mem[_677]] > test266151307():
                                revert with 'NH{q', 65
                            if _677 + ceil32(return_data.size) + ceil32(32 * mem[_677 + mem[_677]]) + 1 > test266151307() or ceil32(32 * mem[_677 + mem[_677]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _677 + ceil32(return_data.size) + ceil32(32 * mem[_677 + mem[_677]]) + 1
                            mem[_677 + ceil32(return_data.size)] = _689
                            require return_data.size >= _683 + (32 * _689) + 32
                            mem[_677 + ceil32(return_data.size) + 32 len 32 * _689] = mem[_677 + _683 + 32 len 32 * _689]
                            if 1 >= _689:
                                revert with 'NH{q', 50
                            if mem[_677 + ceil32(return_data.size) + 64] <= cd[68]:
                                revert with 0, 'blop'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _833 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _835 = mem[_833]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            if cd[68] > mem[_833]:
                                mem[mem[64] + 4] = _835
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = 2
                                idx = 0
                                s = 160
                                t = mem[64] + 196
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = 1643723741
                                require ext_code.size(sub_9518332e[address(cd[4])])
                                call sub_9518332e[address(cd[4])].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _835, 0, 160, address(this.address), 1643723741, 2, mem[mem[64] + 196 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _926 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _930 = mem[_926]
                                require mem[_926] <= test266151307()
                                require _926 + mem[_926] + 31 < _926 + return_data.size
                                _934 = mem[_926 + mem[_926]]
                                if mem[_926 + mem[_926]] > test266151307():
                                    revert with 'NH{q', 65
                                if _926 + ceil32(return_data.size) + ceil32(32 * mem[_926 + mem[_926]]) + 1 > test266151307() or ceil32(32 * mem[_926 + mem[_926]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _926 + ceil32(return_data.size) + ceil32(32 * mem[_926 + mem[_926]]) + 1
                                mem[_926 + ceil32(return_data.size)] = _934
                                require return_data.size >= _930 + (32 * _934) + 32
                                mem[_926 + ceil32(return_data.size) + 32 len 32 * _934] = mem[_926 + _930 + 32 len 32 * _934]
                                if 1 >= _934:
                                    revert with 'NH{q', 50
                                _1000 = mem[_926 + ceil32(return_data.size) + 64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1000
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _1006 = mem[(2 * ceil32(return_data.size)) + 224]
                                mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 224]
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 256
                                t = mem[64] + 196
                                while idx < _1006:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = 1643723741
                                require ext_code.size(sub_9518332e[address(cd[36])])
                                call sub_9518332e[address(cd[36])].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _1000, 0, 160, address(this.address), 1643723741, mem[mem[64] + 164 len (32 * _1006) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1046 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1046] <= test266151307()
                                require _1046 + mem[_1046] + 31 < _1046 + return_data.size
                                if mem[_1046 + mem[_1046]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1046 + ceil32(return_data.size) + ceil32(32 * mem[_1046 + mem[_1046]]) + 1 > test266151307() or ceil32(32 * mem[_1046 + mem[_1046]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                require return_data.size >= mem[_1046] + (32 * mem[_1046 + mem[_1046]]) + 32
                            else:
                                mem[mem[64] + 4] = cd[68]
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = 2
                                idx = 0
                                s = 160
                                t = mem[64] + 196
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = 1643723741
                                require ext_code.size(sub_9518332e[address(cd[4])])
                                call sub_9518332e[address(cd[4])].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args cd[68], 0, 160, address(this.address), 1643723741, 2, mem[mem[64] + 196 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _927 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _931 = mem[_927]
                                require mem[_927] <= test266151307()
                                require _927 + mem[_927] + 31 < _927 + return_data.size
                                _935 = mem[_927 + mem[_927]]
                                if mem[_927 + mem[_927]] > test266151307():
                                    revert with 'NH{q', 65
                                if _927 + ceil32(return_data.size) + ceil32(32 * mem[_927 + mem[_927]]) + 1 > test266151307() or ceil32(32 * mem[_927 + mem[_927]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _927 + ceil32(return_data.size) + ceil32(32 * mem[_927 + mem[_927]]) + 1
                                mem[_927 + ceil32(return_data.size)] = _935
                                require return_data.size >= _931 + (32 * _935) + 32
                                mem[_927 + ceil32(return_data.size) + 32 len 32 * _935] = mem[_927 + _931 + 32 len 32 * _935]
                                if 1 >= _935:
                                    revert with 'NH{q', 50
                                _1002 = mem[_927 + ceil32(return_data.size) + 64]
                                _1003 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1002
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _1007 = mem[(2 * ceil32(return_data.size)) + 224]
                                mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 224]
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 256
                                t = mem[64] + 196
                                while idx < _1007:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_1003 + 100] = this.address
                                mem[_1003 + 132] = 1643723741
                                require ext_code.size(sub_9518332e[address(cd[36])])
                                call sub_9518332e[address(cd[36])].mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1003 + (32 * _1007) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1047 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1047] <= test266151307()
                                require _1047 + mem[_1047] + 31 < _1047 + return_data.size
                                if mem[_1047 + mem[_1047]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1047 + ceil32(return_data.size) + ceil32(32 * mem[_1047 + mem[_1047]]) + 1 > test266151307() or ceil32(32 * mem[_1047 + mem[_1047]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                require return_data.size >= mem[_1047] + (32 * mem[_1047 + mem[_1047]]) + 32
}



}
