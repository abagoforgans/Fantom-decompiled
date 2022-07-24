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
address stor13;
address stor15;

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
    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).totalSupply() with:
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
    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
    staticcall stor6.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor5)
    staticcall stor5.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor8)
    staticcall stor8.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    staticcall stor1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    staticcall stor6.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor13
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor7)
    staticcall stor7.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor13
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    staticcall stor6.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor15
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor9)
    staticcall stor9.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor15
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
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if stor1 == address(ext_call.return_data[0]):
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                    if stor3 != address(ext_call.return_data[0]):
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                        if stor3 != address(ext_call.return_data[0]):
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                            if stor3 != address(ext_call.return_data[0]):
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                if stor3 != address(ext_call.return_data[0]):
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                    if stor3 != address(ext_call.return_data[0]):
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                        if stor3 != address(ext_call.return_data[0]):
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                            if stor3 != address(ext_call.return_data[0]):
                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                if stor3 != address(ext_call.return_data[0]):
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                        if stor10 == address(ext_call.return_data[0]):
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                            if stor10 != ext_call.return_data[12 len 20]:
                                                                                if stor7 == address(ext_call.return_data[0]):
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                if stor10 != address(ext_call.return_data[0]):
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                    if stor3 != address(ext_call.return_data[0]):
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
        _593 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _596 = mem[_593]
        require mem[_593] == mem[_593 + 12 len 20]
        require ext_code.size(mem[_593 + 12 len 20])
        staticcall mem[_593 + 12 len 20].balanceOf(address arg1) with:
                gas gas_remaining wei
               args stor0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require ext_code.size(address(_596))
        staticcall address(_596).totalSupply() with:
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
        _618 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_618] == mem[_618 + 12 len 20]
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
        _629 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _630 = mem[_629]
        if mem[_629] > 0x883148f5cb1270b85273b667ae1cfdf5d70ac5a1ecccd54fe15c297df3:
            revert with 0, 17
        require ext_code.size(stor0)
        staticcall stor0.poolInfo(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _633 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _634 = mem[_633]
        require mem[_633] == mem[_633 + 12 len 20]
        require ext_code.size(mem[_633 + 12 len 20])
        staticcall mem[_633 + 12 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _640 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _641 = mem[_640]
        require mem[_640] == mem[_640 + 12 len 20]
        require ext_code.size(address(_634))
        staticcall address(_634).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _644 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _645 = mem[_644]
        require mem[_644] == mem[_644 + 12 len 20]
        if stor1 == address(_641):
            mem[mem[64] + 4] = address(_634)
            require ext_code.size(address(_641))
            staticcall address(_641).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(_634)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _652 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_652] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
            mem[(32 * idx) + 128] = 2 * mem[_652]
        else:
            if stor1 == mem[_644 + 12 len 20]:
                mem[mem[64] + 4] = address(_634)
                if stor1 == address(_641):
                    require ext_code.size(address(_641))
                    staticcall address(_641).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(_634)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _658 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_658] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                    mem[(32 * idx) + 128] = 2 * mem[_658]
                else:
                    if stor5 == address(_641):
                        require ext_code.size(address(_641))
                        staticcall address(_641).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_634)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _668 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_668] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                        mem[(32 * idx) + 128] = 2 * mem[_668]
                    else:
                        if stor4 == address(_641):
                            require ext_code.size(address(_641))
                            staticcall address(_641).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_634)
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
                            if stor3 != address(_641):
                                require ext_code.size(address(_645))
                                staticcall address(_645).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(_634)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _695 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_695] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                mem[(32 * idx) + 128] = 2 * mem[_695]
                            else:
                                require ext_code.size(address(_641))
                                staticcall address(_641).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(_634)
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
                if stor5 == address(_641):
                    mem[mem[64] + 4] = address(_634)
                    if stor1 == address(_641):
                        require ext_code.size(address(_641))
                        staticcall address(_641).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_634)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _671 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_671] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                        mem[(32 * idx) + 128] = 2 * mem[_671]
                    else:
                        if stor5 == address(_641):
                            require ext_code.size(address(_641))
                            staticcall address(_641).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_634)
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
                            if stor4 == address(_641):
                                require ext_code.size(address(_641))
                                staticcall address(_641).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(_634)
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
                                if stor3 != address(_641):
                                    require ext_code.size(address(_645))
                                    staticcall address(_645).balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(_634)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _713 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_713] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                    mem[(32 * idx) + 128] = 2 * mem[_713]
                                else:
                                    require ext_code.size(address(_641))
                                    staticcall address(_641).balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(_634)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _714 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_714] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                    mem[(32 * idx) + 128] = 2 * mem[_714]
                else:
                    if stor5 == mem[_644 + 12 len 20]:
                        mem[mem[64] + 4] = address(_634)
                        if stor1 == address(_641):
                            require ext_code.size(address(_641))
                            staticcall address(_641).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_634)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _685 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_685] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                            mem[(32 * idx) + 128] = 2 * mem[_685]
                        else:
                            if stor5 == address(_641):
                                require ext_code.size(address(_641))
                                staticcall address(_641).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(_634)
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
                                if stor4 == address(_641):
                                    require ext_code.size(address(_641))
                                    staticcall address(_641).balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(_634)
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
                                    if stor3 != address(_641):
                                        require ext_code.size(address(_645))
                                        staticcall address(_645).balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(_634)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _734 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_734] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                        mem[(32 * idx) + 128] = 2 * mem[_734]
                                    else:
                                        require ext_code.size(address(_641))
                                        staticcall address(_641).balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(_634)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _735 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_735] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                        mem[(32 * idx) + 128] = 2 * mem[_735]
                    else:
                        if stor2 == address(_641):
                            mem[mem[64] + 4] = address(_634)
                            if stor1 == address(_641):
                                require ext_code.size(address(_641))
                                staticcall address(_641).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(_634)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _702 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_702] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                mem[(32 * idx) + 128] = 2 * mem[_702]
                            else:
                                if stor5 == address(_641):
                                    require ext_code.size(address(_641))
                                    staticcall address(_641).balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(_634)
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
                                    if stor4 == address(_641):
                                        require ext_code.size(address(_641))
                                        staticcall address(_641).balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(_634)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _737 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_737] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                        mem[(32 * idx) + 128] = 2 * mem[_737]
                                    else:
                                        if stor3 != address(_641):
                                            require ext_code.size(address(_645))
                                            staticcall address(_645).balanceOf(address arg1) with:
                                                    gas gas_remaining wei
                                                   args address(_634)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _757 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_757] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                            mem[(32 * idx) + 128] = 2 * mem[_757]
                                        else:
                                            require ext_code.size(address(_641))
                                            staticcall address(_641).balanceOf(address arg1) with:
                                                    gas gas_remaining wei
                                                   args address(_634)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _758 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_758] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                            mem[(32 * idx) + 128] = 2 * mem[_758]
                        else:
                            if stor2 == mem[_644 + 12 len 20]:
                                mem[mem[64] + 4] = address(_634)
                                if stor1 == address(_641):
                                    require ext_code.size(address(_641))
                                    staticcall address(_641).balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(_634)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _720 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_720] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                    mem[(32 * idx) + 128] = 2 * mem[_720]
                                else:
                                    if stor5 == address(_641):
                                        require ext_code.size(address(_641))
                                        staticcall address(_641).balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(_634)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _738 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_738] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                        mem[(32 * idx) + 128] = 2 * mem[_738]
                                    else:
                                        if stor4 == address(_641):
                                            require ext_code.size(address(_641))
                                            staticcall address(_641).balanceOf(address arg1) with:
                                                    gas gas_remaining wei
                                                   args address(_634)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _760 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_760] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                            mem[(32 * idx) + 128] = 2 * mem[_760]
                                        else:
                                            if stor3 != address(_641):
                                                require ext_code.size(address(_645))
                                                staticcall address(_645).balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args address(_634)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _778 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_778] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                                mem[(32 * idx) + 128] = 2 * mem[_778]
                                            else:
                                                require ext_code.size(address(_641))
                                                staticcall address(_641).balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args address(_634)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _779 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_779] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                                mem[(32 * idx) + 128] = 2 * mem[_779]
                            else:
                                if stor3 == address(_641):
                                    mem[mem[64] + 4] = address(_634)
                                    if stor1 == address(_641):
                                        require ext_code.size(address(_641))
                                        staticcall address(_641).balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(_634)
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
                                        if stor5 == address(_641):
                                            require ext_code.size(address(_641))
                                            staticcall address(_641).balanceOf(address arg1) with:
                                                    gas gas_remaining wei
                                                   args address(_634)
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
                                            if stor4 == address(_641):
                                                require ext_code.size(address(_641))
                                                staticcall address(_641).balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args address(_634)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _781 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_781] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                                mem[(32 * idx) + 128] = 2 * mem[_781]
                                            else:
                                                if stor3 != address(_641):
                                                    require ext_code.size(address(_645))
                                                    staticcall address(_645).balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args address(_634)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _798 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_798] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                                    mem[(32 * idx) + 128] = 2 * mem[_798]
                                                else:
                                                    require ext_code.size(address(_641))
                                                    staticcall address(_641).balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args address(_634)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _799 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_799] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                                    mem[(32 * idx) + 128] = 2 * mem[_799]
                                else:
                                    if stor3 == mem[_644 + 12 len 20]:
                                        mem[mem[64] + 4] = address(_634)
                                        if stor1 == address(_641):
                                            require ext_code.size(address(_641))
                                            staticcall address(_641).balanceOf(address arg1) with:
                                                    gas gas_remaining wei
                                                   args address(_634)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _764 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_764] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                            mem[(32 * idx) + 128] = 2 * mem[_764]
                                        else:
                                            if stor5 == address(_641):
                                                require ext_code.size(address(_641))
                                                staticcall address(_641).balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args address(_634)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _782 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_782] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                                mem[(32 * idx) + 128] = 2 * mem[_782]
                                            else:
                                                if stor4 == address(_641):
                                                    require ext_code.size(address(_641))
                                                    staticcall address(_641).balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args address(_634)
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
                                                    if stor3 != address(_641):
                                                        require ext_code.size(address(_645))
                                                        staticcall address(_645).balanceOf(address arg1) with:
                                                                gas gas_remaining wei
                                                               args address(_634)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _820 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        if mem[_820] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                                        mem[(32 * idx) + 128] = 2 * mem[_820]
                                                    else:
                                                        require ext_code.size(address(_641))
                                                        staticcall address(_641).balanceOf(address arg1) with:
                                                                gas gas_remaining wei
                                                               args address(_634)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _821 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        if mem[_821] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                                        mem[(32 * idx) + 128] = 2 * mem[_821]
                                    else:
                                        if stor4 == address(_641):
                                            mem[mem[64] + 4] = address(_634)
                                            if stor1 == address(_641):
                                                require ext_code.size(address(_641))
                                                staticcall address(_641).balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args address(_634)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _785 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_785] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                                mem[(32 * idx) + 128] = 2 * mem[_785]
                                            else:
                                                if stor5 == address(_641):
                                                    require ext_code.size(address(_641))
                                                    staticcall address(_641).balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args address(_634)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _802 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_802] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                                    mem[(32 * idx) + 128] = 2 * mem[_802]
                                                else:
                                                    if stor4 == address(_641):
                                                        require ext_code.size(address(_641))
                                                        staticcall address(_641).balanceOf(address arg1) with:
                                                                gas gas_remaining wei
                                                               args address(_634)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _823 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        if mem[_823] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                                        mem[(32 * idx) + 128] = 2 * mem[_823]
                                                    else:
                                                        if stor3 != address(_641):
                                                            require ext_code.size(address(_645))
                                                            staticcall address(_645).balanceOf(address arg1) with:
                                                                    gas gas_remaining wei
                                                                   args address(_634)
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _838 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            if mem[_838] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                                            mem[(32 * idx) + 128] = 2 * mem[_838]
                                                        else:
                                                            require ext_code.size(address(_641))
                                                            staticcall address(_641).balanceOf(address arg1) with:
                                                                    gas gas_remaining wei
                                                                   args address(_634)
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _839 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            if mem[_839] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                                            mem[(32 * idx) + 128] = 2 * mem[_839]
                                        else:
                                            if stor4 == mem[_644 + 12 len 20]:
                                                mem[mem[64] + 4] = address(_634)
                                                if stor1 == address(_641):
                                                    require ext_code.size(address(_641))
                                                    staticcall address(_641).balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args address(_634)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _810 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_810] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                                    mem[(32 * idx) + 128] = 2 * mem[_810]
                                                else:
                                                    if stor5 == address(_641):
                                                        require ext_code.size(address(_641))
                                                        staticcall address(_641).balanceOf(address arg1) with:
                                                                gas gas_remaining wei
                                                               args address(_634)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _827 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        if mem[_827] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                                        mem[(32 * idx) + 128] = 2 * mem[_827]
                                                    else:
                                                        if stor4 == address(_641):
                                                            require ext_code.size(address(_641))
                                                            staticcall address(_641).balanceOf(address arg1) with:
                                                                    gas gas_remaining wei
                                                                   args address(_634)
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _845 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            if mem[_845] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                                            mem[(32 * idx) + 128] = 2 * mem[_845]
                                                        else:
                                                            if stor3 != address(_641):
                                                                require ext_code.size(address(_645))
                                                                staticcall address(_645).balanceOf(address arg1) with:
                                                                        gas gas_remaining wei
                                                                       args address(_634)
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _862 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                if mem[_862] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                                                mem[(32 * idx) + 128] = 2 * mem[_862]
                                                            else:
                                                                require ext_code.size(address(_641))
                                                                staticcall address(_641).balanceOf(address arg1) with:
                                                                        gas gas_remaining wei
                                                                       args address(_634)
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _863 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                if mem[_863] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                                                mem[(32 * idx) + 128] = 2 * mem[_863]
                                            else:
                                                if stor6 == address(_641):
                                                    mem[mem[64] + 4] = address(_634)
                                                    require ext_code.size(address(_641))
                                                    staticcall address(_641).balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args address(_634)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _789 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_789] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                                    mem[(32 * idx) + 128] = 2 * mem[_789]
                                                else:
                                                    if stor6 == mem[_644 + 12 len 20]:
                                                        mem[mem[64] + 4] = address(_634)
                                                        if stor6 != address(_641):
                                                            require ext_code.size(address(_645))
                                                            staticcall address(_645).balanceOf(address arg1) with:
                                                                    gas gas_remaining wei
                                                                   args address(_634)
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _808 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            if mem[_808] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                                            mem[(32 * idx) + 128] = 2 * mem[_808]
                                                        else:
                                                            require ext_code.size(address(_641))
                                                            staticcall address(_641).balanceOf(address arg1) with:
                                                                    gas gas_remaining wei
                                                                   args address(_634)
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _809 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            if mem[_809] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                                            mem[(32 * idx) + 128] = 2 * mem[_809]
                                                    else:
                                                        if stor8 == address(_641):
                                                            mem[mem[64] + 4] = address(_634)
                                                            require ext_code.size(address(_641))
                                                            staticcall address(_641).balanceOf(address arg1) with:
                                                                    gas gas_remaining wei
                                                                   args address(_634)
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _840 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            if mem[_840] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                                            mem[(32 * idx) + 128] = 2 * mem[_840]
                                                        else:
                                                            if stor8 == mem[_644 + 12 len 20]:
                                                                mem[mem[64] + 4] = address(_634)
                                                                if stor8 != address(_641):
                                                                    require ext_code.size(address(_645))
                                                                    staticcall address(_645).balanceOf(address arg1) with:
                                                                            gas gas_remaining wei
                                                                           args address(_634)
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _859 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    if mem[_859] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                                                    mem[(32 * idx) + 128] = 2 * mem[_859]
                                                                else:
                                                                    require ext_code.size(address(_641))
                                                                    staticcall address(_641).balanceOf(address arg1) with:
                                                                            gas gas_remaining wei
                                                                           args address(_634)
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _860 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    if mem[_860] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                                                    mem[(32 * idx) + 128] = 2 * mem[_860]
                                                            else:
                                                                if stor10 == address(_641):
                                                                    mem[mem[64] + 4] = address(_634)
                                                                    require ext_code.size(address(_641))
                                                                    staticcall address(_641).balanceOf(address arg1) with:
                                                                            gas gas_remaining wei
                                                                           args address(_634)
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _898 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    if mem[_898] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                                                    mem[(32 * idx) + 128] = 2 * mem[_898]
                                                                else:
                                                                    if stor10 == mem[_644 + 12 len 20]:
                                                                        mem[mem[64] + 4] = address(_634)
                                                                        if stor10 != address(_641):
                                                                            require ext_code.size(address(_645))
                                                                            staticcall address(_645).balanceOf(address arg1) with:
                                                                                    gas gas_remaining wei
                                                                                   args address(_634)
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            _928 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            if mem[_928] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                                                            mem[(32 * idx) + 128] = 2 * mem[_928]
                                                                        else:
                                                                            require ext_code.size(address(_641))
                                                                            staticcall address(_641).balanceOf(address arg1) with:
                                                                                    gas gas_remaining wei
                                                                                   args address(_634)
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            _929 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            if mem[_929] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                                                            mem[(32 * idx) + 128] = 2 * mem[_929]
                                                                    else:
                                                                        if stor7 == address(_641):
                                                                            mem[mem[64] + 4] = address(_634)
                                                                            require ext_code.size(address(_641))
                                                                            staticcall address(_641).balanceOf(address arg1) with:
                                                                                    gas gas_remaining wei
                                                                                   args address(_634)
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            _982 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            if mem[_982] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                                                            mem[(32 * idx) + 128] = 2 * mem[_982]
                                                                        else:
                                                                            if stor7 != mem[_644 + 12 len 20]:
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
                                                                                mem[mem[64] + 4] = address(_634)
                                                                                if stor7 != address(_641):
                                                                                    require ext_code.size(address(_645))
                                                                                    staticcall address(_645).balanceOf(address arg1) with:
                                                                                            gas gas_remaining wei
                                                                                           args address(_634)
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    _984 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    if mem[_984] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                                                                    mem[(32 * idx) + 128] = 2 * mem[_984]
                                                                                else:
                                                                                    require ext_code.size(address(_641))
                                                                                    staticcall address(_641).balanceOf(address arg1) with:
                                                                                            gas gas_remaining wei
                                                                                           args address(_634)
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    _1013 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    if mem[_1013] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
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
                                                                                    mem[(32 * idx) + 128] = 2 * mem[_1013]
        if idx == -1:
            revert with 0, 17
        if idx != ext_call.return_data[0]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 8760 * 24 * 3600 * _630
        continue 
    _589 = mem[64]
    mem[mem[64]] = 192
    mem[mem[64] + 192] = mem[96]
    mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 32] = (32 * mem[96]) + 224
    mem[mem[64] + (32 * mem[96]) + 224] = mem[96]
    mem[mem[64] + (32 * mem[96]) + 256 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    var21007 = mem[64] + (64 * mem[96]) + 256
    mem[mem[64] + 64] = (64 * mem[96]) + 256
    _1184 = mem[96]
    mem[mem[64] + (64 * mem[96]) + 256] = mem[96]
    mem[mem[64] + (64 * mem[96]) + 288 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 96] = (98 * mem[96]) + 288
    _1192 = mem[96]
    mem[var21007 + (32 * mem[96]) + 32] = mem[96]
    mem[var21007 + (32 * _1184) + 64 len 32 * _1192] = mem[128 len 32 * _1192]
    mem[_589 + 128] = var21007 + (32 * _1184) + (32 * _1192) + -_589 + 64
    _1198 = mem[96]
    mem[var21007 + (32 * _1184) + (32 * _1192) + 64] = mem[96]
    mem[var21007 + (32 * _1184) + (32 * _1192) + 96 len 32 * _1198] = mem[128 len 32 * _1198]
    mem[_589 + 160] = s
    return memory
      from mem[64]
       len var21007 + (32 * _1184) + (32 * _1192) + (32 * _1198) + -mem[64] + 96
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
        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                gas gas_remaining wei
               args stor0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).totalSupply() with:
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
                                        staticcall address(ext_call.return_data[0]).token1() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if stor1 == address(ext_call.return_data[0]):
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                if stor3 != address(ext_call.return_data[0]):
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                    if stor3 != address(ext_call.return_data[0]):
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                        if stor3 != address(ext_call.return_data[0]):
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                            if stor3 != address(ext_call.return_data[0]):
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                if stor3 != address(ext_call.return_data[0]):
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                    if stor3 != address(ext_call.return_data[0]):
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                        if stor3 != address(ext_call.return_data[0]):
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                            if stor3 != address(ext_call.return_data[0]):
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                                    if stor10 == address(ext_call.return_data[0]):
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                                        if stor10 != ext_call.return_data[12 len 20]:
                                                                                                            if stor7 == address(ext_call.return_data[0]):
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                                            if stor10 != address(ext_call.return_data[0]):
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                                if stor3 != address(ext_call.return_data[0]):
                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
