contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_d247d72d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Insuffisant funds'
    require ext_code.size(address(arg1))
    call address(arg1).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer error'
}

function sub_8802bf89(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    require arg5 == arg5
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    mem[128] = address(arg2)
    mem[160] = address(arg3)
    require ext_code.size(address(arg2))
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg4
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if block.timestamp > -31:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg4
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg4, arg5, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp + 30
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e129eb2b(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    mem[128] = address(arg2)
    mem[160] = address(arg3)
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg2))
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if block.timestamp > -31:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    idx = 0
    s = 128
    t = (2 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], arg4, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp + 30
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c7afc450(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    if arg6 <= 50:
        revert with 0, 'Less than 50% out'
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if arg4 <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
    if address(arg2) < address(arg3):
        if ext_call.return_data[18 len 14] <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if ext_call.return_data[50 len 14] <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if arg4 and 997 > -1 / arg4:
            revert with 'NH{q', 17
        if 997 * arg4 / 997 != arg4:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[50 len 14]:
            if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                revert with 'NH{q', 17
            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * ext_call.return_data[18 len 14] > (-997 * arg4) - 1:
                revert with 'NH{q', 17
            if (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) < 1000 * ext_call.return_data[18 len 14]:
                revert with 0, 'ds-math-add-overflow'
            if not (1000 * ext_call.return_data[18 len 14]) + (997 * arg4):
                revert with 'NH{q', 18
            require ext_code.size(address(arg1))
            call address(arg1).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(arg1))
            if address(arg2) < address(arg3):
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), address(this.address), 128, 0
            else:
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), 0, address(this.address), 128, 0
        else:
            if 997 * arg4 and ext_call.return_data[50 len 14] > -1 / 997 * arg4:
                revert with 'NH{q', 17
            if not ext_call.return_data[50 len 14]:
                revert with 'NH{q', 18
            if 997 * arg4 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * arg4:
                revert with 0, 'ds-math-mul-overflow'
            if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                revert with 'NH{q', 17
            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * ext_call.return_data[18 len 14] > (-997 * arg4) - 1:
                revert with 'NH{q', 17
            if (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) < 1000 * ext_call.return_data[18 len 14]:
                revert with 0, 'ds-math-add-overflow'
            if not (1000 * ext_call.return_data[18 len 14]) + (997 * arg4):
                revert with 'NH{q', 18
            require ext_code.size(address(arg1))
            call address(arg1).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(arg1))
            if address(arg2) < address(arg3):
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), address(this.address), 128, 0
            else:
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), 0, address(this.address), 128, 0
    else:
        if ext_call.return_data[50 len 14] <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if ext_call.return_data[18 len 14] <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if arg4 and 997 > -1 / arg4:
            revert with 'NH{q', 17
        if 997 * arg4 / 997 != arg4:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[18 len 14]:
            if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * ext_call.return_data[50 len 14] > (-997 * arg4) - 1:
                revert with 'NH{q', 17
            if (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) < 1000 * ext_call.return_data[50 len 14]:
                revert with 0, 'ds-math-add-overflow'
            if not (1000 * ext_call.return_data[50 len 14]) + (997 * arg4):
                revert with 'NH{q', 18
            require ext_code.size(address(arg1))
            call address(arg1).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(arg1))
            if address(arg2) < address(arg3):
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4), address(this.address), 128, 0
            else:
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4), 0, address(this.address), 128, 0
        else:
            if 997 * arg4 and ext_call.return_data[18 len 14] > -1 / 997 * arg4:
                revert with 'NH{q', 17
            if not ext_call.return_data[18 len 14]:
                revert with 'NH{q', 18
            if 997 * arg4 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * arg4:
                revert with 0, 'ds-math-mul-overflow'
            if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * ext_call.return_data[50 len 14] > (-997 * arg4) - 1:
                revert with 'NH{q', 17
            if (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) < 1000 * ext_call.return_data[50 len 14]:
                revert with 0, 'ds-math-add-overflow'
            if not (1000 * ext_call.return_data[50 len 14]) + (997 * arg4):
                revert with 'NH{q', 18
            require ext_code.size(address(arg1))
            call address(arg1).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(arg1))
            if address(arg2) < address(arg3):
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4), address(this.address), 128, 0
            else:
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4), 0, address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Output tokens < amountOutMin'
    if ext_call.return_data[0] < arg5:
        revert with 0, 'Output tokens < amountOutMin'
}



}
