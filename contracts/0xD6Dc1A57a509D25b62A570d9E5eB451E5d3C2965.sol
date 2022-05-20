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

function sub_fe9c9b13(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if sub_6f190315Address != address(arg1):
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
        _42 = mem[192 len 4], 0
        require mem[192 len 4], 0 <= test266151307()
        require mem[192 len 4], 0 + 223 < return_data.size + 192
        _44 = mem[mem[192 len 4], 0 + 192]
        if mem[mem[192 len 4], 0 + 192] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], 0 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], 0 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
        require return_data.size >= _42 + (32 * _44) + 32
        mem[ceil32(return_data.size) + 224 len 32 * _44] = mem[_42 + 224 len 32 * _44]
        if _44 < 1:
            revert with 0, 17
        if _44 - 1 >= _44:
            revert with 0, 50
        mem[mem[64]] = mem[(32 * _44 - 1) + ceil32(return_data.size) + 224]
    else:
        mem[96] = 3
        mem[128] = stor1
        mem[160] = sub_76b8fcfcAddress
        mem[192] = address(arg1)
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
        mem[292] = address(arg3)
        mem[324] = block.timestamp
        require ext_code.size(sub_2d2e3a93Address)
        call sub_2d2e3a93Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value arg2 wei
             gas gas_remaining wei
            args 0, 128, address(arg3), block.timestamp, 3, mem[388 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _43 = mem[224 len 4], 0
        require mem[224 len 4], 0 <= test266151307()
        require mem[224 len 4], 0 + 255 < return_data.size + 224
        _45 = mem[mem[224 len 4], 0 + 224]
        if mem[mem[224 len 4], 0 + 224] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[mem[224 len 4], 0 + 224]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], 0 + 224]) + 225
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
        require return_data.size >= _43 + (32 * _45) + 32
        mem[ceil32(return_data.size) + 256 len 32 * _45] = mem[_43 + 256 len 32 * _45]
        if _45 < 1:
            revert with 0, 17
        if _45 - 1 >= _45:
            revert with 0, 50
        mem[mem[64]] = mem[(32 * _45 - 1) + ceil32(return_data.size) + 256]
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
    if sub_6f190315Address != address(arg1):
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
        _5612 = mem[192 len 4], 0
        require mem[192 len 4], 0 <= test266151307()
        require mem[192 len 4], 0 + 223 < return_data.size + 192
        _5614 = mem[mem[192 len 4], 0 + 192]
        if mem[mem[192 len 4], 0 + 192] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], 0 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], 0 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
        require return_data.size >= _5612 + (32 * _5614) + 32
        mem[ceil32(return_data.size) + 224 len 32 * _5614] = mem[_5612 + 224 len 32 * _5614]
        if _5614 < 1:
            revert with 0, 17
        if _5614 - 1 >= _5614:
            revert with 0, 50
        _11206 = mem[(32 * _5614 - 1) + ceil32(return_data.size) + 224]
        if arg3 < arg3 / 2:
            revert with 0, 17
        if sub_6f190315Address != address(arg2):
            _11208 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if not mem[_11208]:
                revert with 0, 50
            mem[_11208 + 32] = stor1
            if 1 >= mem[_11208]:
                revert with 0, 50
            mem[_11208 + 64] = address(arg2)
            mem[_11208 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[_11208 + 100] = 0
            mem[_11208 + 132] = 128
            mem[_11208 + 228] = mem[_11208]
            idx = 0
            s = _11208 + 32
            t = _11208 + 260
            while idx < mem[_11208]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_11208 + 164] = this.address
            mem[_11208 + 196] = block.timestamp
            require ext_code.size(address(arg4))
            call address(arg4).mem[mem[64] len 4] with:
               value arg3 - (arg3 / 2) wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _11208 + (32 * mem[_11208]) + -mem[64] + 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _16790 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _16794 = mem[_16790]
            require mem[_16790] <= test266151307()
            require _16790 + mem[_16790] + 31 < _16790 + return_data.size
            _16798 = mem[_16790 + mem[_16790]]
            if mem[_16790 + mem[_16790]] > test266151307():
                revert with 0, 65
            if _16790 + ceil32(return_data.size) + ceil32(32 * mem[_16790 + mem[_16790]]) + 1 > test266151307() or ceil32(32 * mem[_16790 + mem[_16790]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _16790 + ceil32(return_data.size) + ceil32(32 * mem[_16790 + mem[_16790]]) + 1
            mem[_16790 + ceil32(return_data.size)] = _16798
            require return_data.size >= _16794 + (32 * _16798) + 32
            mem[_16790 + ceil32(return_data.size) + 32 len 32 * _16798] = mem[_16790 + _16794 + 32 len 32 * _16798]
            if _16798 < 1:
                revert with 0, 17
            if _16798 - 1 >= _16798:
                revert with 0, 50
            _22346 = mem[(32 * _16798 - 1) + _16790 + ceil32(return_data.size) + 32]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(arg4)
            require ext_code.size(address(arg1))
            staticcall address(arg1).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(arg4)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _22358 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(arg4)
            if mem[_22358]:
                require ext_code.size(address(arg2))
                staticcall address(arg2).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(arg4)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _22382 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_22382]:
                    mem[mem[64] + 68] = _11206
                    mem[mem[64] + 100] = _22346
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = address(arg5)
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(address(arg4))
                    call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args address(arg1), address(arg2), _11206, _22346, 0, 0, address(arg5), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _22434 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _22447 = mem[_22434 + 32]
                    _22448 = mem[_22434 + 64]
                    mem[mem[64]] = mem[_22434]
                    mem[mem[64] + 64] = _22448
                    return mem[mem[64]], _22447, _22448
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(arg4)
                require ext_code.size(address(arg2))
                staticcall address(arg2).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(arg4)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _22442 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_22442]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                _22482 = mem[64]
                mem[mem[64] + 36] = address(arg4)
                mem[mem[64] + 68] = -1
                _22502 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                mem[64] = mem[64] + 164
                mem[_22482 + 100] = 32
                mem[_22482 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg2)):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(address(arg2)):
                    revert with 0, 'Address: call to non-contract'
                _22551 = mem[_22502]
                mem[_22482 + 164 len ceil32(mem[_22502])] = mem[_22502 + 32 len ceil32(mem[_22502])]
                if ceil32(_22551) > _22551:
                    mem[_22551 + _22482 + 164] = 0
                call address(arg2) with:
                     gas gas_remaining wei
                    args mem[_22482 + 168 len _22551 - 4]
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
                    mem[_22482 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_22482 + 196] == bool(mem[_22482 + 196])
                        if not mem[_22482 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(arg4))
                call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args address(arg1), address(arg2), _11206, _22346, 0, 0, address(arg5), block.timestamp
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
            _22383 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_22383]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            _22400 = mem[64]
            mem[mem[64] + 36] = address(arg4)
            mem[mem[64] + 68] = -1
            _22416 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
            mem[64] = mem[64] + 164
            mem[_22400 + 100] = 32
            mem[_22400 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg1)):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(address(arg1)):
                revert with 0, 'Address: call to non-contract'
            _22485 = mem[_22416]
            mem[_22400 + 164 len ceil32(mem[_22416])] = mem[_22416 + 32 len ceil32(mem[_22416])]
            if ceil32(_22485) > _22485:
                mem[_22485 + _22400 + 164] = 0
            call address(arg1) with:
                 gas gas_remaining wei
                args mem[_22400 + 168 len _22485 - 4]
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
                mem[_22400 + 168] = this.address
                mem[_22400 + 200] = address(arg4)
                require ext_code.size(address(arg2))
                staticcall address(arg2).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(arg4)
                mem[_22400 + 164] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(address(arg4))
                    call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args address(arg1), address(arg2), _11206, _22346, 0, 0, address(arg5), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
                mem[_22400 + ceil32(return_data.size) + 168] = this.address
                mem[_22400 + ceil32(return_data.size) + 200] = address(arg4)
                require ext_code.size(address(arg2))
                staticcall address(arg2).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(arg4)
                mem[_22400 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                mem[_22400 + (2 * ceil32(return_data.size)) + 200] = address(arg4)
                mem[_22400 + (2 * ceil32(return_data.size)) + 232] = -1
                mem[_22400 + (2 * ceil32(return_data.size)) + 164] = 68
                mem[_22400 + (2 * ceil32(return_data.size)) + 196 len 4] = approve(address arg1, uint256 arg2)
                mem[_22400 + (2 * ceil32(return_data.size)) + 264] = 32
                mem[_22400 + (2 * ceil32(return_data.size)) + 296] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg2)):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(address(arg2)):
                    revert with 0, 'Address: call to non-contract'
                mem[_22400 + (2 * ceil32(return_data.size)) + 328 len 96] = 0, address(arg4), -1, 0
                mem[_22400 + (2 * ceil32(return_data.size)) + 396] = 0
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
                    mem[_22400 + (2 * ceil32(return_data.size)) + 396] = _11206
                    mem[_22400 + (2 * ceil32(return_data.size)) + 428] = _22346
                    mem[_22400 + (2 * ceil32(return_data.size)) + 460] = 0
                    mem[_22400 + (2 * ceil32(return_data.size)) + 492] = 0
                    mem[_22400 + (2 * ceil32(return_data.size)) + 524] = address(arg5)
                    mem[_22400 + (2 * ceil32(return_data.size)) + 556] = block.timestamp
                    require ext_code.size(address(arg4))
                    call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args address(arg1), address(arg2), _11206, _22346, 0, 0, address(arg5), block.timestamp
                    mem[_22400 + (2 * ceil32(return_data.size)) + 328 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[_22400 + (4 * ceil32(return_data.size)) + 328] = ext_call.return_data[0]
                    mem[_22400 + (4 * ceil32(return_data.size)) + 360] = ext_call.return_data[32]
                    mem[_22400 + (4 * ceil32(return_data.size)) + 392] = ext_call.return_data[64]
                    return memory
                      from _22400 + (4 * ceil32(return_data.size)) + 328
                       len (5 * ceil32(return_data.size)) + 96
                mem[_22400 + (2 * ceil32(return_data.size)) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_22400 + (2 * ceil32(return_data.size)) + 360] == bool(mem[_22400 + (2 * ceil32(return_data.size)) + 360])
                    if not mem[_22400 + (2 * ceil32(return_data.size)) + 360]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[_22400 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 397] = _11206
                mem[_22400 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = _22346
                mem[_22400 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = 0
                mem[_22400 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                mem[_22400 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg5)
                mem[_22400 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = block.timestamp
                require ext_code.size(address(arg4))
                call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args address(arg1), address(arg2), _11206, _22346, 0, 0, address(arg5), block.timestamp
                mem[_22400 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[_22400 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0]
                mem[_22400 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = ext_call.return_data[32]
                mem[_22400 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = ext_call.return_data[64]
                return memory
                  from _22400 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329
                   len (5 * ceil32(return_data.size)) + 96
            mem[_22400 + 164] = return_data.size
            mem[_22400 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_22400 + 196] == bool(mem[_22400 + 196])
                if not mem[_22400 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[_22400 + ceil32(return_data.size) + 169] = this.address
            mem[_22400 + ceil32(return_data.size) + 201] = address(arg4)
            require ext_code.size(address(arg2))
            staticcall address(arg2).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(arg4)
            mem[_22400 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(address(arg4))
                call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args address(arg1), address(arg2), _11206, _22346, 0, 0, address(arg5), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
            mem[_22400 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
            mem[_22400 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(arg4)
            require ext_code.size(address(arg2))
            staticcall address(arg2).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(arg4)
            mem[_22400 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            mem[_22400 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = address(arg4)
            mem[_22400 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 233] = -1
            mem[_22400 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = 68
            mem[_22400 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197 len 4] = approve(address arg1, uint256 arg2)
            mem[_22400 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 265] = 32
            mem[_22400 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 297] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg2)):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(address(arg2)):
                revert with 0, 'Address: call to non-contract'
            mem[_22400 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329 len 96] = 0, address(arg4), -1, 0
            mem[_22400 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 397] = 0
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
                mem[_22400 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 397] = _11206
                mem[_22400 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 429] = _22346
                mem[_22400 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 461] = 0
                mem[_22400 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 493] = 0
                mem[_22400 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 525] = address(arg5)
                mem[_22400 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 557] = block.timestamp
                require ext_code.size(address(arg4))
                call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args address(arg1), address(arg2), _11206, _22346, 0, 0, address(arg5), block.timestamp
                mem[_22400 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[_22400 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 329] = ext_call.return_data[0]
                mem[_22400 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 361] = ext_call.return_data[32]
                mem[_22400 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 393] = ext_call.return_data[64]
                return memory
                  from _22400 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 329
                   len (5 * ceil32(return_data.size)) + 96
            mem[_22400 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329] = return_data.size
            mem[_22400 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_22400 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_22400 + (4 * ceil32(return_data.size)) + 334] = 32
                mem[_22400 + (4 * ceil32(return_data.size)) + 366] = 32
                mem[_22400 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
                revert with memory
                  from _22400 + (4 * ceil32(return_data.size)) + 330
                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            if return_data.size:
                require return_data.size >= 32
                require mem[_22400 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361] == bool(mem[_22400 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361])
                if not mem[_22400 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361]:
                    mem[_22400 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_22400 + (4 * ceil32(return_data.size)) + 334] = 32
                    mem[_22400 + (4 * ceil32(return_data.size)) + 366] = 42
                    mem[_22400 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                    mem[_22400 + (4 * ceil32(return_data.size)) + 430] = 'ot succeed'
                    revert with memory
                      from _22400 + (4 * ceil32(return_data.size)) + 330
                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
            mem[_22400 + (4 * ceil32(return_data.size)) + 334] = address(arg1)
            mem[_22400 + (4 * ceil32(return_data.size)) + 366] = address(arg2)
            mem[_22400 + (4 * ceil32(return_data.size)) + 398] = _11206
            mem[_22400 + (4 * ceil32(return_data.size)) + 430] = _22346
            mem[_22400 + (4 * ceil32(return_data.size)) + 462] = 0
            mem[_22400 + (4 * ceil32(return_data.size)) + 494] = 0
            mem[_22400 + (4 * ceil32(return_data.size)) + 526] = address(arg5)
            mem[_22400 + (4 * ceil32(return_data.size)) + 558] = block.timestamp
            require ext_code.size(address(arg4))
            call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args mem[_22400 + (4 * ceil32(return_data.size)) + 334 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
            mem[_22400 + (4 * ceil32(return_data.size)) + 330 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            mem[_22400 + (8 * ceil32(return_data.size)) + 330] = ext_call.return_data[0]
            mem[_22400 + (8 * ceil32(return_data.size)) + 362] = ext_call.return_data[32]
            mem[_22400 + (8 * ceil32(return_data.size)) + 394] = ext_call.return_data[64]
            return memory
              from _22400 + (8 * ceil32(return_data.size)) + 330
               len (9 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 96
        _11210 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        if not mem[_11210]:
            revert with 0, 50
        mem[_11210 + 32] = stor1
        if 1 >= mem[_11210]:
            revert with 0, 50
        mem[_11210 + 64] = sub_76b8fcfcAddress
        if 2 >= mem[_11210]:
            revert with 0, 50
        mem[_11210 + 96] = address(arg2)
        mem[_11210 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[_11210 + 132] = 0
        mem[_11210 + 164] = 128
        mem[_11210 + 260] = mem[_11210]
        idx = 0
        s = _11210 + 32
        t = _11210 + 292
        while idx < mem[_11210]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_11210 + 196] = this.address
        mem[_11210 + 228] = block.timestamp
        require ext_code.size(sub_2d2e3a93Address)
        call sub_2d2e3a93Address.mem[mem[64] len 4] with:
           value arg3 - (arg3 / 2) wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len _11210 + (32 * mem[_11210]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _16791 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _16795 = mem[_16791]
        require mem[_16791] <= test266151307()
        require _16791 + mem[_16791] + 31 < _16791 + return_data.size
        _16799 = mem[_16791 + mem[_16791]]
        if mem[_16791 + mem[_16791]] > test266151307():
            revert with 0, 65
        if _16791 + ceil32(return_data.size) + ceil32(32 * mem[_16791 + mem[_16791]]) + 1 > test266151307() or ceil32(32 * mem[_16791 + mem[_16791]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _16791 + ceil32(return_data.size) + ceil32(32 * mem[_16791 + mem[_16791]]) + 1
        mem[_16791 + ceil32(return_data.size)] = _16799
        require return_data.size >= _16795 + (32 * _16799) + 32
        mem[_16791 + ceil32(return_data.size) + 32 len 32 * _16799] = mem[_16791 + _16795 + 32 len 32 * _16799]
        if _16799 < 1:
            revert with 0, 17
        if _16799 - 1 >= _16799:
            revert with 0, 50
        _22347 = mem[(32 * _16799 - 1) + _16791 + ceil32(return_data.size) + 32]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(arg4)
        require ext_code.size(address(arg1))
        staticcall address(arg1).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(arg4)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _22359 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(arg4)
        if mem[_22359]:
            require ext_code.size(address(arg2))
            staticcall address(arg2).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(arg4)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _22384 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_22384]:
                mem[mem[64] + 68] = _11206
                mem[mem[64] + 100] = _22347
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = address(arg5)
                mem[mem[64] + 228] = block.timestamp
                require ext_code.size(address(arg4))
                call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args address(arg1), address(arg2), _11206, _22347, 0, 0, address(arg5), block.timestamp
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _22436 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _22450 = mem[_22436 + 32]
                _22451 = mem[_22436 + 64]
                mem[mem[64]] = mem[_22436]
                mem[mem[64] + 64] = _22451
                return mem[mem[64]], _22450, _22451
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(arg4)
            require ext_code.size(address(arg2))
            staticcall address(arg2).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(arg4)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _22443 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_22443]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            _22487 = mem[64]
            mem[mem[64] + 36] = address(arg4)
            mem[mem[64] + 68] = -1
            _22505 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
            mem[64] = mem[64] + 164
            mem[_22487 + 100] = 32
            mem[_22487 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg2)):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(address(arg2)):
                revert with 0, 'Address: call to non-contract'
            _22554 = mem[_22505]
            mem[_22487 + 164 len ceil32(mem[_22505])] = mem[_22505 + 32 len ceil32(mem[_22505])]
            if ceil32(_22554) > _22554:
                mem[_22554 + _22487 + 164] = 0
            call address(arg2) with:
                 gas gas_remaining wei
                args mem[_22487 + 168 len _22554 - 4]
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
                mem[_22487 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_22487 + 196] == bool(mem[_22487 + 196])
                    if not mem[_22487 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(address(arg4))
            call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), _11206, _22347, 0, 0, address(arg5), block.timestamp
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
        _22385 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_22385]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        _22404 = mem[64]
        mem[mem[64] + 36] = address(arg4)
        mem[mem[64] + 68] = -1
        _22421 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
        mem[64] = mem[64] + 164
        mem[_22404 + 100] = 32
        mem[_22404 + 132] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg1)):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(arg1)):
            revert with 0, 'Address: call to non-contract'
        _22490 = mem[_22421]
        mem[_22404 + 164 len ceil32(mem[_22421])] = mem[_22421 + 32 len ceil32(mem[_22421])]
        if ceil32(_22490) > _22490:
            mem[_22490 + _22404 + 164] = 0
        call address(arg1) with:
             gas gas_remaining wei
            args mem[_22404 + 168 len _22490 - 4]
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
            mem[_22404 + 168] = this.address
            mem[_22404 + 200] = address(arg4)
            require ext_code.size(address(arg2))
            staticcall address(arg2).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(arg4)
            mem[_22404 + 164] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(address(arg4))
                call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args address(arg1), address(arg2), _11206, _22347, 0, 0, address(arg5), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
            mem[_22404 + ceil32(return_data.size) + 168] = this.address
            mem[_22404 + ceil32(return_data.size) + 200] = address(arg4)
            require ext_code.size(address(arg2))
            staticcall address(arg2).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(arg4)
            mem[_22404 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            mem[_22404 + (2 * ceil32(return_data.size)) + 200] = address(arg4)
            mem[_22404 + (2 * ceil32(return_data.size)) + 232] = -1
            mem[_22404 + (2 * ceil32(return_data.size)) + 164] = 68
            mem[_22404 + (2 * ceil32(return_data.size)) + 196 len 4] = approve(address arg1, uint256 arg2)
            mem[_22404 + (2 * ceil32(return_data.size)) + 264] = 32
            mem[_22404 + (2 * ceil32(return_data.size)) + 296] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg2)):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(address(arg2)):
                revert with 0, 'Address: call to non-contract'
            mem[_22404 + (2 * ceil32(return_data.size)) + 328 len 96] = 0, address(arg4), -1, 0
            mem[_22404 + (2 * ceil32(return_data.size)) + 396] = 0
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
                mem[_22404 + (2 * ceil32(return_data.size)) + 396] = _11206
                mem[_22404 + (2 * ceil32(return_data.size)) + 428] = _22347
                mem[_22404 + (2 * ceil32(return_data.size)) + 460] = 0
                mem[_22404 + (2 * ceil32(return_data.size)) + 492] = 0
                mem[_22404 + (2 * ceil32(return_data.size)) + 524] = address(arg5)
                mem[_22404 + (2 * ceil32(return_data.size)) + 556] = block.timestamp
                require ext_code.size(address(arg4))
                call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args address(arg1), address(arg2), _11206, _22347, 0, 0, address(arg5), block.timestamp
                mem[_22404 + (2 * ceil32(return_data.size)) + 328 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[_22404 + (4 * ceil32(return_data.size)) + 328] = ext_call.return_data[0]
                mem[_22404 + (4 * ceil32(return_data.size)) + 360] = ext_call.return_data[32]
                mem[_22404 + (4 * ceil32(return_data.size)) + 392] = ext_call.return_data[64]
                return memory
                  from _22404 + (4 * ceil32(return_data.size)) + 328
                   len (5 * ceil32(return_data.size)) + 96
            mem[_22404 + (2 * ceil32(return_data.size)) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_22404 + (2 * ceil32(return_data.size)) + 360] == bool(mem[_22404 + (2 * ceil32(return_data.size)) + 360])
                if not mem[_22404 + (2 * ceil32(return_data.size)) + 360]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[_22404 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 397] = _11206
            mem[_22404 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = _22347
            mem[_22404 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = 0
            mem[_22404 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
            mem[_22404 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg5)
            mem[_22404 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = block.timestamp
            require ext_code.size(address(arg4))
            call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), _11206, _22347, 0, 0, address(arg5), block.timestamp
            mem[_22404 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            mem[_22404 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0]
            mem[_22404 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = ext_call.return_data[32]
            mem[_22404 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = ext_call.return_data[64]
            return memory
              from _22404 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329
               len (5 * ceil32(return_data.size)) + 96
        mem[_22404 + 164] = return_data.size
        mem[_22404 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[_22404 + 196] == bool(mem[_22404 + 196])
            if not mem[_22404 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[_22404 + ceil32(return_data.size) + 169] = this.address
        mem[_22404 + ceil32(return_data.size) + 201] = address(arg4)
        require ext_code.size(address(arg2))
        staticcall address(arg2).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(arg4)
        mem[_22404 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(address(arg4))
            call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), _11206, _22347, 0, 0, address(arg5), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
        mem[_22404 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
        mem[_22404 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(arg4)
        require ext_code.size(address(arg2))
        staticcall address(arg2).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(arg4)
        mem[_22404 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[_22404 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = address(arg4)
        mem[_22404 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 233] = -1
        mem[_22404 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = 68
        mem[_22404 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197 len 4] = approve(address arg1, uint256 arg2)
        mem[_22404 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 265] = 32
        mem[_22404 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 297] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg2)):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(arg2)):
            revert with 0, 'Address: call to non-contract'
        mem[_22404 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329 len 96] = 0, address(arg4), -1, 0
        mem[_22404 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 397] = 0
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
            mem[_22404 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 397] = _11206
            mem[_22404 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 429] = _22347
            mem[_22404 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 461] = 0
            mem[_22404 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 493] = 0
            mem[_22404 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 525] = address(arg5)
            mem[_22404 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 557] = block.timestamp
            require ext_code.size(address(arg4))
            call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), _11206, _22347, 0, 0, address(arg5), block.timestamp
            mem[_22404 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            mem[_22404 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 329] = ext_call.return_data[0]
            mem[_22404 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 361] = ext_call.return_data[32]
            mem[_22404 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 393] = ext_call.return_data[64]
            return memory
              from _22404 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 329
               len (5 * ceil32(return_data.size)) + 96
        mem[_22404 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329] = return_data.size
        mem[_22404 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_22404 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_22404 + (4 * ceil32(return_data.size)) + 334] = 32
            mem[_22404 + (4 * ceil32(return_data.size)) + 366] = 32
            mem[_22404 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
            revert with memory
              from _22404 + (4 * ceil32(return_data.size)) + 330
               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        if return_data.size:
            require return_data.size >= 32
            require mem[_22404 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361] == bool(mem[_22404 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361])
            if not mem[_22404 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361]:
                mem[_22404 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_22404 + (4 * ceil32(return_data.size)) + 334] = 32
                mem[_22404 + (4 * ceil32(return_data.size)) + 366] = 42
                mem[_22404 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                mem[_22404 + (4 * ceil32(return_data.size)) + 430] = 'ot succeed'
                revert with memory
                  from _22404 + (4 * ceil32(return_data.size)) + 330
                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
        mem[_22404 + (4 * ceil32(return_data.size)) + 334] = address(arg1)
        mem[_22404 + (4 * ceil32(return_data.size)) + 366] = address(arg2)
        mem[_22404 + (4 * ceil32(return_data.size)) + 398] = _11206
        mem[_22404 + (4 * ceil32(return_data.size)) + 430] = _22347
        mem[_22404 + (4 * ceil32(return_data.size)) + 462] = 0
        mem[_22404 + (4 * ceil32(return_data.size)) + 494] = 0
        mem[_22404 + (4 * ceil32(return_data.size)) + 526] = address(arg5)
        mem[_22404 + (4 * ceil32(return_data.size)) + 558] = block.timestamp
        require ext_code.size(address(arg4))
        call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args mem[_22404 + (4 * ceil32(return_data.size)) + 334 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
        mem[_22404 + (4 * ceil32(return_data.size)) + 330 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        mem[_22404 + (8 * ceil32(return_data.size)) + 330] = ext_call.return_data[0]
        mem[_22404 + (8 * ceil32(return_data.size)) + 362] = ext_call.return_data[32]
        mem[_22404 + (8 * ceil32(return_data.size)) + 394] = ext_call.return_data[64]
        return memory
          from _22404 + (8 * ceil32(return_data.size)) + 330
           len (9 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 96
    mem[96] = 3
    mem[128] = stor1
    mem[160] = sub_76b8fcfcAddress
    mem[192] = address(arg1)
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
    mem[292] = this.address
    mem[324] = block.timestamp
    require ext_code.size(sub_2d2e3a93Address)
    call sub_2d2e3a93Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg3 / 2 wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp, 3, mem[388 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 224
    require return_data.size >= 32
    _5613 = mem[224 len 4], 0
    require mem[224 len 4], 0 <= test266151307()
    require mem[224 len 4], 0 + 255 < return_data.size + 224
    _5615 = mem[mem[224 len 4], 0 + 224]
    if mem[mem[224 len 4], 0 + 224] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[mem[224 len 4], 0 + 224]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], 0 + 224]) + 225
    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
    require return_data.size >= _5613 + (32 * _5615) + 32
    mem[ceil32(return_data.size) + 256 len 32 * _5615] = mem[_5613 + 256 len 32 * _5615]
    if _5615 < 1:
        revert with 0, 17
    if _5615 - 1 >= _5615:
        revert with 0, 50
    _11207 = mem[(32 * _5615 - 1) + ceil32(return_data.size) + 256]
    if arg3 < arg3 / 2:
        revert with 0, 17
    if sub_6f190315Address != address(arg2):
        _11212 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if not mem[_11212]:
            revert with 0, 50
        mem[_11212 + 32] = stor1
        if 1 >= mem[_11212]:
            revert with 0, 50
        mem[_11212 + 64] = address(arg2)
        mem[_11212 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[_11212 + 100] = 0
        mem[_11212 + 132] = 128
        mem[_11212 + 228] = mem[_11212]
        idx = 0
        s = _11212 + 32
        t = _11212 + 260
        while idx < mem[_11212]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_11212 + 164] = this.address
        mem[_11212 + 196] = block.timestamp
        require ext_code.size(address(arg4))
        call address(arg4).mem[mem[64] len 4] with:
           value arg3 - (arg3 / 2) wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len _11212 + (32 * mem[_11212]) + -mem[64] + 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _16792 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _16796 = mem[_16792]
        require mem[_16792] <= test266151307()
        require _16792 + mem[_16792] + 31 < _16792 + return_data.size
        _16800 = mem[_16792 + mem[_16792]]
        if mem[_16792 + mem[_16792]] > test266151307():
            revert with 0, 65
        if _16792 + ceil32(return_data.size) + ceil32(32 * mem[_16792 + mem[_16792]]) + 1 > test266151307() or ceil32(32 * mem[_16792 + mem[_16792]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _16792 + ceil32(return_data.size) + ceil32(32 * mem[_16792 + mem[_16792]]) + 1
        mem[_16792 + ceil32(return_data.size)] = _16800
        require return_data.size >= _16796 + (32 * _16800) + 32
        mem[_16792 + ceil32(return_data.size) + 32 len 32 * _16800] = mem[_16792 + _16796 + 32 len 32 * _16800]
        if _16800 < 1:
            revert with 0, 17
        if _16800 - 1 >= _16800:
            revert with 0, 50
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(arg4)
        require ext_code.size(address(arg1))
        staticcall address(arg1).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(arg4)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _22360 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(arg4)
        if mem[_22360]:
            require ext_code.size(address(arg2))
            staticcall address(arg2).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(arg4)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _22386 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_22386]:
                mem[mem[64] + 68] = _11207
                mem[mem[64] + 100] = mem[(32 * _16800 - 1) + _16792 + ceil32(return_data.size) + 32]
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = address(arg5)
                mem[mem[64] + 228] = block.timestamp
                require ext_code.size(address(arg4))
                call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args address(arg1), address(arg2), _11207, mem[(32 * _16800 - 1) + _16792 + ceil32(return_data.size) + 32], 0, 0, address(arg5), block.timestamp
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _22438 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _22453 = mem[_22438 + 32]
                _22454 = mem[_22438 + 64]
                mem[mem[64]] = mem[_22438]
                mem[mem[64] + 64] = _22454
                return mem[mem[64]], _22453, _22454
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(arg4)
            require ext_code.size(address(arg2))
            staticcall address(arg2).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(arg4)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _22444 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_22444]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            _22492 = mem[64]
            mem[mem[64] + 36] = address(arg4)
            mem[mem[64] + 68] = -1
            _22508 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
            mem[64] = mem[64] + 164
            mem[_22492 + 100] = 32
            mem[_22492 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg2)):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(address(arg2)):
                revert with 0, 'Address: call to non-contract'
            _22557 = mem[_22508]
            mem[_22492 + 164 len ceil32(mem[_22508])] = mem[_22508 + 32 len ceil32(mem[_22508])]
            if ceil32(_22557) > _22557:
                mem[_22557 + _22492 + 164] = 0
            call address(arg2) with:
                 gas gas_remaining wei
                args mem[_22492 + 168 len _22557 - 4]
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
                mem[_22492 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_22492 + 196] == bool(mem[_22492 + 196])
                    if not mem[_22492 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(address(arg4))
            call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), _11207, mem[(32 * _16800 - 1) + _16792 + ceil32(return_data.size) + 32], 0, 0, address(arg5), block.timestamp
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
        _22387 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_22387]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        _22408 = mem[64]
        mem[mem[64] + 36] = address(arg4)
        mem[mem[64] + 68] = -1
        _22426 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
        mem[64] = mem[64] + 164
        mem[_22408 + 100] = 32
        mem[_22408 + 132] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg1)):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(arg1)):
            revert with 0, 'Address: call to non-contract'
        _22495 = mem[_22426]
        mem[_22408 + 164 len ceil32(mem[_22426])] = mem[_22426 + 32 len ceil32(mem[_22426])]
        if ceil32(_22495) > _22495:
            mem[_22495 + _22408 + 164] = 0
        call address(arg1) with:
             gas gas_remaining wei
            args mem[_22408 + 168 len _22495 - 4]
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
            mem[_22408 + 168] = this.address
            mem[_22408 + 200] = address(arg4)
            require ext_code.size(address(arg2))
            staticcall address(arg2).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(arg4)
            mem[_22408 + 164] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(address(arg4))
                call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args address(arg1), address(arg2), _11207, mem[(32 * _16800 - 1) + _16792 + ceil32(return_data.size) + 32], 0, 0, address(arg5), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
            mem[_22408 + ceil32(return_data.size) + 168] = this.address
            mem[_22408 + ceil32(return_data.size) + 200] = address(arg4)
            require ext_code.size(address(arg2))
            staticcall address(arg2).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(arg4)
            mem[_22408 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            mem[_22408 + (2 * ceil32(return_data.size)) + 200] = address(arg4)
            mem[_22408 + (2 * ceil32(return_data.size)) + 232] = -1
            mem[_22408 + (2 * ceil32(return_data.size)) + 164] = 68
            mem[_22408 + (2 * ceil32(return_data.size)) + 196 len 4] = approve(address arg1, uint256 arg2)
            mem[_22408 + (2 * ceil32(return_data.size)) + 264] = 32
            mem[_22408 + (2 * ceil32(return_data.size)) + 296] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg2)):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(address(arg2)):
                revert with 0, 'Address: call to non-contract'
            mem[_22408 + (2 * ceil32(return_data.size)) + 328 len 96] = 0, address(arg4), -1, 0
            mem[_22408 + (2 * ceil32(return_data.size)) + 396] = 0
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
                mem[_22408 + (2 * ceil32(return_data.size)) + 396] = _11207
                mem[_22408 + (2 * ceil32(return_data.size)) + 428] = mem[(32 * _16800 - 1) + _16792 + ceil32(return_data.size) + 32]
                mem[_22408 + (2 * ceil32(return_data.size)) + 460] = 0
                mem[_22408 + (2 * ceil32(return_data.size)) + 492] = 0
                mem[_22408 + (2 * ceil32(return_data.size)) + 524] = address(arg5)
                mem[_22408 + (2 * ceil32(return_data.size)) + 556] = block.timestamp
                require ext_code.size(address(arg4))
                call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args address(arg1), address(arg2), _11207, mem[(32 * _16800 - 1) + _16792 + ceil32(return_data.size) + 32], 0, 0, address(arg5), block.timestamp
                mem[_22408 + (2 * ceil32(return_data.size)) + 328 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[_22408 + (4 * ceil32(return_data.size)) + 328] = ext_call.return_data[0]
                mem[_22408 + (4 * ceil32(return_data.size)) + 360] = ext_call.return_data[32]
                mem[_22408 + (4 * ceil32(return_data.size)) + 392] = ext_call.return_data[64]
                return memory
                  from _22408 + (4 * ceil32(return_data.size)) + 328
                   len (5 * ceil32(return_data.size)) + 96
            mem[_22408 + (2 * ceil32(return_data.size)) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_22408 + (2 * ceil32(return_data.size)) + 360] == bool(mem[_22408 + (2 * ceil32(return_data.size)) + 360])
                if not mem[_22408 + (2 * ceil32(return_data.size)) + 360]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[_22408 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 397] = _11207
            mem[_22408 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = mem[(32 * _16800 - 1) + _16792 + ceil32(return_data.size) + 32]
            mem[_22408 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = 0
            mem[_22408 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
            mem[_22408 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg5)
            mem[_22408 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = block.timestamp
            require ext_code.size(address(arg4))
            call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), _11207, mem[(32 * _16800 - 1) + _16792 + ceil32(return_data.size) + 32], 0, 0, address(arg5), block.timestamp
            mem[_22408 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            mem[_22408 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0]
            mem[_22408 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = ext_call.return_data[32]
            mem[_22408 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = ext_call.return_data[64]
            return memory
              from _22408 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329
               len (5 * ceil32(return_data.size)) + 96
        mem[_22408 + 164] = return_data.size
        mem[_22408 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[_22408 + 196] == bool(mem[_22408 + 196])
            if not mem[_22408 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[_22408 + ceil32(return_data.size) + 169] = this.address
        mem[_22408 + ceil32(return_data.size) + 201] = address(arg4)
        require ext_code.size(address(arg2))
        staticcall address(arg2).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(arg4)
        mem[_22408 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(address(arg4))
            call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), _11207, mem[(32 * _16800 - 1) + _16792 + ceil32(return_data.size) + 32], 0, 0, address(arg5), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
        mem[_22408 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
        mem[_22408 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(arg4)
        require ext_code.size(address(arg2))
        staticcall address(arg2).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(arg4)
        mem[_22408 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[_22408 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = address(arg4)
        mem[_22408 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 233] = -1
        mem[_22408 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = 68
        mem[_22408 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197 len 4] = approve(address arg1, uint256 arg2)
        mem[_22408 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 265] = 32
        mem[_22408 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 297] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg2)):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(arg2)):
            revert with 0, 'Address: call to non-contract'
        mem[_22408 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329 len 96] = 0, address(arg4), -1, 0
        mem[_22408 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 397] = 0
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
            mem[_22408 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 397] = _11207
            mem[_22408 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 429] = mem[(32 * _16800 - 1) + _16792 + ceil32(return_data.size) + 32]
            mem[_22408 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 461] = 0
            mem[_22408 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 493] = 0
            mem[_22408 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 525] = address(arg5)
            mem[_22408 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 557] = block.timestamp
            require ext_code.size(address(arg4))
            call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), _11207, mem[(32 * _16800 - 1) + _16792 + ceil32(return_data.size) + 32], 0, 0, address(arg5), block.timestamp
            mem[_22408 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            mem[_22408 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 329] = ext_call.return_data[0]
            mem[_22408 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 361] = ext_call.return_data[32]
            mem[_22408 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 393] = ext_call.return_data[64]
            return memory
              from _22408 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 329
               len (5 * ceil32(return_data.size)) + 96
        mem[_22408 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329] = return_data.size
        mem[_22408 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_22408 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_22408 + (4 * ceil32(return_data.size)) + 334] = 32
            mem[_22408 + (4 * ceil32(return_data.size)) + 366] = 32
            mem[_22408 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
            revert with memory
              from _22408 + (4 * ceil32(return_data.size)) + 330
               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        if return_data.size:
            require return_data.size >= 32
            require mem[_22408 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361] == bool(mem[_22408 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361])
            if not mem[_22408 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361]:
                mem[_22408 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_22408 + (4 * ceil32(return_data.size)) + 334] = 32
                mem[_22408 + (4 * ceil32(return_data.size)) + 366] = 42
                mem[_22408 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                mem[_22408 + (4 * ceil32(return_data.size)) + 430] = 'ot succeed'
                revert with memory
                  from _22408 + (4 * ceil32(return_data.size)) + 330
                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
        mem[_22408 + (4 * ceil32(return_data.size)) + 334] = address(arg1)
        mem[_22408 + (4 * ceil32(return_data.size)) + 366] = address(arg2)
        mem[_22408 + (4 * ceil32(return_data.size)) + 398] = _11207
        mem[_22408 + (4 * ceil32(return_data.size)) + 430] = mem[(32 * _16800 - 1) + _16792 + ceil32(return_data.size) + 32]
        mem[_22408 + (4 * ceil32(return_data.size)) + 462] = 0
        mem[_22408 + (4 * ceil32(return_data.size)) + 494] = 0
        mem[_22408 + (4 * ceil32(return_data.size)) + 526] = address(arg5)
        mem[_22408 + (4 * ceil32(return_data.size)) + 558] = block.timestamp
        require ext_code.size(address(arg4))
        call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args mem[_22408 + (4 * ceil32(return_data.size)) + 334 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
        mem[_22408 + (4 * ceil32(return_data.size)) + 330 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        mem[_22408 + (8 * ceil32(return_data.size)) + 330] = ext_call.return_data[0]
        mem[_22408 + (8 * ceil32(return_data.size)) + 362] = ext_call.return_data[32]
        mem[_22408 + (8 * ceil32(return_data.size)) + 394] = ext_call.return_data[64]
        return memory
          from _22408 + (8 * ceil32(return_data.size)) + 330
           len (9 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 96
    _11214 = mem[64]
    mem[mem[64]] = 3
    mem[64] = mem[64] + 128
    if not mem[_11214]:
        revert with 0, 50
    mem[_11214 + 32] = stor1
    if 1 >= mem[_11214]:
        revert with 0, 50
    mem[_11214 + 64] = sub_76b8fcfcAddress
    if 2 >= mem[_11214]:
        revert with 0, 50
    mem[_11214 + 96] = address(arg2)
    mem[_11214 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[_11214 + 132] = 0
    mem[_11214 + 164] = 128
    mem[_11214 + 260] = mem[_11214]
    idx = 0
    s = _11214 + 32
    t = _11214 + 292
    while idx < mem[_11214]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_11214 + 196] = this.address
    mem[_11214 + 228] = block.timestamp
    require ext_code.size(sub_2d2e3a93Address)
    call sub_2d2e3a93Address.mem[mem[64] len 4] with:
       value arg3 - (arg3 / 2) wei
         gas gas_remaining wei
        args mem[mem[64] + 4 len _11214 + (32 * mem[_11214]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _16793 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _16797 = mem[_16793]
    require mem[_16793] <= test266151307()
    require _16793 + mem[_16793] + 31 < _16793 + return_data.size
    _16801 = mem[_16793 + mem[_16793]]
    if mem[_16793 + mem[_16793]] > test266151307():
        revert with 0, 65
    if _16793 + ceil32(return_data.size) + ceil32(32 * mem[_16793 + mem[_16793]]) + 1 > test266151307() or ceil32(32 * mem[_16793 + mem[_16793]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _16793 + ceil32(return_data.size) + ceil32(32 * mem[_16793 + mem[_16793]]) + 1
    mem[_16793 + ceil32(return_data.size)] = _16801
    require return_data.size >= _16797 + (32 * _16801) + 32
    mem[_16793 + ceil32(return_data.size) + 32 len 32 * _16801] = mem[_16793 + _16797 + 32 len 32 * _16801]
    if _16801 < 1:
        revert with 0, 17
    if _16801 - 1 >= _16801:
        revert with 0, 50
    _22349 = mem[(32 * _16801 - 1) + _16793 + ceil32(return_data.size) + 32]
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = address(arg4)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(arg4)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _22361 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = address(arg4)
    if mem[_22361]:
        require ext_code.size(address(arg2))
        staticcall address(arg2).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(arg4)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _22388 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_22388]:
            mem[mem[64] + 68] = _11207
            mem[mem[64] + 100] = _22349
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = address(arg5)
            mem[mem[64] + 228] = block.timestamp
            require ext_code.size(address(arg4))
            call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), _11207, _22349, 0, 0, address(arg5), block.timestamp
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _22440 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _22456 = mem[_22440 + 32]
            _22457 = mem[_22440 + 64]
            mem[mem[64]] = mem[_22440]
            mem[mem[64] + 64] = _22457
            return mem[mem[64]], _22456, _22457
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(arg4)
        require ext_code.size(address(arg2))
        staticcall address(arg2).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(arg4)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _22445 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_22445]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        _22497 = mem[64]
        mem[mem[64] + 36] = address(arg4)
        mem[mem[64] + 68] = -1
        _22511 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
        mem[64] = mem[64] + 164
        mem[_22497 + 100] = 32
        mem[_22497 + 132] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg2)):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(arg2)):
            revert with 0, 'Address: call to non-contract'
        _22560 = mem[_22511]
        mem[_22497 + 164 len ceil32(mem[_22511])] = mem[_22511 + 32 len ceil32(mem[_22511])]
        if ceil32(_22560) > _22560:
            mem[_22560 + _22497 + 164] = 0
        call address(arg2) with:
             gas gas_remaining wei
            args mem[_22497 + 168 len _22560 - 4]
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
            mem[_22497 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_22497 + 196] == bool(mem[_22497 + 196])
                if not mem[_22497 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(address(arg4))
        call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args address(arg1), address(arg2), _11207, _22349, 0, 0, address(arg5), block.timestamp
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
    _22389 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_22389]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    _22412 = mem[64]
    mem[mem[64] + 36] = address(arg4)
    mem[mem[64] + 68] = -1
    _22431 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
    mem[64] = mem[64] + 164
    mem[_22412 + 100] = 32
    mem[_22412 + 132] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg1)):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(address(arg1)):
        revert with 0, 'Address: call to non-contract'
    _22500 = mem[_22431]
    mem[_22412 + 164 len ceil32(mem[_22431])] = mem[_22431 + 32 len ceil32(mem[_22431])]
    if ceil32(_22500) > _22500:
        mem[_22500 + _22412 + 164] = 0
    call address(arg1) with:
         gas gas_remaining wei
        args mem[_22412 + 168 len _22500 - 4]
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
        mem[_22412 + 168] = this.address
        mem[_22412 + 200] = address(arg4)
        require ext_code.size(address(arg2))
        staticcall address(arg2).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(arg4)
        mem[_22412 + 164] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(address(arg4))
            call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), _11207, _22349, 0, 0, address(arg5), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
        mem[_22412 + ceil32(return_data.size) + 168] = this.address
        mem[_22412 + ceil32(return_data.size) + 200] = address(arg4)
        require ext_code.size(address(arg2))
        staticcall address(arg2).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(arg4)
        mem[_22412 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[_22412 + (2 * ceil32(return_data.size)) + 200] = address(arg4)
        mem[_22412 + (2 * ceil32(return_data.size)) + 232] = -1
        mem[_22412 + (2 * ceil32(return_data.size)) + 164] = 68
        mem[_22412 + (2 * ceil32(return_data.size)) + 196 len 4] = approve(address arg1, uint256 arg2)
        mem[_22412 + (2 * ceil32(return_data.size)) + 264] = 32
        mem[_22412 + (2 * ceil32(return_data.size)) + 296] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg2)):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(arg2)):
            revert with 0, 'Address: call to non-contract'
        mem[_22412 + (2 * ceil32(return_data.size)) + 328 len 96] = 0, address(arg4), -1, 0
        mem[_22412 + (2 * ceil32(return_data.size)) + 396] = 0
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
            mem[_22412 + (2 * ceil32(return_data.size)) + 396] = _11207
            mem[_22412 + (2 * ceil32(return_data.size)) + 428] = _22349
            mem[_22412 + (2 * ceil32(return_data.size)) + 460] = 0
            mem[_22412 + (2 * ceil32(return_data.size)) + 492] = 0
            mem[_22412 + (2 * ceil32(return_data.size)) + 524] = address(arg5)
            mem[_22412 + (2 * ceil32(return_data.size)) + 556] = block.timestamp
            require ext_code.size(address(arg4))
            call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), _11207, _22349, 0, 0, address(arg5), block.timestamp
            mem[_22412 + (2 * ceil32(return_data.size)) + 328 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            mem[_22412 + (4 * ceil32(return_data.size)) + 328] = ext_call.return_data[0]
            mem[_22412 + (4 * ceil32(return_data.size)) + 360] = ext_call.return_data[32]
            mem[_22412 + (4 * ceil32(return_data.size)) + 392] = ext_call.return_data[64]
            return memory
              from _22412 + (4 * ceil32(return_data.size)) + 328
               len (5 * ceil32(return_data.size)) + 96
        mem[_22412 + (2 * ceil32(return_data.size)) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[_22412 + (2 * ceil32(return_data.size)) + 360] == bool(mem[_22412 + (2 * ceil32(return_data.size)) + 360])
            if not mem[_22412 + (2 * ceil32(return_data.size)) + 360]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[_22412 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 397] = _11207
        mem[_22412 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = _22349
        mem[_22412 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = 0
        mem[_22412 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
        mem[_22412 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(arg5)
        mem[_22412 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = block.timestamp
        require ext_code.size(address(arg4))
        call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args address(arg1), address(arg2), _11207, _22349, 0, 0, address(arg5), block.timestamp
        mem[_22412 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        mem[_22412 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0]
        mem[_22412 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = ext_call.return_data[32]
        mem[_22412 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = ext_call.return_data[64]
        return memory
          from _22412 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329
           len (5 * ceil32(return_data.size)) + 96
    mem[_22412 + 164] = return_data.size
    mem[_22412 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        require mem[_22412 + 196] == bool(mem[_22412 + 196])
        if not mem[_22412 + 196]:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    mem[_22412 + ceil32(return_data.size) + 169] = this.address
    mem[_22412 + ceil32(return_data.size) + 201] = address(arg4)
    require ext_code.size(address(arg2))
    staticcall address(arg2).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(arg4)
    mem[_22412 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(address(arg4))
        call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args address(arg1), address(arg2), _11207, _22349, 0, 0, address(arg5), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
    mem[_22412 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
    mem[_22412 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(arg4)
    require ext_code.size(address(arg2))
    staticcall address(arg2).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(arg4)
    mem[_22412 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    mem[_22412 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = address(arg4)
    mem[_22412 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 233] = -1
    mem[_22412 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = 68
    mem[_22412 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197 len 4] = approve(address arg1, uint256 arg2)
    mem[_22412 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 265] = 32
    mem[_22412 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 297] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg2)):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(address(arg2)):
        revert with 0, 'Address: call to non-contract'
    mem[_22412 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329 len 96] = 0, address(arg4), -1, 0
    mem[_22412 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 397] = 0
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
        mem[_22412 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 397] = _11207
        mem[_22412 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 429] = _22349
        mem[_22412 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 461] = 0
        mem[_22412 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 493] = 0
        mem[_22412 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 525] = address(arg5)
        mem[_22412 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 557] = block.timestamp
        require ext_code.size(address(arg4))
        call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args address(arg1), address(arg2), _11207, _22349, 0, 0, address(arg5), block.timestamp
        mem[_22412 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        mem[_22412 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 329] = ext_call.return_data[0]
        mem[_22412 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 361] = ext_call.return_data[32]
        mem[_22412 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 393] = ext_call.return_data[64]
        return memory
          from _22412 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 329
           len (5 * ceil32(return_data.size)) + 96
    mem[_22412 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329] = return_data.size
    mem[_22412 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_22412 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_22412 + (4 * ceil32(return_data.size)) + 334] = 32
        mem[_22412 + (4 * ceil32(return_data.size)) + 366] = 32
        mem[_22412 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
        revert with memory
          from _22412 + (4 * ceil32(return_data.size)) + 330
           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if return_data.size:
        require return_data.size >= 32
        require mem[_22412 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361] == bool(mem[_22412 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361])
        if not mem[_22412 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361]:
            mem[_22412 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_22412 + (4 * ceil32(return_data.size)) + 334] = 32
            mem[_22412 + (4 * ceil32(return_data.size)) + 366] = 42
            mem[_22412 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
            mem[_22412 + (4 * ceil32(return_data.size)) + 430] = 'ot succeed'
            revert with memory
              from _22412 + (4 * ceil32(return_data.size)) + 330
               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    mem[_22412 + (4 * ceil32(return_data.size)) + 334] = address(arg1)
    mem[_22412 + (4 * ceil32(return_data.size)) + 366] = address(arg2)
    mem[_22412 + (4 * ceil32(return_data.size)) + 398] = _11207
    mem[_22412 + (4 * ceil32(return_data.size)) + 430] = _22349
    mem[_22412 + (4 * ceil32(return_data.size)) + 462] = 0
    mem[_22412 + (4 * ceil32(return_data.size)) + 494] = 0
    mem[_22412 + (4 * ceil32(return_data.size)) + 526] = address(arg5)
    mem[_22412 + (4 * ceil32(return_data.size)) + 558] = block.timestamp
    require ext_code.size(address(arg4))
    call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
         gas gas_remaining wei
        args mem[_22412 + (4 * ceil32(return_data.size)) + 334 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
    mem[_22412 + (4 * ceil32(return_data.size)) + 330 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    mem[_22412 + (8 * ceil32(return_data.size)) + 330] = ext_call.return_data[0]
    mem[_22412 + (8 * ceil32(return_data.size)) + 362] = ext_call.return_data[32]
    mem[_22412 + (8 * ceil32(return_data.size)) + 394] = ext_call.return_data[64]
    return memory
      from _22412 + (8 * ceil32(return_data.size)) + 330
       len (9 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 96
}



}
