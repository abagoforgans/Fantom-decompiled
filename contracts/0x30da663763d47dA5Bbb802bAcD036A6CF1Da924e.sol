contract main {




// =====================  Runtime code  =====================


address owner;
address tombAddress;
address pairAddress;
address wethAddress;

function weth() payable {
    return wethAddress
}

function owner() payable {
    return owner
}

function pair() payable {
    return pairAddress
}

function tomb() payable {
    return tombAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(tombAddress)
    call tombAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function swap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if tombAddress == wethAddress:
        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
    if tombAddress < wethAddress:
        if not tombAddress:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(pairAddress)
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if arg1 <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
        if tombAddress == tombAddress:
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if arg1 and 997 > -1 / arg1:
                revert with 'NH{q', 17
            if 997 * arg1 / 997 != arg1:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[50 len 14]:
                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[18 len 14] > (-997 * arg1) - 1:
                    revert with 'NH{q', 17
                if (1000 * ext_call.return_data[18 len 14]) + (997 * arg1) < 1000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[18 len 14]) + (997 * arg1):
                    revert with 'NH{q', 18
                require ext_code.size(tombAddress)
                call tombAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args pairAddress, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if tombAddress == wethAddress:
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if tombAddress < wethAddress:
                    if not tombAddress:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(pairAddress)
                    if tombAddress == tombAddress:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1), owner, 128, 0
                    else:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1), 0, owner, 128, 0
                else:
                    if not wethAddress:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(pairAddress)
                    if tombAddress == wethAddress:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1), owner, 128, 0
                    else:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1), 0, owner, 128, 0
            else:
                if 997 * arg1 and ext_call.return_data[50 len 14] > -1 / 997 * arg1:
                    revert with 'NH{q', 17
                if not ext_call.return_data[50 len 14]:
                    revert with 'NH{q', 18
                if 997 * arg1 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * arg1:
                    revert with 0, 'ds-math-mul-overflow'
                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[18 len 14] > (-997 * arg1) - 1:
                    revert with 'NH{q', 17
                if (1000 * ext_call.return_data[18 len 14]) + (997 * arg1) < 1000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[18 len 14]) + (997 * arg1):
                    revert with 'NH{q', 18
                require ext_code.size(tombAddress)
                call tombAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args pairAddress, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if tombAddress == wethAddress:
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if tombAddress < wethAddress:
                    if not tombAddress:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(pairAddress)
                    if tombAddress == tombAddress:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * arg1 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1), owner, 128, 0
                    else:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * arg1 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1), 0, owner, 128, 0
                else:
                    if not wethAddress:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(pairAddress)
                    if tombAddress == wethAddress:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * arg1 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1), owner, 128, 0
                    else:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * arg1 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1), 0, owner, 128, 0
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if arg1 and 997 > -1 / arg1:
                revert with 'NH{q', 17
            if 997 * arg1 / 997 != arg1:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[18 len 14]:
                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[50 len 14] > (-997 * arg1) - 1:
                    revert with 'NH{q', 17
                if (1000 * ext_call.return_data[50 len 14]) + (997 * arg1) < 1000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[50 len 14]) + (997 * arg1):
                    revert with 'NH{q', 18
                require ext_code.size(tombAddress)
                call tombAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args pairAddress, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if tombAddress == wethAddress:
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if tombAddress < wethAddress:
                    if not tombAddress:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(pairAddress)
                    if tombAddress == tombAddress:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1), owner, 128, 0
                    else:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1), 0, owner, 128, 0
                else:
                    if not wethAddress:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(pairAddress)
                    if tombAddress == wethAddress:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1), owner, 128, 0
                    else:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1), 0, owner, 128, 0
            else:
                if 997 * arg1 and ext_call.return_data[18 len 14] > -1 / 997 * arg1:
                    revert with 'NH{q', 17
                if not ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 18
                if 997 * arg1 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * arg1:
                    revert with 0, 'ds-math-mul-overflow'
                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[50 len 14] > (-997 * arg1) - 1:
                    revert with 'NH{q', 17
                if (1000 * ext_call.return_data[50 len 14]) + (997 * arg1) < 1000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[50 len 14]) + (997 * arg1):
                    revert with 'NH{q', 18
                require ext_code.size(tombAddress)
                call tombAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args pairAddress, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if tombAddress == wethAddress:
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if tombAddress < wethAddress:
                    if not tombAddress:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(pairAddress)
                    if tombAddress == tombAddress:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * arg1 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1), owner, 128, 0
                    else:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * arg1 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1), 0, owner, 128, 0
                else:
                    if not wethAddress:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(pairAddress)
                    if tombAddress == wethAddress:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * arg1 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1), owner, 128, 0
                    else:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * arg1 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1), 0, owner, 128, 0
    else:
        if not wethAddress:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(pairAddress)
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if arg1 <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
        if tombAddress == wethAddress:
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if arg1 and 997 > -1 / arg1:
                revert with 'NH{q', 17
            if 997 * arg1 / 997 != arg1:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[50 len 14]:
                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[18 len 14] > (-997 * arg1) - 1:
                    revert with 'NH{q', 17
                if (1000 * ext_call.return_data[18 len 14]) + (997 * arg1) < 1000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[18 len 14]) + (997 * arg1):
                    revert with 'NH{q', 18
                require ext_code.size(tombAddress)
                call tombAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args pairAddress, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if tombAddress == wethAddress:
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if tombAddress < wethAddress:
                    if not tombAddress:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(pairAddress)
                    if tombAddress == tombAddress:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1), owner, 128, 0
                    else:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1), 0, owner, 128, 0
                else:
                    if not wethAddress:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(pairAddress)
                    if tombAddress == wethAddress:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1), owner, 128, 0
                    else:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1), 0, owner, 128, 0
            else:
                if 997 * arg1 and ext_call.return_data[50 len 14] > -1 / 997 * arg1:
                    revert with 'NH{q', 17
                if not ext_call.return_data[50 len 14]:
                    revert with 'NH{q', 18
                if 997 * arg1 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * arg1:
                    revert with 0, 'ds-math-mul-overflow'
                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[18 len 14] > (-997 * arg1) - 1:
                    revert with 'NH{q', 17
                if (1000 * ext_call.return_data[18 len 14]) + (997 * arg1) < 1000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[18 len 14]) + (997 * arg1):
                    revert with 'NH{q', 18
                require ext_code.size(tombAddress)
                call tombAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args pairAddress, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if tombAddress == wethAddress:
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if tombAddress < wethAddress:
                    if not tombAddress:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(pairAddress)
                    if tombAddress == tombAddress:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * arg1 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1), owner, 128, 0
                    else:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * arg1 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1), 0, owner, 128, 0
                else:
                    if not wethAddress:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(pairAddress)
                    if tombAddress == wethAddress:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * arg1 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1), owner, 128, 0
                    else:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * arg1 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1), 0, owner, 128, 0
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if arg1 and 997 > -1 / arg1:
                revert with 'NH{q', 17
            if 997 * arg1 / 997 != arg1:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[18 len 14]:
                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[50 len 14] > (-997 * arg1) - 1:
                    revert with 'NH{q', 17
                if (1000 * ext_call.return_data[50 len 14]) + (997 * arg1) < 1000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[50 len 14]) + (997 * arg1):
                    revert with 'NH{q', 18
                require ext_code.size(tombAddress)
                call tombAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args pairAddress, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if tombAddress == wethAddress:
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if tombAddress < wethAddress:
                    if not tombAddress:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(pairAddress)
                    if tombAddress == tombAddress:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1), owner, 128, 0
                    else:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1), 0, owner, 128, 0
                else:
                    if not wethAddress:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(pairAddress)
                    if tombAddress == wethAddress:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1), owner, 128, 0
                    else:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1), 0, owner, 128, 0
            else:
                if 997 * arg1 and ext_call.return_data[18 len 14] > -1 / 997 * arg1:
                    revert with 'NH{q', 17
                if not ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 18
                if 997 * arg1 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * arg1:
                    revert with 0, 'ds-math-mul-overflow'
                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[50 len 14] > (-997 * arg1) - 1:
                    revert with 'NH{q', 17
                if (1000 * ext_call.return_data[50 len 14]) + (997 * arg1) < 1000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[50 len 14]) + (997 * arg1):
                    revert with 'NH{q', 18
                require ext_code.size(tombAddress)
                call tombAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args pairAddress, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if tombAddress == wethAddress:
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if tombAddress < wethAddress:
                    if not tombAddress:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(pairAddress)
                    if tombAddress == tombAddress:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * arg1 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1), owner, 128, 0
                    else:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * arg1 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1), 0, owner, 128, 0
                else:
                    if not wethAddress:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(pairAddress)
                    if tombAddress == wethAddress:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * arg1 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1), owner, 128, 0
                    else:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * arg1 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1), 0, owner, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
