contract main {




// =====================  Runtime code  =====================


#
#  - sub_18f138d2(?)
#  - sub_2b29debf(?)
#  - sub_35e8b7d5(?)
#  - sub_79ebf646(?)
#  - sub_98acc932(?)
#  - sub_a443337b(?)
#  - sub_b7d09df1(?)
#  - sub_cee6202c(?)
#
address owner;
address stor1;
address sub_c4cf0995Address;
address sub_2d2e3a93Address;
address sub_6f190315Address;
address sub_76b8fcfcAddress;
address sub_ed371d17Address;
address sub_462b61e8Address;

function sub_2d2e3a93(?) {
    return sub_2d2e3a93Address
}

function sub_462b61e8(?) {
    return sub_462b61e8Address
}

function sub_6f190315(?) {
    return sub_6f190315Address
}

function sub_76b8fcfc(?) {
    return sub_76b8fcfcAddress
}

function owner() {
    return owner
}

function sub_c4cf0995(?) {
    return sub_c4cf0995Address
}

function sub_ed371d17(?) {
    return sub_ed371d17Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_fa3680da(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require ext_code.size(sub_462b61e8Address)
    call sub_462b61e8Address.0xf1efacf9 with:
         gas gas_remaining wei
        args 0, 0, arg2, arg3, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[64]
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
        staticcall arg1.0x70a08231 with:
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

function sub_fe9c9b13(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    mem[96] = 2
    mem[128] = stor1
    mem[160] = address(arg1)
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
    mem[260] = address(arg3)
    mem[292] = block.timestamp
    require ext_code.size(address(arg4))
    call address(arg4).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg2 wei
         gas gas_remaining wei
        args 0, 128, address(arg3), block.timestamp, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _21 = mem[192 len 4], 0
    require mem[192 len 4], 0 <= test266151307()
    require mem[192 len 4], 0 + 223 < return_data.size + 192
    _22 = mem[mem[192 len 4], 0 + 192]
    if mem[mem[192 len 4], 0 + 192] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], 0 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], 0 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
    require return_data.size >= _21 + (32 * _22) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _22] = mem[_21 + 224 len 32 * _22]
    if _22 < 1:
        revert with 0, 17
    if _22 - 1 >= _22:
        revert with 0, 50
    mem[mem[64]] = mem[(32 * _22 - 1) + ceil32(return_data.size) + 224]
    return memory
      from mem[64]
       len 32
}

function sub_f5eaf22a(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    mem[96] = 2
    mem[128] = address(arg1)
    mem[160] = stor1
    mem[192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[196] = arg2
    mem[228] = 0
    mem[260] = 160
    mem[356] = 2
    idx = 0
    s = 128
    t = 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[292] = address(arg3)
    mem[324] = block.timestamp
    require ext_code.size(address(arg4))
    call address(arg4).swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, 0, 160, address(arg3), block.timestamp, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _21 = mem[192 len 4], Mask(224, 32, arg2) >> 32
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 223 < return_data.size + 192
    _22 = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    require return_data.size >= _21 + (32 * _22) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _22] = mem[_21 + 224 len 32 * _22]
    if _22 < 1:
        revert with 0, 17
    if _22 - 1 >= _22:
        revert with 0, 50
    mem[mem[64]] = mem[(32 * _22 - 1) + ceil32(return_data.size) + 224]
    return memory
      from mem[64]
       len 32
}

function sub_439499e5(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    mem[96] = 2
    mem[128] = stor1
    mem[160] = address(arg1)
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
    mem[260] = this.address
    mem[292] = block.timestamp
    require ext_code.size(address(arg4))
    call address(arg4).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg3 / 2 wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _1412 = mem[192 len 4], 0
    require mem[192 len 4], 0 <= test266151307()
    require mem[192 len 4], 0 + 223 < return_data.size + 192
    _1413 = mem[mem[192 len 4], 0 + 192]
    if mem[mem[192 len 4], 0 + 192] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], 0 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], 0 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
    require return_data.size >= _1412 + (32 * _1413) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _1413] = mem[_1412 + 224 len 32 * _1413]
    if _1413 < 1:
        revert with 0, 17
    if _1413 - 1 >= _1413:
        revert with 0, 50
    _2815 = mem[(32 * _1413 - 1) + ceil32(return_data.size) + 224]
    if arg3 < arg3 / 2:
        revert with 0, 17
    _2816 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if not mem[_2816]:
        revert with 0, 50
    mem[_2816 + 32] = stor1
    if 1 >= mem[_2816]:
        revert with 0, 50
    mem[_2816 + 64] = address(arg2)
    mem[_2816 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[_2816 + 100] = 0
    mem[_2816 + 132] = 128
    mem[_2816 + 228] = mem[_2816]
    idx = 0
    s = _2816 + 32
    t = _2816 + 260
    while idx < mem[_2816]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_2816 + 164] = this.address
    mem[_2816 + 196] = block.timestamp
    require ext_code.size(address(arg4))
    call address(arg4).mem[mem[64] len 4] with:
       value arg3 - (arg3 / 2) wei
         gas gas_remaining wei
        args mem[mem[64] + 4 len _2816 + (32 * mem[_2816]) + -mem[64] + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _4211 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _4212 = mem[_4211]
    require mem[_4211] <= test266151307()
    require _4211 + mem[_4211] + 31 < _4211 + return_data.size
    _4213 = mem[_4211 + mem[_4211]]
    if mem[_4211 + mem[_4211]] > test266151307():
        revert with 0, 65
    if _4211 + ceil32(return_data.size) + ceil32(32 * mem[_4211 + mem[_4211]]) + 1 > test266151307() or ceil32(32 * mem[_4211 + mem[_4211]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _4211 + ceil32(return_data.size) + ceil32(32 * mem[_4211 + mem[_4211]]) + 1
    mem[_4211 + ceil32(return_data.size)] = _4213
    require return_data.size >= _4212 + (32 * _4213) + 32
    mem[_4211 + ceil32(return_data.size) + 32 len 32 * _4213] = mem[_4211 + _4212 + 32 len 32 * _4213]
    if _4213 < 1:
        revert with 0, 17
    if _4213 - 1 >= _4213:
        revert with 0, 50
    _5600 = mem[(32 * _4213 - 1) + _4211 + ceil32(return_data.size) + 32]
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = address(arg4)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(arg4)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _5603 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = address(arg4)
    if mem[_5603]:
        require ext_code.size(address(arg2))
        staticcall address(arg2).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(arg4)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _5609 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_5609]:
            mem[mem[64] + 68] = _2815
            mem[mem[64] + 100] = _5600
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = address(arg5)
            mem[mem[64] + 228] = block.timestamp
            require ext_code.size(address(arg4))
            call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), _2815, _5600, 0, 0, address(arg5), block.timestamp
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5622 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _5626 = mem[_5622 + 32]
            _5627 = mem[_5622 + 64]
            mem[mem[64]] = mem[_5622]
            mem[mem[64] + 64] = _5627
            return mem[mem[64]], _5626, _5627
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(arg4)
        require ext_code.size(address(arg2))
        staticcall address(arg2).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(arg4)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _5624 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_5624]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        _5634 = mem[64]
        mem[mem[64] + 36] = address(arg4)
        mem[mem[64] + 68] = -1
        _5639 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
        mem[64] = mem[64] + 164
        mem[_5634 + 100] = 32
        mem[_5634 + 132] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg2)):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(arg2)):
            revert with 0, 'Address: call to non-contract'
        _5652 = mem[_5639]
        mem[_5634 + 164 len ceil32(mem[_5639])] = mem[_5639 + 32 len ceil32(mem[_5639])]
        if ceil32(_5652) > _5652:
            mem[_5652 + _5634 + 164] = 0
        call address(arg2) with:
             gas gas_remaining wei
            args mem[_5634 + 168 len _5652 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_5634 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_5634 + 196] == bool(mem[_5634 + 196])
                if not mem[_5634 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(address(arg4))
        call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args address(arg1), address(arg2), _2815, _5600, 0, 0, address(arg5), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(arg4)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _5610 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_5610]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    _5615 = mem[64]
    mem[mem[64] + 36] = address(arg4)
    mem[mem[64] + 68] = -1
    _5619 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
    mem[64] = mem[64] + 164
    mem[_5615 + 100] = 32
    mem[_5615 + 132] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg1)):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(address(arg1)):
        revert with 0, 'Address: call to non-contract'
    _5637 = mem[_5619]
    mem[_5615 + 164 len ceil32(mem[_5619])] = mem[_5619 + 32 len ceil32(mem[_5619])]
    if ceil32(_5637) > _5637:
        mem[_5637 + _5615 + 164] = 0
    call address(arg1) with:
         gas gas_remaining wei
        args mem[_5615 + 168 len _5637 - 4]
    if not return_data.size:
        if not ext_call.success:
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            revert with 0, 'SafeERC20: low-level call failed'
        if mem[96]:
            require mem[96] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[_5615 + 168] = this.address
        mem[_5615 + 200] = address(arg4)
        require ext_code.size(address(arg2))
        staticcall address(arg2).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(arg4)
        mem[_5615 + 164] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(address(arg4))
            call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), _2815, _5600, 0, 0, address(arg5), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
        mem[_5615 + ceil32(return_data.size) + 168] = this.address
        mem[_5615 + ceil32(return_data.size) + 200] = address(arg4)
        require ext_code.size(address(arg2))
        staticcall address(arg2).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(arg4)
        mem[_5615 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[_5615 + (2 * ceil32(return_data.size)) + 200] = address(arg4)
        mem[_5615 + (2 * ceil32(return_data.size)) + 232] = -1
        mem[_5615 + (2 * ceil32(return_data.size)) + 164] = 68
        mem[_5615 + (2 * ceil32(return_data.size)) + 196 len 4] = approve(address arg1, uint256 arg2)
        mem[_5615 + (2 * ceil32(return_data.size)) + 264] = 32
        mem[_5615 + (2 * ceil32(return_data.size)) + 296] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg2)):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(arg2)):
            revert with 0, 'Address: call to non-contract'
        mem[_5615 + (2 * ceil32(return_data.size)) + 328 len 96] = 0, address(arg4), -1, 0
        mem[_5615 + (2 * ceil32(return_data.size)) + 396] = 0
        call address(arg2) with:
           funct Mask(32, 224, 0, address(arg4), -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(arg4), -1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[_5615 + (2 * ceil32(return_data.size)) + 396] = _2815
            mem[_5615 + (2 * ceil32(return_data.size)) + 428] = _5600
            mem[_5615 + (2 * ceil32(return_data.size)) + 460] = 0
            mem[_5615 + (2 * ceil32(return_data.size)) + 492] = 0
            mem[_5615 + (2 * ceil32(return_data.size)) + 524] = address(arg5)
            mem[_5615 + (2 * ceil32(return_data.size)) + 556] = block.timestamp
            require ext_code.size(address(arg4))
            call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), _2815, _5600, 0, 0, address(arg5), block.timestamp
            mem[_5615 + (2 * ceil32(return_data.size)) + 328 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            mem[_5615 + (4 * ceil32(return_data.size)) + 328] = ext_call.return_data[0]
            mem[_5615 + (4 * ceil32(return_data.size)) + 360] = ext_call.return_data[32]
            mem[_5615 + (4 * ceil32(return_data.size)) + 392] = ext_call.return_data[64]
            return memory
              from _5615 + (4 * ceil32(return_data.size)) + 328
               len (5 * ceil32(return_data.size)) + 96
        mem[_5615 + (2 * ceil32(return_data.size)) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[_5615 + (2 * ceil32(return_data.size)) + 360] == bool(mem[_5615 + (2 * ceil32(return_data.size)) + 360])
            if not mem[_5615 + (2 * ceil32(return_data.size)) + 360]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[_5615 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 397] = _2815
        mem[_5615 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = _5600
        mem[_5615 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = 0
        mem[_5615 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
        mem[_5615 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg5)
        mem[_5615 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = block.timestamp
        require ext_code.size(address(arg4))
        call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args address(arg1), address(arg2), _2815, _5600, 0, 0, address(arg5), block.timestamp
        mem[_5615 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        mem[_5615 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0]
        mem[_5615 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = ext_call.return_data[32]
        mem[_5615 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = ext_call.return_data[64]
        return memory
          from _5615 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329
           len (5 * ceil32(return_data.size)) + 96
    mem[_5615 + 164] = return_data.size
    mem[_5615 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        require mem[_5615 + 196] == bool(mem[_5615 + 196])
        if not mem[_5615 + 196]:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    mem[_5615 + ceil32(return_data.size) + 169] = this.address
    mem[_5615 + ceil32(return_data.size) + 201] = address(arg4)
    require ext_code.size(address(arg2))
    staticcall address(arg2).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(arg4)
    mem[_5615 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(address(arg4))
        call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args address(arg1), address(arg2), _2815, _5600, 0, 0, address(arg5), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
    mem[_5615 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
    mem[_5615 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(arg4)
    require ext_code.size(address(arg2))
    staticcall address(arg2).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(arg4)
    mem[_5615 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    mem[_5615 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = address(arg4)
    mem[_5615 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 233] = -1
    mem[_5615 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = 68
    mem[_5615 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197 len 4] = approve(address arg1, uint256 arg2)
    mem[_5615 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 265] = 32
    mem[_5615 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 297] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg2)):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(address(arg2)):
        revert with 0, 'Address: call to non-contract'
    mem[_5615 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329 len 96] = 0, address(arg4), -1, 0
    mem[_5615 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 397] = 0
    call address(arg2) with:
       funct Mask(32, 224, 0, address(arg4), -1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, address(arg4), -1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            revert with 0, 'SafeERC20: low-level call failed'
        if mem[96]:
            require mem[96] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[_5615 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 397] = _2815
        mem[_5615 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 429] = _5600
        mem[_5615 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 461] = 0
        mem[_5615 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 493] = 0
        mem[_5615 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 525] = address(arg5)
        mem[_5615 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 557] = block.timestamp
        require ext_code.size(address(arg4))
        call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args address(arg1), address(arg2), _2815, _5600, 0, 0, address(arg5), block.timestamp
        mem[_5615 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        mem[_5615 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 329] = ext_call.return_data[0]
        mem[_5615 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 361] = ext_call.return_data[32]
        mem[_5615 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 393] = ext_call.return_data[64]
        return memory
          from _5615 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 329
           len (5 * ceil32(return_data.size)) + 96
    mem[_5615 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329] = return_data.size
    mem[_5615 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_5615 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_5615 + (4 * ceil32(return_data.size)) + 334] = 32
        mem[_5615 + (4 * ceil32(return_data.size)) + 366] = 32
        mem[_5615 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
        revert with memory
          from _5615 + (4 * ceil32(return_data.size)) + 330
           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if return_data.size:
        require return_data.size >= 32
        require mem[_5615 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361] == bool(mem[_5615 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361])
        if not mem[_5615 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361]:
            mem[_5615 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_5615 + (4 * ceil32(return_data.size)) + 334] = 32
            mem[_5615 + (4 * ceil32(return_data.size)) + 366] = 42
            mem[_5615 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
            mem[_5615 + (4 * ceil32(return_data.size)) + 430] = 'ot succeed'
            revert with memory
              from _5615 + (4 * ceil32(return_data.size)) + 330
               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    mem[_5615 + (4 * ceil32(return_data.size)) + 334] = address(arg1)
    mem[_5615 + (4 * ceil32(return_data.size)) + 366] = address(arg2)
    mem[_5615 + (4 * ceil32(return_data.size)) + 398] = _2815
    mem[_5615 + (4 * ceil32(return_data.size)) + 430] = _5600
    mem[_5615 + (4 * ceil32(return_data.size)) + 462] = 0
    mem[_5615 + (4 * ceil32(return_data.size)) + 494] = 0
    mem[_5615 + (4 * ceil32(return_data.size)) + 526] = address(arg5)
    mem[_5615 + (4 * ceil32(return_data.size)) + 558] = block.timestamp
    require ext_code.size(address(arg4))
    call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
         gas gas_remaining wei
        args mem[_5615 + (4 * ceil32(return_data.size)) + 334 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
    mem[_5615 + (4 * ceil32(return_data.size)) + 330 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    mem[_5615 + (8 * ceil32(return_data.size)) + 330] = ext_call.return_data[0]
    mem[_5615 + (8 * ceil32(return_data.size)) + 362] = ext_call.return_data[32]
    mem[_5615 + (8 * ceil32(return_data.size)) + 394] = ext_call.return_data[64]
    return memory
      from _5615 + (8 * ceil32(return_data.size)) + 330
       len (9 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 96
}



}
