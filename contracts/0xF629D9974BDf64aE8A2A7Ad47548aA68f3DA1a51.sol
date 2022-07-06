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
address stor12;

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
           args stor10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor5)
    staticcall stor5.0x70a08231 with:
            gas gas_remaining wei
           args stor10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor8)
    staticcall stor8.0x70a08231 with:
            gas gas_remaining wei
           args stor11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args stor11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args stor12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor7)
    staticcall stor7.0x70a08231 with:
            gas gas_remaining wei
           args stor12
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
                                                                if address(ext_call.return_data[0]) == stor9:
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
                                                                    if ext_call.return_data[12 len 20] != stor9:
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
                                                                        if address(ext_call.return_data[0]) != stor9:
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
        _450 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _452 = mem[_450]
        require mem[_450] == mem[_450 + 12 len 20]
        require mem[_450 + 32] == mem[_450 + 32]
        require mem[_450 + 64] == mem[_450 + 64]
        require mem[_450 + 96] == mem[_450 + 96]
        mem[mem[64] + 4] = stor0
        require ext_code.size(address(_452))
        staticcall address(_452).0x70a08231 with:
                gas gas_remaining wei
               args stor0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _466 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_466] == mem[_466]
        require ext_code.size(address(_452))
        staticcall address(_452).0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _471 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_471] == mem[_471]
        require ext_code.size(stor0)
        staticcall stor0.0x1526fe27 with:
                gas gas_remaining wei
               args idx
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _475 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_475] == mem[_475 + 12 len 20]
        require mem[_475 + 32] == mem[_475 + 32]
        require mem[_475 + 64] == mem[_475 + 64]
        require mem[_475 + 96] == mem[_475 + 96]
        require ext_code.size(stor0)
        staticcall stor0.0x17caf6f1 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _482 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_482] == mem[_482]
        require ext_code.size(stor0)
        staticcall stor0.0x5f9bf689 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _486 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _487 = mem[_486]
        require mem[_486] == mem[_486]
        if mem[_486] > 0x883148f5cb1270b85273b667ae1cfdf5d70ac5a1ecccd54fe15c297df3:
            revert with 'NH{q', 17
        require ext_code.size(stor0)
        staticcall stor0.0x1526fe27 with:
                gas gas_remaining wei
               args idx
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _490 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _491 = mem[_490]
        require mem[_490] == mem[_490 + 12 len 20]
        require mem[_490 + 32] == mem[_490 + 32]
        require mem[_490 + 64] == mem[_490 + 64]
        require mem[_490 + 96] == mem[_490 + 96]
        require ext_code.size(mem[_490 + 12 len 20])
        staticcall mem[_490 + 12 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _497 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _498 = mem[_497]
        require mem[_497] == mem[_497 + 12 len 20]
        require ext_code.size(address(_491))
        staticcall address(_491).0xd21220a7 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _504 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _506 = mem[_504]
        require mem[_504] == mem[_504 + 12 len 20]
        if address(_498) == stor1:
            mem[mem[64] + 4] = address(_491)
            require ext_code.size(address(_498))
            staticcall address(_498).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_491)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _546 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_546] == mem[_546]
            if mem[_546] and 2 > -1 / mem[_546]:
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
            mem[(32 * idx) + 128] = 2 * mem[_546]
        else:
            if mem[_504 + 12 len 20] == stor1:
                mem[mem[64] + 4] = address(_491)
                if address(_498) == stor1:
                    require ext_code.size(address(_498))
                    staticcall address(_498).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_491)
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
                    if address(_498) == stor5:
                        require ext_code.size(address(_498))
                        staticcall address(_498).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_491)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _557 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_557] == mem[_557]
                        if mem[_557] and 2 > -1 / mem[_557]:
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
                        mem[(32 * idx) + 128] = 2 * mem[_557]
                    else:
                        if address(_498) != stor4:
                            require ext_code.size(address(_506))
                            staticcall address(_506).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_491)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _565 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_565] == mem[_565]
                            if mem[_565] and 2 > -1 / mem[_565]:
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
                            mem[(32 * idx) + 128] = 2 * mem[_565]
                        else:
                            require ext_code.size(address(_498))
                            staticcall address(_498).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_491)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _566 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_566] == mem[_566]
                            if mem[_566] and 2 > -1 / mem[_566]:
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
                            mem[(32 * idx) + 128] = 2 * mem[_566]
            else:
                if address(_498) == stor5:
                    mem[mem[64] + 4] = address(_491)
                    if address(_498) == stor1:
                        require ext_code.size(address(_498))
                        staticcall address(_498).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_491)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _558 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_558] == mem[_558]
                        if mem[_558] and 2 > -1 / mem[_558]:
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
                        mem[(32 * idx) + 128] = 2 * mem[_558]
                    else:
                        if address(_498) == stor5:
                            require ext_code.size(address(_498))
                            staticcall address(_498).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_491)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _567 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_567] == mem[_567]
                            if mem[_567] and 2 > -1 / mem[_567]:
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
                            mem[(32 * idx) + 128] = 2 * mem[_567]
                        else:
                            if address(_498) != stor4:
                                require ext_code.size(address(_506))
                                staticcall address(_506).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_491)
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
                                require ext_code.size(address(_498))
                                staticcall address(_498).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_491)
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
                    if mem[_504 + 12 len 20] == stor5:
                        mem[mem[64] + 4] = address(_491)
                        if address(_498) == stor1:
                            require ext_code.size(address(_498))
                            staticcall address(_498).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_491)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _568 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_568] == mem[_568]
                            if mem[_568] and 2 > -1 / mem[_568]:
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
                            mem[(32 * idx) + 128] = 2 * mem[_568]
                        else:
                            if address(_498) == stor5:
                                require ext_code.size(address(_498))
                                staticcall address(_498).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_491)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _577 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_577] == mem[_577]
                                if mem[_577] and 2 > -1 / mem[_577]:
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
                                mem[(32 * idx) + 128] = 2 * mem[_577]
                            else:
                                if address(_498) != stor4:
                                    require ext_code.size(address(_506))
                                    staticcall address(_506).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(_491)
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
                                    require ext_code.size(address(_498))
                                    staticcall address(_498).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(_491)
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
                        if address(_498) == stor2:
                            mem[mem[64] + 4] = address(_491)
                            if address(_498) == stor1:
                                require ext_code.size(address(_498))
                                staticcall address(_498).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_491)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _578 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_578] == mem[_578]
                                if mem[_578] and 2 > -1 / mem[_578]:
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
                                mem[(32 * idx) + 128] = 2 * mem[_578]
                            else:
                                if address(_498) == stor5:
                                    require ext_code.size(address(_498))
                                    staticcall address(_498).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(_491)
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
                                    if address(_498) != stor4:
                                        require ext_code.size(address(_506))
                                        staticcall address(_506).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(_491)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _600 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_600] == mem[_600]
                                        if mem[_600] and 2 > -1 / mem[_600]:
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
                                        mem[(32 * idx) + 128] = 2 * mem[_600]
                                    else:
                                        require ext_code.size(address(_498))
                                        staticcall address(_498).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(_491)
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
                            if mem[_504 + 12 len 20] == stor2:
                                mem[mem[64] + 4] = address(_491)
                                if address(_498) == stor1:
                                    require ext_code.size(address(_498))
                                    staticcall address(_498).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(_491)
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
                                    if address(_498) == stor5:
                                        require ext_code.size(address(_498))
                                        staticcall address(_498).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(_491)
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
                                        if address(_498) != stor4:
                                            require ext_code.size(address(_506))
                                            staticcall address(_506).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(_491)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _614 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_614] == mem[_614]
                                            if mem[_614] and 2 > -1 / mem[_614]:
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
                                            mem[(32 * idx) + 128] = 2 * mem[_614]
                                        else:
                                            require ext_code.size(address(_498))
                                            staticcall address(_498).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(_491)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _615 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_615] == mem[_615]
                                            if mem[_615] and 2 > -1 / mem[_615]:
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
                                            mem[(32 * idx) + 128] = 2 * mem[_615]
                            else:
                                if address(_498) == stor3:
                                    mem[mem[64] + 4] = address(_491)
                                    if address(_498) == stor1:
                                        require ext_code.size(address(_498))
                                        staticcall address(_498).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(_491)
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
                                        if address(_498) == stor5:
                                            require ext_code.size(address(_498))
                                            staticcall address(_498).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(_491)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _616 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_616] == mem[_616]
                                            if mem[_616] and 2 > -1 / mem[_616]:
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
                                            mem[(32 * idx) + 128] = 2 * mem[_616]
                                        else:
                                            if address(_498) != stor4:
                                                require ext_code.size(address(_506))
                                                staticcall address(_506).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(_491)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _627 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_627] == mem[_627]
                                                if mem[_627] and 2 > -1 / mem[_627]:
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
                                                mem[(32 * idx) + 128] = 2 * mem[_627]
                                            else:
                                                require ext_code.size(address(_498))
                                                staticcall address(_498).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(_491)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _628 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_628] == mem[_628]
                                                if mem[_628] and 2 > -1 / mem[_628]:
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
                                                mem[(32 * idx) + 128] = 2 * mem[_628]
                                else:
                                    if mem[_504 + 12 len 20] == stor3:
                                        mem[mem[64] + 4] = address(_491)
                                        if address(_498) == stor1:
                                            require ext_code.size(address(_498))
                                            staticcall address(_498).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(_491)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _620 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_620] == mem[_620]
                                            if mem[_620] and 2 > -1 / mem[_620]:
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
                                            mem[(32 * idx) + 128] = 2 * mem[_620]
                                        else:
                                            if address(_498) == stor5:
                                                require ext_code.size(address(_498))
                                                staticcall address(_498).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(_491)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _632 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_632] == mem[_632]
                                                if mem[_632] and 2 > -1 / mem[_632]:
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
                                                mem[(32 * idx) + 128] = 2 * mem[_632]
                                            else:
                                                if address(_498) != stor4:
                                                    require ext_code.size(address(_506))
                                                    staticcall address(_506).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(_491)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _639 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_639] == mem[_639]
                                                    if mem[_639] and 2 > -1 / mem[_639]:
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
                                                    mem[(32 * idx) + 128] = 2 * mem[_639]
                                                else:
                                                    require ext_code.size(address(_498))
                                                    staticcall address(_498).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(_491)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _640 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_640] == mem[_640]
                                                    if mem[_640] and 2 > -1 / mem[_640]:
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
                                                    mem[(32 * idx) + 128] = 2 * mem[_640]
                                    else:
                                        if address(_498) == stor6:
                                            mem[mem[64] + 4] = address(_491)
                                            require ext_code.size(address(_498))
                                            staticcall address(_498).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(_491)
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
                                            if mem[_504 + 12 len 20] == stor6:
                                                mem[mem[64] + 4] = address(_491)
                                                if address(_498) != stor6:
                                                    require ext_code.size(address(_506))
                                                    staticcall address(_506).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(_491)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _630 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_630] == mem[_630]
                                                    if mem[_630] and 2 > -1 / mem[_630]:
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
                                                    mem[(32 * idx) + 128] = 2 * mem[_630]
                                                else:
                                                    require ext_code.size(address(_498))
                                                    staticcall address(_498).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(_491)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _631 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_631] == mem[_631]
                                                    if mem[_631] and 2 > -1 / mem[_631]:
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
                                                    mem[(32 * idx) + 128] = 2 * mem[_631]
                                            else:
                                                if address(_498) == stor8:
                                                    mem[mem[64] + 4] = address(_491)
                                                    require ext_code.size(address(_498))
                                                    staticcall address(_498).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(_491)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _645 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_645] == mem[_645]
                                                    if mem[_645] and 2 > -1 / mem[_645]:
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
                                                    mem[(32 * idx) + 128] = 2 * mem[_645]
                                                else:
                                                    if mem[_504 + 12 len 20] == stor8:
                                                        mem[mem[64] + 4] = address(_491)
                                                        if address(_498) != stor8:
                                                            require ext_code.size(address(_506))
                                                            staticcall address(_506).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args address(_491)
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _650 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_650] == mem[_650]
                                                            if mem[_650] and 2 > -1 / mem[_650]:
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
                                                            mem[(32 * idx) + 128] = 2 * mem[_650]
                                                        else:
                                                            require ext_code.size(address(_498))
                                                            staticcall address(_498).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args address(_491)
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _651 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_651] == mem[_651]
                                                            if mem[_651] and 2 > -1 / mem[_651]:
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
                                                            mem[(32 * idx) + 128] = 2 * mem[_651]
                                                    else:
                                                        if address(_498) == stor9:
                                                            mem[mem[64] + 4] = address(_491)
                                                            require ext_code.size(address(_498))
                                                            staticcall address(_498).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args address(_491)
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _661 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_661] == mem[_661]
                                                            if mem[_661] and 2 > -1 / mem[_661]:
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
                                                            mem[(32 * idx) + 128] = 2 * mem[_661]
                                                        else:
                                                            if mem[_504 + 12 len 20] == stor9:
                                                                mem[mem[64] + 4] = address(_491)
                                                                if address(_498) != stor9:
                                                                    require ext_code.size(address(_506))
                                                                    staticcall address(_506).0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args address(_491)
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _665 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_665] == mem[_665]
                                                                    if mem[_665] and 2 > -1 / mem[_665]:
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
                                                                    mem[(32 * idx) + 128] = 2 * mem[_665]
                                                                else:
                                                                    require ext_code.size(address(_498))
                                                                    staticcall address(_498).0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args address(_491)
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _666 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_666] == mem[_666]
                                                                    if mem[_666] and 2 > -1 / mem[_666]:
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
                                                                    mem[(32 * idx) + 128] = 2 * mem[_666]
                                                            else:
                                                                if address(_498) == stor7:
                                                                    mem[mem[64] + 4] = address(_491)
                                                                    require ext_code.size(address(_498))
                                                                    staticcall address(_498).0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args address(_491)
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _673 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_673] == mem[_673]
                                                                    if mem[_673] and 2 > -1 / mem[_673]:
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
                                                                    mem[(32 * idx) + 128] = 2 * mem[_673]
                                                                else:
                                                                    if mem[_504 + 12 len 20] != stor7:
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
                                                                        mem[mem[64] + 4] = address(_491)
                                                                        if address(_498) != stor7:
                                                                            require ext_code.size(address(_506))
                                                                            staticcall address(_506).0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(_491)
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            _675 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_675] == mem[_675]
                                                                            if mem[_675] and 2 > -1 / mem[_675]:
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
                                                                            mem[(32 * idx) + 128] = 2 * mem[_675]
                                                                        else:
                                                                            require ext_code.size(address(_498))
                                                                            staticcall address(_498).0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(_491)
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            _676 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_676] == mem[_676]
                                                                            if mem[_676] and 2 > -1 / mem[_676]:
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
                                                                            mem[(32 * idx) + 128] = 2 * mem[_676]
        if idx == -1:
            revert with 'NH{q', 17
        if idx != ext_call.return_data[0]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 8760 * 24 * 3600 * _487
        continue 
    _446 = mem[64]
    mem[mem[64]] = 192
    mem[mem[64] + 192] = mem[96]
    mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 32] = (32 * mem[96]) + 224
    mem[mem[64] + (32 * mem[96]) + 224] = mem[96]
    mem[mem[64] + (32 * mem[96]) + 256 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    var48007 = mem[64] + (64 * mem[96]) + 256
    mem[mem[64] + 64] = (64 * mem[96]) + 256
    _888 = mem[96]
    mem[mem[64] + (64 * mem[96]) + 256] = mem[96]
    mem[mem[64] + (64 * mem[96]) + 288 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 96] = (98 * mem[96]) + 288
    _896 = mem[96]
    mem[var48007 + (32 * mem[96]) + 32] = mem[96]
    mem[var48007 + (32 * _888) + 64 len 32 * _896] = mem[128 len 32 * _896]
    mem[_446 + 128] = var48007 + (32 * _888) + (32 * _896) + -_446 + 64
    _902 = mem[96]
    mem[var48007 + (32 * _888) + (32 * _896) + 64] = mem[96]
    mem[var48007 + (32 * _888) + (32 * _896) + 96 len 32 * _902] = mem[128 len 32 * _902]
    mem[_446 + 160] = s
    return memory
      from mem[64]
       len var48007 + (32 * _888) + (32 * _896) + (32 * _902) + -mem[64] + 96
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
                                                                                            if address(ext_call.return_data[0]) == stor9:
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
                                                                                                if ext_call.return_data[12 len 20] != stor9:
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
                                                                                                    if address(ext_call.return_data[0]) != stor9:
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
