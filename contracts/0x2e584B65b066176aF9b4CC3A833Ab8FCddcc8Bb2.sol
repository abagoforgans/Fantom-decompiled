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
            _63 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _65 = mem[_63]
            require mem[_63] <= test266151307()
            require _63 + mem[_63] + 31 < _63 + return_data.size
            _67 = mem[_63 + mem[_63]]
            if mem[_63 + mem[_63]] > test266151307():
                revert with 'NH{q', 65
            if _63 + ceil32(return_data.size) + ceil32(32 * mem[_63 + mem[_63]]) + 1 > test266151307() or ceil32(32 * mem[_63 + mem[_63]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _63 + ceil32(return_data.size) + ceil32(32 * mem[_63 + mem[_63]]) + 1
            mem[_63 + ceil32(return_data.size)] = _67
            require return_data.size >= _65 + (32 * _67) + 32
            t = _63 + _65 + 32
            u = _63 + ceil32(return_data.size) + 32
            s = 0
            while s < _67:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if 1 >= _67:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[_63 + ceil32(return_data.size) + 64]
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
        _64 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _66 = mem[_64]
        require mem[_64] <= test266151307()
        require _64 + mem[_64] + 31 < _64 + return_data.size
        _68 = mem[_64 + mem[_64]]
        if mem[_64 + mem[_64]] > test266151307():
            revert with 'NH{q', 65
        if _64 + ceil32(return_data.size) + ceil32(32 * mem[_64 + mem[_64]]) + 1 > test266151307() or ceil32(32 * mem[_64 + mem[_64]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _64 + ceil32(return_data.size) + ceil32(32 * mem[_64 + mem[_64]]) + 1
        mem[_64 + ceil32(return_data.size)] = _68
        require return_data.size >= _66 + (32 * _68) + 32
        t = _64 + _66 + 32
        u = _64 + ceil32(return_data.size) + 32
        s = 0
        while s < _68:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if 1 >= _68:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[_64 + ceil32(return_data.size) + 64]
        continue 
    if s < cd[4]:
        revert with 'NH{q', 17
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
            _73 = mem[64]
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
            mem[_73 + 100] = this.address
            mem[_73 + 132] = 1643723741
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len u + -mem[64] - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _103 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _105 = mem[_103]
            require mem[_103] <= test266151307()
            require _103 + mem[_103] + 31 < _103 + return_data.size
            _107 = mem[_103 + mem[_103]]
            if mem[_103 + mem[_103]] > test266151307():
                revert with 'NH{q', 65
            if _103 + ceil32(return_data.size) + ceil32(32 * mem[_103 + mem[_103]]) + 1 > test266151307() or ceil32(32 * mem[_103 + mem[_103]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _103 + ceil32(return_data.size) + ceil32(32 * mem[_103 + mem[_103]]) + 1
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
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[_103 + ceil32(return_data.size) + 64]
            continue 
        _74 = mem[64]
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
        mem[_74 + 100] = this.address
        mem[_74 + 132] = 1643723741
        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len u + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _104 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _106 = mem[_104]
        require mem[_104] <= test266151307()
        require _104 + mem[_104] + 31 < _104 + return_data.size
        _108 = mem[_104 + mem[_104]]
        if mem[_104 + mem[_104]] > test266151307():
            revert with 'NH{q', 65
        if _104 + ceil32(return_data.size) + ceil32(32 * mem[_104 + mem[_104]]) + 1 > test266151307() or ceil32(32 * mem[_104 + mem[_104]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _104 + ceil32(return_data.size) + ceil32(32 * mem[_104 + mem[_104]]) + 1
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
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[_104 + ceil32(return_data.size) + 64]
        continue 
    if s <= cd[4]:
        revert with 0, 'blop'
}

function _fallback() payable {
    mem[64] = 128
    if calldata.size < 4:
        require not calldata.size
        emit Received(msg.sender, msg.value);
    else:
        if unknown_0x73d930c0(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x24953eaa(?????) <= uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != unknown_0x24953eaa(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0x286dd3f5(?????):
                        require unknown_0x2a5d3b51(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Caller is not owner'
                        call owner with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Caller is not owner'
                    if not stor1[address(cd[4])]:
                        return 0
                    stor1[address(cd[4])] = 0
                    return 1
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
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
                    mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 1
                    stor1[address(cd[((32 * idx) + cd[4] + 36)])] = 0
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 1
                    continue 
                return bool(s)
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
            if unknown_0x9b19251a(?????) > uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != unknown_0x73d930c0(?????):
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
                    _99 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_99] == bool(mem[_99])
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
                if uint32(call.func_hash) >> 224 != unknown_0xcbac1eff(?????):
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
                    s = 0
                    while idx < ('cd', 4).length:
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        if owner != msg.sender:
                            revert with 0, 'Caller is not owner'
                        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[32] = 1
                        if stor1[address(cd[((32 * idx) + cd[4] + 36)])]:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[32] = 1
                        stor1[address(cd[((32 * idx) + cd[4] + 36)])] = 1
                        if idx == -1:
                            revert with 'NH{q', 17
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
                        _139 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _141 = mem[_139]
                        require mem[_139] <= test266151307()
                        require _139 + mem[_139] + 31 < _139 + return_data.size
                        _143 = mem[_139 + mem[_139]]
                        if mem[_139 + mem[_139]] > test266151307():
                            revert with 'NH{q', 65
                        if _139 + ceil32(return_data.size) + ceil32(32 * mem[_139 + mem[_139]]) + 1 > test266151307() or ceil32(32 * mem[_139 + mem[_139]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _139 + ceil32(return_data.size) + ceil32(32 * mem[_139 + mem[_139]]) + 1
                        mem[_139 + ceil32(return_data.size)] = _143
                        require return_data.size >= _141 + (32 * _143) + 32
                        t = _139 + _141 + 32
                        u = _139 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _143:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        if 1 >= _143:
                            revert with 'NH{q', 50
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[_139 + ceil32(return_data.size) + 64]
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
                    _140 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _142 = mem[_140]
                    require mem[_140] <= test266151307()
                    require _140 + mem[_140] + 31 < _140 + return_data.size
                    _144 = mem[_140 + mem[_140]]
                    if mem[_140 + mem[_140]] > test266151307():
                        revert with 'NH{q', 65
                    if _140 + ceil32(return_data.size) + ceil32(32 * mem[_140 + mem[_140]]) + 1 > test266151307() or ceil32(32 * mem[_140 + mem[_140]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _140 + ceil32(return_data.size) + ceil32(32 * mem[_140 + mem[_140]]) + 1
                    mem[_140 + ceil32(return_data.size)] = _144
                    require return_data.size >= _142 + (32 * _144) + 32
                    t = _140 + _142 + 32
                    u = _140 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _144:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if 1 >= _144:
                        revert with 'NH{q', 50
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_140 + ceil32(return_data.size) + 64]
                    continue 
                if s < cd[4]:
                    revert with 'NH{q', 17
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
                        _149 = mem[64]
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
                        mem[_149 + 100] = this.address
                        mem[_149 + 132] = 1643723741
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len u + -mem[64] - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _179 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _181 = mem[_179]
                        require mem[_179] <= test266151307()
                        require _179 + mem[_179] + 31 < _179 + return_data.size
                        _183 = mem[_179 + mem[_179]]
                        if mem[_179 + mem[_179]] > test266151307():
                            revert with 'NH{q', 65
                        if _179 + ceil32(return_data.size) + ceil32(32 * mem[_179 + mem[_179]]) + 1 > test266151307() or ceil32(32 * mem[_179 + mem[_179]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _179 + ceil32(return_data.size) + ceil32(32 * mem[_179 + mem[_179]]) + 1
                        mem[_179 + ceil32(return_data.size)] = _183
                        require return_data.size >= _181 + (32 * _183) + 32
                        t = _179 + _181 + 32
                        u = _179 + ceil32(return_data.size) + 32
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
                        s = mem[_179 + ceil32(return_data.size) + 64]
                        continue 
                    _150 = mem[64]
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
                    mem[_150 + 100] = this.address
                    mem[_150 + 132] = 1643723741
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len u + -mem[64] - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _180 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _182 = mem[_180]
                    require mem[_180] <= test266151307()
                    require _180 + mem[_180] + 31 < _180 + return_data.size
                    _184 = mem[_180 + mem[_180]]
                    if mem[_180 + mem[_180]] > test266151307():
                        revert with 'NH{q', 65
                    if _180 + ceil32(return_data.size) + ceil32(32 * mem[_180 + mem[_180]]) + 1 > test266151307() or ceil32(32 * mem[_180 + mem[_180]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _180 + ceil32(return_data.size) + ceil32(32 * mem[_180 + mem[_180]]) + 1
                    mem[_180 + ceil32(return_data.size)] = _184
                    require return_data.size >= _182 + (32 * _184) + 32
                    t = _180 + _182 + 32
                    u = _180 + ceil32(return_data.size) + 32
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
                    s = mem[_180 + ceil32(return_data.size) + 64]
                    continue 
                if s <= cd[4]:
                    revert with 0, 'blop'
}



}
