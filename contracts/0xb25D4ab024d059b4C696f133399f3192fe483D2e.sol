contract main {




// =====================  Runtime code  =====================


address owner;
array of address sub_dc98dc09;
array of address sub_ef8969d3;
address wethAddress;
array of address tokens;

function weth() payable {
    return wethAddress
}

function tokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < tokens.length
    return tokens[arg1]
}

function owner() payable {
    return owner
}

function sub_dc98dc09(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_dc98dc09.length
    return sub_dc98dc09[arg1]
}

function sub_ef8969d3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_ef8969d3.length
    return sub_ef8969d3[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function addToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokens.length++
    tokens[tokens.length] = arg1
    emit 0x3fcb42e4: arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function checkToken(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 >= sub_dc98dc09.length:
        return 0
    if 0 >= sub_ef8969d3.length:
        revert with 0, 50
    mem[0] = 2
    require not msg.sender
    idx = 0
    while idx < tokens.length:
        mem[0] = 4
        if tokens[idx] != arg1:
            mem[mem[64] + 4] = tokens[idx]
            mem[mem[64] + 36] = arg1
            require ext_code.size(sub_ef8969d3)
            call sub_ef8969d3.getPair(address arg1, address arg2) with:
                 gas gas_remaining wei
                args tokens[idx], arg1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _221 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_221] == mem[_221 + 12 len 20]
            if mem[_221 + 12 len 20]:
                mem[mem[64] + 4] = this.address
                require ext_code.size(tokens[idx])
                staticcall tokens[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _227 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _228 = mem[_227]
                _229 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_229]:
                    revert with 0, 50
                mem[_229 + 32] = tokens[idx]
                if 1 >= mem[_229]:
                    revert with 0, 50
                mem[_229 + 64] = arg1
                mem[_229 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_229 + 100] = _228
                mem[_229 + 132] = 64
                mem[_229 + 164] = mem[_229]
                s = 0
                t = _229 + 32
                u = _229 + 196
                while s < mem[_229]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(sub_dc98dc09)
                call sub_dc98dc09.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _229 + (32 * mem[_229]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _437 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _438 = mem[_437]
                require mem[_437] <= test266151307()
                require _437 + mem[_437] + 31 < _437 + return_data.size
                _439 = mem[_437 + mem[_437]]
                if mem[_437 + mem[_437]] > test266151307():
                    revert with 0, 65
                if _437 + ceil32(return_data.size) + ceil32(32 * mem[_437 + mem[_437]]) + 1 > test266151307() or ceil32(32 * mem[_437 + mem[_437]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _437 + ceil32(return_data.size) + ceil32(32 * mem[_437 + mem[_437]]) + 1
                mem[_437 + ceil32(return_data.size)] = _439
                require return_data.size >= _438 + (32 * _439) + 32
                t = _437 + _438 + 32
                u = _437 + ceil32(return_data.size) + 32
                s = 0
                while s < _439:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _639 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _640 = mem[_639]
                mem[mem[64] + 4] = sub_dc98dc09
                mem[mem[64] + 36] = _228
                require ext_code.size(tokens[idx])
                call tokens[idx].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_dc98dc09, _228
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    return 6
                _643 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_643] == bool(mem[_643])
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _228
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _646 = mem[_229]
                mem[mem[64] + 164] = mem[_229]
                s = 0
                t = _229 + 32
                u = mem[64] + 196
                while s < _646:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp
                require ext_code.size(sub_dc98dc09)
                call sub_dc98dc09.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _228, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _646) + 32]
                if not ext_call.success:
                    return 7
                mem[mem[64] + 4] = this.address
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _835 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_835] < _640:
                    revert with 0, 17
                if 1 >= mem[_437 + ceil32(return_data.size)]:
                    revert with 0, 50
                if mem[_437 + ceil32(return_data.size) + 64] > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
                    revert with 0, 17
                if mem[_835] - _640 < 50 * mem[_437 + ceil32(return_data.size) + 64] / 100:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _847 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _848 = mem[_847]
                    _849 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_849]:
                        revert with 0, 50
                    mem[_849 + 32] = arg1
                    if 1 >= mem[_849]:
                        revert with 0, 50
                    mem[_849 + 64] = tokens[idx]
                    mem[_849 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_849 + 100] = _848
                    mem[_849 + 132] = 64
                    mem[_849 + 164] = mem[_849]
                    s = 0
                    t = _849 + 32
                    u = _849 + 196
                    while s < mem[_849]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(sub_dc98dc09)
                    call sub_dc98dc09.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _849 + (32 * mem[_849]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1024 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1028 = mem[_1024]
                    require mem[_1024] <= test266151307()
                    require _1024 + mem[_1024] + 31 < _1024 + return_data.size
                    _1032 = mem[_1024 + mem[_1024]]
                    if mem[_1024 + mem[_1024]] > test266151307():
                        revert with 0, 65
                    if _1024 + ceil32(return_data.size) + ceil32(32 * mem[_1024 + mem[_1024]]) + 1 > test266151307() or ceil32(32 * mem[_1024 + mem[_1024]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _1024 + ceil32(return_data.size) + ceil32(32 * mem[_1024 + mem[_1024]]) + 1
                    mem[_1024 + ceil32(return_data.size)] = _1032
                    require return_data.size >= _1028 + (32 * _1032) + 32
                    t = _1024 + _1028 + 32
                    u = _1024 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _1032:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tokens[idx])
                    staticcall tokens[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1160 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1164 = mem[_1160]
                    mem[mem[64] + 4] = sub_dc98dc09
                    mem[mem[64] + 36] = _848
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_dc98dc09, _848
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        return 6
                    _1176 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1176] == bool(mem[_1176])
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _848
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _1188 = mem[_849]
                    mem[mem[64] + 164] = mem[_849]
                    s = 0
                    t = _849 + 32
                    u = mem[64] + 196
                    while s < _1188:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(sub_dc98dc09)
                    call sub_dc98dc09.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _848, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _1188) + 32]
                    if not ext_call.success:
                        return 7
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tokens[idx])
                    staticcall tokens[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1272 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1272] < _1164:
                        revert with 0, 17
                    if 1 >= mem[_1024 + ceil32(return_data.size)]:
                        revert with 0, 50
                    if mem[_1024 + ceil32(return_data.size) + 64] > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
                        revert with 0, 17
                    if mem[_1272] - _1164 >= 50 * mem[_1024 + ceil32(return_data.size) + 64] / 100:
                        if 1 >= mem[_1024 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if mem[_1024 + ceil32(return_data.size) + 64] > 0x333333333333333333333333333333333333333333333333333333333333333:
                            revert with 0, 17
                        if mem[_1272] - _1164 >= 80 * mem[_1024 + ceil32(return_data.size) + 64] / 100:
                            if 1 >= mem[_1024 + ceil32(return_data.size)]:
                                revert with 0, 50
                            if mem[_1024 + ceil32(return_data.size) + 64] > 0x2d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d8:
                                revert with 0, 17
                else:
                    if 1 >= mem[_437 + ceil32(return_data.size)]:
                        revert with 0, 50
                    if mem[_437 + ceil32(return_data.size) + 64] > 0x333333333333333333333333333333333333333333333333333333333333333:
                        revert with 0, 17
                    if mem[_835] - _640 < 80 * mem[_437 + ceil32(return_data.size) + 64] / 100:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _856 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _858 = mem[_856]
                        _860 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_860]:
                            revert with 0, 50
                        mem[_860 + 32] = arg1
                        if 1 >= mem[_860]:
                            revert with 0, 50
                        mem[_860 + 64] = tokens[idx]
                        mem[_860 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_860 + 100] = _858
                        mem[_860 + 132] = 64
                        mem[_860 + 164] = mem[_860]
                        s = 0
                        t = _860 + 32
                        u = _860 + 196
                        while s < mem[_860]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(sub_dc98dc09)
                        call sub_dc98dc09.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _860 + (32 * mem[_860]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1023 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1027 = mem[_1023]
                        require mem[_1023] <= test266151307()
                        require _1023 + mem[_1023] + 31 < _1023 + return_data.size
                        _1031 = mem[_1023 + mem[_1023]]
                        if mem[_1023 + mem[_1023]] > test266151307():
                            revert with 0, 65
                        if _1023 + ceil32(return_data.size) + ceil32(32 * mem[_1023 + mem[_1023]]) + 1 > test266151307() or ceil32(32 * mem[_1023 + mem[_1023]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _1023 + ceil32(return_data.size) + ceil32(32 * mem[_1023 + mem[_1023]]) + 1
                        mem[_1023 + ceil32(return_data.size)] = _1031
                        require return_data.size >= _1027 + (32 * _1031) + 32
                        t = _1023 + _1027 + 32
                        u = _1023 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _1031:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokens[idx])
                        staticcall tokens[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1159 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1163 = mem[_1159]
                        mem[mem[64] + 4] = sub_dc98dc09
                        mem[mem[64] + 36] = _858
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_dc98dc09, _858
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            return 6
                        _1175 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1175] == bool(mem[_1175])
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _858
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _1187 = mem[_860]
                        mem[mem[64] + 164] = mem[_860]
                        s = 0
                        t = _860 + 32
                        u = mem[64] + 196
                        while s < _1187:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp
                        require ext_code.size(sub_dc98dc09)
                        call sub_dc98dc09.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _858, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _1187) + 32]
                        if not ext_call.success:
                            return 7
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokens[idx])
                        staticcall tokens[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1271 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1271] < _1163:
                            revert with 0, 17
                        if 1 >= mem[_1023 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if mem[_1023 + ceil32(return_data.size) + 64] > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
                            revert with 0, 17
                        if mem[_1271] - _1163 >= 50 * mem[_1023 + ceil32(return_data.size) + 64] / 100:
                            if 1 >= mem[_1023 + ceil32(return_data.size)]:
                                revert with 0, 50
                            if mem[_1023 + ceil32(return_data.size) + 64] > 0x333333333333333333333333333333333333333333333333333333333333333:
                                revert with 0, 17
                            if mem[_1271] - _1163 >= 80 * mem[_1023 + ceil32(return_data.size) + 64] / 100:
                                if 1 >= mem[_1023 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                if mem[_1023 + ceil32(return_data.size) + 64] > 0x2d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d8:
                                    revert with 0, 17
                    else:
                        if 1 >= mem[_437 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if mem[_437 + ceil32(return_data.size) + 64] > 0x2d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d8:
                            revert with 0, 17
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if mem[_835] - _640 < 90 * mem[_437 + ceil32(return_data.size) + 64] / 100:
                            _873 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _877 = mem[_873]
                            _882 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_882]:
                                revert with 0, 50
                            mem[_882 + 32] = arg1
                            if 1 >= mem[_882]:
                                revert with 0, 50
                            mem[_882 + 64] = tokens[idx]
                            mem[_882 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_882 + 100] = _877
                            mem[_882 + 132] = 64
                            mem[_882 + 164] = mem[_882]
                            s = 0
                            t = _882 + 32
                            u = _882 + 196
                            while s < mem[_882]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(sub_dc98dc09)
                            call sub_dc98dc09.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _882 + (32 * mem[_882]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1022 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1026 = mem[_1022]
                            require mem[_1022] <= test266151307()
                            require _1022 + mem[_1022] + 31 < _1022 + return_data.size
                            _1030 = mem[_1022 + mem[_1022]]
                            if mem[_1022 + mem[_1022]] > test266151307():
                                revert with 0, 65
                            if _1022 + ceil32(return_data.size) + ceil32(32 * mem[_1022 + mem[_1022]]) + 1 > test266151307() or ceil32(32 * mem[_1022 + mem[_1022]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _1022 + ceil32(return_data.size) + ceil32(32 * mem[_1022 + mem[_1022]]) + 1
                            mem[_1022 + ceil32(return_data.size)] = _1030
                            require return_data.size >= _1026 + (32 * _1030) + 32
                            t = _1022 + _1026 + 32
                            u = _1022 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _1030:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokens[idx])
                            staticcall tokens[idx].0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1158 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1162 = mem[_1158]
                            mem[mem[64] + 4] = sub_dc98dc09
                            mem[mem[64] + 36] = _877
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_dc98dc09, _877
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                return 6
                            _1174 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1174] == bool(mem[_1174])
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _877
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _1186 = mem[_882]
                            mem[mem[64] + 164] = mem[_882]
                            s = 0
                            t = _882 + 32
                            u = mem[64] + 196
                            while s < _1186:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            require ext_code.size(sub_dc98dc09)
                            call sub_dc98dc09.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _877, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _1186) + 32]
                            if not ext_call.success:
                                return 7
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokens[idx])
                            staticcall tokens[idx].0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1270 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_1270] < _1162:
                                revert with 0, 17
                            if 1 >= mem[_1022 + ceil32(return_data.size)]:
                                revert with 0, 50
                            if mem[_1022 + ceil32(return_data.size) + 64] > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
                                revert with 0, 17
                            if mem[_1270] - _1162 >= 50 * mem[_1022 + ceil32(return_data.size) + 64] / 100:
                                if 1 >= mem[_1022 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                if mem[_1022 + ceil32(return_data.size) + 64] > 0x333333333333333333333333333333333333333333333333333333333333333:
                                    revert with 0, 17
                                if mem[_1270] - _1162 >= 80 * mem[_1022 + ceil32(return_data.size) + 64] / 100:
                                    if 1 >= mem[_1022 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    if mem[_1022 + ceil32(return_data.size) + 64] > 0x2d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d8:
                                        revert with 0, 17
                        else:
                            _870 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _875 = mem[_870]
                            _878 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_878]:
                                revert with 0, 50
                            mem[_878 + 32] = arg1
                            if 1 >= mem[_878]:
                                revert with 0, 50
                            mem[_878 + 64] = tokens[idx]
                            mem[_878 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_878 + 100] = _875
                            mem[_878 + 132] = 64
                            mem[_878 + 164] = mem[_878]
                            s = 0
                            t = _878 + 32
                            u = _878 + 196
                            while s < mem[_878]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(sub_dc98dc09)
                            call sub_dc98dc09.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _878 + (32 * mem[_878]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1021 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1025 = mem[_1021]
                            require mem[_1021] <= test266151307()
                            require _1021 + mem[_1021] + 31 < _1021 + return_data.size
                            _1029 = mem[_1021 + mem[_1021]]
                            if mem[_1021 + mem[_1021]] > test266151307():
                                revert with 0, 65
                            if _1021 + ceil32(return_data.size) + ceil32(32 * mem[_1021 + mem[_1021]]) + 1 > test266151307() or ceil32(32 * mem[_1021 + mem[_1021]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _1021 + ceil32(return_data.size) + ceil32(32 * mem[_1021 + mem[_1021]]) + 1
                            mem[_1021 + ceil32(return_data.size)] = _1029
                            require return_data.size >= _1025 + (32 * _1029) + 32
                            t = _1021 + _1025 + 32
                            u = _1021 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _1029:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokens[idx])
                            staticcall tokens[idx].0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1157 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1161 = mem[_1157]
                            mem[mem[64] + 4] = sub_dc98dc09
                            mem[mem[64] + 36] = _875
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_dc98dc09, _875
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                return 6
                            _1173 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1173] == bool(mem[_1173])
                            _1181 = mem[64]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _875
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _1185 = mem[_878]
                            mem[mem[64] + 164] = mem[_878]
                            s = 0
                            t = _878 + 32
                            u = mem[64] + 196
                            while s < _1185:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1181 + 100] = this.address
                            mem[_1181 + 132] = block.timestamp
                            require ext_code.size(sub_dc98dc09)
                            call sub_dc98dc09.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1181 + (32 * _1185) + -mem[64] + 192]
                            if not ext_call.success:
                                return 7
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokens[idx])
                            staticcall tokens[idx].0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1269 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_1269] < _1161:
                                revert with 0, 17
                            if 1 >= mem[_1021 + ceil32(return_data.size)]:
                                revert with 0, 50
                            if mem[_1021 + ceil32(return_data.size) + 64] > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
                                revert with 0, 17
                            if mem[_1269] - _1161 >= 50 * mem[_1021 + ceil32(return_data.size) + 64] / 100:
                                if 1 >= mem[_1021 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                if mem[_1021 + ceil32(return_data.size) + 64] > 0x333333333333333333333333333333333333333333333333333333333333333:
                                    revert with 0, 17
                                if mem[_1269] - _1161 >= 80 * mem[_1021 + ceil32(return_data.size) + 64] / 100:
                                    if 1 >= mem[_1021 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    if mem[_1021 + ceil32(return_data.size) + 64] > 0x2d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d8:
                                        revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 2
}



}
