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
address stor11;
address stor12;
address stor13;
address stor14;

function _fallback() payable {
    revert
}

function sub_821977b4(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor0)
    staticcall stor0.poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor0)
    staticcall stor0.totalAllocPoint() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[32], ext_call.return_data[0]
}

function sub_fc0a43f6(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(stor0)
    staticcall stor0.0xfb39d1e3 with:
            gas gas_remaining wei
           args arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    staticcall stor0.0x7e668b42 with:
            gas gas_remaining wei
           args arg1, ext_call.return_data[0], arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(stor0)
    staticcall stor0.0x9f6c5426 with:
            gas gas_remaining wei
           args arg1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[0]
}

function sub_bd7dd61f(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor0)
    staticcall stor0.poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0]
}

function sub_1f45c7a9(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor0)
    staticcall stor0.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    require ext_code.size(stor0)
    staticcall stor0.poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0]
}

function sub_da3398c1(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor0)
    staticcall stor0.poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor0)
    staticcall stor0.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0]
}

function sub_54de171c(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor0)
    staticcall stor0.poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor0)
    staticcall stor0.totalAllocPoint() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    staticcall stor0.0x5f9bf689 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x883148f5cb1270b85273b667ae1cfdf5d70ac5a1ecccd54fe15c297df3:
        revert with 0, 17
    return ext_call.return_data[32], ext_call.return_data[0], 8760 * 24 * 3600 * ext_call.return_data[0]
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
        if not mem[_15]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s > !mem[_15]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[_15]
        continue 
    return s
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
                call stor0.deposit(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args idx, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_c12f85cf(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor0)
    staticcall stor0.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    require ext_code.size(stor0)
    staticcall stor0.poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    staticcall stor0.poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor0)
    staticcall stor0.totalAllocPoint() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    staticcall stor0.0x5f9bf689 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x883148f5cb1270b85273b667ae1cfdf5d70ac5a1ecccd54fe15c297df3:
        revert with 0, 17
    return ext_call.return_data[0], 
           ext_call.return_data[0],
           ext_call.return_data[32],
           ext_call.return_data[0],
           8760 * 24 * 3600 * ext_call.return_data[0]
}

function sub_f745034c(?) payable {
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args stor11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor5)
    staticcall stor5.0x70a08231 with:
            gas gas_remaining wei
           args stor11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor8)
    staticcall stor8.0x70a08231 with:
            gas gas_remaining wei
           args stor12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args stor12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args stor13
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor7)
    staticcall stor7.0x70a08231 with:
            gas gas_remaining wei
           args stor13
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args stor14
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args stor14
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], 
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0]
}

function sub_5fa46383(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor0)
    staticcall stor0.poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 128
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
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
                if stor1 == address(ext_call.return_data[0]):
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        else:
                            return (2 * ext_call.return_data[0])
                else:
                    if stor1 == ext_call.return_data[12 len 20]:
                        if stor1 == address(ext_call.return_data[0]):
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 17
                                else:
                                    return (2 * ext_call.return_data[0])
                        else:
                            if stor5 == address(ext_call.return_data[0]):
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(ext_call.return_data[0])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    else:
                                        return (2 * ext_call.return_data[0])
                            else:
                                if stor4 != address(ext_call.return_data[0]):
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
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
                                        if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        else:
                                            return (2 * ext_call.return_data[0])
                    else:
                        if stor5 == address(ext_call.return_data[0]):
                            if stor1 == address(ext_call.return_data[0]):
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(ext_call.return_data[0])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    else:
                                        return (2 * ext_call.return_data[0])
                            else:
                                if stor5 == address(ext_call.return_data[0]):
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        else:
                                            return (2 * ext_call.return_data[0])
                                else:
                                    if stor4 != address(ext_call.return_data[0]):
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(ext_call.return_data[0])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 17
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
                                            if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 17
                                            else:
                                                return (2 * ext_call.return_data[0])
                        else:
                            if stor5 == ext_call.return_data[12 len 20]:
                                if stor1 == address(ext_call.return_data[0]):
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        else:
                                            return (2 * ext_call.return_data[0])
                                else:
                                    if stor5 == address(ext_call.return_data[0]):
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(ext_call.return_data[0])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 17
                                            else:
                                                return (2 * ext_call.return_data[0])
                                    else:
                                        if stor4 != address(ext_call.return_data[0]):
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 17
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
                                                if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 17
                                                else:
                                                    return (2 * ext_call.return_data[0])
                            else:
                                if stor2 == address(ext_call.return_data[0]):
                                    if stor1 == address(ext_call.return_data[0]):
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(ext_call.return_data[0])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 17
                                            else:
                                                return (2 * ext_call.return_data[0])
                                    else:
                                        if stor5 == address(ext_call.return_data[0]):
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 17
                                                else:
                                                    return (2 * ext_call.return_data[0])
                                        else:
                                            if stor4 != address(ext_call.return_data[0]):
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 17
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
                                                    if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 17
                                                    else:
                                                        return (2 * ext_call.return_data[0])
                                else:
                                    if stor2 == ext_call.return_data[12 len 20]:
                                        if stor1 == address(ext_call.return_data[0]):
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 17
                                                else:
                                                    return (2 * ext_call.return_data[0])
                                        else:
                                            if stor5 == address(ext_call.return_data[0]):
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 17
                                                    else:
                                                        return (2 * ext_call.return_data[0])
                                            else:
                                                if stor4 != address(ext_call.return_data[0]):
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 17
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
                                                        if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 17
                                                        else:
                                                            return (2 * ext_call.return_data[0])
                                    else:
                                        if stor3 == address(ext_call.return_data[0]):
                                            if stor1 == address(ext_call.return_data[0]):
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 17
                                                    else:
                                                        return (2 * ext_call.return_data[0])
                                            else:
                                                if stor5 == address(ext_call.return_data[0]):
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 17
                                                        else:
                                                            return (2 * ext_call.return_data[0])
                                                else:
                                                    if stor4 != address(ext_call.return_data[0]):
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                revert with 0, 17
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
                                                            if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                revert with 0, 17
                                                            else:
                                                                return (2 * ext_call.return_data[0])
                                        else:
                                            if stor3 == ext_call.return_data[12 len 20]:
                                                if stor1 == address(ext_call.return_data[0]):
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 17
                                                        else:
                                                            return (2 * ext_call.return_data[0])
                                                else:
                                                    if stor5 == address(ext_call.return_data[0]):
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                revert with 0, 17
                                                            else:
                                                                return (2 * ext_call.return_data[0])
                                                    else:
                                                        if stor4 != address(ext_call.return_data[0]):
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                    revert with 0, 17
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
                                                                if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                    revert with 0, 17
                                                                else:
                                                                    return (2 * ext_call.return_data[0])
                                            else:
                                                if stor4 == address(ext_call.return_data[0]):
                                                    if stor1 == address(ext_call.return_data[0]):
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                revert with 0, 17
                                                            else:
                                                                return (2 * ext_call.return_data[0])
                                                    else:
                                                        if stor5 == address(ext_call.return_data[0]):
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                    revert with 0, 17
                                                                else:
                                                                    return (2 * ext_call.return_data[0])
                                                        else:
                                                            if stor4 != address(ext_call.return_data[0]):
                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                        revert with 0, 17
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
                                                                    if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                        revert with 0, 17
                                                                    else:
                                                                        return (2 * ext_call.return_data[0])
                                                else:
                                                    if stor4 != ext_call.return_data[12 len 20]:
                                                        if stor6 == address(ext_call.return_data[0]):
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                    revert with 0, 17
                                                                else:
                                                                    return (2 * ext_call.return_data[0])
                                                        else:
                                                            if stor6 != ext_call.return_data[12 len 20]:
                                                                if stor8 == address(ext_call.return_data[0]):
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                            revert with 0, 17
                                                                        else:
                                                                            return (2 * ext_call.return_data[0])
                                                                else:
                                                                    if stor8 != ext_call.return_data[12 len 20]:
                                                                        if stor9 == address(ext_call.return_data[0]):
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(ext_call.return_data[0])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    return (2 * ext_call.return_data[0])
                                                                        else:
                                                                            if stor9 != ext_call.return_data[12 len 20]:
                                                                                if stor7 == address(ext_call.return_data[0]):
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                            gas gas_remaining wei
                                                                                           args address(ext_call.return_data[0])
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            return (2 * ext_call.return_data[0])
                                                                                else:
                                                                                    if stor7 != ext_call.return_data[12 len 20]:
                                                                                        return 0
                                                                                    else:
                                                                                        if stor7 != address(ext_call.return_data[0]):
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                                    gas gas_remaining wei
                                                                                                   args address(ext_call.return_data[0])
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                    revert with 0, 17
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
                                                                                                if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                    revert with 0, 17
                                                                                                else:
                                                                                                    return (2 * ext_call.return_data[0])
                                                                            else:
                                                                                if stor9 != address(ext_call.return_data[0]):
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                            gas gas_remaining wei
                                                                                           args address(ext_call.return_data[0])
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                            revert with 0, 17
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
                                                                                        if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            return (2 * ext_call.return_data[0])
                                                                    else:
                                                                        if stor8 != address(ext_call.return_data[0]):
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(ext_call.return_data[0])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                    revert with 0, 17
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
                                                                                if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    return (2 * ext_call.return_data[0])
                                                            else:
                                                                if stor6 != address(ext_call.return_data[0]):
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                            revert with 0, 17
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
                                                                        if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                            revert with 0, 17
                                                                        else:
                                                                            return (2 * ext_call.return_data[0])
                                                    else:
                                                        if stor1 == address(ext_call.return_data[0]):
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                    revert with 0, 17
                                                                else:
                                                                    return (2 * ext_call.return_data[0])
                                                        else:
                                                            if stor5 == address(ext_call.return_data[0]):
                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                        revert with 0, 17
                                                                    else:
                                                                        return (2 * ext_call.return_data[0])
                                                            else:
                                                                if stor4 != address(ext_call.return_data[0]):
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                            revert with 0, 17
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
                                                                        if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                            revert with 0, 17
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
        _512 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _515 = mem[_512]
        require mem[_512] == mem[_512 + 12 len 20]
        require ext_code.size(mem[_512 + 12 len 20])
        staticcall mem[_512 + 12 len 20].0x70a08231 with:
                gas gas_remaining wei
               args stor0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require ext_code.size(address(_515))
        staticcall address(_515).0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require ext_code.size(stor0)
        staticcall stor0.poolInfo(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _537 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_537] == mem[_537 + 12 len 20]
        require ext_code.size(stor0)
        staticcall stor0.totalAllocPoint() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require ext_code.size(stor0)
        staticcall stor0.0x5f9bf689 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _548 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _549 = mem[_548]
        if mem[_548] > 0x883148f5cb1270b85273b667ae1cfdf5d70ac5a1ecccd54fe15c297df3:
            revert with 0, 17
        require ext_code.size(stor0)
        staticcall stor0.poolInfo(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _552 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _553 = mem[_552]
        require mem[_552] == mem[_552 + 12 len 20]
        require ext_code.size(mem[_552 + 12 len 20])
        staticcall mem[_552 + 12 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _559 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _560 = mem[_559]
        require mem[_559] == mem[_559 + 12 len 20]
        require ext_code.size(address(_553))
        staticcall address(_553).0xd21220a7 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _563 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _564 = mem[_563]
        require mem[_563] == mem[_563 + 12 len 20]
        if stor1 == address(_560):
            mem[mem[64] + 4] = address(_553)
            require ext_code.size(address(_560))
            staticcall address(_560).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_553)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _571 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_571] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = 2 * mem[_571]
        else:
            if stor1 == mem[_563 + 12 len 20]:
                mem[mem[64] + 4] = address(_553)
                if stor1 == address(_560):
                    require ext_code.size(address(_560))
                    staticcall address(_560).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_553)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _578 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_578] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if idx >= mem[96]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = 2 * mem[_578]
                else:
                    if stor5 == address(_560):
                        require ext_code.size(address(_560))
                        staticcall address(_560).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_553)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _588 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_588] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if idx >= mem[96]:
                            revert with 0, 50
                        if idx >= mem[96]:
                            revert with 0, 50
                        if idx >= mem[96]:
                            revert with 0, 50
                        if idx >= mem[96]:
                            revert with 0, 50
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = 2 * mem[_588]
                    else:
                        if stor4 != address(_560):
                            require ext_code.size(address(_564))
                            staticcall address(_564).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_553)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _599 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_599] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            if idx >= mem[96]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = 2 * mem[_599]
                        else:
                            require ext_code.size(address(_560))
                            staticcall address(_560).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_553)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _600 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_600] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            if idx >= mem[96]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = 2 * mem[_600]
            else:
                if stor5 == address(_560):
                    mem[mem[64] + 4] = address(_553)
                    if stor1 == address(_560):
                        require ext_code.size(address(_560))
                        staticcall address(_560).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_553)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _589 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_589] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if idx >= mem[96]:
                            revert with 0, 50
                        if idx >= mem[96]:
                            revert with 0, 50
                        if idx >= mem[96]:
                            revert with 0, 50
                        if idx >= mem[96]:
                            revert with 0, 50
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = 2 * mem[_589]
                    else:
                        if stor5 == address(_560):
                            require ext_code.size(address(_560))
                            staticcall address(_560).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_553)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _601 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_601] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            if idx >= mem[96]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = 2 * mem[_601]
                        else:
                            if stor4 != address(_560):
                                require ext_code.size(address(_564))
                                staticcall address(_564).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_553)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _613 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_613] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 17
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = 2 * mem[_613]
                            else:
                                require ext_code.size(address(_560))
                                staticcall address(_560).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_553)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _614 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_614] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 17
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = 2 * mem[_614]
                else:
                    if stor5 == mem[_563 + 12 len 20]:
                        mem[mem[64] + 4] = address(_553)
                        if stor1 == address(_560):
                            require ext_code.size(address(_560))
                            staticcall address(_560).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_553)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _602 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_602] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            if idx >= mem[96]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = 2 * mem[_602]
                        else:
                            if stor5 == address(_560):
                                require ext_code.size(address(_560))
                                staticcall address(_560).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_553)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _615 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_615] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 17
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = 2 * mem[_615]
                            else:
                                if stor4 != address(_560):
                                    require ext_code.size(address(_564))
                                    staticcall address(_564).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(_553)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _629 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_629] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = 2 * mem[_629]
                                else:
                                    require ext_code.size(address(_560))
                                    staticcall address(_560).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(_553)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _630 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_630] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = 2 * mem[_630]
                    else:
                        if stor2 == address(_560):
                            mem[mem[64] + 4] = address(_553)
                            if stor1 == address(_560):
                                require ext_code.size(address(_560))
                                staticcall address(_560).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_553)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _616 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_616] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 17
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = 2 * mem[_616]
                            else:
                                if stor5 == address(_560):
                                    require ext_code.size(address(_560))
                                    staticcall address(_560).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(_553)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _631 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_631] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = 2 * mem[_631]
                                else:
                                    if stor4 != address(_560):
                                        require ext_code.size(address(_564))
                                        staticcall address(_564).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(_553)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _645 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_645] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = 2 * mem[_645]
                                    else:
                                        require ext_code.size(address(_560))
                                        staticcall address(_560).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(_553)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _646 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_646] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = 2 * mem[_646]
                        else:
                            if stor2 == mem[_563 + 12 len 20]:
                                mem[mem[64] + 4] = address(_553)
                                if stor1 == address(_560):
                                    require ext_code.size(address(_560))
                                    staticcall address(_560).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(_553)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _632 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_632] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = 2 * mem[_632]
                                else:
                                    if stor5 == address(_560):
                                        require ext_code.size(address(_560))
                                        staticcall address(_560).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(_553)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _647 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_647] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = 2 * mem[_647]
                                    else:
                                        if stor4 != address(_560):
                                            require ext_code.size(address(_564))
                                            staticcall address(_564).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(_553)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _662 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_662] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 17
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = 2 * mem[_662]
                                        else:
                                            require ext_code.size(address(_560))
                                            staticcall address(_560).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(_553)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _663 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_663] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 17
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = 2 * mem[_663]
                            else:
                                if stor3 == address(_560):
                                    mem[mem[64] + 4] = address(_553)
                                    if stor1 == address(_560):
                                        require ext_code.size(address(_560))
                                        staticcall address(_560).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(_553)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _648 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_648] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = 2 * mem[_648]
                                    else:
                                        if stor5 == address(_560):
                                            require ext_code.size(address(_560))
                                            staticcall address(_560).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(_553)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _664 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_664] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 17
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = 2 * mem[_664]
                                        else:
                                            if stor4 != address(_560):
                                                require ext_code.size(address(_564))
                                                staticcall address(_564).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(_553)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _680 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_680] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 17
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                mem[(32 * idx) + 128] = 2 * mem[_680]
                                            else:
                                                require ext_code.size(address(_560))
                                                staticcall address(_560).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(_553)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _681 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_681] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 17
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                mem[(32 * idx) + 128] = 2 * mem[_681]
                                else:
                                    if stor3 == mem[_563 + 12 len 20]:
                                        mem[mem[64] + 4] = address(_553)
                                        if stor1 == address(_560):
                                            require ext_code.size(address(_560))
                                            staticcall address(_560).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(_553)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _665 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_665] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 17
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = 2 * mem[_665]
                                        else:
                                            if stor5 == address(_560):
                                                require ext_code.size(address(_560))
                                                staticcall address(_560).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(_553)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _682 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_682] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 17
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                mem[(32 * idx) + 128] = 2 * mem[_682]
                                            else:
                                                if stor4 != address(_560):
                                                    require ext_code.size(address(_564))
                                                    staticcall address(_564).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(_553)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _696 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_696] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 17
                                                    if idx >= mem[96]:
                                                        revert with 0, 50
                                                    if idx >= mem[96]:
                                                        revert with 0, 50
                                                    if idx >= mem[96]:
                                                        revert with 0, 50
                                                    if idx >= mem[96]:
                                                        revert with 0, 50
                                                    if idx >= mem[96]:
                                                        revert with 0, 50
                                                    mem[(32 * idx) + 128] = 2 * mem[_696]
                                                else:
                                                    require ext_code.size(address(_560))
                                                    staticcall address(_560).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(_553)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _697 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_697] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 17
                                                    if idx >= mem[96]:
                                                        revert with 0, 50
                                                    if idx >= mem[96]:
                                                        revert with 0, 50
                                                    if idx >= mem[96]:
                                                        revert with 0, 50
                                                    if idx >= mem[96]:
                                                        revert with 0, 50
                                                    if idx >= mem[96]:
                                                        revert with 0, 50
                                                    mem[(32 * idx) + 128] = 2 * mem[_697]
                                    else:
                                        if stor4 == address(_560):
                                            mem[mem[64] + 4] = address(_553)
                                            if stor1 == address(_560):
                                                require ext_code.size(address(_560))
                                                staticcall address(_560).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(_553)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _683 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_683] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 17
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                mem[(32 * idx) + 128] = 2 * mem[_683]
                                            else:
                                                if stor5 == address(_560):
                                                    require ext_code.size(address(_560))
                                                    staticcall address(_560).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(_553)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _698 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_698] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 17
                                                    if idx >= mem[96]:
                                                        revert with 0, 50
                                                    if idx >= mem[96]:
                                                        revert with 0, 50
                                                    if idx >= mem[96]:
                                                        revert with 0, 50
                                                    if idx >= mem[96]:
                                                        revert with 0, 50
                                                    if idx >= mem[96]:
                                                        revert with 0, 50
                                                    mem[(32 * idx) + 128] = 2 * mem[_698]
                                                else:
                                                    if stor4 != address(_560):
                                                        require ext_code.size(address(_564))
                                                        staticcall address(_564).0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(_553)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _710 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        if mem[_710] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 17
                                                        if idx >= mem[96]:
                                                            revert with 0, 50
                                                        if idx >= mem[96]:
                                                            revert with 0, 50
                                                        if idx >= mem[96]:
                                                            revert with 0, 50
                                                        if idx >= mem[96]:
                                                            revert with 0, 50
                                                        if idx >= mem[96]:
                                                            revert with 0, 50
                                                        mem[(32 * idx) + 128] = 2 * mem[_710]
                                                    else:
                                                        require ext_code.size(address(_560))
                                                        staticcall address(_560).0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(_553)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _711 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        if mem[_711] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 17
                                                        if idx >= mem[96]:
                                                            revert with 0, 50
                                                        if idx >= mem[96]:
                                                            revert with 0, 50
                                                        if idx >= mem[96]:
                                                            revert with 0, 50
                                                        if idx >= mem[96]:
                                                            revert with 0, 50
                                                        if idx >= mem[96]:
                                                            revert with 0, 50
                                                        mem[(32 * idx) + 128] = 2 * mem[_711]
                                        else:
                                            if stor4 == mem[_563 + 12 len 20]:
                                                mem[mem[64] + 4] = address(_553)
                                                if stor1 == address(_560):
                                                    require ext_code.size(address(_560))
                                                    staticcall address(_560).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(_553)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _701 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_701] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 17
                                                    if idx >= mem[96]:
                                                        revert with 0, 50
                                                    if idx >= mem[96]:
                                                        revert with 0, 50
                                                    if idx >= mem[96]:
                                                        revert with 0, 50
                                                    if idx >= mem[96]:
                                                        revert with 0, 50
                                                    if idx >= mem[96]:
                                                        revert with 0, 50
                                                    mem[(32 * idx) + 128] = 2 * mem[_701]
                                                else:
                                                    if stor5 == address(_560):
                                                        require ext_code.size(address(_560))
                                                        staticcall address(_560).0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(_553)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _717 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        if mem[_717] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 17
                                                        if idx >= mem[96]:
                                                            revert with 0, 50
                                                        if idx >= mem[96]:
                                                            revert with 0, 50
                                                        if idx >= mem[96]:
                                                            revert with 0, 50
                                                        if idx >= mem[96]:
                                                            revert with 0, 50
                                                        if idx >= mem[96]:
                                                            revert with 0, 50
                                                        mem[(32 * idx) + 128] = 2 * mem[_717]
                                                    else:
                                                        if stor4 != address(_560):
                                                            require ext_code.size(address(_564))
                                                            staticcall address(_564).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args address(_553)
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _729 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            if mem[_729] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                revert with 0, 17
                                                            if idx >= mem[96]:
                                                                revert with 0, 50
                                                            if idx >= mem[96]:
                                                                revert with 0, 50
                                                            if idx >= mem[96]:
                                                                revert with 0, 50
                                                            if idx >= mem[96]:
                                                                revert with 0, 50
                                                            if idx >= mem[96]:
                                                                revert with 0, 50
                                                            mem[(32 * idx) + 128] = 2 * mem[_729]
                                                        else:
                                                            require ext_code.size(address(_560))
                                                            staticcall address(_560).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args address(_553)
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _730 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            if mem[_730] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                revert with 0, 17
                                                            if idx >= mem[96]:
                                                                revert with 0, 50
                                                            if idx >= mem[96]:
                                                                revert with 0, 50
                                                            if idx >= mem[96]:
                                                                revert with 0, 50
                                                            if idx >= mem[96]:
                                                                revert with 0, 50
                                                            if idx >= mem[96]:
                                                                revert with 0, 50
                                                            mem[(32 * idx) + 128] = 2 * mem[_730]
                                            else:
                                                if stor6 == address(_560):
                                                    mem[mem[64] + 4] = address(_553)
                                                    require ext_code.size(address(_560))
                                                    staticcall address(_560).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(_553)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _699 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_699] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 17
                                                    if idx >= mem[96]:
                                                        revert with 0, 50
                                                    if idx >= mem[96]:
                                                        revert with 0, 50
                                                    if idx >= mem[96]:
                                                        revert with 0, 50
                                                    if idx >= mem[96]:
                                                        revert with 0, 50
                                                    if idx >= mem[96]:
                                                        revert with 0, 50
                                                    mem[(32 * idx) + 128] = 2 * mem[_699]
                                                else:
                                                    if stor6 == mem[_563 + 12 len 20]:
                                                        mem[mem[64] + 4] = address(_553)
                                                        if stor6 != address(_560):
                                                            require ext_code.size(address(_564))
                                                            staticcall address(_564).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args address(_553)
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _715 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            if mem[_715] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                revert with 0, 17
                                                            if idx >= mem[96]:
                                                                revert with 0, 50
                                                            if idx >= mem[96]:
                                                                revert with 0, 50
                                                            if idx >= mem[96]:
                                                                revert with 0, 50
                                                            if idx >= mem[96]:
                                                                revert with 0, 50
                                                            if idx >= mem[96]:
                                                                revert with 0, 50
                                                            mem[(32 * idx) + 128] = 2 * mem[_715]
                                                        else:
                                                            require ext_code.size(address(_560))
                                                            staticcall address(_560).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args address(_553)
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _716 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            if mem[_716] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                revert with 0, 17
                                                            if idx >= mem[96]:
                                                                revert with 0, 50
                                                            if idx >= mem[96]:
                                                                revert with 0, 50
                                                            if idx >= mem[96]:
                                                                revert with 0, 50
                                                            if idx >= mem[96]:
                                                                revert with 0, 50
                                                            if idx >= mem[96]:
                                                                revert with 0, 50
                                                            mem[(32 * idx) + 128] = 2 * mem[_716]
                                                    else:
                                                        if stor8 == address(_560):
                                                            mem[mem[64] + 4] = address(_553)
                                                            require ext_code.size(address(_560))
                                                            staticcall address(_560).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args address(_553)
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _741 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            if mem[_741] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                revert with 0, 17
                                                            if idx >= mem[96]:
                                                                revert with 0, 50
                                                            if idx >= mem[96]:
                                                                revert with 0, 50
                                                            if idx >= mem[96]:
                                                                revert with 0, 50
                                                            if idx >= mem[96]:
                                                                revert with 0, 50
                                                            if idx >= mem[96]:
                                                                revert with 0, 50
                                                            mem[(32 * idx) + 128] = 2 * mem[_741]
                                                        else:
                                                            if stor8 == mem[_563 + 12 len 20]:
                                                                mem[mem[64] + 4] = address(_553)
                                                                if stor8 != address(_560):
                                                                    require ext_code.size(address(_564))
                                                                    staticcall address(_564).0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args address(_553)
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _761 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    if mem[_761] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                        revert with 0, 17
                                                                    if idx >= mem[96]:
                                                                        revert with 0, 50
                                                                    if idx >= mem[96]:
                                                                        revert with 0, 50
                                                                    if idx >= mem[96]:
                                                                        revert with 0, 50
                                                                    if idx >= mem[96]:
                                                                        revert with 0, 50
                                                                    if idx >= mem[96]:
                                                                        revert with 0, 50
                                                                    mem[(32 * idx) + 128] = 2 * mem[_761]
                                                                else:
                                                                    require ext_code.size(address(_560))
                                                                    staticcall address(_560).0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args address(_553)
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _762 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    if mem[_762] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                        revert with 0, 17
                                                                    if idx >= mem[96]:
                                                                        revert with 0, 50
                                                                    if idx >= mem[96]:
                                                                        revert with 0, 50
                                                                    if idx >= mem[96]:
                                                                        revert with 0, 50
                                                                    if idx >= mem[96]:
                                                                        revert with 0, 50
                                                                    if idx >= mem[96]:
                                                                        revert with 0, 50
                                                                    mem[(32 * idx) + 128] = 2 * mem[_762]
                                                            else:
                                                                if stor9 == address(_560):
                                                                    mem[mem[64] + 4] = address(_553)
                                                                    require ext_code.size(address(_560))
                                                                    staticcall address(_560).0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args address(_553)
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _801 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    if mem[_801] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                        revert with 0, 17
                                                                    if idx >= mem[96]:
                                                                        revert with 0, 50
                                                                    if idx >= mem[96]:
                                                                        revert with 0, 50
                                                                    if idx >= mem[96]:
                                                                        revert with 0, 50
                                                                    if idx >= mem[96]:
                                                                        revert with 0, 50
                                                                    if idx >= mem[96]:
                                                                        revert with 0, 50
                                                                    mem[(32 * idx) + 128] = 2 * mem[_801]
                                                                else:
                                                                    if stor9 == mem[_563 + 12 len 20]:
                                                                        mem[mem[64] + 4] = address(_553)
                                                                        if stor9 != address(_560):
                                                                            require ext_code.size(address(_564))
                                                                            staticcall address(_564).0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(_553)
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            _829 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            if mem[_829] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                revert with 0, 17
                                                                            if idx >= mem[96]:
                                                                                revert with 0, 50
                                                                            if idx >= mem[96]:
                                                                                revert with 0, 50
                                                                            if idx >= mem[96]:
                                                                                revert with 0, 50
                                                                            if idx >= mem[96]:
                                                                                revert with 0, 50
                                                                            if idx >= mem[96]:
                                                                                revert with 0, 50
                                                                            mem[(32 * idx) + 128] = 2 * mem[_829]
                                                                        else:
                                                                            require ext_code.size(address(_560))
                                                                            staticcall address(_560).0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(_553)
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            _830 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            if mem[_830] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                revert with 0, 17
                                                                            if idx >= mem[96]:
                                                                                revert with 0, 50
                                                                            if idx >= mem[96]:
                                                                                revert with 0, 50
                                                                            if idx >= mem[96]:
                                                                                revert with 0, 50
                                                                            if idx >= mem[96]:
                                                                                revert with 0, 50
                                                                            if idx >= mem[96]:
                                                                                revert with 0, 50
                                                                            mem[(32 * idx) + 128] = 2 * mem[_830]
                                                                    else:
                                                                        if stor7 == address(_560):
                                                                            mem[mem[64] + 4] = address(_553)
                                                                            require ext_code.size(address(_560))
                                                                            staticcall address(_560).0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(_553)
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            _874 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            if mem[_874] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                revert with 0, 17
                                                                            if idx >= mem[96]:
                                                                                revert with 0, 50
                                                                            if idx >= mem[96]:
                                                                                revert with 0, 50
                                                                            if idx >= mem[96]:
                                                                                revert with 0, 50
                                                                            if idx >= mem[96]:
                                                                                revert with 0, 50
                                                                            if idx >= mem[96]:
                                                                                revert with 0, 50
                                                                            mem[(32 * idx) + 128] = 2 * mem[_874]
                                                                        else:
                                                                            if stor7 != mem[_563 + 12 len 20]:
                                                                                if idx >= mem[96]:
                                                                                    revert with 0, 50
                                                                                if idx >= mem[96]:
                                                                                    revert with 0, 50
                                                                                if idx >= mem[96]:
                                                                                    revert with 0, 50
                                                                                if idx >= mem[96]:
                                                                                    revert with 0, 50
                                                                                if idx >= mem[96]:
                                                                                    revert with 0, 50
                                                                                mem[(32 * idx) + 128] = 0
                                                                            else:
                                                                                mem[mem[64] + 4] = address(_553)
                                                                                if stor7 != address(_560):
                                                                                    require ext_code.size(address(_564))
                                                                                    staticcall address(_564).0x70a08231 with:
                                                                                            gas gas_remaining wei
                                                                                           args address(_553)
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    _876 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    if mem[_876] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                        revert with 0, 17
                                                                                    if idx >= mem[96]:
                                                                                        revert with 0, 50
                                                                                    if idx >= mem[96]:
                                                                                        revert with 0, 50
                                                                                    if idx >= mem[96]:
                                                                                        revert with 0, 50
                                                                                    if idx >= mem[96]:
                                                                                        revert with 0, 50
                                                                                    if idx >= mem[96]:
                                                                                        revert with 0, 50
                                                                                    mem[(32 * idx) + 128] = 2 * mem[_876]
                                                                                else:
                                                                                    require ext_code.size(address(_560))
                                                                                    staticcall address(_560).0x70a08231 with:
                                                                                            gas gas_remaining wei
                                                                                           args address(_553)
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    _899 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    if mem[_899] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                        revert with 0, 17
                                                                                    if idx >= mem[96]:
                                                                                        revert with 0, 50
                                                                                    if idx >= mem[96]:
                                                                                        revert with 0, 50
                                                                                    if idx >= mem[96]:
                                                                                        revert with 0, 50
                                                                                    if idx >= mem[96]:
                                                                                        revert with 0, 50
                                                                                    if idx >= mem[96]:
                                                                                        revert with 0, 50
                                                                                    mem[(32 * idx) + 128] = 2 * mem[_899]
        if idx == -1:
            revert with 0, 17
        if idx != ext_call.return_data[0]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 8760 * 24 * 3600 * _549
        continue 
    _508 = mem[64]
    mem[mem[64]] = 192
    mem[mem[64] + 192] = mem[96]
    mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 32] = (32 * mem[96]) + 224
    mem[mem[64] + (32 * mem[96]) + 224] = mem[96]
    mem[mem[64] + (32 * mem[96]) + 256 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    var21007 = mem[64] + (64 * mem[96]) + 256
    mem[mem[64] + 64] = (64 * mem[96]) + 256
    _1022 = mem[96]
    mem[mem[64] + (64 * mem[96]) + 256] = mem[96]
    mem[mem[64] + (64 * mem[96]) + 288 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 96] = (98 * mem[96]) + 288
    _1030 = mem[96]
    mem[var21007 + (32 * mem[96]) + 32] = mem[96]
    mem[var21007 + (32 * _1022) + 64 len 32 * _1030] = mem[128 len 32 * _1030]
    mem[_508 + 128] = var21007 + (32 * _1022) + (32 * _1030) + -_508 + 64
    _1036 = mem[96]
    mem[var21007 + (32 * _1022) + (32 * _1030) + 64] = mem[96]
    mem[var21007 + (32 * _1022) + (32 * _1030) + 96 len 32 * _1036] = mem[128 len 32 * _1036]
    mem[_508 + 160] = s
    return memory
      from mem[64]
       len var21007 + (32 * _1022) + (32 * _1030) + (32 * _1036) + -mem[64] + 96
}

function sub_6cf3ee27(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor0)
    staticcall stor0.poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 128
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args stor0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                require ext_code.size(stor0)
                staticcall stor0.poolInfo(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 128
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(stor0)
                    staticcall stor0.totalAllocPoint() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        staticcall stor0.0x5f9bf689 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 0x883148f5cb1270b85273b667ae1cfdf5d70ac5a1ecccd54fe15c297df3:
                                revert with 0, 17
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
                                            if stor1 == address(ext_call.return_data[0]):
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 17
                                                    else:
                                                        return ext_call.return_data[0], 
                                                               ext_call.return_data[0],
                                                               ext_call.return_data[32],
                                                               ext_call.return_data[0],
                                                               8760 * 24 * 3600 * ext_call.return_data[0],
                                                               2 * ext_call.return_data[0]
                                            else:
                                                if stor1 == ext_call.return_data[12 len 20]:
                                                    if stor1 == address(ext_call.return_data[0]):
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                revert with 0, 17
                                                            else:
                                                                return ext_call.return_data[0], 
                                                                       ext_call.return_data[0],
                                                                       ext_call.return_data[32],
                                                                       ext_call.return_data[0],
                                                                       8760 * 24 * 3600 * ext_call.return_data[0],
                                                                       2 * ext_call.return_data[0]
                                                    else:
                                                        if stor5 == address(ext_call.return_data[0]):
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                    revert with 0, 17
                                                                else:
                                                                    return ext_call.return_data[0], 
                                                                           ext_call.return_data[0],
                                                                           ext_call.return_data[32],
                                                                           ext_call.return_data[0],
                                                                           8760 * 24 * 3600 * ext_call.return_data[0],
                                                                           2 * ext_call.return_data[0]
                                                        else:
                                                            if stor4 != address(ext_call.return_data[0]):
                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                        revert with 0, 17
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
                                                                    if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                        revert with 0, 17
                                                                    else:
                                                                        return ext_call.return_data[0], 
                                                                               ext_call.return_data[0],
                                                                               ext_call.return_data[32],
                                                                               ext_call.return_data[0],
                                                                               8760 * 24 * 3600 * ext_call.return_data[0],
                                                                               2 * ext_call.return_data[0]
                                                else:
                                                    if stor5 == address(ext_call.return_data[0]):
                                                        if stor1 == address(ext_call.return_data[0]):
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                    revert with 0, 17
                                                                else:
                                                                    return ext_call.return_data[0], 
                                                                           ext_call.return_data[0],
                                                                           ext_call.return_data[32],
                                                                           ext_call.return_data[0],
                                                                           8760 * 24 * 3600 * ext_call.return_data[0],
                                                                           2 * ext_call.return_data[0]
                                                        else:
                                                            if stor5 == address(ext_call.return_data[0]):
                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                        revert with 0, 17
                                                                    else:
                                                                        return ext_call.return_data[0], 
                                                                               ext_call.return_data[0],
                                                                               ext_call.return_data[32],
                                                                               ext_call.return_data[0],
                                                                               8760 * 24 * 3600 * ext_call.return_data[0],
                                                                               2 * ext_call.return_data[0]
                                                            else:
                                                                if stor4 != address(ext_call.return_data[0]):
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                            revert with 0, 17
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
                                                                        if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                            revert with 0, 17
                                                                        else:
                                                                            return ext_call.return_data[0], 
                                                                                   ext_call.return_data[0],
                                                                                   ext_call.return_data[32],
                                                                                   ext_call.return_data[0],
                                                                                   8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                   2 * ext_call.return_data[0]
                                                    else:
                                                        if stor5 == ext_call.return_data[12 len 20]:
                                                            if stor1 == address(ext_call.return_data[0]):
                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                        revert with 0, 17
                                                                    else:
                                                                        return ext_call.return_data[0], 
                                                                               ext_call.return_data[0],
                                                                               ext_call.return_data[32],
                                                                               ext_call.return_data[0],
                                                                               8760 * 24 * 3600 * ext_call.return_data[0],
                                                                               2 * ext_call.return_data[0]
                                                            else:
                                                                if stor5 == address(ext_call.return_data[0]):
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                            revert with 0, 17
                                                                        else:
                                                                            return ext_call.return_data[0], 
                                                                                   ext_call.return_data[0],
                                                                                   ext_call.return_data[32],
                                                                                   ext_call.return_data[0],
                                                                                   8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                   2 * ext_call.return_data[0]
                                                                else:
                                                                    if stor4 != address(ext_call.return_data[0]):
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                revert with 0, 17
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
                                                                            if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                revert with 0, 17
                                                                            else:
                                                                                return ext_call.return_data[0], 
                                                                                       ext_call.return_data[0],
                                                                                       ext_call.return_data[32],
                                                                                       ext_call.return_data[0],
                                                                                       8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                       2 * ext_call.return_data[0]
                                                        else:
                                                            if stor2 == address(ext_call.return_data[0]):
                                                                if stor1 == address(ext_call.return_data[0]):
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                            revert with 0, 17
                                                                        else:
                                                                            return ext_call.return_data[0], 
                                                                                   ext_call.return_data[0],
                                                                                   ext_call.return_data[32],
                                                                                   ext_call.return_data[0],
                                                                                   8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                   2 * ext_call.return_data[0]
                                                                else:
                                                                    if stor5 == address(ext_call.return_data[0]):
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                revert with 0, 17
                                                                            else:
                                                                                return ext_call.return_data[0], 
                                                                                       ext_call.return_data[0],
                                                                                       ext_call.return_data[32],
                                                                                       ext_call.return_data[0],
                                                                                       8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                       2 * ext_call.return_data[0]
                                                                    else:
                                                                        if stor4 != address(ext_call.return_data[0]):
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(ext_call.return_data[0])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                    revert with 0, 17
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
                                                                                if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    return ext_call.return_data[0], 
                                                                                           ext_call.return_data[0],
                                                                                           ext_call.return_data[32],
                                                                                           ext_call.return_data[0],
                                                                                           8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                           2 * ext_call.return_data[0]
                                                            else:
                                                                if stor2 == ext_call.return_data[12 len 20]:
                                                                    if stor1 == address(ext_call.return_data[0]):
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                revert with 0, 17
                                                                            else:
                                                                                return ext_call.return_data[0], 
                                                                                       ext_call.return_data[0],
                                                                                       ext_call.return_data[32],
                                                                                       ext_call.return_data[0],
                                                                                       8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                       2 * ext_call.return_data[0]
                                                                    else:
                                                                        if stor5 == address(ext_call.return_data[0]):
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(ext_call.return_data[0])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    return ext_call.return_data[0], 
                                                                                           ext_call.return_data[0],
                                                                                           ext_call.return_data[32],
                                                                                           ext_call.return_data[0],
                                                                                           8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                           2 * ext_call.return_data[0]
                                                                        else:
                                                                            if stor4 != address(ext_call.return_data[0]):
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                        gas gas_remaining wei
                                                                                       args address(ext_call.return_data[0])
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                        revert with 0, 17
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
                                                                                    if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        return ext_call.return_data[0], 
                                                                                               ext_call.return_data[0],
                                                                                               ext_call.return_data[32],
                                                                                               ext_call.return_data[0],
                                                                                               8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                               2 * ext_call.return_data[0]
                                                                else:
                                                                    if stor3 == address(ext_call.return_data[0]):
                                                                        if stor1 == address(ext_call.return_data[0]):
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(ext_call.return_data[0])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    return ext_call.return_data[0], 
                                                                                           ext_call.return_data[0],
                                                                                           ext_call.return_data[32],
                                                                                           ext_call.return_data[0],
                                                                                           8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                           2 * ext_call.return_data[0]
                                                                        else:
                                                                            if stor5 == address(ext_call.return_data[0]):
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                        gas gas_remaining wei
                                                                                       args address(ext_call.return_data[0])
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        return ext_call.return_data[0], 
                                                                                               ext_call.return_data[0],
                                                                                               ext_call.return_data[32],
                                                                                               ext_call.return_data[0],
                                                                                               8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                               2 * ext_call.return_data[0]
                                                                            else:
                                                                                if stor4 != address(ext_call.return_data[0]):
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                            gas gas_remaining wei
                                                                                           args address(ext_call.return_data[0])
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                            revert with 0, 17
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
                                                                                        if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            return ext_call.return_data[0], 
                                                                                                   ext_call.return_data[0],
                                                                                                   ext_call.return_data[32],
                                                                                                   ext_call.return_data[0],
                                                                                                   8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                                   2 * ext_call.return_data[0]
                                                                    else:
                                                                        if stor3 == ext_call.return_data[12 len 20]:
                                                                            if stor1 == address(ext_call.return_data[0]):
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                        gas gas_remaining wei
                                                                                       args address(ext_call.return_data[0])
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        return ext_call.return_data[0], 
                                                                                               ext_call.return_data[0],
                                                                                               ext_call.return_data[32],
                                                                                               ext_call.return_data[0],
                                                                                               8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                               2 * ext_call.return_data[0]
                                                                            else:
                                                                                if stor5 == address(ext_call.return_data[0]):
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                            gas gas_remaining wei
                                                                                           args address(ext_call.return_data[0])
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            return ext_call.return_data[0], 
                                                                                                   ext_call.return_data[0],
                                                                                                   ext_call.return_data[32],
                                                                                                   ext_call.return_data[0],
                                                                                                   8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                                   2 * ext_call.return_data[0]
                                                                                else:
                                                                                    if stor4 != address(ext_call.return_data[0]):
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                                gas gas_remaining wei
                                                                                               args address(ext_call.return_data[0])
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                revert with 0, 17
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
                                                                                            if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                return ext_call.return_data[0], 
                                                                                                       ext_call.return_data[0],
                                                                                                       ext_call.return_data[32],
                                                                                                       ext_call.return_data[0],
                                                                                                       8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                                       2 * ext_call.return_data[0]
                                                                        else:
                                                                            if stor4 == address(ext_call.return_data[0]):
                                                                                if stor1 == address(ext_call.return_data[0]):
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                            gas gas_remaining wei
                                                                                           args address(ext_call.return_data[0])
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            return ext_call.return_data[0], 
                                                                                                   ext_call.return_data[0],
                                                                                                   ext_call.return_data[32],
                                                                                                   ext_call.return_data[0],
                                                                                                   8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                                   2 * ext_call.return_data[0]
                                                                                else:
                                                                                    if stor5 == address(ext_call.return_data[0]):
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                                gas gas_remaining wei
                                                                                               args address(ext_call.return_data[0])
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                return ext_call.return_data[0], 
                                                                                                       ext_call.return_data[0],
                                                                                                       ext_call.return_data[32],
                                                                                                       ext_call.return_data[0],
                                                                                                       8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                                       2 * ext_call.return_data[0]
                                                                                    else:
                                                                                        if stor4 != address(ext_call.return_data[0]):
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                                    gas gas_remaining wei
                                                                                                   args address(ext_call.return_data[0])
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                    revert with 0, 17
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
                                                                                                if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                    revert with 0, 17
                                                                                                else:
                                                                                                    return ext_call.return_data[0], 
                                                                                                           ext_call.return_data[0],
                                                                                                           ext_call.return_data[32],
                                                                                                           ext_call.return_data[0],
                                                                                                           8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                                           2 * ext_call.return_data[0]
                                                                            else:
                                                                                if stor4 != ext_call.return_data[12 len 20]:
                                                                                    if stor6 == address(ext_call.return_data[0]):
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                                gas gas_remaining wei
                                                                                               args address(ext_call.return_data[0])
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                return ext_call.return_data[0], 
                                                                                                       ext_call.return_data[0],
                                                                                                       ext_call.return_data[32],
                                                                                                       ext_call.return_data[0],
                                                                                                       8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                                       2 * ext_call.return_data[0]
                                                                                    else:
                                                                                        if stor6 != ext_call.return_data[12 len 20]:
                                                                                            if stor8 == address(ext_call.return_data[0]):
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args address(ext_call.return_data[0])
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        return ext_call.return_data[0], 
                                                                                                               ext_call.return_data[0],
                                                                                                               ext_call.return_data[32],
                                                                                                               ext_call.return_data[0],
                                                                                                               8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                                               2 * ext_call.return_data[0]
                                                                                            else:
                                                                                                if stor8 != ext_call.return_data[12 len 20]:
                                                                                                    if stor9 == address(ext_call.return_data[0]):
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                                                gas gas_remaining wei
                                                                                                               args address(ext_call.return_data[0])
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 32
                                                                                                            if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                return ext_call.return_data[0], 
                                                                                                                       ext_call.return_data[0],
                                                                                                                       ext_call.return_data[32],
                                                                                                                       ext_call.return_data[0],
                                                                                                                       8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                                                       2 * ext_call.return_data[0]
                                                                                                    else:
                                                                                                        if stor9 != ext_call.return_data[12 len 20]:
                                                                                                            if stor7 == address(ext_call.return_data[0]):
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args address(ext_call.return_data[0])
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        return ext_call.return_data[0], 
                                                                                                                               ext_call.return_data[0],
                                                                                                                               ext_call.return_data[32],
                                                                                                                               ext_call.return_data[0],
                                                                                                                               8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                                                               2 * ext_call.return_data[0]
                                                                                                            else:
                                                                                                                if stor7 != ext_call.return_data[12 len 20]:
                                                                                                                    return ext_call.return_data[0], 
                                                                                                                           ext_call.return_data[0],
                                                                                                                           ext_call.return_data[32],
                                                                                                                           ext_call.return_data[0],
                                                                                                                           8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                                                           0
                                                                                                                else:
                                                                                                                    if stor7 != address(ext_call.return_data[0]):
                                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args address(ext_call.return_data[0])
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require return_data.size >= 32
                                                                                                                            if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                                                revert with 0, 17
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
                                                                                                                            if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                return ext_call.return_data[0], 
                                                                                                                                       ext_call.return_data[0],
                                                                                                                                       ext_call.return_data[32],
                                                                                                                                       ext_call.return_data[0],
                                                                                                                                       8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                                                                       2 * ext_call.return_data[0]
                                                                                                        else:
                                                                                                            if stor9 != address(ext_call.return_data[0]):
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args address(ext_call.return_data[0])
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                                        revert with 0, 17
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
                                                                                                                    if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        return ext_call.return_data[0], 
                                                                                                                               ext_call.return_data[0],
                                                                                                                               ext_call.return_data[32],
                                                                                                                               ext_call.return_data[0],
                                                                                                                               8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                                                               2 * ext_call.return_data[0]
                                                                                                else:
                                                                                                    if stor8 != address(ext_call.return_data[0]):
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                                                gas gas_remaining wei
                                                                                                               args address(ext_call.return_data[0])
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 32
                                                                                                            if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                                revert with 0, 17
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
                                                                                                            if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                return ext_call.return_data[0], 
                                                                                                                       ext_call.return_data[0],
                                                                                                                       ext_call.return_data[32],
                                                                                                                       ext_call.return_data[0],
                                                                                                                       8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                                                       2 * ext_call.return_data[0]
                                                                                        else:
                                                                                            if stor6 != address(ext_call.return_data[0]):
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args address(ext_call.return_data[0])
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                        revert with 0, 17
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
                                                                                                    if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        return ext_call.return_data[0], 
                                                                                                               ext_call.return_data[0],
                                                                                                               ext_call.return_data[32],
                                                                                                               ext_call.return_data[0],
                                                                                                               8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                                               2 * ext_call.return_data[0]
                                                                                else:
                                                                                    if stor1 == address(ext_call.return_data[0]):
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                                gas gas_remaining wei
                                                                                               args address(ext_call.return_data[0])
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                return ext_call.return_data[0], 
                                                                                                       ext_call.return_data[0],
                                                                                                       ext_call.return_data[32],
                                                                                                       ext_call.return_data[0],
                                                                                                       8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                                       2 * ext_call.return_data[0]
                                                                                    else:
                                                                                        if stor5 == address(ext_call.return_data[0]):
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                                    gas gas_remaining wei
                                                                                                   args address(ext_call.return_data[0])
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                    revert with 0, 17
                                                                                                else:
                                                                                                    return ext_call.return_data[0], 
                                                                                                           ext_call.return_data[0],
                                                                                                           ext_call.return_data[32],
                                                                                                           ext_call.return_data[0],
                                                                                                           8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                                           2 * ext_call.return_data[0]
                                                                                        else:
                                                                                            if stor4 != address(ext_call.return_data[0]):
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args address(ext_call.return_data[0])
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                        revert with 0, 17
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
                                                                                                    if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        return ext_call.return_data[0], 
                                                                                                               ext_call.return_data[0],
                                                                                                               ext_call.return_data[32],
                                                                                                               ext_call.return_data[0],
                                                                                                               8760 * 24 * 3600 * ext_call.return_data[0],
                                                                                                               2 * ext_call.return_data[0]
}



}
