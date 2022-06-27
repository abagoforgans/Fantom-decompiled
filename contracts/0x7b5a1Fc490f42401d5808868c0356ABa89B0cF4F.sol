contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;
address stor7;
address stor8;
address stor9;

function _fallback() payable {
    revert
}

function sub_821977b4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor0)
    staticcall stor0.poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_code.size(stor0)
    staticcall stor0.totalAllocPoint() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[32], ext_call.return_data[0]
}

function sub_fc0a43f6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(stor0)
    staticcall stor0.0xfb39d1e3 with:
            gas gas_remaining wei
           args arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor0)
    staticcall stor0.0x7e668b42 with:
            gas gas_remaining wei
           args arg1, ext_call.return_data[0], arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_code.size(stor0)
    staticcall stor0.0x9f6c5426 with:
            gas gas_remaining wei
           args arg1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[0]
}

function totalPending() payable {
    require ext_code.size(stor0)
    staticcall stor0.poolLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        mem[mem[64] + 36] = msg.sender
        require ext_code.size(stor0)
        staticcall stor0.pendingSoul(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args idx, msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _15 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_15] == mem[_15]
        if not mem[_15]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s > -mem[_15] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[_15]
        continue 
    return s
}

function sub_bd7dd61f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor0)
    staticcall stor0.poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0], ext_call.return_data[0]
}

function sub_54de171c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor0)
    staticcall stor0.poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_code.size(stor0)
    staticcall stor0.totalAllocPoint() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor0)
    staticcall stor0.0x5f9bf689 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0x883148f5cb1270b85273b667ae1cfdf5d70ac5a1ecccd54fe15c297df3:
        revert with 'NH{q', 17
    return ext_call.return_data[32], ext_call.return_data[0], 8760 * 24 * 3600 * ext_call.return_data[0]
}

function harvestAll() payable {
    require ext_code.size(stor0)
    staticcall stor0.poolLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        mem[mem[64] + 36] = msg.sender
        require ext_code.size(stor0)
        staticcall stor0.pendingSoul(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args idx, msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_13] == mem[_13]
        if mem[_13]:
            mem[mem[64]] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = idx
            mem[mem[64] + 36] = 0
            require ext_code.size(stor0)
            call stor0.deposit(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args idx, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_1f45c7a9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor0)
    staticcall stor0.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[192]
    require ext_code.size(stor0)
    staticcall stor0.poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0], ext_call.return_data[0]
}

function sub_da3398c1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor0)
    staticcall stor0.poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_code.size(stor0)
    staticcall stor0.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[192]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0], ext_call.return_data[0]
}

function sub_f745034c(?) payable {
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args stor7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args stor7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args stor8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args stor8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args stor9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor5)
    staticcall stor5.0x70a08231 with:
            gas gas_remaining wei
           args stor9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0], 
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0]
}

function sub_c12f85cf(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor0)
    staticcall stor0.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[192]
    require ext_code.size(stor0)
    staticcall stor0.poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor0)
    staticcall stor0.poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_code.size(stor0)
    staticcall stor0.totalAllocPoint() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor0)
    staticcall stor0.0x5f9bf689 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0x883148f5cb1270b85273b667ae1cfdf5d70ac5a1ecccd54fe15c297df3:
        revert with 'NH{q', 17
    return ext_call.return_data[0], 
           ext_call.return_data[0],
           ext_call.return_data[32],
           ext_call.return_data[0],
           8760 * 24 * 3600 * ext_call.return_data[0]
}

function sub_5fa46383(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor0)
    staticcall stor0.poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 128
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if address(ext_call.return_data[0]) == stor1:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        else:
                            return (2 * ext_call.return_data[0])
                else:
                    if ext_call.return_data[12 len 20] == stor1:
                        if address(ext_call.return_data[0]) == stor1:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                else:
                                    return (2 * ext_call.return_data[0])
                        else:
                            if address(ext_call.return_data[0]) != stor3:
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(ext_call.return_data[0])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    else:
                                        return (2 * ext_call.return_data[0])
                            else:
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(ext_call.return_data[0])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    else:
                                        return (2 * ext_call.return_data[0])
                    else:
                        if address(ext_call.return_data[0]) == stor3:
                            if address(ext_call.return_data[0]) == stor1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(ext_call.return_data[0])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    else:
                                        return (2 * ext_call.return_data[0])
                            else:
                                if address(ext_call.return_data[0]) != stor3:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        else:
                                            return (2 * ext_call.return_data[0])
                                else:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        else:
                                            return (2 * ext_call.return_data[0])
                        else:
                            if ext_call.return_data[12 len 20] == stor3:
                                if address(ext_call.return_data[0]) == stor1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        else:
                                            return (2 * ext_call.return_data[0])
                                else:
                                    if address(ext_call.return_data[0]) != stor3:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(ext_call.return_data[0])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                            if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            else:
                                                return (2 * ext_call.return_data[0])
                                    else:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(ext_call.return_data[0])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                            if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            else:
                                                return (2 * ext_call.return_data[0])
                            else:
                                if address(ext_call.return_data[0]) == stor2:
                                    if address(ext_call.return_data[0]) == stor1:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(ext_call.return_data[0])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                            if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            else:
                                                return (2 * ext_call.return_data[0])
                                    else:
                                        if address(ext_call.return_data[0]) != stor3:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                else:
                                                    return (2 * ext_call.return_data[0])
                                        else:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                else:
                                                    return (2 * ext_call.return_data[0])
                                else:
                                    if ext_call.return_data[12 len 20] != stor2:
                                        if address(ext_call.return_data[0]) == stor4:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                else:
                                                    return (2 * ext_call.return_data[0])
                                        else:
                                            if ext_call.return_data[12 len 20] != stor4:
                                                if address(ext_call.return_data[0]) == stor6:
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            return (2 * ext_call.return_data[0])
                                                else:
                                                    if ext_call.return_data[12 len 20] != stor6:
                                                        if address(ext_call.return_data[0]) == stor5:
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    return (2 * ext_call.return_data[0])
                                                        else:
                                                            if ext_call.return_data[12 len 20] != stor5:
                                                                return 0
                                                            else:
                                                                if address(ext_call.return_data[0]) != stor5:
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            return (2 * ext_call.return_data[0])
                                                                else:
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            return (2 * ext_call.return_data[0])
                                                    else:
                                                        if address(ext_call.return_data[0]) != stor6:
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    return (2 * ext_call.return_data[0])
                                                        else:
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    return (2 * ext_call.return_data[0])
                                            else:
                                                if address(ext_call.return_data[0]) != stor4:
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            return (2 * ext_call.return_data[0])
                                                else:
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            return (2 * ext_call.return_data[0])
                                    else:
                                        if address(ext_call.return_data[0]) == stor1:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                else:
                                                    return (2 * ext_call.return_data[0])
                                        else:
                                            if address(ext_call.return_data[0]) != stor3:
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                    if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        return (2 * ext_call.return_data[0])
                                            else:
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                    if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        return (2 * ext_call.return_data[0])
}

function sub_5638195e(?) payable {
    require ext_code.size(stor0)
    staticcall stor0.poolLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        require ext_code.size(stor0)
        staticcall stor0.poolInfo(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _306 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _308 = mem[_306]
        require mem[_306] == mem[_306 + 12 len 20]
        require mem[_306 + 32] == mem[_306 + 32]
        require mem[_306 + 64] == mem[_306 + 64]
        require mem[_306 + 96] == mem[_306 + 96]
        mem[mem[64] + 4] = stor0
        require ext_code.size(address(_308))
        staticcall address(_308).0x70a08231 with:
                gas gas_remaining wei
               args stor0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _322 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_322] == mem[_322]
        require ext_code.size(address(_308))
        staticcall address(_308).0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _327 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_327] == mem[_327]
        require ext_code.size(stor0)
        staticcall stor0.poolInfo(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _331 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_331] == mem[_331 + 12 len 20]
        require mem[_331 + 32] == mem[_331 + 32]
        require mem[_331 + 64] == mem[_331 + 64]
        require mem[_331 + 96] == mem[_331 + 96]
        require ext_code.size(stor0)
        staticcall stor0.totalAllocPoint() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _338 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_338] == mem[_338]
        require ext_code.size(stor0)
        staticcall stor0.0x5f9bf689 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _342 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _343 = mem[_342]
        require mem[_342] == mem[_342]
        if mem[_342] > 0x883148f5cb1270b85273b667ae1cfdf5d70ac5a1ecccd54fe15c297df3:
            revert with 'NH{q', 17
        require ext_code.size(stor0)
        staticcall stor0.poolInfo(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _346 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _347 = mem[_346]
        require mem[_346] == mem[_346 + 12 len 20]
        require mem[_346 + 32] == mem[_346 + 32]
        require mem[_346 + 64] == mem[_346 + 64]
        require mem[_346 + 96] == mem[_346 + 96]
        require ext_code.size(mem[_346 + 12 len 20])
        staticcall mem[_346 + 12 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _353 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _354 = mem[_353]
        require mem[_353] == mem[_353 + 12 len 20]
        require ext_code.size(address(_347))
        staticcall address(_347).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _360 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _362 = mem[_360]
        require mem[_360] == mem[_360 + 12 len 20]
        if address(_354) == stor1:
            mem[mem[64] + 4] = address(_347)
            require ext_code.size(address(_354))
            staticcall address(_354).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_347)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _390 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_390] == mem[_390]
            if mem[_390] and 2 > -1 / mem[_390]:
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = 2 * mem[_390]
        else:
            if mem[_360 + 12 len 20] == stor1:
                mem[mem[64] + 4] = address(_347)
                if address(_354) == stor1:
                    require ext_code.size(address(_354))
                    staticcall address(_354).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_347)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _396 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_396] == mem[_396]
                    if mem[_396] and 2 > -1 / mem[_396]:
                        revert with 'NH{q', 17
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = 2 * mem[_396]
                else:
                    if address(_354) != stor3:
                        require ext_code.size(address(_362))
                        staticcall address(_362).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_347)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _400 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_400] == mem[_400]
                        if mem[_400] and 2 > -1 / mem[_400]:
                            revert with 'NH{q', 17
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = 2 * mem[_400]
                    else:
                        require ext_code.size(address(_354))
                        staticcall address(_354).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_347)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _401 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_401] == mem[_401]
                        if mem[_401] and 2 > -1 / mem[_401]:
                            revert with 'NH{q', 17
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = 2 * mem[_401]
            else:
                if address(_354) == stor3:
                    mem[mem[64] + 4] = address(_347)
                    if address(_354) == stor1:
                        require ext_code.size(address(_354))
                        staticcall address(_354).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_347)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _402 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_402] == mem[_402]
                        if mem[_402] and 2 > -1 / mem[_402]:
                            revert with 'NH{q', 17
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = 2 * mem[_402]
                    else:
                        if address(_354) != stor3:
                            require ext_code.size(address(_362))
                            staticcall address(_362).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_347)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _408 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_408] == mem[_408]
                            if mem[_408] and 2 > -1 / mem[_408]:
                                revert with 'NH{q', 17
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = 2 * mem[_408]
                        else:
                            require ext_code.size(address(_354))
                            staticcall address(_354).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_347)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _409 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_409] == mem[_409]
                            if mem[_409] and 2 > -1 / mem[_409]:
                                revert with 'NH{q', 17
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = 2 * mem[_409]
                else:
                    if mem[_360 + 12 len 20] == stor3:
                        mem[mem[64] + 4] = address(_347)
                        if address(_354) == stor1:
                            require ext_code.size(address(_354))
                            staticcall address(_354).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_347)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _410 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_410] == mem[_410]
                            if mem[_410] and 2 > -1 / mem[_410]:
                                revert with 'NH{q', 17
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = 2 * mem[_410]
                        else:
                            if address(_354) != stor3:
                                require ext_code.size(address(_362))
                                staticcall address(_362).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_347)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _417 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_417] == mem[_417]
                                if mem[_417] and 2 > -1 / mem[_417]:
                                    revert with 'NH{q', 17
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = 2 * mem[_417]
                            else:
                                require ext_code.size(address(_354))
                                staticcall address(_354).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_347)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _418 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_418] == mem[_418]
                                if mem[_418] and 2 > -1 / mem[_418]:
                                    revert with 'NH{q', 17
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = 2 * mem[_418]
                    else:
                        if address(_354) == stor2:
                            mem[mem[64] + 4] = address(_347)
                            if address(_354) == stor1:
                                require ext_code.size(address(_354))
                                staticcall address(_354).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_347)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _419 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_419] == mem[_419]
                                if mem[_419] and 2 > -1 / mem[_419]:
                                    revert with 'NH{q', 17
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = 2 * mem[_419]
                            else:
                                if address(_354) != stor3:
                                    require ext_code.size(address(_362))
                                    staticcall address(_362).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(_347)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _426 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_426] == mem[_426]
                                    if mem[_426] and 2 > -1 / mem[_426]:
                                        revert with 'NH{q', 17
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = 2 * mem[_426]
                                else:
                                    require ext_code.size(address(_354))
                                    staticcall address(_354).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(_347)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _427 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_427] == mem[_427]
                                    if mem[_427] and 2 > -1 / mem[_427]:
                                        revert with 'NH{q', 17
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = 2 * mem[_427]
                        else:
                            if mem[_360 + 12 len 20] == stor2:
                                mem[mem[64] + 4] = address(_347)
                                if address(_354) == stor1:
                                    require ext_code.size(address(_354))
                                    staticcall address(_354).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(_347)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _430 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_430] == mem[_430]
                                    if mem[_430] and 2 > -1 / mem[_430]:
                                        revert with 'NH{q', 17
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = 2 * mem[_430]
                                else:
                                    if address(_354) != stor3:
                                        require ext_code.size(address(_362))
                                        staticcall address(_362).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(_347)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _436 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_436] == mem[_436]
                                        if mem[_436] and 2 > -1 / mem[_436]:
                                            revert with 'NH{q', 17
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + 128] = 2 * mem[_436]
                                    else:
                                        require ext_code.size(address(_354))
                                        staticcall address(_354).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(_347)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _437 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_437] == mem[_437]
                                        if mem[_437] and 2 > -1 / mem[_437]:
                                            revert with 'NH{q', 17
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + 128] = 2 * mem[_437]
                            else:
                                if address(_354) == stor4:
                                    mem[mem[64] + 4] = address(_347)
                                    require ext_code.size(address(_354))
                                    staticcall address(_354).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(_347)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _435 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_435] == mem[_435]
                                    if mem[_435] and 2 > -1 / mem[_435]:
                                        revert with 'NH{q', 17
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = 2 * mem[_435]
                                else:
                                    if mem[_360 + 12 len 20] == stor4:
                                        mem[mem[64] + 4] = address(_347)
                                        if address(_354) != stor4:
                                            require ext_code.size(address(_362))
                                            staticcall address(_362).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(_347)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _443 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_443] == mem[_443]
                                            if mem[_443] and 2 > -1 / mem[_443]:
                                                revert with 'NH{q', 17
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + 128] = 2 * mem[_443]
                                        else:
                                            require ext_code.size(address(_354))
                                            staticcall address(_354).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(_347)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _444 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_444] == mem[_444]
                                            if mem[_444] and 2 > -1 / mem[_444]:
                                                revert with 'NH{q', 17
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + 128] = 2 * mem[_444]
                                    else:
                                        if address(_354) == stor6:
                                            mem[mem[64] + 4] = address(_347)
                                            require ext_code.size(address(_354))
                                            staticcall address(_354).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(_347)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _452 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_452] == mem[_452]
                                            if mem[_452] and 2 > -1 / mem[_452]:
                                                revert with 'NH{q', 17
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + 128] = 2 * mem[_452]
                                        else:
                                            if mem[_360 + 12 len 20] == stor6:
                                                mem[mem[64] + 4] = address(_347)
                                                if address(_354) != stor6:
                                                    require ext_code.size(address(_362))
                                                    staticcall address(_362).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(_347)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _458 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_458] == mem[_458]
                                                    if mem[_458] and 2 > -1 / mem[_458]:
                                                        revert with 'NH{q', 17
                                                    if idx >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    if idx >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    if idx >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    if idx >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    if idx >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx) + 128] = 2 * mem[_458]
                                                else:
                                                    require ext_code.size(address(_354))
                                                    staticcall address(_354).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(_347)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _459 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_459] == mem[_459]
                                                    if mem[_459] and 2 > -1 / mem[_459]:
                                                        revert with 'NH{q', 17
                                                    if idx >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    if idx >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    if idx >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    if idx >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    if idx >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx) + 128] = 2 * mem[_459]
                                            else:
                                                if address(_354) == stor5:
                                                    mem[mem[64] + 4] = address(_347)
                                                    require ext_code.size(address(_354))
                                                    staticcall address(_354).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(_347)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _466 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_466] == mem[_466]
                                                    if mem[_466] and 2 > -1 / mem[_466]:
                                                        revert with 'NH{q', 17
                                                    if idx >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    if idx >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    if idx >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    if idx >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    if idx >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx) + 128] = 2 * mem[_466]
                                                else:
                                                    if mem[_360 + 12 len 20] != stor5:
                                                        if idx >= mem[96]:
                                                            revert with 'NH{q', 50
                                                        if idx >= mem[96]:
                                                            revert with 'NH{q', 50
                                                        if idx >= mem[96]:
                                                            revert with 'NH{q', 50
                                                        if idx >= mem[96]:
                                                            revert with 'NH{q', 50
                                                        if idx >= mem[96]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx) + 128] = 0
                                                    else:
                                                        mem[mem[64] + 4] = address(_347)
                                                        if address(_354) != stor5:
                                                            require ext_code.size(address(_362))
                                                            staticcall address(_362).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args address(_347)
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _467 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_467] == mem[_467]
                                                            if mem[_467] and 2 > -1 / mem[_467]:
                                                                revert with 'NH{q', 17
                                                            if idx >= mem[96]:
                                                                revert with 'NH{q', 50
                                                            if idx >= mem[96]:
                                                                revert with 'NH{q', 50
                                                            if idx >= mem[96]:
                                                                revert with 'NH{q', 50
                                                            if idx >= mem[96]:
                                                                revert with 'NH{q', 50
                                                            if idx >= mem[96]:
                                                                revert with 'NH{q', 50
                                                            mem[(32 * idx) + 128] = 2 * mem[_467]
                                                        else:
                                                            require ext_code.size(address(_354))
                                                            staticcall address(_354).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args address(_347)
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _468 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_468] == mem[_468]
                                                            if mem[_468] and 2 > -1 / mem[_468]:
                                                                revert with 'NH{q', 17
                                                            if idx >= mem[96]:
                                                                revert with 'NH{q', 50
                                                            if idx >= mem[96]:
                                                                revert with 'NH{q', 50
                                                            if idx >= mem[96]:
                                                                revert with 'NH{q', 50
                                                            if idx >= mem[96]:
                                                                revert with 'NH{q', 50
                                                            if idx >= mem[96]:
                                                                revert with 'NH{q', 50
                                                            mem[(32 * idx) + 128] = 2 * mem[_468]
        if idx == -1:
            revert with 'NH{q', 17
        if idx != ext_call.return_data[0]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 8760 * 24 * 3600 * _343
        continue 
    _302 = mem[64]
    mem[mem[64]] = 192
    mem[mem[64] + 192] = mem[96]
    mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 32] = (32 * mem[96]) + 224
    mem[mem[64] + (32 * mem[96]) + 224] = mem[96]
    mem[mem[64] + (32 * mem[96]) + 256 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    var48007 = mem[64] + (64 * mem[96]) + 256
    mem[mem[64] + 64] = (64 * mem[96]) + 256
    _600 = mem[96]
    mem[mem[64] + (64 * mem[96]) + 256] = mem[96]
    mem[mem[64] + (64 * mem[96]) + 288 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 96] = (98 * mem[96]) + 288
    _608 = mem[96]
    mem[var48007 + (32 * mem[96]) + 32] = mem[96]
    mem[var48007 + (32 * _600) + 64 len 32 * _608] = mem[128 len 32 * _608]
    mem[_302 + 128] = var48007 + (32 * _600) + (32 * _608) + -_302 + 64
    _614 = mem[96]
    mem[var48007 + (32 * _600) + (32 * _608) + 64] = mem[96]
    mem[var48007 + (32 * _600) + (32 * _608) + 96 len 32 * _614] = mem[128 len 32 * _614]
    mem[_302 + 160] = s
    return memory
      from mem[64]
       len var48007 + (32 * _600) + (32 * _608) + (32 * _614) + -mem[64] + 96
}

function sub_6cf3ee27(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor0)
    staticcall stor0.poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 128
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args stor0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(stor0)
                staticcall stor0.poolInfo(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 128
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    require ext_call.return_data[64] == ext_call.return_data[64]
                    require ext_call.return_data[96] == ext_call.return_data[96]
                    require ext_code.size(stor0)
                    staticcall stor0.totalAllocPoint() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(stor0)
                        staticcall stor0.0x5f9bf689 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] > 0x883148f5cb1270b85273b667ae1cfdf5d70ac5a1ecccd54fe15c297df3:
                                revert with 'NH{q', 17
                            else:
                                require ext_code.size(stor0)
                                staticcall stor0.poolInfo(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 128
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                    require ext_call.return_data[64] == ext_call.return_data[64]
                                    require ext_call.return_data[96] == ext_call.return_data[96]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).token0() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).token1() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if address(ext_call.return_data[0]) == stor1:
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                    if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        return ext_call.return_data[0], 
                                                               ext_call.return_data[0],
                                                               ext_call.return_data[32],
                                                               ext_call.return_data[0],
                                                               8760 * 24 * 3600 * ext_call.return_data[0],
                                                               2 * ext_call.return_data[0]
                                            else:
                                                if ext_call.return_data[12 len 20] == stor1:
                                                    if address(ext_call.return_data[0]) == stor1:
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                return ext_call.return_data[0], 
                                                                       ext_call.return_data[0],
                                                                       ext_call.return_data[32],
                                                                       ext_call.return_data[0],
                                                                       8760 * 24 * 3600 * ext_call.return_data[0],
                                                                       2 * ext_call.return_data[0]
                                                    else:
                                                        if address(ext_call.return_data[0]) != stor3:
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    return ext_call.return_data[0], 
                                                                           ext_call.return_data[0],
                                                                           ext_call.return_data[32],
                                                                           ext_call.return_data[0],
                                                                           8760 * 24 * 3600 * ext_call.return_data[0],
                                                                           2 * ext_call.return_data[0]
                                                        else:
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    return ext_call.return_data[0], 
                                                                           ext_call.return_data[0],
                                                                           ext_call.return_data[32],
                                                                           ext_call.return_data[0],
                                                                           8760 * 24 * 3600 * ext_call.return_data[0],
                                                                           2 * ext_call.return_data[0]
                                                else:
                                                    if address(ext_call.return_data[0]) == stor3:
                                                        if address(ext_call.return_data[0]) == stor1:
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    return ext_call.return_data[0], 
                                                                           ext_call.return_data[0],
                                                                           ext_call.return_data[32],
                                                                           ext_call.return_data[0],
                                                                           8760 * 24 * 3600 * ext_call.return_data[0],
                                                                           2 * ext_call.return_data[0]
                                                        else:
                                                            if address(ext_call.return_data[0]) != stor3:
                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        return ext_call.return_data[0], 
                                                                               ext_call.return_data[0],
                                                                               ext_call.return_data[32],
                                                                               ext_call.return_data[0],
                                                                               8760 * 24 * 3600 * ext_call.return_data[0],
                                                                               2 * ext_call.return_data[0]
                                                            else:
                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        return ext_call.return_data[0], 
                                                                               ext_call.return_data[0],
                                                                               ext_call.return_data[32],
                                                                               ext_call.return_data[0],
                                                                               8760 * 24 * 3600 * ext_call.return_data[0],
                                                                               2 * ext_call.return_data[0]
                                                    else:
                                                        if ext_call.return_data[12 len 20] == stor3:
                                                            if address(ext_call.return_data[0]) == stor1:
                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        return ext_call.return_data[0], 
                                                                               ext_call.return_data[0],
                                                                               ext_call.return_data[32],
                                                                               ext_call.return_data[0],
                                                                               8760 * 24 * 3600 * ext_call.return_data[0],
                                                                               2 * ext_call.return_data[0]
                                                            else:
                                                                if address(ext_call.return_data[0]) != stor3:
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            return ext_call.return_data[0], 
                                                                                   ext_call.return_data[0],
                                                                                   ext_call.return_data[32],
                                                                                   ext_call.return_data[0],
                                                                                   8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                   2 * ext_call.return_data[0]
                                                                else:
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            return ext_call.return_data[0], 
                                                                                   ext_call.return_data[0],
                                                                                   ext_call.return_data[32],
                                                                                   ext_call.return_data[0],
                                                                                   8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                   2 * ext_call.return_data[0]
                                                        else:
                                                            if address(ext_call.return_data[0]) == stor2:
                                                                if address(ext_call.return_data[0]) == stor1:
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            return ext_call.return_data[0], 
                                                                                   ext_call.return_data[0],
                                                                                   ext_call.return_data[32],
                                                                                   ext_call.return_data[0],
                                                                                   8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                   2 * ext_call.return_data[0]
                                                                else:
                                                                    if address(ext_call.return_data[0]) != stor3:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                            if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                return ext_call.return_data[0], 
                                                                                       ext_call.return_data[0],
                                                                                       ext_call.return_data[32],
                                                                                       ext_call.return_data[0],
                                                                                       8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                       2 * ext_call.return_data[0]
                                                                    else:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                            if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                return ext_call.return_data[0], 
                                                                                       ext_call.return_data[0],
                                                                                       ext_call.return_data[32],
                                                                                       ext_call.return_data[0],
                                                                                       8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                       2 * ext_call.return_data[0]
                                                            else:
                                                                if ext_call.return_data[12 len 20] != stor2:
                                                                    if address(ext_call.return_data[0]) == stor4:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                            if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                return ext_call.return_data[0], 
                                                                                       ext_call.return_data[0],
                                                                                       ext_call.return_data[32],
                                                                                       ext_call.return_data[0],
                                                                                       8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                       2 * ext_call.return_data[0]
                                                                    else:
                                                                        if ext_call.return_data[12 len 20] != stor4:
                                                                            if address(ext_call.return_data[0]) == stor6:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                        gas gas_remaining wei
                                                                                       args address(ext_call.return_data[0])
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                    if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        return ext_call.return_data[0], 
                                                                                               ext_call.return_data[0],
                                                                                               ext_call.return_data[32],
                                                                                               ext_call.return_data[0],
                                                                                               8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                               2 * ext_call.return_data[0]
                                                                            else:
                                                                                if ext_call.return_data[12 len 20] != stor6:
                                                                                    if address(ext_call.return_data[0]) == stor5:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                                gas gas_remaining wei
                                                                                               args address(ext_call.return_data[0])
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                            if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                return ext_call.return_data[0], 
                                                                                                       ext_call.return_data[0],
                                                                                                       ext_call.return_data[32],
                                                                                                       ext_call.return_data[0],
                                                                                                       8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                                       2 * ext_call.return_data[0]
                                                                                    else:
                                                                                        if ext_call.return_data[12 len 20] != stor5:
                                                                                            return ext_call.return_data[0], 
                                                                                                   ext_call.return_data[0],
                                                                                                   ext_call.return_data[32],
                                                                                                   ext_call.return_data[0],
                                                                                                   8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                                   0
                                                                                        else:
                                                                                            if address(ext_call.return_data[0]) != stor5:
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args address(ext_call.return_data[0])
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                                    if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        return ext_call.return_data[0], 
                                                                                                               ext_call.return_data[0],
                                                                                                               ext_call.return_data[32],
                                                                                                               ext_call.return_data[0],
                                                                                                               8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                                               2 * ext_call.return_data[0]
                                                                                            else:
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args address(ext_call.return_data[0])
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                                    if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        return ext_call.return_data[0], 
                                                                                                               ext_call.return_data[0],
                                                                                                               ext_call.return_data[32],
                                                                                                               ext_call.return_data[0],
                                                                                                               8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                                               2 * ext_call.return_data[0]
                                                                                else:
                                                                                    if address(ext_call.return_data[0]) != stor6:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                                gas gas_remaining wei
                                                                                               args address(ext_call.return_data[0])
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                            if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                return ext_call.return_data[0], 
                                                                                                       ext_call.return_data[0],
                                                                                                       ext_call.return_data[32],
                                                                                                       ext_call.return_data[0],
                                                                                                       8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                                       2 * ext_call.return_data[0]
                                                                                    else:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                                gas gas_remaining wei
                                                                                               args address(ext_call.return_data[0])
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                            if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                return ext_call.return_data[0], 
                                                                                                       ext_call.return_data[0],
                                                                                                       ext_call.return_data[32],
                                                                                                       ext_call.return_data[0],
                                                                                                       8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                                       2 * ext_call.return_data[0]
                                                                        else:
                                                                            if address(ext_call.return_data[0]) != stor4:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                        gas gas_remaining wei
                                                                                       args address(ext_call.return_data[0])
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                    if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        return ext_call.return_data[0], 
                                                                                               ext_call.return_data[0],
                                                                                               ext_call.return_data[32],
                                                                                               ext_call.return_data[0],
                                                                                               8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                               2 * ext_call.return_data[0]
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                        gas gas_remaining wei
                                                                                       args address(ext_call.return_data[0])
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                    if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        return ext_call.return_data[0], 
                                                                                               ext_call.return_data[0],
                                                                                               ext_call.return_data[32],
                                                                                               ext_call.return_data[0],
                                                                                               8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                               2 * ext_call.return_data[0]
                                                                else:
                                                                    if address(ext_call.return_data[0]) == stor1:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                            if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                return ext_call.return_data[0], 
                                                                                       ext_call.return_data[0],
                                                                                       ext_call.return_data[32],
                                                                                       ext_call.return_data[0],
                                                                                       8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                       2 * ext_call.return_data[0]
                                                                    else:
                                                                        if address(ext_call.return_data[0]) != stor3:
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(ext_call.return_data[0])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    return ext_call.return_data[0], 
                                                                                           ext_call.return_data[0],
                                                                                           ext_call.return_data[32],
                                                                                           ext_call.return_data[0],
                                                                                           8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                           2 * ext_call.return_data[0]
                                                                        else:
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(ext_call.return_data[0])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    return ext_call.return_data[0], 
                                                                                           ext_call.return_data[0],
                                                                                           ext_call.return_data[32],
                                                                                           ext_call.return_data[0],
                                                                                           8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                           2 * ext_call.return_data[0]
}



}
