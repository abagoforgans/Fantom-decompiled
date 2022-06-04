contract main {




// =====================  Runtime code  =====================


address owner;
address routerAddress;
uint64 stor2;
address tombAddress;
uint64 stor3;
address wethAddress;

function routerAddress() payable {
    return routerAddress
}

function weth() payable {
    return address(wethAddress)
}

function owner() payable {
    return owner
}

function tomb() payable {
    return address(tombAddress)
}

function router() payable {
    return routerAddress
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

function swap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[128 len 48] = 0xfe3236353432313235353339303732393330343033323233393833343138373538353735323230333533363537323934
    idx = 0
    s = 0
    while idx < 48:
        if idx >= 48:
            revert with 0, 50
        if uint8(mem[idx + 128]) >> 248 < 48:
            revert with 0, 17
        if s > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if 10 * s > !((uint8(mem[idx + 128]) >> 248) - 48):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = (10 * s) + (uint8(mem[idx + 128]) >> 248) - 48
        continue 
    if msg.sender != 0xfffffffffffffffffffffffffffffffffffff700:
        revert with 0, 'SwapExecutor: Must be called by the handler'
    require ext_code.size(routerAddress)
    staticcall routerAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(tombAddress) == address(wethAddress):
        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
    if address(tombAddress) < address(wethAddress):
        if not address(tombAddress):
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        mem[ceil32(return_data.size) + 385] = address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2))
        mem[ceil32(return_data.size) + 417] = arg1
        require ext_code.size(address(tombAddress))
        call address(tombAddress).0xa9059cbb with:
             gas gas_remaining wei
            args address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)), arg1
        mem[ceil32(return_data.size) + 381] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 381] = 0xc45a015500000000000000000000000000000000000000000000000000000000
        require ext_code.size(routerAddress)
        staticcall routerAddress.factory() with:
                gas gas_remaining wei
               args mem[(2 * ceil32(return_data.size)) + 385 len ceil32(return_data.size)]
        mem[(2 * ceil32(return_data.size)) + 381] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if address(tombAddress) == address(wethAddress):
            mem[(4 * ceil32(return_data.size)) + 381] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 385] = 32
            mem[(4 * ceil32(return_data.size)) + 417] = 37
            mem[(4 * ceil32(return_data.size)) + 449] = 'UniswapV2Library: IDENTICAL_ADDR'
            mem[(4 * ceil32(return_data.size)) + 481] = 0x4553534553000000000000000000000000000000000000000000000000000000
            revert with memory
              from (4 * ceil32(return_data.size)) + 381
               len (5 * ceil32(return_data.size)) + 132
        if address(tombAddress) < address(wethAddress):
            if not address(tombAddress):
                mem[(4 * ceil32(return_data.size)) + 381] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 385] = 32
                mem[(4 * ceil32(return_data.size)) + 417] = 30
                mem[(4 * ceil32(return_data.size)) + 449] = 'UniswapV2Library: ZERO_ADDRESS'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 381
                   len (5 * ceil32(return_data.size)) + 100
            if address(tombAddress) == address(wethAddress):
                mem[(4 * ceil32(return_data.size)) + 381] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 385] = 32
                mem[(4 * ceil32(return_data.size)) + 417] = 37
                mem[(4 * ceil32(return_data.size)) + 449] = 'UniswapV2Library: IDENTICAL_ADDR'
                mem[(4 * ceil32(return_data.size)) + 481] = 0x4553534553000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (4 * ceil32(return_data.size)) + 381
                   len (5 * ceil32(return_data.size)) + 132
            if address(tombAddress) < address(wethAddress):
                if not address(tombAddress):
                    mem[(4 * ceil32(return_data.size)) + 381] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 385] = 32
                    mem[(4 * ceil32(return_data.size)) + 417] = 30
                    mem[(4 * ceil32(return_data.size)) + 449] = 'UniswapV2Library: ZERO_ADDRESS'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 381
                       len (5 * ceil32(return_data.size)) + 100
                mem[(4 * ceil32(return_data.size)) + 413] = Mask(160, 96, address(tombAddress))
                mem[(4 * ceil32(return_data.size)) + 433] = Mask(160, 96, address(wethAddress))
                require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(mem[(4 * ceil32(return_data.size)) + 413 len (5 * ceil32(return_data.size)) + 40]), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(mem[(4 * ceil32(return_data.size)) + 413 len (5 * ceil32(return_data.size)) + 40]), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if arg1 <= 0:
                    revert with 0, 
                                'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT',
                                mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                if address(tombAddress) == address(tombAddress):
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 
                                    'UniswapV2Library: INSUFFICIENT_LIQUIDITY',
                                    mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 
                                    'UniswapV2Library: INSUFFICIENT_LIQUIDITY',
                                    mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                    if arg1 and 998 > -1 / arg1:
                        revert with 0, 17
                    if 998 * arg1 / 998 != arg1:
                        revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                    if not ext_call.return_data[50 len 14]:
                        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if 1000 * ext_call.return_data[18 len 14] > !(998 * arg1):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[18 len 14]) + (998 * arg1) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if not (1000 * ext_call.return_data[18 len 14]) + (998 * arg1):
                            revert with 0, 18
                        if address(tombAddress) == address(wethAddress):
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES', mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                        if address(tombAddress) < address(wethAddress):
                            if not address(tombAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(tombAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                        else:
                            if not address(wethAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(wethAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                    else:
                        if 998 * arg1 and ext_call.return_data[50 len 14] > -1 / 998 * arg1:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 0, 18
                        if 998 * arg1 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 998 * arg1:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if 1000 * ext_call.return_data[18 len 14] > !(998 * arg1):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[18 len 14]) + (998 * arg1) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if not (1000 * ext_call.return_data[18 len 14]) + (998 * arg1):
                            revert with 0, 18
                        if address(tombAddress) == address(wethAddress):
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES', mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                        if address(tombAddress) < address(wethAddress):
                            if not address(tombAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(tombAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                        else:
                            if not address(wethAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(wethAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                else:
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 
                                    'UniswapV2Library: INSUFFICIENT_LIQUIDITY',
                                    mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 
                                    'UniswapV2Library: INSUFFICIENT_LIQUIDITY',
                                    mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                    if arg1 and 998 > -1 / arg1:
                        revert with 0, 17
                    if 998 * arg1 / 998 != arg1:
                        revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                    if not ext_call.return_data[18 len 14]:
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if 1000 * ext_call.return_data[50 len 14] > !(998 * arg1):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[50 len 14]) + (998 * arg1) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if not (1000 * ext_call.return_data[50 len 14]) + (998 * arg1):
                            revert with 0, 18
                        if address(tombAddress) == address(wethAddress):
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES', mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                        if address(tombAddress) < address(wethAddress):
                            if not address(tombAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(tombAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                        else:
                            if not address(wethAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(wethAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                    else:
                        if 998 * arg1 and ext_call.return_data[18 len 14] > -1 / 998 * arg1:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14]:
                            revert with 0, 18
                        if 998 * arg1 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 998 * arg1:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if 1000 * ext_call.return_data[50 len 14] > !(998 * arg1):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[50 len 14]) + (998 * arg1) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if not (1000 * ext_call.return_data[50 len 14]) + (998 * arg1):
                            revert with 0, 18
                        if address(tombAddress) == address(wethAddress):
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES', mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                        if address(tombAddress) < address(wethAddress):
                            if not address(tombAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(tombAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                        else:
                            if not address(wethAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(wethAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
            else:
                if not address(wethAddress):
                    mem[(4 * ceil32(return_data.size)) + 381] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 385] = 32
                    mem[(4 * ceil32(return_data.size)) + 417] = 30
                    mem[(4 * ceil32(return_data.size)) + 449] = 'UniswapV2Library: ZERO_ADDRESS'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 381
                       len (5 * ceil32(return_data.size)) + 100
                mem[(4 * ceil32(return_data.size)) + 413] = Mask(160, 96, address(wethAddress))
                mem[(4 * ceil32(return_data.size)) + 433] = Mask(160, 96, address(tombAddress))
                require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(mem[(4 * ceil32(return_data.size)) + 413 len (5 * ceil32(return_data.size)) + 40]), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(mem[(4 * ceil32(return_data.size)) + 413 len (5 * ceil32(return_data.size)) + 40]), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if arg1 <= 0:
                    revert with 0, 
                                'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT',
                                mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                if address(tombAddress) == address(tombAddress):
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 
                                    'UniswapV2Library: INSUFFICIENT_LIQUIDITY',
                                    mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 
                                    'UniswapV2Library: INSUFFICIENT_LIQUIDITY',
                                    mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                    if arg1 and 998 > -1 / arg1:
                        revert with 0, 17
                    if 998 * arg1 / 998 != arg1:
                        revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                    if not ext_call.return_data[50 len 14]:
                        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if 1000 * ext_call.return_data[18 len 14] > !(998 * arg1):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[18 len 14]) + (998 * arg1) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if not (1000 * ext_call.return_data[18 len 14]) + (998 * arg1):
                            revert with 0, 18
                        if address(tombAddress) == address(wethAddress):
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES', mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                        if address(tombAddress) < address(wethAddress):
                            if not address(tombAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(tombAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                        else:
                            if not address(wethAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(wethAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                    else:
                        if 998 * arg1 and ext_call.return_data[50 len 14] > -1 / 998 * arg1:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 0, 18
                        if 998 * arg1 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 998 * arg1:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if 1000 * ext_call.return_data[18 len 14] > !(998 * arg1):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[18 len 14]) + (998 * arg1) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if not (1000 * ext_call.return_data[18 len 14]) + (998 * arg1):
                            revert with 0, 18
                        if address(tombAddress) == address(wethAddress):
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES', mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                        if address(tombAddress) < address(wethAddress):
                            if not address(tombAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(tombAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                        else:
                            if not address(wethAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(wethAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                else:
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 
                                    'UniswapV2Library: INSUFFICIENT_LIQUIDITY',
                                    mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 
                                    'UniswapV2Library: INSUFFICIENT_LIQUIDITY',
                                    mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                    if arg1 and 998 > -1 / arg1:
                        revert with 0, 17
                    if 998 * arg1 / 998 != arg1:
                        revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                    if not ext_call.return_data[18 len 14]:
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if 1000 * ext_call.return_data[50 len 14] > !(998 * arg1):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[50 len 14]) + (998 * arg1) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if not (1000 * ext_call.return_data[50 len 14]) + (998 * arg1):
                            revert with 0, 18
                        if address(tombAddress) == address(wethAddress):
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES', mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                        if address(tombAddress) < address(wethAddress):
                            if not address(tombAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(tombAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                        else:
                            if not address(wethAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(wethAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                    else:
                        if 998 * arg1 and ext_call.return_data[18 len 14] > -1 / 998 * arg1:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14]:
                            revert with 0, 18
                        if 998 * arg1 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 998 * arg1:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if 1000 * ext_call.return_data[50 len 14] > !(998 * arg1):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[50 len 14]) + (998 * arg1) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if not (1000 * ext_call.return_data[50 len 14]) + (998 * arg1):
                            revert with 0, 18
                        if address(tombAddress) == address(wethAddress):
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES', mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                        if address(tombAddress) < address(wethAddress):
                            if not address(tombAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(tombAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                        else:
                            if not address(wethAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(wethAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
        else:
            if not address(wethAddress):
                mem[(4 * ceil32(return_data.size)) + 381] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 385] = 32
                mem[(4 * ceil32(return_data.size)) + 417] = 30
                mem[(4 * ceil32(return_data.size)) + 449] = 'UniswapV2Library: ZERO_ADDRESS'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 381
                   len (5 * ceil32(return_data.size)) + 100
            if address(tombAddress) == address(wethAddress):
                mem[(4 * ceil32(return_data.size)) + 381] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 385] = 32
                mem[(4 * ceil32(return_data.size)) + 417] = 37
                mem[(4 * ceil32(return_data.size)) + 449] = 'UniswapV2Library: IDENTICAL_ADDR'
                mem[(4 * ceil32(return_data.size)) + 481] = 0x4553534553000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (4 * ceil32(return_data.size)) + 381
                   len (5 * ceil32(return_data.size)) + 132
            if address(tombAddress) < address(wethAddress):
                if not address(tombAddress):
                    mem[(4 * ceil32(return_data.size)) + 381] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 385] = 32
                    mem[(4 * ceil32(return_data.size)) + 417] = 30
                    mem[(4 * ceil32(return_data.size)) + 449] = 'UniswapV2Library: ZERO_ADDRESS'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 381
                       len (5 * ceil32(return_data.size)) + 100
                mem[(4 * ceil32(return_data.size)) + 413] = Mask(160, 96, address(tombAddress))
                mem[(4 * ceil32(return_data.size)) + 433] = Mask(160, 96, address(wethAddress))
                require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(mem[(4 * ceil32(return_data.size)) + 413 len (5 * ceil32(return_data.size)) + 40]), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(mem[(4 * ceil32(return_data.size)) + 413 len (5 * ceil32(return_data.size)) + 40]), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if arg1 <= 0:
                    revert with 0, 
                                'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT',
                                mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                if address(tombAddress) == address(wethAddress):
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 
                                    'UniswapV2Library: INSUFFICIENT_LIQUIDITY',
                                    mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 
                                    'UniswapV2Library: INSUFFICIENT_LIQUIDITY',
                                    mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                    if arg1 and 998 > -1 / arg1:
                        revert with 0, 17
                    if 998 * arg1 / 998 != arg1:
                        revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                    if not ext_call.return_data[50 len 14]:
                        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if 1000 * ext_call.return_data[18 len 14] > !(998 * arg1):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[18 len 14]) + (998 * arg1) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if not (1000 * ext_call.return_data[18 len 14]) + (998 * arg1):
                            revert with 0, 18
                        if address(tombAddress) == address(wethAddress):
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES', mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                        if address(tombAddress) < address(wethAddress):
                            if not address(tombAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(tombAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                        else:
                            if not address(wethAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(wethAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                    else:
                        if 998 * arg1 and ext_call.return_data[50 len 14] > -1 / 998 * arg1:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 0, 18
                        if 998 * arg1 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 998 * arg1:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if 1000 * ext_call.return_data[18 len 14] > !(998 * arg1):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[18 len 14]) + (998 * arg1) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if not (1000 * ext_call.return_data[18 len 14]) + (998 * arg1):
                            revert with 0, 18
                        if address(tombAddress) == address(wethAddress):
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES', mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                        if address(tombAddress) < address(wethAddress):
                            if not address(tombAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(tombAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                        else:
                            if not address(wethAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(wethAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                else:
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 
                                    'UniswapV2Library: INSUFFICIENT_LIQUIDITY',
                                    mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 
                                    'UniswapV2Library: INSUFFICIENT_LIQUIDITY',
                                    mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                    if arg1 and 998 > -1 / arg1:
                        revert with 0, 17
                    if 998 * arg1 / 998 != arg1:
                        revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                    if not ext_call.return_data[18 len 14]:
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if 1000 * ext_call.return_data[50 len 14] > !(998 * arg1):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[50 len 14]) + (998 * arg1) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if not (1000 * ext_call.return_data[50 len 14]) + (998 * arg1):
                            revert with 0, 18
                        if address(tombAddress) == address(wethAddress):
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES', mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                        if address(tombAddress) < address(wethAddress):
                            if not address(tombAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(tombAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                        else:
                            if not address(wethAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(wethAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                    else:
                        if 998 * arg1 and ext_call.return_data[18 len 14] > -1 / 998 * arg1:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14]:
                            revert with 0, 18
                        if 998 * arg1 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 998 * arg1:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if 1000 * ext_call.return_data[50 len 14] > !(998 * arg1):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[50 len 14]) + (998 * arg1) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if not (1000 * ext_call.return_data[50 len 14]) + (998 * arg1):
                            revert with 0, 18
                        if address(tombAddress) == address(wethAddress):
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES', mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                        if address(tombAddress) < address(wethAddress):
                            if not address(tombAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(tombAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                        else:
                            if not address(wethAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(wethAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
            else:
                if not address(wethAddress):
                    mem[(4 * ceil32(return_data.size)) + 381] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 385] = 32
                    mem[(4 * ceil32(return_data.size)) + 417] = 30
                    mem[(4 * ceil32(return_data.size)) + 449] = 'UniswapV2Library: ZERO_ADDRESS'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 381
                       len (5 * ceil32(return_data.size)) + 100
                mem[(4 * ceil32(return_data.size)) + 413] = Mask(160, 96, address(wethAddress))
                mem[(4 * ceil32(return_data.size)) + 433] = Mask(160, 96, address(tombAddress))
                require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(mem[(4 * ceil32(return_data.size)) + 413 len (5 * ceil32(return_data.size)) + 40]), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(mem[(4 * ceil32(return_data.size)) + 413 len (5 * ceil32(return_data.size)) + 40]), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if arg1 <= 0:
                    revert with 0, 
                                'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT',
                                mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                if address(tombAddress) == address(wethAddress):
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 
                                    'UniswapV2Library: INSUFFICIENT_LIQUIDITY',
                                    mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 
                                    'UniswapV2Library: INSUFFICIENT_LIQUIDITY',
                                    mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                    if arg1 and 998 > -1 / arg1:
                        revert with 0, 17
                    if 998 * arg1 / 998 != arg1:
                        revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                    if not ext_call.return_data[50 len 14]:
                        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if 1000 * ext_call.return_data[18 len 14] > !(998 * arg1):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[18 len 14]) + (998 * arg1) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if not (1000 * ext_call.return_data[18 len 14]) + (998 * arg1):
                            revert with 0, 18
                        if address(tombAddress) == address(wethAddress):
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES', mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                        if address(tombAddress) < address(wethAddress):
                            if not address(tombAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(tombAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                        else:
                            if not address(wethAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(wethAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                    else:
                        if 998 * arg1 and ext_call.return_data[50 len 14] > -1 / 998 * arg1:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 0, 18
                        if 998 * arg1 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 998 * arg1:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if 1000 * ext_call.return_data[18 len 14] > !(998 * arg1):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[18 len 14]) + (998 * arg1) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if not (1000 * ext_call.return_data[18 len 14]) + (998 * arg1):
                            revert with 0, 18
                        if address(tombAddress) == address(wethAddress):
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES', mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                        if address(tombAddress) < address(wethAddress):
                            if not address(tombAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(tombAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                        else:
                            if not address(wethAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(wethAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                else:
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 
                                    'UniswapV2Library: INSUFFICIENT_LIQUIDITY',
                                    mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 
                                    'UniswapV2Library: INSUFFICIENT_LIQUIDITY',
                                    mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                    if arg1 and 998 > -1 / arg1:
                        revert with 0, 17
                    if 998 * arg1 / 998 != arg1:
                        revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                    if not ext_call.return_data[18 len 14]:
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if 1000 * ext_call.return_data[50 len 14] > !(998 * arg1):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[50 len 14]) + (998 * arg1) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if not (1000 * ext_call.return_data[50 len 14]) + (998 * arg1):
                            revert with 0, 18
                        if address(tombAddress) == address(wethAddress):
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES', mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                        if address(tombAddress) < address(wethAddress):
                            if not address(tombAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(tombAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                        else:
                            if not address(wethAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(wethAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                    else:
                        if 998 * arg1 and ext_call.return_data[18 len 14] > -1 / 998 * arg1:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14]:
                            revert with 0, 18
                        if 998 * arg1 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 998 * arg1:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if 1000 * ext_call.return_data[50 len 14] > !(998 * arg1):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[50 len 14]) + (998 * arg1) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if not (1000 * ext_call.return_data[50 len 14]) + (998 * arg1):
                            revert with 0, 18
                        if address(tombAddress) == address(wethAddress):
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES', mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                        if address(tombAddress) < address(wethAddress):
                            if not address(tombAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(tombAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                        else:
                            if not address(wethAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(wethAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(tombAddress), uint64(stor3)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
    else:
        if not address(wethAddress):
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        mem[ceil32(return_data.size) + 385] = address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2))
        mem[ceil32(return_data.size) + 417] = arg1
        require ext_code.size(address(tombAddress))
        call address(tombAddress).0xa9059cbb with:
             gas gas_remaining wei
            args address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)), arg1
        mem[ceil32(return_data.size) + 381] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 381] = 0xc45a015500000000000000000000000000000000000000000000000000000000
        require ext_code.size(routerAddress)
        staticcall routerAddress.factory() with:
                gas gas_remaining wei
               args mem[(2 * ceil32(return_data.size)) + 385 len ceil32(return_data.size)]
        mem[(2 * ceil32(return_data.size)) + 381] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if address(tombAddress) == address(wethAddress):
            mem[(4 * ceil32(return_data.size)) + 381] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 385] = 32
            mem[(4 * ceil32(return_data.size)) + 417] = 37
            mem[(4 * ceil32(return_data.size)) + 449] = 'UniswapV2Library: IDENTICAL_ADDR'
            mem[(4 * ceil32(return_data.size)) + 481] = 0x4553534553000000000000000000000000000000000000000000000000000000
            revert with memory
              from (4 * ceil32(return_data.size)) + 381
               len (5 * ceil32(return_data.size)) + 132
        if address(tombAddress) < address(wethAddress):
            if not address(tombAddress):
                mem[(4 * ceil32(return_data.size)) + 381] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 385] = 32
                mem[(4 * ceil32(return_data.size)) + 417] = 30
                mem[(4 * ceil32(return_data.size)) + 449] = 'UniswapV2Library: ZERO_ADDRESS'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 381
                   len (5 * ceil32(return_data.size)) + 100
            if address(tombAddress) == address(wethAddress):
                mem[(4 * ceil32(return_data.size)) + 381] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 385] = 32
                mem[(4 * ceil32(return_data.size)) + 417] = 37
                mem[(4 * ceil32(return_data.size)) + 449] = 'UniswapV2Library: IDENTICAL_ADDR'
                mem[(4 * ceil32(return_data.size)) + 481] = 0x4553534553000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (4 * ceil32(return_data.size)) + 381
                   len (5 * ceil32(return_data.size)) + 132
            if address(tombAddress) < address(wethAddress):
                if not address(tombAddress):
                    mem[(4 * ceil32(return_data.size)) + 381] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 385] = 32
                    mem[(4 * ceil32(return_data.size)) + 417] = 30
                    mem[(4 * ceil32(return_data.size)) + 449] = 'UniswapV2Library: ZERO_ADDRESS'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 381
                       len (5 * ceil32(return_data.size)) + 100
                mem[(4 * ceil32(return_data.size)) + 413] = Mask(160, 96, address(tombAddress))
                mem[(4 * ceil32(return_data.size)) + 433] = Mask(160, 96, address(wethAddress))
                require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(mem[(4 * ceil32(return_data.size)) + 413 len (5 * ceil32(return_data.size)) + 40]), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(mem[(4 * ceil32(return_data.size)) + 413 len (5 * ceil32(return_data.size)) + 40]), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if arg1 <= 0:
                    revert with 0, 
                                'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT',
                                mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                if address(tombAddress) == address(tombAddress):
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 
                                    'UniswapV2Library: INSUFFICIENT_LIQUIDITY',
                                    mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 
                                    'UniswapV2Library: INSUFFICIENT_LIQUIDITY',
                                    mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                    if arg1 and 998 > -1 / arg1:
                        revert with 0, 17
                    if 998 * arg1 / 998 != arg1:
                        revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                    if not ext_call.return_data[50 len 14]:
                        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if 1000 * ext_call.return_data[18 len 14] > !(998 * arg1):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[18 len 14]) + (998 * arg1) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if not (1000 * ext_call.return_data[18 len 14]) + (998 * arg1):
                            revert with 0, 18
                        if address(tombAddress) == address(wethAddress):
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES', mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                        if address(tombAddress) < address(wethAddress):
                            if not address(tombAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(tombAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                        else:
                            if not address(wethAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(wethAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                    else:
                        if 998 * arg1 and ext_call.return_data[50 len 14] > -1 / 998 * arg1:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 0, 18
                        if 998 * arg1 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 998 * arg1:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if 1000 * ext_call.return_data[18 len 14] > !(998 * arg1):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[18 len 14]) + (998 * arg1) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if not (1000 * ext_call.return_data[18 len 14]) + (998 * arg1):
                            revert with 0, 18
                        if address(tombAddress) == address(wethAddress):
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES', mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                        if address(tombAddress) < address(wethAddress):
                            if not address(tombAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(tombAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                        else:
                            if not address(wethAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(wethAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                else:
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 
                                    'UniswapV2Library: INSUFFICIENT_LIQUIDITY',
                                    mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 
                                    'UniswapV2Library: INSUFFICIENT_LIQUIDITY',
                                    mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                    if arg1 and 998 > -1 / arg1:
                        revert with 0, 17
                    if 998 * arg1 / 998 != arg1:
                        revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                    if not ext_call.return_data[18 len 14]:
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if 1000 * ext_call.return_data[50 len 14] > !(998 * arg1):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[50 len 14]) + (998 * arg1) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if not (1000 * ext_call.return_data[50 len 14]) + (998 * arg1):
                            revert with 0, 18
                        if address(tombAddress) == address(wethAddress):
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES', mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                        if address(tombAddress) < address(wethAddress):
                            if not address(tombAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(tombAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                        else:
                            if not address(wethAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(wethAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                    else:
                        if 998 * arg1 and ext_call.return_data[18 len 14] > -1 / 998 * arg1:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14]:
                            revert with 0, 18
                        if 998 * arg1 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 998 * arg1:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if 1000 * ext_call.return_data[50 len 14] > !(998 * arg1):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[50 len 14]) + (998 * arg1) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if not (1000 * ext_call.return_data[50 len 14]) + (998 * arg1):
                            revert with 0, 18
                        if address(tombAddress) == address(wethAddress):
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES', mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                        if address(tombAddress) < address(wethAddress):
                            if not address(tombAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(tombAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                        else:
                            if not address(wethAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(wethAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
            else:
                if not address(wethAddress):
                    mem[(4 * ceil32(return_data.size)) + 381] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 385] = 32
                    mem[(4 * ceil32(return_data.size)) + 417] = 30
                    mem[(4 * ceil32(return_data.size)) + 449] = 'UniswapV2Library: ZERO_ADDRESS'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 381
                       len (5 * ceil32(return_data.size)) + 100
                mem[(4 * ceil32(return_data.size)) + 413] = Mask(160, 96, address(wethAddress))
                mem[(4 * ceil32(return_data.size)) + 433] = Mask(160, 96, address(tombAddress))
                require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(mem[(4 * ceil32(return_data.size)) + 413 len (5 * ceil32(return_data.size)) + 40]), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(mem[(4 * ceil32(return_data.size)) + 413 len (5 * ceil32(return_data.size)) + 40]), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if arg1 <= 0:
                    revert with 0, 
                                'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT',
                                mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                if address(tombAddress) == address(tombAddress):
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 
                                    'UniswapV2Library: INSUFFICIENT_LIQUIDITY',
                                    mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 
                                    'UniswapV2Library: INSUFFICIENT_LIQUIDITY',
                                    mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                    if arg1 and 998 > -1 / arg1:
                        revert with 0, 17
                    if 998 * arg1 / 998 != arg1:
                        revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                    if not ext_call.return_data[50 len 14]:
                        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if 1000 * ext_call.return_data[18 len 14] > !(998 * arg1):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[18 len 14]) + (998 * arg1) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if not (1000 * ext_call.return_data[18 len 14]) + (998 * arg1):
                            revert with 0, 18
                        if address(tombAddress) == address(wethAddress):
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES', mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                        if address(tombAddress) < address(wethAddress):
                            if not address(tombAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(tombAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                        else:
                            if not address(wethAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(wethAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                    else:
                        if 998 * arg1 and ext_call.return_data[50 len 14] > -1 / 998 * arg1:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 0, 18
                        if 998 * arg1 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 998 * arg1:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if 1000 * ext_call.return_data[18 len 14] > !(998 * arg1):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[18 len 14]) + (998 * arg1) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if not (1000 * ext_call.return_data[18 len 14]) + (998 * arg1):
                            revert with 0, 18
                        if address(tombAddress) == address(wethAddress):
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES', mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                        if address(tombAddress) < address(wethAddress):
                            if not address(tombAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(tombAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                        else:
                            if not address(wethAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(wethAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                else:
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 
                                    'UniswapV2Library: INSUFFICIENT_LIQUIDITY',
                                    mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 
                                    'UniswapV2Library: INSUFFICIENT_LIQUIDITY',
                                    mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                    if arg1 and 998 > -1 / arg1:
                        revert with 0, 17
                    if 998 * arg1 / 998 != arg1:
                        revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                    if not ext_call.return_data[18 len 14]:
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if 1000 * ext_call.return_data[50 len 14] > !(998 * arg1):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[50 len 14]) + (998 * arg1) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if not (1000 * ext_call.return_data[50 len 14]) + (998 * arg1):
                            revert with 0, 18
                        if address(tombAddress) == address(wethAddress):
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES', mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                        if address(tombAddress) < address(wethAddress):
                            if not address(tombAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(tombAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                        else:
                            if not address(wethAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(wethAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                    else:
                        if 998 * arg1 and ext_call.return_data[18 len 14] > -1 / 998 * arg1:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14]:
                            revert with 0, 18
                        if 998 * arg1 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 998 * arg1:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if 1000 * ext_call.return_data[50 len 14] > !(998 * arg1):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[50 len 14]) + (998 * arg1) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if not (1000 * ext_call.return_data[50 len 14]) + (998 * arg1):
                            revert with 0, 18
                        if address(tombAddress) == address(wethAddress):
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES', mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                        if address(tombAddress) < address(wethAddress):
                            if not address(tombAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(tombAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                        else:
                            if not address(wethAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(wethAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
        else:
            if not address(wethAddress):
                mem[(4 * ceil32(return_data.size)) + 381] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 385] = 32
                mem[(4 * ceil32(return_data.size)) + 417] = 30
                mem[(4 * ceil32(return_data.size)) + 449] = 'UniswapV2Library: ZERO_ADDRESS'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 381
                   len (5 * ceil32(return_data.size)) + 100
            if address(tombAddress) == address(wethAddress):
                mem[(4 * ceil32(return_data.size)) + 381] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 385] = 32
                mem[(4 * ceil32(return_data.size)) + 417] = 37
                mem[(4 * ceil32(return_data.size)) + 449] = 'UniswapV2Library: IDENTICAL_ADDR'
                mem[(4 * ceil32(return_data.size)) + 481] = 0x4553534553000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (4 * ceil32(return_data.size)) + 381
                   len (5 * ceil32(return_data.size)) + 132
            if address(tombAddress) < address(wethAddress):
                if not address(tombAddress):
                    mem[(4 * ceil32(return_data.size)) + 381] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 385] = 32
                    mem[(4 * ceil32(return_data.size)) + 417] = 30
                    mem[(4 * ceil32(return_data.size)) + 449] = 'UniswapV2Library: ZERO_ADDRESS'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 381
                       len (5 * ceil32(return_data.size)) + 100
                mem[(4 * ceil32(return_data.size)) + 413] = Mask(160, 96, address(tombAddress))
                mem[(4 * ceil32(return_data.size)) + 433] = Mask(160, 96, address(wethAddress))
                require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(mem[(4 * ceil32(return_data.size)) + 413 len (5 * ceil32(return_data.size)) + 40]), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(mem[(4 * ceil32(return_data.size)) + 413 len (5 * ceil32(return_data.size)) + 40]), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if arg1 <= 0:
                    revert with 0, 
                                'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT',
                                mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                if address(tombAddress) == address(wethAddress):
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 
                                    'UniswapV2Library: INSUFFICIENT_LIQUIDITY',
                                    mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 
                                    'UniswapV2Library: INSUFFICIENT_LIQUIDITY',
                                    mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                    if arg1 and 998 > -1 / arg1:
                        revert with 0, 17
                    if 998 * arg1 / 998 != arg1:
                        revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                    if not ext_call.return_data[50 len 14]:
                        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if 1000 * ext_call.return_data[18 len 14] > !(998 * arg1):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[18 len 14]) + (998 * arg1) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if not (1000 * ext_call.return_data[18 len 14]) + (998 * arg1):
                            revert with 0, 18
                        if address(tombAddress) == address(wethAddress):
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES', mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                        if address(tombAddress) < address(wethAddress):
                            if not address(tombAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(tombAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                        else:
                            if not address(wethAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(wethAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                    else:
                        if 998 * arg1 and ext_call.return_data[50 len 14] > -1 / 998 * arg1:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 0, 18
                        if 998 * arg1 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 998 * arg1:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if 1000 * ext_call.return_data[18 len 14] > !(998 * arg1):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[18 len 14]) + (998 * arg1) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if not (1000 * ext_call.return_data[18 len 14]) + (998 * arg1):
                            revert with 0, 18
                        if address(tombAddress) == address(wethAddress):
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES', mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                        if address(tombAddress) < address(wethAddress):
                            if not address(tombAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(tombAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                        else:
                            if not address(wethAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(wethAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                else:
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 
                                    'UniswapV2Library: INSUFFICIENT_LIQUIDITY',
                                    mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 
                                    'UniswapV2Library: INSUFFICIENT_LIQUIDITY',
                                    mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                    if arg1 and 998 > -1 / arg1:
                        revert with 0, 17
                    if 998 * arg1 / 998 != arg1:
                        revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                    if not ext_call.return_data[18 len 14]:
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if 1000 * ext_call.return_data[50 len 14] > !(998 * arg1):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[50 len 14]) + (998 * arg1) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if not (1000 * ext_call.return_data[50 len 14]) + (998 * arg1):
                            revert with 0, 18
                        if address(tombAddress) == address(wethAddress):
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES', mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                        if address(tombAddress) < address(wethAddress):
                            if not address(tombAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(tombAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                        else:
                            if not address(wethAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(wethAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                    else:
                        if 998 * arg1 and ext_call.return_data[18 len 14] > -1 / 998 * arg1:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14]:
                            revert with 0, 18
                        if 998 * arg1 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 998 * arg1:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if 1000 * ext_call.return_data[50 len 14] > !(998 * arg1):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[50 len 14]) + (998 * arg1) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if not (1000 * ext_call.return_data[50 len 14]) + (998 * arg1):
                            revert with 0, 18
                        if address(tombAddress) == address(wethAddress):
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES', mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                        if address(tombAddress) < address(wethAddress):
                            if not address(tombAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(tombAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                        else:
                            if not address(wethAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(wethAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
            else:
                if not address(wethAddress):
                    mem[(4 * ceil32(return_data.size)) + 381] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 385] = 32
                    mem[(4 * ceil32(return_data.size)) + 417] = 30
                    mem[(4 * ceil32(return_data.size)) + 449] = 'UniswapV2Library: ZERO_ADDRESS'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 381
                       len (5 * ceil32(return_data.size)) + 100
                mem[(4 * ceil32(return_data.size)) + 413] = Mask(160, 96, address(wethAddress))
                mem[(4 * ceil32(return_data.size)) + 433] = Mask(160, 96, address(tombAddress))
                require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(mem[(4 * ceil32(return_data.size)) + 413 len (5 * ceil32(return_data.size)) + 40]), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(mem[(4 * ceil32(return_data.size)) + 413 len (5 * ceil32(return_data.size)) + 40]), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if arg1 <= 0:
                    revert with 0, 
                                'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT',
                                mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                if address(tombAddress) == address(wethAddress):
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 
                                    'UniswapV2Library: INSUFFICIENT_LIQUIDITY',
                                    mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 
                                    'UniswapV2Library: INSUFFICIENT_LIQUIDITY',
                                    mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                    if arg1 and 998 > -1 / arg1:
                        revert with 0, 17
                    if 998 * arg1 / 998 != arg1:
                        revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                    if not ext_call.return_data[50 len 14]:
                        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if 1000 * ext_call.return_data[18 len 14] > !(998 * arg1):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[18 len 14]) + (998 * arg1) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if not (1000 * ext_call.return_data[18 len 14]) + (998 * arg1):
                            revert with 0, 18
                        if address(tombAddress) == address(wethAddress):
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES', mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                        if address(tombAddress) < address(wethAddress):
                            if not address(tombAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(tombAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                        else:
                            if not address(wethAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(wethAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                    else:
                        if 998 * arg1 and ext_call.return_data[50 len 14] > -1 / 998 * arg1:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 0, 18
                        if 998 * arg1 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 998 * arg1:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if 1000 * ext_call.return_data[18 len 14] > !(998 * arg1):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[18 len 14]) + (998 * arg1) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if not (1000 * ext_call.return_data[18 len 14]) + (998 * arg1):
                            revert with 0, 18
                        if address(tombAddress) == address(wethAddress):
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES', mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                        if address(tombAddress) < address(wethAddress):
                            if not address(tombAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(tombAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                        else:
                            if not address(wethAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(wethAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                else:
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 
                                    'UniswapV2Library: INSUFFICIENT_LIQUIDITY',
                                    mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 
                                    'UniswapV2Library: INSUFFICIENT_LIQUIDITY',
                                    mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                    if arg1 and 998 > -1 / arg1:
                        revert with 0, 17
                    if 998 * arg1 / 998 != arg1:
                        revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                    if not ext_call.return_data[18 len 14]:
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if 1000 * ext_call.return_data[50 len 14] > !(998 * arg1):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[50 len 14]) + (998 * arg1) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if not (1000 * ext_call.return_data[50 len 14]) + (998 * arg1):
                            revert with 0, 18
                        if address(tombAddress) == address(wethAddress):
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES', mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                        if address(tombAddress) < address(wethAddress):
                            if not address(tombAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(tombAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                        else:
                            if not address(wethAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(wethAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                    else:
                        if 998 * arg1 and ext_call.return_data[18 len 14] > -1 / 998 * arg1:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14]:
                            revert with 0, 18
                        if 998 * arg1 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 998 * arg1:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if 1000 * ext_call.return_data[50 len 14] > !(998 * arg1):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[50 len 14]) + (998 * arg1) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                        if not (1000 * ext_call.return_data[50 len 14]) + (998 * arg1):
                            revert with 0, 18
                        if address(tombAddress) == address(wethAddress):
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES', mem[(6 * ceil32(return_data.size)) + 702 len 9 * ceil32(return_data.size)]
                        if address(tombAddress) < address(wethAddress):
                            if not address(tombAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(tombAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                        else:
                            if not address(wethAddress):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS', mem[(6 * ceil32(return_data.size)) + 670 len 9 * ceil32(return_data.size)]
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            if address(tombAddress) == address(wethAddress):
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0xfffffffffffffffffffffffffffffffffffff700, 128, 0
                            else:
                                call address(sha3(0, address(ext_call.return_data[0]), sha3(address(wethAddress), uint64(stor2)), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1), 0, 0xfffffffffffffffffffffffffffffffffffff700000000000000000000000000, 128, 0, None
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
