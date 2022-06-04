contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_6bc57b25(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(address(arg1))
    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg3, 0, address(this.address), 128, 64, address(arg2), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Insuffisant funds'
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer error'
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if arg2:
        revert with 0, 'One input amount must be zero'
    if arg3:
        revert with 0, 'One input amount must be zero'
    require arg4.length >= 64
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 68)] == cd[(arg4 + 68)]
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(cd[(arg4 + 36)]))
    staticcall address(cd[(arg4 + 36)]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if arg2 <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if arg2 and 997 > -1 / arg2:
        revert with 'NH{q', 17
    if 997 * arg2 / 997 != arg2:
        revert with 0, 'ds-math-mul-overflow'
    if not ext_call.return_data[50 len 14]:
        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
            revert with 'NH{q', 17
        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
            revert with 0, 'ds-math-mul-overflow'
        if 1000 * ext_call.return_data[18 len 14] > (-997 * arg2) - 1:
            revert with 'NH{q', 17
        if (1000 * ext_call.return_data[18 len 14]) + (997 * arg2) < 1000 * ext_call.return_data[18 len 14]:
            revert with 0, 'ds-math-add-overflow'
        if not (1000 * ext_call.return_data[18 len 14]) + (997 * arg2):
            revert with 'NH{q', 18
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 36)]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(cd[(arg4 + 36)]))
        call address(cd[(arg4 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg2), address(arg1), 128, 0
    else:
        if 997 * arg2 and ext_call.return_data[50 len 14] > -1 / 997 * arg2:
            revert with 'NH{q', 17
        if not ext_call.return_data[50 len 14]:
            revert with 'NH{q', 18
        if 997 * arg2 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * arg2:
            revert with 0, 'ds-math-mul-overflow'
        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
            revert with 'NH{q', 17
        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
            revert with 0, 'ds-math-mul-overflow'
        if 1000 * ext_call.return_data[18 len 14] > (-997 * arg2) - 1:
            revert with 'NH{q', 17
        if (1000 * ext_call.return_data[18 len 14]) + (997 * arg2) < 1000 * ext_call.return_data[18 len 14]:
            revert with 0, 'ds-math-add-overflow'
        if not (1000 * ext_call.return_data[18 len 14]) + (997 * arg2):
            revert with 'NH{q', 18
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 36)]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(cd[(arg4 + 36)]))
        call address(cd[(arg4 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, 997 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg2), address(arg1), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(cd[(arg4 + 36)]))
    staticcall address(cd[(arg4 + 36)]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if arg2 <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_OUTPUT_AMOUNT'
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if not arg2:
        if ext_call.return_data[18 len 14] < arg2:
            revert with 'NH{q', 17
        if ext_call.return_data[18 len 14] - arg2 > ext_call.return_data[18 len 14]:
            revert with 0, 'ds-math-sub-underflow'
        if ext_call.return_data[18 len 14] - arg2 and 997 > -1 / ext_call.return_data[18 len 14] - arg2:
            revert with 'NH{q', 17
        if (997 * ext_call.return_data[18 len 14]) - (997 * arg2) / 997 != ext_call.return_data[18 len 14] - arg2:
            revert with 0, 'ds-math-mul-overflow'
        if not (997 * ext_call.return_data[18 len 14]) - (997 * arg2):
            revert with 'NH{q', 18
        if 0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2) > -2:
            revert with 'NH{q', 17
        if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2):
            revert with 0, 'ds-math-add-overflow'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1
    else:
        if ext_call.return_data[50 len 14] and arg2 > -1 / ext_call.return_data[50 len 14]:
            revert with 'NH{q', 17
        if not arg2:
            revert with 'NH{q', 18
        if ext_call.return_data[50 len 14] * arg2 / arg2 != ext_call.return_data[50 len 14]:
            revert with 0, 'ds-math-mul-overflow'
        if ext_call.return_data[50 len 14] * arg2 and 1000 > -1 / ext_call.return_data[50 len 14] * arg2:
            revert with 'NH{q', 17
        if 1000 * ext_call.return_data[50 len 14] * arg2 / 1000 != ext_call.return_data[50 len 14] * arg2:
            revert with 0, 'ds-math-mul-overflow'
        if ext_call.return_data[18 len 14] < arg2:
            revert with 'NH{q', 17
        if ext_call.return_data[18 len 14] - arg2 > ext_call.return_data[18 len 14]:
            revert with 0, 'ds-math-sub-underflow'
        if ext_call.return_data[18 len 14] - arg2 and 997 > -1 / ext_call.return_data[18 len 14] - arg2:
            revert with 'NH{q', 17
        if (997 * ext_call.return_data[18 len 14]) - (997 * arg2) / 997 != ext_call.return_data[18 len 14] - arg2:
            revert with 0, 'ds-math-mul-overflow'
        if not (997 * ext_call.return_data[18 len 14]) - (997 * arg2):
            revert with 'NH{q', 18
        if 1000 * ext_call.return_data[50 len 14] * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2) > -2:
            revert with 'NH{q', 17
        if (1000 * ext_call.return_data[50 len 14] * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1 < 1000 * ext_call.return_data[50 len 14] * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2):
            revert with 0, 'ds-math-add-overflow'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'no leftovers'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args tx.origin, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
