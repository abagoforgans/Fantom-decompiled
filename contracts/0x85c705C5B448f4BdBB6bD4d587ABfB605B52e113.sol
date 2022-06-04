contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function sub_96ee0a08(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(address(arg1))
    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg3, 0, address(this.address), 128, 96, address(arg2), arg4, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Insuffisant funds'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer error'
}

function addr2str(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[192 len 51] = call.data[calldata.size len 51]
    idx = 0
    while idx < 20:
        if idx > -13:
            revert with 'NH{q', 17
        if idx + 12 >= 32:
            revert with 'NH{q', 50
        if idx and 2 > -1 / idx:
            revert with 'NH{q', 17
        if 2 > -(2 * idx) - 1:
            revert with 'NH{q', 17
        if (2 * idx) + 2 >= 51:
            revert with 'NH{q', 50
        mem[(2 * idx) + 194 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if idx > -13:
            revert with 'NH{q', 17
        if idx + 12 >= 32:
            revert with 'NH{q', 50
        if idx and 2 > -1 / idx:
            revert with 'NH{q', 17
        if 3 > -(2 * idx) - 1:
            revert with 'NH{q', 17
        if (2 * idx) + 3 >= 51:
            revert with 'NH{q', 50
        mem[(2 * idx) + 195 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 32, 51, mem[224 len 51], 0
}

function sub_f380be5f(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg2))
    staticcall address(arg2).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if arg3 <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_OUTPUT_AMOUNT'
    if Mask(112, 0, ext_call.return_data[32]) <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if Mask(112, 0, ext_call.return_data[0]) <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if not arg3:
        if Mask(112, 0, ext_call.return_data[0]) < arg3:
            revert with 'NH{q', 17
        if Mask(112, 0, ext_call.return_data[0]) - arg3 > Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'ds-math-sub-underflow'
        if Mask(112, 0, ext_call.return_data[0]) - arg3 and 997 > -1 / Mask(112, 0, ext_call.return_data[0]) - arg3:
            revert with 'NH{q', 17
        if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3) / 997 != Mask(112, 0, ext_call.return_data[0]) - arg3:
            revert with 0, 'ds-math-mul-overflow'
        if not (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3):
            revert with 'NH{q', 18
        if 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3) > -2:
            revert with 'NH{q', 17
        if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3):
            revert with 0, 'ds-math-add-overflow'
        if arg3 <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
        if ext_call.return_data[18 len 14] <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if ext_call.return_data[50 len 14] <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if arg3 and 997 > -1 / arg3:
            revert with 'NH{q', 17
        if 997 * arg3 / 997 != arg3:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[50 len 14]:
            if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                revert with 'NH{q', 17
            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * ext_call.return_data[18 len 14] > (-997 * arg3) - 1:
                revert with 'NH{q', 17
            if (1000 * ext_call.return_data[18 len 14]) + (997 * arg3) < 1000 * ext_call.return_data[18 len 14]:
                revert with 0, 'ds-math-add-overflow'
            if not (1000 * ext_call.return_data[18 len 14]) + (997 * arg3):
                revert with 'NH{q', 18
            return (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1, 
                   0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3)
        if 997 * arg3 and ext_call.return_data[50 len 14] > -1 / 997 * arg3:
            revert with 'NH{q', 17
        if not ext_call.return_data[50 len 14]:
            revert with 'NH{q', 18
        if 997 * arg3 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * arg3:
            revert with 0, 'ds-math-mul-overflow'
        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
            revert with 'NH{q', 17
        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
            revert with 0, 'ds-math-mul-overflow'
        if 1000 * ext_call.return_data[18 len 14] > (-997 * arg3) - 1:
            revert with 'NH{q', 17
        if (1000 * ext_call.return_data[18 len 14]) + (997 * arg3) < 1000 * ext_call.return_data[18 len 14]:
            revert with 0, 'ds-math-add-overflow'
        if not (1000 * ext_call.return_data[18 len 14]) + (997 * arg3):
            revert with 'NH{q', 18
        return (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1, 
               997 * arg3 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3)
    if Mask(112, 0, ext_call.return_data[32]) and arg3 > -1 / Mask(112, 0, ext_call.return_data[32]):
        revert with 'NH{q', 17
    if not arg3:
        revert with 'NH{q', 18
    if Mask(112, 0, ext_call.return_data[32]) * arg3 / arg3 != Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 'ds-math-mul-overflow'
    if Mask(112, 0, ext_call.return_data[32]) * arg3 and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]) * arg3:
        revert with 'NH{q', 17
    if 1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / 1000 != Mask(112, 0, ext_call.return_data[32]) * arg3:
        revert with 0, 'ds-math-mul-overflow'
    if Mask(112, 0, ext_call.return_data[0]) < arg3:
        revert with 'NH{q', 17
    if Mask(112, 0, ext_call.return_data[0]) - arg3 > Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'ds-math-sub-underflow'
    if Mask(112, 0, ext_call.return_data[0]) - arg3 and 997 > -1 / Mask(112, 0, ext_call.return_data[0]) - arg3:
        revert with 'NH{q', 17
    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3) / 997 != Mask(112, 0, ext_call.return_data[0]) - arg3:
        revert with 0, 'ds-math-mul-overflow'
    if not (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3):
        revert with 'NH{q', 18
    if 1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3) > -2:
        revert with 'NH{q', 17
    if (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3):
        revert with 0, 'ds-math-add-overflow'
    if arg3 <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if arg3 and 997 > -1 / arg3:
        revert with 'NH{q', 17
    if 997 * arg3 / 997 != arg3:
        revert with 0, 'ds-math-mul-overflow'
    if not ext_call.return_data[50 len 14]:
        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
            revert with 'NH{q', 17
        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
            revert with 0, 'ds-math-mul-overflow'
        if 1000 * ext_call.return_data[18 len 14] > (-997 * arg3) - 1:
            revert with 'NH{q', 17
        if (1000 * ext_call.return_data[18 len 14]) + (997 * arg3) < 1000 * ext_call.return_data[18 len 14]:
            revert with 0, 'ds-math-add-overflow'
        if not (1000 * ext_call.return_data[18 len 14]) + (997 * arg3):
            revert with 'NH{q', 18
        return (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1, 
               0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3)
    if 997 * arg3 and ext_call.return_data[50 len 14] > -1 / 997 * arg3:
        revert with 'NH{q', 17
    if not ext_call.return_data[50 len 14]:
        revert with 'NH{q', 18
    if 997 * arg3 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * arg3:
        revert with 0, 'ds-math-mul-overflow'
    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
        revert with 'NH{q', 17
    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
        revert with 0, 'ds-math-mul-overflow'
    if 1000 * ext_call.return_data[18 len 14] > (-997 * arg3) - 1:
        revert with 'NH{q', 17
    if (1000 * ext_call.return_data[18 len 14]) + (997 * arg3) < 1000 * ext_call.return_data[18 len 14]:
        revert with 0, 'ds-math-add-overflow'
    if not (1000 * ext_call.return_data[18 len 14]) + (997 * arg3):
        revert with 'NH{q', 18
    return (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1, 
           997 * arg3 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3)
}



}
