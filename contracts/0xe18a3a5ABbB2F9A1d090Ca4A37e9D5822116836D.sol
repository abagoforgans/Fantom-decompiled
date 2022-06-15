contract main {




// =====================  Runtime code  =====================


address stor0;
address stor2;
address uniAddress;
address sub_74015e57Address;
address stor5;
address stor6;

function sub_74015e57(?) {
    return sub_74015e57Address
}

function uni() {
    return uniAddress
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor6
    stor6 = arg1
}

function flashPrintMoney(address arg1, uint256 arg2, address[] arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require msg.sender == stor6
    mem[128] = arg1
    mem[160] = 64
    mem[192] = arg3.length
    idx = 0
    s = 224
    t = arg3 + 36
    while idx < arg3.length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(sub_74015e57Address)
    call sub_74015e57Address.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg2, 0, address(this.address), 128, (32 * arg3.length) + 96, mem[128 len floor32(arg3.length) + 3]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if stor5 != msg.sender:
        revert with 0, 'Non permissioned address call'
    if arg1 != this.address:
        revert with 0, 'Not from this contract'
    require arg4.length >= 64
    _7 = mem[128]
    require mem[128] == mem[140 len 20]
    _8 = mem[160]
    require mem[160] <= test266151307()
    require arg4.length + 128 > mem[160] + 159
    _9 = mem[mem[160] + 128]
    if mem[mem[160] + 128] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[160] + 128]) + 98 < 97 or ceil32(ceil32(arg4.length)) + ceil32(32 * mem[mem[160] + 128]) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg4.length)) + ceil32(32 * mem[mem[160] + 128]) + 98
    mem[ceil32(ceil32(arg4.length)) + 97] = mem[mem[160] + 128]
    require _8 + (32 * _9) + 64 <= arg4.length + 32
    s = _8 + 160
    t = ceil32(ceil32(arg4.length)) + 129
    idx = 0
    while idx < _9:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = stor0
    mem[mem[64] + 36] = arg2
    require ext_code.size(address(_7))
    call address(_7).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, arg2
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _254 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_254] == bool(mem[_254])
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg2
    mem[mem[64] + 36] = arg2
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = _9
    idx = 0
    s = mem[64] + 196
    t = ceil32(ceil32(arg4.length)) + 129
    while idx < _9:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp
    require ext_code.size(uniAddress)
    call uniAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, arg2, Array(len=_9, data=mem[mem[64] + 196 len 32 * _9]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _493 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _494 = mem[_493]
    require mem[_493] <= test266151307()
    require _493 + return_data.size > _493 + mem[_493] + 31
    _495 = mem[_493 + mem[_493]]
    if mem[_493 + mem[_493]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_493 + mem[_493]]) + 1 < 0 or _493 + ceil32(return_data.size) + ceil32(32 * mem[_493 + mem[_493]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _493 + ceil32(return_data.size) + ceil32(32 * mem[_493 + mem[_493]]) + 1
    mem[_493 + ceil32(return_data.size)] = _495
    require _494 + (32 * _495) + 32 <= return_data.size
    mem[_493 + ceil32(return_data.size) + 32 len 32 * _495] = mem[_493 + _494 + 32 len 32 * _495]
    require ext_code.size(sub_74015e57Address)
    staticcall sub_74015e57Address.getReserves() with:
            gas gas_remaining wei
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _727 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _728 = mem[_727]
    require mem[_727] == mem[_727 + 18 len 14]
    _729 = mem[_727 + 32]
    require mem[_727 + 32] == mem[_727 + 50 len 14]
    require mem[_727 + 64] == mem[_727 + 92 len 4]
    if arg2 <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_OUTPUT_AMOUNT'
    if mem[_727 + 18 len 14] <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if mem[_727 + 50 len 14] <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if not arg2:
        if mem[_727 + 50 len 14] < arg2:
            revert with 0, 17
        if mem[_727 + 50 len 14] - arg2 > mem[_727 + 50 len 14]:
            revert with 0, 'ds-math-sub-underflow'
        if mem[_727 + 50 len 14] - arg2 and 998 > -1 / mem[_727 + 50 len 14] - arg2:
            revert with 0, 17
        if (998 * mem[_727 + 50 len 14]) - (998 * arg2) / 998 != mem[_727 + 50 len 14] - arg2:
            revert with 0, 'ds-math-mul-overflow'
        if not (998 * mem[_727 + 50 len 14]) - (998 * arg2):
            revert with 0, 18
        if 0 / (998 * mem[_727 + 50 len 14]) - (998 * arg2) > -2:
            revert with 0, 17
        if (0 / (998 * mem[_727 + 50 len 14]) - (998 * arg2)) + 1 < 0 / (998 * mem[_727 + 50 len 14]) - (998 * arg2):
            revert with 0, 'ds-math-add-overflow'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_7))
        staticcall address(_7).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _753 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _754 = mem[_753]
        if mem[_753] < (0 / (998 * Mask(112, 0, _729)) - (998 * arg2)) + 1:
            revert with 0, 17
        require mem[_753] + -(0 / (998 * Mask(112, 0, _729)) - (998 * arg2)) - 1 > 0
        _760 = mem[64]
        mem[mem[64] + 36] = stor2
        mem[mem[64] + 68] = (0 / (998 * Mask(112, 0, _729)) - (998 * arg2)) + 1
        _761 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_760 + 100] = 32
        mem[_760 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(_7)):
            revert with 0, 'Address: call to non-contract'
        _769 = mem[_761]
        mem[_760 + 164 len ceil32(mem[_761])] = mem[_761 + 32 len ceil32(mem[_761])]
        if ceil32(_769) > _769:
            mem[_760 + _769 + 164] = 0
        call address(_7) with:
             gas gas_remaining wei
            args mem[_760 + 168 len _769 - 4]
        if not return_data.size:
            if not ext_call.success:
                if arg4.length:
                    revert with memory
                      from 128
                       len arg4.length
                revert with 0, 'SafeERC20: low-level call failed'
            if arg4.length:
                require arg4.length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_760 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_760 + 196] == bool(mem[_760 + 196])
                if not mem[_760 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(address(_7))
        call address(_7).0xa9059cbb with:
             gas gas_remaining wei
            args stor6, _754 + -(0 / (998 * Mask(112, 0, _729)) - (998 * arg2)) - 1
    else:
        if mem[_727 + 18 len 14] and arg2 > -1 / mem[_727 + 18 len 14]:
            revert with 0, 17
        if not arg2:
            revert with 0, 18
        if mem[_727 + 18 len 14] * arg2 / arg2 != mem[_727 + 18 len 14]:
            revert with 0, 'ds-math-mul-overflow'
        if mem[_727 + 18 len 14] * arg2 and 1000 > -1 / mem[_727 + 18 len 14] * arg2:
            revert with 0, 17
        if 1000 * mem[_727 + 18 len 14] * arg2 / 1000 != mem[_727 + 18 len 14] * arg2:
            revert with 0, 'ds-math-mul-overflow'
        if mem[_727 + 50 len 14] < arg2:
            revert with 0, 17
        if mem[_727 + 50 len 14] - arg2 > mem[_727 + 50 len 14]:
            revert with 0, 'ds-math-sub-underflow'
        if mem[_727 + 50 len 14] - arg2 and 998 > -1 / mem[_727 + 50 len 14] - arg2:
            revert with 0, 17
        if (998 * mem[_727 + 50 len 14]) - (998 * arg2) / 998 != mem[_727 + 50 len 14] - arg2:
            revert with 0, 'ds-math-mul-overflow'
        if not (998 * mem[_727 + 50 len 14]) - (998 * arg2):
            revert with 0, 18
        if 1000 * mem[_727 + 18 len 14] * arg2 / (998 * mem[_727 + 50 len 14]) - (998 * arg2) > -2:
            revert with 0, 17
        if (1000 * mem[_727 + 18 len 14] * arg2 / (998 * mem[_727 + 50 len 14]) - (998 * arg2)) + 1 < 1000 * mem[_727 + 18 len 14] * arg2 / (998 * mem[_727 + 50 len 14]) - (998 * arg2):
            revert with 0, 'ds-math-add-overflow'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_7))
        staticcall address(_7).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _759 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _764 = mem[_759]
        if mem[_759] < (1000 * Mask(112, 0, _728) * arg2 / (998 * Mask(112, 0, _729)) - (998 * arg2)) + 1:
            revert with 0, 17
        require mem[_759] + -(1000 * Mask(112, 0, _728) * arg2 / (998 * Mask(112, 0, _729)) - (998 * arg2)) - 1 > 0
        _771 = mem[64]
        mem[mem[64] + 36] = stor2
        mem[mem[64] + 68] = (1000 * Mask(112, 0, _728) * arg2 / (998 * Mask(112, 0, _729)) - (998 * arg2)) + 1
        _772 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_771 + 100] = 32
        mem[_771 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(_7)):
            revert with 0, 'Address: call to non-contract'
        _783 = mem[_772]
        mem[_771 + 164 len ceil32(mem[_772])] = mem[_772 + 32 len ceil32(mem[_772])]
        if ceil32(_783) > _783:
            mem[_771 + _783 + 164] = 0
        call address(_7) with:
             gas gas_remaining wei
            args mem[_771 + 168 len _783 - 4]
        if not return_data.size:
            if not ext_call.success:
                if arg4.length:
                    revert with memory
                      from 128
                       len arg4.length
                revert with 0, 'SafeERC20: low-level call failed'
            if arg4.length:
                require arg4.length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_771 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_771 + 196] == bool(mem[_771 + 196])
                if not mem[_771 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(address(_7))
        call address(_7).0xa9059cbb with:
             gas gas_remaining wei
            args stor6, _764 + -(1000 * Mask(112, 0, _728) * arg2 / (998 * Mask(112, 0, _729)) - (998 * arg2)) - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function _fallback() {
    require 4 <= calldata.size
    require calldata.size <= calldata.size
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if stor5 != msg.sender:
        revert with 0, 'Non permissioned address call'
    if address(arg1) != this.address:
        revert with 0, 'Not from this contract'
    require arg3.length >= 64
    _7 = mem[128]
    require mem[128] == mem[140 len 20]
    _8 = mem[160]
    require mem[160] <= test266151307()
    require arg3.length + 128 > mem[160] + 159
    _9 = mem[mem[160] + 128]
    if mem[mem[160] + 128] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[160] + 128]) + 98 < 97 or ceil32(ceil32(arg3.length)) + ceil32(32 * mem[mem[160] + 128]) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg3.length)) + ceil32(32 * mem[mem[160] + 128]) + 98
    mem[ceil32(ceil32(arg3.length)) + 97] = mem[mem[160] + 128]
    require _8 + (32 * _9) + 64 <= arg3.length + 32
    s = _8 + 160
    t = ceil32(ceil32(arg3.length)) + 129
    idx = 0
    while idx < _9:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = stor0
    mem[mem[64] + 36] = arg2
    require ext_code.size(address(_7))
    call address(_7).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, arg2
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _270 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_270] == bool(mem[_270])
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg2
    mem[mem[64] + 36] = arg2
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = _9
    idx = 0
    s = mem[64] + 196
    t = ceil32(ceil32(arg3.length)) + 129
    while idx < _9:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp
    require ext_code.size(uniAddress)
    call uniAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, arg2, Array(len=_9, data=mem[mem[64] + 196 len 32 * _9]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _525 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _526 = mem[_525]
    require mem[_525] <= test266151307()
    require _525 + return_data.size > _525 + mem[_525] + 31
    _527 = mem[_525 + mem[_525]]
    if mem[_525 + mem[_525]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_525 + mem[_525]]) + 1 < 0 or _525 + ceil32(return_data.size) + ceil32(32 * mem[_525 + mem[_525]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _525 + ceil32(return_data.size) + ceil32(32 * mem[_525 + mem[_525]]) + 1
    mem[_525 + ceil32(return_data.size)] = _527
    require _526 + (32 * _527) + 32 <= return_data.size
    mem[_525 + ceil32(return_data.size) + 32 len 32 * _527] = mem[_525 + _526 + 32 len 32 * _527]
    require ext_code.size(sub_74015e57Address)
    staticcall sub_74015e57Address.getReserves() with:
            gas gas_remaining wei
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _775 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _776 = mem[_775]
    require mem[_775] == mem[_775 + 18 len 14]
    _777 = mem[_775 + 32]
    require mem[_775 + 32] == mem[_775 + 50 len 14]
    require mem[_775 + 64] == mem[_775 + 92 len 4]
    if arg2 <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_OUTPUT_AMOUNT'
    if mem[_775 + 18 len 14] <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if mem[_775 + 50 len 14] <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if not arg2:
        if mem[_775 + 50 len 14] < arg2:
            revert with 0, 17
        if mem[_775 + 50 len 14] - arg2 > mem[_775 + 50 len 14]:
            revert with 0, 'ds-math-sub-underflow'
        if mem[_775 + 50 len 14] - arg2 and 998 > -1 / mem[_775 + 50 len 14] - arg2:
            revert with 0, 17
        if (998 * mem[_775 + 50 len 14]) - (998 * arg2) / 998 != mem[_775 + 50 len 14] - arg2:
            revert with 0, 'ds-math-mul-overflow'
        if not (998 * mem[_775 + 50 len 14]) - (998 * arg2):
            revert with 0, 18
        if 0 / (998 * mem[_775 + 50 len 14]) - (998 * arg2) > -2:
            revert with 0, 17
        if (0 / (998 * mem[_775 + 50 len 14]) - (998 * arg2)) + 1 < 0 / (998 * mem[_775 + 50 len 14]) - (998 * arg2):
            revert with 0, 'ds-math-add-overflow'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_7))
        staticcall address(_7).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _801 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _802 = mem[_801]
        if mem[_801] < (0 / (998 * Mask(112, 0, _777)) - (998 * arg2)) + 1:
            revert with 0, 17
        require mem[_801] + -(0 / (998 * Mask(112, 0, _777)) - (998 * arg2)) - 1 > 0
        _808 = mem[64]
        mem[mem[64] + 36] = stor2
        mem[mem[64] + 68] = (0 / (998 * Mask(112, 0, _777)) - (998 * arg2)) + 1
        _809 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_808 + 100] = 32
        mem[_808 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(_7)):
            revert with 0, 'Address: call to non-contract'
        _817 = mem[_809]
        mem[_808 + 164 len ceil32(mem[_809])] = mem[_809 + 32 len ceil32(mem[_809])]
        if ceil32(_817) > _817:
            mem[_808 + _817 + 164] = 0
        call address(_7) with:
             gas gas_remaining wei
            args mem[_808 + 168 len _817 - 4]
        if not return_data.size:
            if not ext_call.success:
                if arg3.length:
                    revert with memory
                      from 128
                       len arg3.length
                revert with 0, 'SafeERC20: low-level call failed'
            if arg3.length:
                require arg3.length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[_808 + 168] = stor6
            mem[_808 + 200] = _802 + -(0 / (998 * Mask(112, 0, _777)) - (998 * arg2)) - 1
            require ext_code.size(address(_7))
            call address(_7).0xa9059cbb with:
                 gas gas_remaining wei
                args stor6, _802 + -(0 / (998 * Mask(112, 0, _777)) - (998 * arg2)) - 1
            mem[_808 + 164] = ext_call.return_data[0]
        else:
            mem[_808 + 164] = return_data.size
            mem[_808 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_808 + 196] == bool(mem[_808 + 196])
                if not mem[_808 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[_808 + ceil32(return_data.size) + 169] = stor6
            mem[_808 + ceil32(return_data.size) + 201] = _802 + -(0 / (998 * Mask(112, 0, _777)) - (998 * arg2)) - 1
            require ext_code.size(address(_7))
            call address(_7).0xa9059cbb with:
                 gas gas_remaining wei
                args stor6, _802 + -(0 / (998 * Mask(112, 0, _777)) - (998 * arg2)) - 1
            mem[_808 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
    else:
        if mem[_775 + 18 len 14] and arg2 > -1 / mem[_775 + 18 len 14]:
            revert with 0, 17
        if not arg2:
            revert with 0, 18
        if mem[_775 + 18 len 14] * arg2 / arg2 != mem[_775 + 18 len 14]:
            revert with 0, 'ds-math-mul-overflow'
        if mem[_775 + 18 len 14] * arg2 and 1000 > -1 / mem[_775 + 18 len 14] * arg2:
            revert with 0, 17
        if 1000 * mem[_775 + 18 len 14] * arg2 / 1000 != mem[_775 + 18 len 14] * arg2:
            revert with 0, 'ds-math-mul-overflow'
        if mem[_775 + 50 len 14] < arg2:
            revert with 0, 17
        if mem[_775 + 50 len 14] - arg2 > mem[_775 + 50 len 14]:
            revert with 0, 'ds-math-sub-underflow'
        if mem[_775 + 50 len 14] - arg2 and 998 > -1 / mem[_775 + 50 len 14] - arg2:
            revert with 0, 17
        if (998 * mem[_775 + 50 len 14]) - (998 * arg2) / 998 != mem[_775 + 50 len 14] - arg2:
            revert with 0, 'ds-math-mul-overflow'
        if not (998 * mem[_775 + 50 len 14]) - (998 * arg2):
            revert with 0, 18
        if 1000 * mem[_775 + 18 len 14] * arg2 / (998 * mem[_775 + 50 len 14]) - (998 * arg2) > -2:
            revert with 0, 17
        if (1000 * mem[_775 + 18 len 14] * arg2 / (998 * mem[_775 + 50 len 14]) - (998 * arg2)) + 1 < 1000 * mem[_775 + 18 len 14] * arg2 / (998 * mem[_775 + 50 len 14]) - (998 * arg2):
            revert with 0, 'ds-math-add-overflow'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_7))
        staticcall address(_7).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _807 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _812 = mem[_807]
        if mem[_807] < (1000 * Mask(112, 0, _776) * arg2 / (998 * Mask(112, 0, _777)) - (998 * arg2)) + 1:
            revert with 0, 17
        require mem[_807] + -(1000 * Mask(112, 0, _776) * arg2 / (998 * Mask(112, 0, _777)) - (998 * arg2)) - 1 > 0
        _819 = mem[64]
        mem[mem[64] + 36] = stor2
        mem[mem[64] + 68] = (1000 * Mask(112, 0, _776) * arg2 / (998 * Mask(112, 0, _777)) - (998 * arg2)) + 1
        _820 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_819 + 100] = 32
        mem[_819 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(_7)):
            revert with 0, 'Address: call to non-contract'
        _831 = mem[_820]
        mem[_819 + 164 len ceil32(mem[_820])] = mem[_820 + 32 len ceil32(mem[_820])]
        if ceil32(_831) > _831:
            mem[_819 + _831 + 164] = 0
        call address(_7) with:
             gas gas_remaining wei
            args mem[_819 + 168 len _831 - 4]
        if not return_data.size:
            if not ext_call.success:
                if arg3.length:
                    revert with memory
                      from 128
                       len arg3.length
                revert with 0, 'SafeERC20: low-level call failed'
            if arg3.length:
                require arg3.length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[_819 + 168] = stor6
            mem[_819 + 200] = _812 + -(1000 * Mask(112, 0, _776) * arg2 / (998 * Mask(112, 0, _777)) - (998 * arg2)) - 1
            require ext_code.size(address(_7))
            call address(_7).0xa9059cbb with:
                 gas gas_remaining wei
                args stor6, _812 + -(1000 * Mask(112, 0, _776) * arg2 / (998 * Mask(112, 0, _777)) - (998 * arg2)) - 1
            mem[_819 + 164] = ext_call.return_data[0]
        else:
            mem[_819 + 164] = return_data.size
            mem[_819 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_819 + 196] == bool(mem[_819 + 196])
                if not mem[_819 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[_819 + ceil32(return_data.size) + 169] = stor6
            mem[_819 + ceil32(return_data.size) + 201] = _812 + -(1000 * Mask(112, 0, _776) * arg2 / (998 * Mask(112, 0, _777)) - (998 * arg2)) - 1
            require ext_code.size(address(_7))
            call address(_7).0xa9059cbb with:
                 gas gas_remaining wei
                args stor6, _812 + -(1000 * Mask(112, 0, _776) * arg2 / (998 * Mask(112, 0, _777)) - (998 * arg2)) - 1
            mem[_819 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return memory
      from 128
       len arg3.length
}



}
