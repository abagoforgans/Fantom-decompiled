contract main {




// =====================  Runtime code  =====================


#
#  - zapInToken(address arg1, uint256 arg2, address arg3, address arg4)
#
address owner;
address stor1;
mapping of uint8 stor2;
mapping of address routePair;
array of address tokens;

function tokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < tokens.length
    return tokens[arg1]
}

function owner() {
    return owner
}

function routePair(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return routePair[address(arg1)]
}

function _fallback() payable {
    revert
}

function isFlip(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return not bool(stor2[address(arg1)])
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setRoutePairAddress(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    routePair[address(arg1)] = arg2
}

function setNotFlip(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = 1
    if not stor2[address(arg1)]:
        tokens.length++
        tokens[tokens.length] = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function removeToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= tokens.length:
        revert with 0, 50
    stor2[stor4[arg1]] = 0
    if tokens.length < 1:
        revert with 0, 17
    if tokens.length - 1 >= tokens.length:
        revert with 0, 50
    if arg1 >= tokens.length:
        revert with 0, 50
    tokens[arg1] = tokens[tokens.length]
    if not tokens.length:
        revert with 0, 49
    tokens[tokens.length] = 0
    tokens.length--
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sweep() payable {
    mem[64] = 96
    require not msg.value
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < tokens.length:
        mem[0] = 4
        if tokens[idx]:
            mem[mem[64] + 4] = this.address
            require ext_code.size(tokens[idx])
            call tokens[idx].0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _44 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _45 = mem[_44]
            if mem[_44]:
                mem[0] = tokens[idx]
                mem[32] = 3
                if not routePair[stor4[idx]]:
                    _47 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_47]:
                        revert with 0, 50
                    mem[_47 + 32] = tokens[idx]
                    if 1 >= mem[_47]:
                        revert with 0, 50
                    mem[_47 + 64] = stor1
                    mem[_47 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[_47 + 100] = _45
                    mem[_47 + 132] = 0
                    mem[_47 + 164] = 160
                    mem[_47 + 260] = mem[_47]
                    s = 0
                    t = _47 + 32
                    u = _47 + 292
                    while s < mem[_47]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_47 + 196] = owner
                    mem[_47 + 228] = block.timestamp
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _47 + (32 * mem[_47]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _83 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _85 = mem[_83]
                    require mem[_83] <= test266151307()
                    require _83 + mem[_83] + 31 < _83 + return_data.size
                    _87 = mem[_83 + mem[_83]]
                    if mem[_83 + mem[_83]] > test266151307():
                        revert with 0, 65
                    if _83 + ceil32(return_data.size) + (32 * mem[_83 + mem[_83]]) + 32 > test266151307() or (32 * mem[_83 + mem[_83]]) + 32 < 0:
                        revert with 0, 65
                    mem[64] = _83 + ceil32(return_data.size) + (32 * mem[_83 + mem[_83]]) + 32
                    mem[_83 + ceil32(return_data.size)] = _87
                    require return_data.size >= _85 + (32 * _87) + 32
                    t = _83 + _85 + 32
                    u = _83 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _87:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if _87 < 1:
                        revert with 0, 17
                    if _87 - 1 >= _87:
                        revert with 0, 50
                else:
                    _49 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_49]:
                        revert with 0, 50
                    mem[_49 + 32] = tokens[idx]
                    mem[0] = tokens[idx]
                    mem[32] = 3
                    if 1 >= mem[_49]:
                        revert with 0, 50
                    mem[_49 + 64] = routePair[stor4[idx]]
                    if 2 >= mem[_49]:
                        revert with 0, 50
                    mem[_49 + 96] = stor1
                    mem[_49 + 128] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[_49 + 132] = _45
                    mem[_49 + 164] = 0
                    mem[_49 + 196] = 160
                    mem[_49 + 292] = mem[_49]
                    s = 0
                    t = _49 + 32
                    u = _49 + 324
                    while s < mem[_49]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_49 + 228] = owner
                    mem[_49 + 260] = block.timestamp
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _49 + (32 * mem[_49]) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _84 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _86 = mem[_84]
                    require mem[_84] <= test266151307()
                    require _84 + mem[_84] + 31 < _84 + return_data.size
                    _88 = mem[_84 + mem[_84]]
                    if mem[_84 + mem[_84]] > test266151307():
                        revert with 0, 65
                    if _84 + ceil32(return_data.size) + (32 * mem[_84 + mem[_84]]) + 32 > test266151307() or (32 * mem[_84 + mem[_84]]) + 32 < 0:
                        revert with 0, 65
                    mem[64] = _84 + ceil32(return_data.size) + (32 * mem[_84 + mem[_84]]) + 32
                    mem[_84 + ceil32(return_data.size)] = _88
                    require return_data.size >= _86 + (32 * _88) + 32
                    t = _84 + _86 + 32
                    u = _84 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _88:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if _88 < 1:
                        revert with 0, 17
                    if _88 - 1 >= _88:
                        revert with 0, 50
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function zapOut(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[100] = msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = msg.sender
    if arg2 <= ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 132] = this.address
        mem[ceil32(return_data.size) + 164] = arg2
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg2
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        mem[(2 * ceil32(return_data.size)) + 132] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
        require ext_code.size(arg1)
        call arg1.0xdd62ed3e with:
             gas gas_remaining wei
            args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if not stor2[address(arg1)]:
            require ext_code.size(arg1)
            staticcall arg1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(arg1)
            staticcall arg1.0xd21220a7 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            if stor1 == address(ext_call.return_data[0]):
                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.removeLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg2, 0, 0, msg.sender, block.timestamp
            else:
                if stor1 != ext_call.return_data[12 len 20]:
                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg2, 0, 0, msg.sender, block.timestamp
                else:
                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.removeLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg2, 0, 0, msg.sender, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
        else:
            mem[(4 * ceil32(return_data.size)) + 128] = arg1
            if not routePair[address(arg1)]:
                mem[(4 * ceil32(return_data.size)) + 160] = stor1
                mem[(4 * ceil32(return_data.size)) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = arg2
                mem[(4 * ceil32(return_data.size)) + 228] = 0
                mem[(4 * ceil32(return_data.size)) + 260] = 160
                mem[(4 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (4 * ceil32(return_data.size)) + 128
                t = (4 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + 292] = msg.sender
                mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, 0, 160, msg.sender, block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                    revert with 0, 65
                if (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 > test266151307() or (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 < 0:
                    revert with 0, 65
                require return_data.size >= mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] < 1:
                    revert with 0, 17
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] - 1 >= mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]:
                    revert with 0, 50
            else:
                mem[(4 * ceil32(return_data.size)) + 160] = routePair[address(arg1)]
                mem[(4 * ceil32(return_data.size)) + 192] = stor1
                mem[(4 * ceil32(return_data.size)) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 228] = arg2
                mem[(4 * ceil32(return_data.size)) + 260] = 0
                mem[(4 * ceil32(return_data.size)) + 292] = 160
                mem[(4 * ceil32(return_data.size)) + 388] = 3
                idx = 0
                s = (4 * ceil32(return_data.size)) + 128
                t = (4 * ceil32(return_data.size)) + 420
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + 324] = msg.sender
                mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, 0, 160, msg.sender, block.timestamp, 3, mem[(4 * ceil32(return_data.size)) + 420 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 255 < (4 * ceil32(return_data.size)) + return_data.size + 224
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] > test266151307():
                    revert with 0, 65
                if (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 256 > test266151307() or (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 < 0:
                    revert with 0, 65
                require return_data.size >= mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] < 1:
                    revert with 0, 17
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] - 1 >= mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]:
                    revert with 0, 50
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 132] = this.address
        mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 100] = this.address
        mem[(4 * ceil32(return_data.size)) + 132] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
        require ext_code.size(arg1)
        call arg1.0xdd62ed3e with:
             gas gas_remaining wei
            args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if not stor2[address(arg1)]:
            require ext_code.size(arg1)
            staticcall arg1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(arg1)
            staticcall arg1.0xd21220a7 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            if stor1 == address(ext_call.return_data[0]):
                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.removeLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), ext_call.return_data[0], 0, 0, msg.sender, block.timestamp
            else:
                if stor1 != ext_call.return_data[12 len 20]:
                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0], 0, 0, msg.sender, block.timestamp
                else:
                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.removeLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), ext_call.return_data[0], 0, 0, msg.sender, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
        else:
            mem[0] = arg1
            mem[32] = 3
            mem[(6 * ceil32(return_data.size)) + 128] = arg1
            if not routePair[address(arg1)]:
                mem[(6 * ceil32(return_data.size)) + 160] = stor1
                mem[(6 * ceil32(return_data.size)) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 228] = 0
                mem[(6 * ceil32(return_data.size)) + 260] = 160
                mem[(6 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + 128
                t = (6 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + 292] = msg.sender
                mem[(6 * ceil32(return_data.size)) + 324] = block.timestamp
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                require mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
                if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                    revert with 0, 65
                if (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224 > test266151307() or (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 < 0:
                    revert with 0, 65
                require return_data.size >= mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32
                if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] < 1:
                    revert with 0, 17
                if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] - 1 >= mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]:
                    revert with 0, 50
            else:
                mem[(6 * ceil32(return_data.size)) + 160] = routePair[address(arg1)]
                mem[(6 * ceil32(return_data.size)) + 192] = stor1
                mem[(6 * ceil32(return_data.size)) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 260] = 0
                mem[(6 * ceil32(return_data.size)) + 292] = 160
                mem[(6 * ceil32(return_data.size)) + 388] = 3
                idx = 0
                s = (6 * ceil32(return_data.size)) + 128
                t = (6 * ceil32(return_data.size)) + 420
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + 324] = msg.sender
                mem[(6 * ceil32(return_data.size)) + 356] = block.timestamp
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 3, mem[(6 * ceil32(return_data.size)) + 420 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                require mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255 < (6 * ceil32(return_data.size)) + return_data.size + 224
                if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                    revert with 0, 65
                if (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 256 > test266151307() or (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 < 0:
                    revert with 0, 65
                require return_data.size >= mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32
                if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] < 1:
                    revert with 0, 17
                if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] - 1 >= mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]:
                    revert with 0, 50
}

function zapIn(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2[address(arg1)]:
        mem[128] = stor1
        if not routePair[address(arg1)]:
            mem[160] = arg1
            mem[192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[196] = 0
            mem[228] = 128
            mem[324] = 2
            idx = 0
            s = 128
            t = 356
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[260] = msg.sender
            mem[292] = block.timestamp
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value wei
                 gas gas_remaining wei
                args 0, 128, msg.sender, block.timestamp, 2, mem[356 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            require mem[192 len 4], 0 <= test266151307()
            require mem[192 len 4], 0 + 223 < return_data.size + 192
            if mem[mem[192 len 4], 0 + 192] > test266151307():
                revert with 0, 65
            if ceil32(return_data.size) + (32 * mem[mem[192 len 4], 0 + 192]) + 224 > test266151307() or (32 * mem[mem[192 len 4], 0 + 192]) + 32 < 0:
                revert with 0, 65
            require return_data.size >= mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32
            if mem[mem[192 len 4], 0 + 192] < 1:
                revert with 0, 17
            if mem[mem[192 len 4], 0 + 192] - 1 >= mem[mem[192 len 4], 0 + 192]:
                revert with 0, 50
        else:
            mem[160] = routePair[address(arg1)]
            mem[192] = arg1
            mem[224] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[228] = 0
            mem[260] = 128
            mem[356] = 3
            idx = 0
            s = 128
            t = 388
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[292] = msg.sender
            mem[324] = block.timestamp
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value wei
                 gas gas_remaining wei
                args 0, 128, msg.sender, block.timestamp, 3, mem[388 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            require mem[224 len 4], 0 <= test266151307()
            require mem[224 len 4], 0 + 255 < return_data.size + 224
            if mem[mem[224 len 4], 0 + 224] > test266151307():
                revert with 0, 65
            if ceil32(return_data.size) + (32 * mem[mem[224 len 4], 0 + 224]) + 256 > test266151307() or (32 * mem[mem[224 len 4], 0 + 224]) + 32 < 0:
                revert with 0, 65
            require return_data.size >= mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32
            if mem[mem[224 len 4], 0 + 224] < 1:
                revert with 0, 17
            if mem[mem[224 len 4], 0 + 224] - 1 >= mem[mem[224 len 4], 0 + 224]:
                revert with 0, 50
    else:
        require ext_code.size(arg1)
        staticcall arg1.token0() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(arg1)
        staticcall arg1.0xd21220a7 with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if stor1 == address(ext_call.return_data[0]):
            mem[0] = ext_call.return_data[12 len 20]
            mem[32] = 3
            if not routePair[ext_call.return_data[12 len 20]]:
                mem[(2 * ceil32(return_data.size)) + 96] = 2
                mem[(2 * ceil32(return_data.size)) + 128] = stor1
                mem[(2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 196] = 0
                mem[(2 * ceil32(return_data.size)) + 228] = 128
                mem[(2 * ceil32(return_data.size)) + 324] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (2 * ceil32(return_data.size)) + 356
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 260] = this.address
                mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value / 2 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 356 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _547 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                _557 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                    revert with 0, 65
                if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 224 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 32 < 0:
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 224
                mem[(4 * ceil32(return_data.size)) + 192] = _557
                require return_data.size >= _547 + (32 * _557) + 32
                mem[(4 * ceil32(return_data.size)) + 224 len 32 * _557] = mem[(2 * ceil32(return_data.size)) + _547 + 224 len 32 * _557]
                if _557 < 1:
                    revert with 0, 17
                if _557 - 1 >= _557:
                    revert with 0, 50
                _989 = mem[(32 * _557 - 1) + (4 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xdd62ed3e with:
                     gas gas_remaining wei
                    args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1011 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_1011]:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if msg.value < msg.value / 2:
                    revert with 0, 17
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value msg.value - (msg.value / 2) wei
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), _989, 0, 0, msg.sender, block.timestamp
            else:
                mem[(2 * ceil32(return_data.size)) + 96] = 3
                mem[(2 * ceil32(return_data.size)) + 128] = stor1
                mem[0] = address(ext_call.return_data[0])
                mem[32] = 3
                mem[(2 * ceil32(return_data.size)) + 160] = routePair[address(ext_call.return_data[0])]
                mem[(2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 224] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 228] = 0
                mem[(2 * ceil32(return_data.size)) + 260] = 128
                mem[(2 * ceil32(return_data.size)) + 356] = 3
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (2 * ceil32(return_data.size)) + 388
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 292] = this.address
                mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value / 2 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 388 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _548 = mem[(2 * ceil32(return_data.size)) + 224 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
                _558 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224] > test266151307():
                    revert with 0, 65
                if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 256 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 32 < 0:
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 256
                mem[(4 * ceil32(return_data.size)) + 224] = _558
                require return_data.size >= _548 + (32 * _558) + 32
                mem[(4 * ceil32(return_data.size)) + 256 len 32 * _558] = mem[(2 * ceil32(return_data.size)) + _548 + 256 len 32 * _558]
                if _558 < 1:
                    revert with 0, 17
                if _558 - 1 >= _558:
                    revert with 0, 50
                _990 = mem[(32 * _558 - 1) + (4 * ceil32(return_data.size)) + 256]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xdd62ed3e with:
                     gas gas_remaining wei
                    args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1012 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_1012]:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if msg.value < msg.value / 2:
                    revert with 0, 17
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value msg.value - (msg.value / 2) wei
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), _990, 0, 0, msg.sender, block.timestamp
        else:
            if stor1 == ext_call.return_data[12 len 20]:
                if stor1 == address(ext_call.return_data[0]):
                    mem[0] = ext_call.return_data[12 len 20]
                    mem[32] = 3
                    if not routePair[ext_call.return_data[12 len 20]]:
                        mem[(2 * ceil32(return_data.size)) + 96] = 2
                        mem[(2 * ceil32(return_data.size)) + 128] = stor1
                        mem[(2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 196] = 0
                        mem[(2 * ceil32(return_data.size)) + 228] = 128
                        mem[(2 * ceil32(return_data.size)) + 324] = 2
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = (2 * ceil32(return_data.size)) + 356
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 260] = this.address
                        mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value msg.value / 2 wei
                             gas gas_remaining wei
                            args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 356 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _551 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
                        require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                        _561 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                            revert with 0, 65
                        if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 224 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 32 < 0:
                            revert with 0, 65
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 224
                        mem[(4 * ceil32(return_data.size)) + 192] = _561
                        require return_data.size >= _551 + (32 * _561) + 32
                        mem[(4 * ceil32(return_data.size)) + 224 len 32 * _561] = mem[(2 * ceil32(return_data.size)) + _551 + 224 len 32 * _561]
                        if _561 < 1:
                            revert with 0, 17
                        if _561 - 1 >= _561:
                            revert with 0, 50
                        _993 = mem[(32 * _561 - 1) + (4 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xdd62ed3e with:
                             gas gas_remaining wei
                            args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1013 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_1013]:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, -1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if msg.value < msg.value / 2:
                            revert with 0, 17
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _993, 0, 0, msg.sender, block.timestamp
                    else:
                        mem[(2 * ceil32(return_data.size)) + 96] = 3
                        mem[(2 * ceil32(return_data.size)) + 128] = stor1
                        mem[0] = address(ext_call.return_data[0])
                        mem[32] = 3
                        mem[(2 * ceil32(return_data.size)) + 160] = routePair[address(ext_call.return_data[0])]
                        mem[(2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 224] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 228] = 0
                        mem[(2 * ceil32(return_data.size)) + 260] = 128
                        mem[(2 * ceil32(return_data.size)) + 356] = 3
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = (2 * ceil32(return_data.size)) + 388
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 292] = this.address
                        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value msg.value / 2 wei
                             gas gas_remaining wei
                            args 0, 128, address(this.address), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 388 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _552 = mem[(2 * ceil32(return_data.size)) + 224 len 4], 0
                        require mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
                        _562 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224] > test266151307():
                            revert with 0, 65
                        if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 256 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 32 < 0:
                            revert with 0, 65
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 256
                        mem[(4 * ceil32(return_data.size)) + 224] = _562
                        require return_data.size >= _552 + (32 * _562) + 32
                        mem[(4 * ceil32(return_data.size)) + 256 len 32 * _562] = mem[(2 * ceil32(return_data.size)) + _552 + 256 len 32 * _562]
                        if _562 < 1:
                            revert with 0, 17
                        if _562 - 1 >= _562:
                            revert with 0, 50
                        _994 = mem[(32 * _562 - 1) + (4 * ceil32(return_data.size)) + 256]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xdd62ed3e with:
                             gas gas_remaining wei
                            args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1014 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_1014]:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, -1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if msg.value < msg.value / 2:
                            revert with 0, 17
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _994, 0, 0, msg.sender, block.timestamp
                else:
                    mem[0] = address(ext_call.return_data[0])
                    mem[32] = 3
                    if not routePair[address(ext_call.return_data[0])]:
                        mem[(2 * ceil32(return_data.size)) + 96] = 2
                        mem[(2 * ceil32(return_data.size)) + 128] = stor1
                        mem[(2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 196] = 0
                        mem[(2 * ceil32(return_data.size)) + 228] = 128
                        mem[(2 * ceil32(return_data.size)) + 324] = 2
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = (2 * ceil32(return_data.size)) + 356
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 260] = this.address
                        mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value msg.value / 2 wei
                             gas gas_remaining wei
                            args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 356 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _553 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
                        require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                        _563 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                            revert with 0, 65
                        if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 224 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 32 < 0:
                            revert with 0, 65
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 224
                        mem[(4 * ceil32(return_data.size)) + 192] = _563
                        require return_data.size >= _553 + (32 * _563) + 32
                        mem[(4 * ceil32(return_data.size)) + 224 len 32 * _563] = mem[(2 * ceil32(return_data.size)) + _553 + 224 len 32 * _563]
                        if _563 < 1:
                            revert with 0, 17
                        if _563 - 1 >= _563:
                            revert with 0, 50
                        _995 = mem[(32 * _563 - 1) + (4 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xdd62ed3e with:
                             gas gas_remaining wei
                            args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1015 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_1015]:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, -1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if msg.value < msg.value / 2:
                            revert with 0, 17
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _995, 0, 0, msg.sender, block.timestamp
                    else:
                        mem[(2 * ceil32(return_data.size)) + 96] = 3
                        mem[(2 * ceil32(return_data.size)) + 128] = stor1
                        mem[0] = address(ext_call.return_data[0])
                        mem[32] = 3
                        mem[(2 * ceil32(return_data.size)) + 160] = routePair[address(ext_call.return_data[0])]
                        mem[(2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 224] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 228] = 0
                        mem[(2 * ceil32(return_data.size)) + 260] = 128
                        mem[(2 * ceil32(return_data.size)) + 356] = 3
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = (2 * ceil32(return_data.size)) + 388
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 292] = this.address
                        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value msg.value / 2 wei
                             gas gas_remaining wei
                            args 0, 128, address(this.address), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 388 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _554 = mem[(2 * ceil32(return_data.size)) + 224 len 4], 0
                        require mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
                        _564 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224] > test266151307():
                            revert with 0, 65
                        if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 256 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 32 < 0:
                            revert with 0, 65
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 256
                        mem[(4 * ceil32(return_data.size)) + 224] = _564
                        require return_data.size >= _554 + (32 * _564) + 32
                        mem[(4 * ceil32(return_data.size)) + 256 len 32 * _564] = mem[(2 * ceil32(return_data.size)) + _554 + 256 len 32 * _564]
                        if _564 < 1:
                            revert with 0, 17
                        if _564 - 1 >= _564:
                            revert with 0, 50
                        _996 = mem[(32 * _564 - 1) + (4 * ceil32(return_data.size)) + 256]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xdd62ed3e with:
                             gas gas_remaining wei
                            args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1016 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_1016]:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, -1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if msg.value < msg.value / 2:
                            revert with 0, 17
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _996, 0, 0, msg.sender, block.timestamp
            else:
                mem[0] = address(ext_call.return_data[0])
                mem[32] = 3
                if not routePair[address(ext_call.return_data[0])]:
                    mem[(2 * ceil32(return_data.size)) + 96] = 2
                    mem[(2 * ceil32(return_data.size)) + 128] = stor1
                    mem[(2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 196] = 0
                    mem[(2 * ceil32(return_data.size)) + 228] = 128
                    mem[(2 * ceil32(return_data.size)) + 324] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = (2 * ceil32(return_data.size)) + 356
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 260] = this.address
                    mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value msg.value / 2 wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 356 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _549 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                    _559 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 224 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 32 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 224
                    mem[(4 * ceil32(return_data.size)) + 192] = _559
                    require return_data.size >= _549 + (32 * _559) + 32
                    mem[(4 * ceil32(return_data.size)) + 224 len 32 * _559] = mem[(2 * ceil32(return_data.size)) + _549 + 224 len 32 * _559]
                    if _559 < 1:
                        revert with 0, 17
                    if _559 - 1 >= _559:
                        revert with 0, 50
                    _991 = mem[(32 * _559 - 1) + (4 * ceil32(return_data.size)) + 224]
                    if msg.value < msg.value / 2:
                        revert with 0, 17
                    mem[0] = address(ext_call.return_data[0])
                    mem[32] = 3
                    if not routePair[address(ext_call.return_data[0])]:
                        _1021 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if not mem[_1021]:
                            revert with 0, 50
                        mem[_1021 + 32] = stor1
                        if 1 >= mem[_1021]:
                            revert with 0, 50
                        mem[_1021 + 64] = address(ext_call.return_data[0])
                        mem[_1021 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                        mem[_1021 + 100] = 0
                        mem[_1021 + 132] = 128
                        mem[_1021 + 228] = mem[_1021]
                        idx = 0
                        s = _1021 + 32
                        t = _1021 + 260
                        while idx < mem[_1021]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_1021 + 164] = this.address
                        mem[_1021 + 196] = block.timestamp
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.mem[mem[64] len 4] with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1021 + (32 * mem[_1021]) + -mem[64] + 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1349 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1353 = mem[_1349]
                        require mem[_1349] <= test266151307()
                        require _1349 + mem[_1349] + 31 < _1349 + return_data.size
                        _1357 = mem[_1349 + mem[_1349]]
                        if mem[_1349 + mem[_1349]] > test266151307():
                            revert with 0, 65
                        if _1349 + ceil32(return_data.size) + (32 * mem[_1349 + mem[_1349]]) + 32 > test266151307() or (32 * mem[_1349 + mem[_1349]]) + 32 < 0:
                            revert with 0, 65
                        mem[64] = _1349 + ceil32(return_data.size) + (32 * mem[_1349 + mem[_1349]]) + 32
                        mem[_1349 + ceil32(return_data.size)] = _1357
                        require return_data.size >= _1353 + (32 * _1357) + 32
                        mem[_1349 + ceil32(return_data.size) + 32 len 32 * _1357] = mem[_1349 + _1353 + 32 len 32 * _1357]
                        if _1357 < 1:
                            revert with 0, 17
                        if _1357 - 1 >= _1357:
                            revert with 0, 50
                        _1561 = mem[(32 * _1357 - 1) + _1349 + ceil32(return_data.size) + 32]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xdd62ed3e with:
                             gas gas_remaining wei
                            args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1573 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1573]:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xdd62ed3e with:
                                 gas gas_remaining wei
                                args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1597 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_1597]:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, -1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xdd62ed3e with:
                                 gas gas_remaining wei
                                args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1618 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_1618]:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _991, _1561, 0, 0, msg.sender, block.timestamp
                    else:
                        _1023 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if not mem[_1023]:
                            revert with 0, 50
                        mem[_1023 + 32] = stor1
                        mem[0] = address(ext_call.return_data[0])
                        mem[32] = 3
                        if 1 >= mem[_1023]:
                            revert with 0, 50
                        mem[_1023 + 64] = routePair[address(ext_call.return_data[0])]
                        if 2 >= mem[_1023]:
                            revert with 0, 50
                        mem[_1023 + 96] = address(ext_call.return_data[0])
                        mem[_1023 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                        mem[_1023 + 132] = 0
                        mem[_1023 + 164] = 128
                        mem[_1023 + 260] = mem[_1023]
                        idx = 0
                        s = _1023 + 32
                        t = _1023 + 292
                        while idx < mem[_1023]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_1023 + 196] = this.address
                        mem[_1023 + 228] = block.timestamp
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.mem[mem[64] len 4] with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1023 + (32 * mem[_1023]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1350 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1354 = mem[_1350]
                        require mem[_1350] <= test266151307()
                        require _1350 + mem[_1350] + 31 < _1350 + return_data.size
                        _1358 = mem[_1350 + mem[_1350]]
                        if mem[_1350 + mem[_1350]] > test266151307():
                            revert with 0, 65
                        if _1350 + ceil32(return_data.size) + (32 * mem[_1350 + mem[_1350]]) + 32 > test266151307() or (32 * mem[_1350 + mem[_1350]]) + 32 < 0:
                            revert with 0, 65
                        mem[64] = _1350 + ceil32(return_data.size) + (32 * mem[_1350 + mem[_1350]]) + 32
                        mem[_1350 + ceil32(return_data.size)] = _1358
                        require return_data.size >= _1354 + (32 * _1358) + 32
                        mem[_1350 + ceil32(return_data.size) + 32 len 32 * _1358] = mem[_1350 + _1354 + 32 len 32 * _1358]
                        if _1358 < 1:
                            revert with 0, 17
                        if _1358 - 1 >= _1358:
                            revert with 0, 50
                        _1562 = mem[(32 * _1358 - 1) + _1350 + ceil32(return_data.size) + 32]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xdd62ed3e with:
                             gas gas_remaining wei
                            args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1574 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1574]:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xdd62ed3e with:
                                 gas gas_remaining wei
                                args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1598 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_1598]:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, -1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xdd62ed3e with:
                                 gas gas_remaining wei
                                args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1620 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_1620]:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _991, _1562, 0, 0, msg.sender, block.timestamp
                else:
                    mem[(2 * ceil32(return_data.size)) + 96] = 3
                    mem[(2 * ceil32(return_data.size)) + 128] = stor1
                    mem[0] = address(ext_call.return_data[0])
                    mem[32] = 3
                    mem[(2 * ceil32(return_data.size)) + 160] = routePair[address(ext_call.return_data[0])]
                    mem[(2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 224] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                    mem[(2 * ceil32(return_data.size)) + 260] = 128
                    mem[(2 * ceil32(return_data.size)) + 356] = 3
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = (2 * ceil32(return_data.size)) + 388
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value msg.value / 2 wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 388 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _550 = mem[(2 * ceil32(return_data.size)) + 224 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
                    _560 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 256 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 32 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 256
                    mem[(4 * ceil32(return_data.size)) + 224] = _560
                    require return_data.size >= _550 + (32 * _560) + 32
                    mem[(4 * ceil32(return_data.size)) + 256 len 32 * _560] = mem[(2 * ceil32(return_data.size)) + _550 + 256 len 32 * _560]
                    if _560 < 1:
                        revert with 0, 17
                    if _560 - 1 >= _560:
                        revert with 0, 50
                    _992 = mem[(32 * _560 - 1) + (4 * ceil32(return_data.size)) + 256]
                    if msg.value < msg.value / 2:
                        revert with 0, 17
                    mem[0] = address(ext_call.return_data[0])
                    mem[32] = 3
                    if not routePair[address(ext_call.return_data[0])]:
                        _1025 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if not mem[_1025]:
                            revert with 0, 50
                        mem[_1025 + 32] = stor1
                        if 1 >= mem[_1025]:
                            revert with 0, 50
                        mem[_1025 + 64] = address(ext_call.return_data[0])
                        mem[_1025 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                        mem[_1025 + 100] = 0
                        mem[_1025 + 132] = 128
                        mem[_1025 + 228] = mem[_1025]
                        idx = 0
                        s = _1025 + 32
                        t = _1025 + 260
                        while idx < mem[_1025]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_1025 + 164] = this.address
                        mem[_1025 + 196] = block.timestamp
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.mem[mem[64] len 4] with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1025 + (32 * mem[_1025]) + -mem[64] + 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1351 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1355 = mem[_1351]
                        require mem[_1351] <= test266151307()
                        require _1351 + mem[_1351] + 31 < _1351 + return_data.size
                        _1359 = mem[_1351 + mem[_1351]]
                        if mem[_1351 + mem[_1351]] > test266151307():
                            revert with 0, 65
                        if _1351 + ceil32(return_data.size) + (32 * mem[_1351 + mem[_1351]]) + 32 > test266151307() or (32 * mem[_1351 + mem[_1351]]) + 32 < 0:
                            revert with 0, 65
                        mem[64] = _1351 + ceil32(return_data.size) + (32 * mem[_1351 + mem[_1351]]) + 32
                        mem[_1351 + ceil32(return_data.size)] = _1359
                        require return_data.size >= _1355 + (32 * _1359) + 32
                        mem[_1351 + ceil32(return_data.size) + 32 len 32 * _1359] = mem[_1351 + _1355 + 32 len 32 * _1359]
                        if _1359 < 1:
                            revert with 0, 17
                        if _1359 - 1 >= _1359:
                            revert with 0, 50
                        _1563 = mem[(32 * _1359 - 1) + _1351 + ceil32(return_data.size) + 32]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xdd62ed3e with:
                             gas gas_remaining wei
                            args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1575 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1575]:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xdd62ed3e with:
                                 gas gas_remaining wei
                                args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1599 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_1599]:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, -1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xdd62ed3e with:
                                 gas gas_remaining wei
                                args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1622 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_1622]:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _992, _1563, 0, 0, msg.sender, block.timestamp
                    else:
                        _1027 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if not mem[_1027]:
                            revert with 0, 50
                        mem[_1027 + 32] = stor1
                        mem[0] = address(ext_call.return_data[0])
                        mem[32] = 3
                        if 1 >= mem[_1027]:
                            revert with 0, 50
                        mem[_1027 + 64] = routePair[address(ext_call.return_data[0])]
                        if 2 >= mem[_1027]:
                            revert with 0, 50
                        mem[_1027 + 96] = address(ext_call.return_data[0])
                        mem[_1027 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                        mem[_1027 + 132] = 0
                        mem[_1027 + 164] = 128
                        mem[_1027 + 260] = mem[_1027]
                        idx = 0
                        s = _1027 + 32
                        t = _1027 + 292
                        while idx < mem[_1027]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_1027 + 196] = this.address
                        mem[_1027 + 228] = block.timestamp
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.mem[mem[64] len 4] with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1027 + (32 * mem[_1027]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1352 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1356 = mem[_1352]
                        require mem[_1352] <= test266151307()
                        require _1352 + mem[_1352] + 31 < _1352 + return_data.size
                        _1360 = mem[_1352 + mem[_1352]]
                        if mem[_1352 + mem[_1352]] > test266151307():
                            revert with 0, 65
                        if _1352 + ceil32(return_data.size) + (32 * mem[_1352 + mem[_1352]]) + 32 > test266151307() or (32 * mem[_1352 + mem[_1352]]) + 32 < 0:
                            revert with 0, 65
                        mem[64] = _1352 + ceil32(return_data.size) + (32 * mem[_1352 + mem[_1352]]) + 32
                        mem[_1352 + ceil32(return_data.size)] = _1360
                        require return_data.size >= _1356 + (32 * _1360) + 32
                        mem[_1352 + ceil32(return_data.size) + 32 len 32 * _1360] = mem[_1352 + _1356 + 32 len 32 * _1360]
                        if _1360 < 1:
                            revert with 0, 17
                        if _1360 - 1 >= _1360:
                            revert with 0, 50
                        _1564 = mem[(32 * _1360 - 1) + _1352 + ceil32(return_data.size) + 32]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xdd62ed3e with:
                             gas gas_remaining wei
                            args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1576 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1576]:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xdd62ed3e with:
                                 gas gas_remaining wei
                                args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1600 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_1600]:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, -1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xdd62ed3e with:
                                 gas gas_remaining wei
                                args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1624 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_1624]:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _992, _1564, 0, 0, msg.sender, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
}



}
