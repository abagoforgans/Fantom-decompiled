contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
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
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer error'
}

function sub_3820d223(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if arg3 <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
    if address(arg2) < stor1:
        if ext_call.return_data[50 len 14] <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if ext_call.return_data[18 len 14] <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if arg3 and 997 > -1 / arg3:
            revert with 'NH{q', 17
        if 997 * arg3 / 997 != arg3:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[18 len 14]:
            if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * ext_call.return_data[50 len 14] > (-997 * arg3) - 1:
                revert with 'NH{q', 17
            if (1000 * ext_call.return_data[50 len 14]) + (997 * arg3) < 1000 * ext_call.return_data[50 len 14]:
                revert with 0, 'ds-math-add-overflow'
            if not (1000 * ext_call.return_data[50 len 14]) + (997 * arg3):
                revert with 'NH{q', 18
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(arg1))
            if address(arg2) < stor1:
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3), 0, address(this.address), 128, 0
            else:
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3), address(this.address), 128, 0
        else:
            if 997 * arg3 and ext_call.return_data[18 len 14] > -1 / 997 * arg3:
                revert with 'NH{q', 17
            if not ext_call.return_data[18 len 14]:
                revert with 'NH{q', 18
            if 997 * arg3 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * arg3:
                revert with 0, 'ds-math-mul-overflow'
            if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * ext_call.return_data[50 len 14] > (-997 * arg3) - 1:
                revert with 'NH{q', 17
            if (1000 * ext_call.return_data[50 len 14]) + (997 * arg3) < 1000 * ext_call.return_data[50 len 14]:
                revert with 0, 'ds-math-add-overflow'
            if not (1000 * ext_call.return_data[50 len 14]) + (997 * arg3):
                revert with 'NH{q', 18
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(arg1))
            if address(arg2) < stor1:
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * arg3 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3), 0, address(this.address), 128, 0
            else:
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * arg3 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3), address(this.address), 128, 0
    else:
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
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(arg1))
            if address(arg2) < stor1:
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3), 0, address(this.address), 128, 0
            else:
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3), address(this.address), 128, 0
        else:
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
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(arg1))
            if address(arg2) < stor1:
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * arg3 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3), 0, address(this.address), 128, 0
            else:
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * arg3 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3), address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg4:
        revert with 0, 'Not enough output tokens'
}

function sub_c70d1a80(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if arg3 <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
    if address(arg2) < stor1:
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
            require ext_code.size(address(arg2))
            call address(arg2).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(arg1))
            if address(arg2) < stor1:
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3), address(this.address), 128, 0
            else:
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3), 0, address(this.address), 128, 0
        else:
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
            require ext_code.size(address(arg2))
            call address(arg2).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(arg1))
            if address(arg2) < stor1:
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * arg3 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3), address(this.address), 128, 0
            else:
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * arg3 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3), 0, address(this.address), 128, 0
    else:
        if ext_call.return_data[50 len 14] <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if ext_call.return_data[18 len 14] <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if arg3 and 997 > -1 / arg3:
            revert with 'NH{q', 17
        if 997 * arg3 / 997 != arg3:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[18 len 14]:
            if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * ext_call.return_data[50 len 14] > (-997 * arg3) - 1:
                revert with 'NH{q', 17
            if (1000 * ext_call.return_data[50 len 14]) + (997 * arg3) < 1000 * ext_call.return_data[50 len 14]:
                revert with 0, 'ds-math-add-overflow'
            if not (1000 * ext_call.return_data[50 len 14]) + (997 * arg3):
                revert with 'NH{q', 18
            require ext_code.size(address(arg2))
            call address(arg2).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(arg1))
            if address(arg2) < stor1:
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3), address(this.address), 128, 0
            else:
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3), 0, address(this.address), 128, 0
        else:
            if 997 * arg3 and ext_call.return_data[18 len 14] > -1 / 997 * arg3:
                revert with 'NH{q', 17
            if not ext_call.return_data[18 len 14]:
                revert with 'NH{q', 18
            if 997 * arg3 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * arg3:
                revert with 0, 'ds-math-mul-overflow'
            if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * ext_call.return_data[50 len 14] > (-997 * arg3) - 1:
                revert with 'NH{q', 17
            if (1000 * ext_call.return_data[50 len 14]) + (997 * arg3) < 1000 * ext_call.return_data[50 len 14]:
                revert with 0, 'ds-math-add-overflow'
            if not (1000 * ext_call.return_data[50 len 14]) + (997 * arg3):
                revert with 'NH{q', 18
            require ext_code.size(address(arg2))
            call address(arg2).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(arg1))
            if address(arg2) < stor1:
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * arg3 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3), address(this.address), 128, 0
            else:
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * arg3 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3), 0, address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg4:
        revert with 0, 'Not enough output tokens'
}



}
