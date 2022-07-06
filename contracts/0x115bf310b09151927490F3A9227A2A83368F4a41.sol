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
address stor10;
address stor11;

function _fallback() payable {
    revert
}

function sub_821977b4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor0)
    staticcall stor0.0x1526fe27 with:
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
    staticcall stor0.0x17caf6f1 with:
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
    staticcall stor0.0x1526fe27 with:
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
    staticcall stor0.0x1526fe27 with:
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
    staticcall stor0.0x17caf6f1 with:
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

function sub_1f45c7a9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor0)
    staticcall stor0.0x93f1a40b with:
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
    staticcall stor0.0x1526fe27 with:
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
    staticcall stor0.0x1526fe27 with:
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
    staticcall stor0.0x93f1a40b with:
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
        if not idx:
            if mem[_13]:
                mem[mem[64]] = 0x41441d3b00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                require ext_code.size(stor0)
                call stor0.enterStaking(uint256 arg1) with:
                     gas gas_remaining wei
                    args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if mem[_13]:
                mem[mem[64]] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = idx
                mem[mem[64] + 36] = 0
                require ext_code.size(stor0)
                call stor0.0xe2bbb158 with:
                     gas gas_remaining wei
                    args idx, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_f745034c(?) payable {
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
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
    require ext_code.size(stor8)
    staticcall stor8.0x70a08231 with:
            gas gas_remaining wei
           args stor10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args stor10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args stor11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor7)
    staticcall stor7.0x70a08231 with:
            gas gas_remaining wei
           args stor11
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
    staticcall stor0.0x93f1a40b with:
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
    staticcall stor0.0x1526fe27 with:
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
    staticcall stor0.0x1526fe27 with:
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
    staticcall stor0.0x17caf6f1 with:
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
    staticcall stor0.0x1526fe27 with:
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
            staticcall address(ext_call.return_data[0]).0xd21220a7 with:
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
                        if address(ext_call.return_data[0]) == stor5:
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
                            if ext_call.return_data[12 len 20] == stor5:
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
                                    if ext_call.return_data[12 len 20] == stor2:
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
                                            if ext_call.return_data[12 len 20] != stor3:
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
                                                        if address(ext_call.return_data[0]) == stor8:
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
                                                            if ext_call.return_data[12 len 20] != stor8:
                                                                if address(ext_call.return_data[0]) == stor7:
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
                                                                    if ext_call.return_data[12 len 20] != stor7:
                                                                        return 0
                                                                    else:
                                                                        if address(ext_call.return_data[0]) != stor7:
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
                                                                if address(ext_call.return_data[0]) != stor8:
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
        staticcall stor0.0x1526fe27 with:
                gas gas_remaining wei
               args idx
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _423 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _425 = mem[_423]
        require mem[_423] == mem[_423 + 12 len 20]
        require mem[_423 + 32] == mem[_423 + 32]
        require mem[_423 + 64] == mem[_423 + 64]
        require mem[_423 + 96] == mem[_423 + 96]
        mem[mem[64] + 4] = stor0
        require ext_code.size(address(_425))
        staticcall address(_425).0x70a08231 with:
                gas gas_remaining wei
               args stor0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _439 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_439] == mem[_439]
        require ext_code.size(address(_425))
        staticcall address(_425).0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _444 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_444] == mem[_444]
        require ext_code.size(stor0)
        staticcall stor0.0x1526fe27 with:
                gas gas_remaining wei
               args idx
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _448 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_448] == mem[_448 + 12 len 20]
        require mem[_448 + 32] == mem[_448 + 32]
        require mem[_448 + 64] == mem[_448 + 64]
        require mem[_448 + 96] == mem[_448 + 96]
        require ext_code.size(stor0)
        staticcall stor0.0x17caf6f1 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _455 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_455] == mem[_455]
        require ext_code.size(stor0)
        staticcall stor0.0x5f9bf689 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _459 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _460 = mem[_459]
        require mem[_459] == mem[_459]
        if mem[_459] > 0x883148f5cb1270b85273b667ae1cfdf5d70ac5a1ecccd54fe15c297df3:
            revert with 'NH{q', 17
        require ext_code.size(stor0)
        staticcall stor0.0x1526fe27 with:
                gas gas_remaining wei
               args idx
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _463 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _464 = mem[_463]
        require mem[_463] == mem[_463 + 12 len 20]
        require mem[_463 + 32] == mem[_463 + 32]
        require mem[_463 + 64] == mem[_463 + 64]
        require mem[_463 + 96] == mem[_463 + 96]
        require ext_code.size(mem[_463 + 12 len 20])
        staticcall mem[_463 + 12 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _470 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _471 = mem[_470]
        require mem[_470] == mem[_470 + 12 len 20]
        require ext_code.size(address(_464))
        staticcall address(_464).0xd21220a7 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _477 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _479 = mem[_477]
        require mem[_477] == mem[_477 + 12 len 20]
        if address(_471) == stor1:
            mem[mem[64] + 4] = address(_464)
            require ext_code.size(address(_471))
            staticcall address(_471).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_464)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _519 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_519] == mem[_519]
            if mem[_519] and 2 > -1 / mem[_519]:
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
            mem[(32 * idx) + 128] = 2 * mem[_519]
        else:
            if mem[_477 + 12 len 20] == stor1:
                mem[mem[64] + 4] = address(_464)
                if address(_471) == stor1:
                    require ext_code.size(address(_471))
                    staticcall address(_471).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_464)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _523 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_523] == mem[_523]
                    if mem[_523] and 2 > -1 / mem[_523]:
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
                    mem[(32 * idx) + 128] = 2 * mem[_523]
                else:
                    if address(_471) == stor5:
                        require ext_code.size(address(_471))
                        staticcall address(_471).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_464)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _530 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_530] == mem[_530]
                        if mem[_530] and 2 > -1 / mem[_530]:
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
                        mem[(32 * idx) + 128] = 2 * mem[_530]
                    else:
                        if address(_471) != stor4:
                            require ext_code.size(address(_479))
                            staticcall address(_479).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_464)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _538 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_538] == mem[_538]
                            if mem[_538] and 2 > -1 / mem[_538]:
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
                            mem[(32 * idx) + 128] = 2 * mem[_538]
                        else:
                            require ext_code.size(address(_471))
                            staticcall address(_471).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_464)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _539 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_539] == mem[_539]
                            if mem[_539] and 2 > -1 / mem[_539]:
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
                            mem[(32 * idx) + 128] = 2 * mem[_539]
            else:
                if address(_471) == stor5:
                    mem[mem[64] + 4] = address(_464)
                    if address(_471) == stor1:
                        require ext_code.size(address(_471))
                        staticcall address(_471).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_464)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _531 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_531] == mem[_531]
                        if mem[_531] and 2 > -1 / mem[_531]:
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
                        mem[(32 * idx) + 128] = 2 * mem[_531]
                    else:
                        if address(_471) == stor5:
                            require ext_code.size(address(_471))
                            staticcall address(_471).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_464)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _540 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_540] == mem[_540]
                            if mem[_540] and 2 > -1 / mem[_540]:
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
                            mem[(32 * idx) + 128] = 2 * mem[_540]
                        else:
                            if address(_471) != stor4:
                                require ext_code.size(address(_479))
                                staticcall address(_479).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_464)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _548 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_548] == mem[_548]
                                if mem[_548] and 2 > -1 / mem[_548]:
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
                                mem[(32 * idx) + 128] = 2 * mem[_548]
                            else:
                                require ext_code.size(address(_471))
                                staticcall address(_471).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_464)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _549 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_549] == mem[_549]
                                if mem[_549] and 2 > -1 / mem[_549]:
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
                                mem[(32 * idx) + 128] = 2 * mem[_549]
                else:
                    if mem[_477 + 12 len 20] == stor5:
                        mem[mem[64] + 4] = address(_464)
                        if address(_471) == stor1:
                            require ext_code.size(address(_471))
                            staticcall address(_471).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_464)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _541 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_541] == mem[_541]
                            if mem[_541] and 2 > -1 / mem[_541]:
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
                            mem[(32 * idx) + 128] = 2 * mem[_541]
                        else:
                            if address(_471) == stor5:
                                require ext_code.size(address(_471))
                                staticcall address(_471).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_464)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _550 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_550] == mem[_550]
                                if mem[_550] and 2 > -1 / mem[_550]:
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
                                mem[(32 * idx) + 128] = 2 * mem[_550]
                            else:
                                if address(_471) != stor4:
                                    require ext_code.size(address(_479))
                                    staticcall address(_479).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(_464)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _560 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_560] == mem[_560]
                                    if mem[_560] and 2 > -1 / mem[_560]:
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
                                    mem[(32 * idx) + 128] = 2 * mem[_560]
                                else:
                                    require ext_code.size(address(_471))
                                    staticcall address(_471).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(_464)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _561 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_561] == mem[_561]
                                    if mem[_561] and 2 > -1 / mem[_561]:
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
                                    mem[(32 * idx) + 128] = 2 * mem[_561]
                    else:
                        if address(_471) == stor2:
                            mem[mem[64] + 4] = address(_464)
                            if address(_471) == stor1:
                                require ext_code.size(address(_471))
                                staticcall address(_471).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_464)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _551 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_551] == mem[_551]
                                if mem[_551] and 2 > -1 / mem[_551]:
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
                                mem[(32 * idx) + 128] = 2 * mem[_551]
                            else:
                                if address(_471) == stor5:
                                    require ext_code.size(address(_471))
                                    staticcall address(_471).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(_464)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _562 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_562] == mem[_562]
                                    if mem[_562] and 2 > -1 / mem[_562]:
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
                                    mem[(32 * idx) + 128] = 2 * mem[_562]
                                else:
                                    if address(_471) != stor4:
                                        require ext_code.size(address(_479))
                                        staticcall address(_479).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(_464)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _573 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_573] == mem[_573]
                                        if mem[_573] and 2 > -1 / mem[_573]:
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
                                        mem[(32 * idx) + 128] = 2 * mem[_573]
                                    else:
                                        require ext_code.size(address(_471))
                                        staticcall address(_471).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(_464)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _574 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_574] == mem[_574]
                                        if mem[_574] and 2 > -1 / mem[_574]:
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
                                        mem[(32 * idx) + 128] = 2 * mem[_574]
                        else:
                            if mem[_477 + 12 len 20] == stor2:
                                mem[mem[64] + 4] = address(_464)
                                if address(_471) == stor1:
                                    require ext_code.size(address(_471))
                                    staticcall address(_471).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(_464)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _563 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_563] == mem[_563]
                                    if mem[_563] and 2 > -1 / mem[_563]:
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
                                    mem[(32 * idx) + 128] = 2 * mem[_563]
                                else:
                                    if address(_471) == stor5:
                                        require ext_code.size(address(_471))
                                        staticcall address(_471).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(_464)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _575 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_575] == mem[_575]
                                        if mem[_575] and 2 > -1 / mem[_575]:
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
                                        mem[(32 * idx) + 128] = 2 * mem[_575]
                                    else:
                                        if address(_471) != stor4:
                                            require ext_code.size(address(_479))
                                            staticcall address(_479).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(_464)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _586 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_586] == mem[_586]
                                            if mem[_586] and 2 > -1 / mem[_586]:
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
                                            mem[(32 * idx) + 128] = 2 * mem[_586]
                                        else:
                                            require ext_code.size(address(_471))
                                            staticcall address(_471).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(_464)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _587 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_587] == mem[_587]
                                            if mem[_587] and 2 > -1 / mem[_587]:
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
                                            mem[(32 * idx) + 128] = 2 * mem[_587]
                            else:
                                if address(_471) == stor3:
                                    mem[mem[64] + 4] = address(_464)
                                    if address(_471) == stor1:
                                        require ext_code.size(address(_471))
                                        staticcall address(_471).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(_464)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _576 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_576] == mem[_576]
                                        if mem[_576] and 2 > -1 / mem[_576]:
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
                                        mem[(32 * idx) + 128] = 2 * mem[_576]
                                    else:
                                        if address(_471) == stor5:
                                            require ext_code.size(address(_471))
                                            staticcall address(_471).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(_464)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _588 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_588] == mem[_588]
                                            if mem[_588] and 2 > -1 / mem[_588]:
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
                                            mem[(32 * idx) + 128] = 2 * mem[_588]
                                        else:
                                            if address(_471) != stor4:
                                                require ext_code.size(address(_479))
                                                staticcall address(_479).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(_464)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _597 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_597] == mem[_597]
                                                if mem[_597] and 2 > -1 / mem[_597]:
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
                                                mem[(32 * idx) + 128] = 2 * mem[_597]
                                            else:
                                                require ext_code.size(address(_471))
                                                staticcall address(_471).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(_464)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _598 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_598] == mem[_598]
                                                if mem[_598] and 2 > -1 / mem[_598]:
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
                                                mem[(32 * idx) + 128] = 2 * mem[_598]
                                else:
                                    if mem[_477 + 12 len 20] == stor3:
                                        mem[mem[64] + 4] = address(_464)
                                        if address(_471) == stor1:
                                            require ext_code.size(address(_471))
                                            staticcall address(_471).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(_464)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _590 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_590] == mem[_590]
                                            if mem[_590] and 2 > -1 / mem[_590]:
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
                                            mem[(32 * idx) + 128] = 2 * mem[_590]
                                        else:
                                            if address(_471) == stor5:
                                                require ext_code.size(address(_471))
                                                staticcall address(_471).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(_464)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _603 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_603] == mem[_603]
                                                if mem[_603] and 2 > -1 / mem[_603]:
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
                                                mem[(32 * idx) + 128] = 2 * mem[_603]
                                            else:
                                                if address(_471) != stor4:
                                                    require ext_code.size(address(_479))
                                                    staticcall address(_479).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(_464)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _611 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_611] == mem[_611]
                                                    if mem[_611] and 2 > -1 / mem[_611]:
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
                                                    mem[(32 * idx) + 128] = 2 * mem[_611]
                                                else:
                                                    require ext_code.size(address(_471))
                                                    staticcall address(_471).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(_464)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _612 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_612] == mem[_612]
                                                    if mem[_612] and 2 > -1 / mem[_612]:
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
                                                    mem[(32 * idx) + 128] = 2 * mem[_612]
                                    else:
                                        if address(_471) == stor6:
                                            mem[mem[64] + 4] = address(_464)
                                            require ext_code.size(address(_471))
                                            staticcall address(_471).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(_464)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _589 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_589] == mem[_589]
                                            if mem[_589] and 2 > -1 / mem[_589]:
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
                                            mem[(32 * idx) + 128] = 2 * mem[_589]
                                        else:
                                            if mem[_477 + 12 len 20] == stor6:
                                                mem[mem[64] + 4] = address(_464)
                                                if address(_471) != stor6:
                                                    require ext_code.size(address(_479))
                                                    staticcall address(_479).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(_464)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _601 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_601] == mem[_601]
                                                    if mem[_601] and 2 > -1 / mem[_601]:
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
                                                    mem[(32 * idx) + 128] = 2 * mem[_601]
                                                else:
                                                    require ext_code.size(address(_471))
                                                    staticcall address(_471).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(_464)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _602 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_602] == mem[_602]
                                                    if mem[_602] and 2 > -1 / mem[_602]:
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
                                                    mem[(32 * idx) + 128] = 2 * mem[_602]
                                            else:
                                                if address(_471) == stor8:
                                                    mem[mem[64] + 4] = address(_464)
                                                    require ext_code.size(address(_471))
                                                    staticcall address(_471).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(_464)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _617 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_617] == mem[_617]
                                                    if mem[_617] and 2 > -1 / mem[_617]:
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
                                                    mem[(32 * idx) + 128] = 2 * mem[_617]
                                                else:
                                                    if mem[_477 + 12 len 20] == stor8:
                                                        mem[mem[64] + 4] = address(_464)
                                                        if address(_471) != stor8:
                                                            require ext_code.size(address(_479))
                                                            staticcall address(_479).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args address(_464)
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _624 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_624] == mem[_624]
                                                            if mem[_624] and 2 > -1 / mem[_624]:
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
                                                            mem[(32 * idx) + 128] = 2 * mem[_624]
                                                        else:
                                                            require ext_code.size(address(_471))
                                                            staticcall address(_471).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args address(_464)
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _625 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_625] == mem[_625]
                                                            if mem[_625] and 2 > -1 / mem[_625]:
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
                                                            mem[(32 * idx) + 128] = 2 * mem[_625]
                                                    else:
                                                        if address(_471) == stor7:
                                                            mem[mem[64] + 4] = address(_464)
                                                            require ext_code.size(address(_471))
                                                            staticcall address(_471).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args address(_464)
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _635 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_635] == mem[_635]
                                                            if mem[_635] and 2 > -1 / mem[_635]:
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
                                                            mem[(32 * idx) + 128] = 2 * mem[_635]
                                                        else:
                                                            if mem[_477 + 12 len 20] != stor7:
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
                                                                mem[mem[64] + 4] = address(_464)
                                                                if address(_471) != stor7:
                                                                    require ext_code.size(address(_479))
                                                                    staticcall address(_479).0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args address(_464)
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _636 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_636] == mem[_636]
                                                                    if mem[_636] and 2 > -1 / mem[_636]:
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
                                                                    mem[(32 * idx) + 128] = 2 * mem[_636]
                                                                else:
                                                                    require ext_code.size(address(_471))
                                                                    staticcall address(_471).0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args address(_464)
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _637 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_637] == mem[_637]
                                                                    if mem[_637] and 2 > -1 / mem[_637]:
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
                                                                    mem[(32 * idx) + 128] = 2 * mem[_637]
        if idx == -1:
            revert with 'NH{q', 17
        if idx != ext_call.return_data[0]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 8760 * 24 * 3600 * _460
        continue 
    _419 = mem[64]
    mem[mem[64]] = 192
    mem[mem[64] + 192] = mem[96]
    mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 32] = (32 * mem[96]) + 224
    mem[mem[64] + (32 * mem[96]) + 224] = mem[96]
    mem[mem[64] + (32 * mem[96]) + 256 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    var48007 = mem[64] + (64 * mem[96]) + 256
    mem[mem[64] + 64] = (64 * mem[96]) + 256
    _834 = mem[96]
    mem[mem[64] + (64 * mem[96]) + 256] = mem[96]
    mem[mem[64] + (64 * mem[96]) + 288 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 96] = (98 * mem[96]) + 288
    _842 = mem[96]
    mem[var48007 + (32 * mem[96]) + 32] = mem[96]
    mem[var48007 + (32 * _834) + 64 len 32 * _842] = mem[128 len 32 * _842]
    mem[_419 + 128] = var48007 + (32 * _834) + (32 * _842) + -_419 + 64
    _848 = mem[96]
    mem[var48007 + (32 * _834) + (32 * _842) + 64] = mem[96]
    mem[var48007 + (32 * _834) + (32 * _842) + 96 len 32 * _848] = mem[128 len 32 * _848]
    mem[_419 + 160] = s
    return memory
      from mem[64]
       len var48007 + (32 * _834) + (32 * _842) + (32 * _848) + -mem[64] + 96
}

function sub_6cf3ee27(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor0)
    staticcall stor0.0x1526fe27 with:
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
                staticcall stor0.0x1526fe27 with:
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
                    staticcall stor0.0x17caf6f1 with:
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
                                staticcall stor0.0x1526fe27 with:
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
                                        staticcall address(ext_call.return_data[0]).0xd21220a7 with:
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
                                                    if address(ext_call.return_data[0]) == stor5:
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
                                                        if ext_call.return_data[12 len 20] == stor5:
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
                                                                if ext_call.return_data[12 len 20] == stor2:
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
                                                                        if ext_call.return_data[12 len 20] != stor3:
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
                                                                                    if address(ext_call.return_data[0]) == stor8:
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
                                                                                        if ext_call.return_data[12 len 20] != stor8:
                                                                                            if address(ext_call.return_data[0]) == stor7:
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
                                                                                                if ext_call.return_data[12 len 20] != stor7:
                                                                                                    return ext_call.return_data[0], 
                                                                                                           ext_call.return_data[0],
                                                                                                           ext_call.return_data[32],
                                                                                                           ext_call.return_data[0],
                                                                                                           8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                                           0
                                                                                                else:
                                                                                                    if address(ext_call.return_data[0]) != stor7:
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
                                                                                            if address(ext_call.return_data[0]) != stor8:
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
}



}
