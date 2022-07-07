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
    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).totalSupply() with:
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
    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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

function sub_f745034c(?) payable {
    require ext_code.size(stor6)
    staticcall stor6.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor5)
    staticcall stor5.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor8)
    staticcall stor8.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor1)
    staticcall stor1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor6)
    staticcall stor6.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor7)
    staticcall stor7.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor9)
    staticcall stor9.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor13
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor4)
    staticcall stor4.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor13
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0], 
           ext_call.return_data[0],
           ext_call.return_data[0],
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
    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
            staticcall address(ext_call.return_data[0]).0xd21220a7 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if address(ext_call.return_data[0]) == stor1:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                if address(ext_call.return_data[0]) == stor4:
                                                    if address(ext_call.return_data[0]) == stor1:
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
        _522 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _524 = mem[_522]
        require mem[_522] == mem[_522 + 12 len 20]
        require mem[_522 + 32] == mem[_522 + 32]
        require mem[_522 + 64] == mem[_522 + 64]
        require mem[_522 + 96] == mem[_522 + 96]
        mem[mem[64] + 4] = stor0
        require ext_code.size(address(_524))
        staticcall address(_524).balanceOf(address arg1) with:
                gas gas_remaining wei
               args stor0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _538 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_538] == mem[_538]
        require ext_code.size(address(_524))
        staticcall address(_524).totalSupply() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _543 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_543] == mem[_543]
        require ext_code.size(stor0)
        staticcall stor0.poolInfo(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _547 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_547] == mem[_547 + 12 len 20]
        require mem[_547 + 32] == mem[_547 + 32]
        require mem[_547 + 64] == mem[_547 + 64]
        require mem[_547 + 96] == mem[_547 + 96]
        require ext_code.size(stor0)
        staticcall stor0.totalAllocPoint() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _554 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_554] == mem[_554]
        require ext_code.size(stor0)
        staticcall stor0.0x5f9bf689 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _558 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _559 = mem[_558]
        require mem[_558] == mem[_558]
        if mem[_558] > 0x883148f5cb1270b85273b667ae1cfdf5d70ac5a1ecccd54fe15c297df3:
            revert with 'NH{q', 17
        require ext_code.size(stor0)
        staticcall stor0.poolInfo(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _562 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _563 = mem[_562]
        require mem[_562] == mem[_562 + 12 len 20]
        require mem[_562 + 32] == mem[_562 + 32]
        require mem[_562 + 64] == mem[_562 + 64]
        require mem[_562 + 96] == mem[_562 + 96]
        require ext_code.size(mem[_562 + 12 len 20])
        staticcall mem[_562 + 12 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _569 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _570 = mem[_569]
        require mem[_569] == mem[_569 + 12 len 20]
        require ext_code.size(address(_563))
        staticcall address(_563).0xd21220a7 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _576 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _578 = mem[_576]
        require mem[_576] == mem[_576 + 12 len 20]
        if address(_570) == stor1:
            mem[mem[64] + 4] = address(_563)
            require ext_code.size(address(_570))
            staticcall address(_570).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(_563)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _619 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_619] == mem[_619]
            if mem[_619] and 2 > -1 / mem[_619]:
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
            mem[(32 * idx) + 128] = 2 * mem[_619]
        else:
            if mem[_576 + 12 len 20] == stor1:
                mem[mem[64] + 4] = address(_563)
                if address(_570) == stor1:
                    require ext_code.size(address(_570))
                    staticcall address(_570).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(_563)
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
                    if address(_570) == stor5:
                        require ext_code.size(address(_570))
                        staticcall address(_570).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_563)
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
                        if address(_570) != stor4:
                            require ext_code.size(address(_578))
                            staticcall address(_578).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_563)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _643 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_643] == mem[_643]
                            if mem[_643] and 2 > -1 / mem[_643]:
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
                            mem[(32 * idx) + 128] = 2 * mem[_643]
                        else:
                            require ext_code.size(address(_570))
                            staticcall address(_570).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_563)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _644 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_644] == mem[_644]
                            if mem[_644] and 2 > -1 / mem[_644]:
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
                            mem[(32 * idx) + 128] = 2 * mem[_644]
            else:
                if address(_570) == stor5:
                    mem[mem[64] + 4] = address(_563)
                    if address(_570) == stor1:
                        require ext_code.size(address(_570))
                        staticcall address(_570).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_563)
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
                        if address(_570) == stor5:
                            require ext_code.size(address(_570))
                            staticcall address(_570).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_563)
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
                            if address(_570) != stor4:
                                require ext_code.size(address(_578))
                                staticcall address(_578).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(_563)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _654 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_654] == mem[_654]
                                if mem[_654] and 2 > -1 / mem[_654]:
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
                                mem[(32 * idx) + 128] = 2 * mem[_654]
                            else:
                                require ext_code.size(address(_570))
                                staticcall address(_570).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(_563)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _655 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_655] == mem[_655]
                                if mem[_655] and 2 > -1 / mem[_655]:
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
                                mem[(32 * idx) + 128] = 2 * mem[_655]
                else:
                    if mem[_576 + 12 len 20] == stor5:
                        mem[mem[64] + 4] = address(_563)
                        if address(_570) == stor1:
                            require ext_code.size(address(_570))
                            staticcall address(_570).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_563)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _646 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_646] == mem[_646]
                            if mem[_646] and 2 > -1 / mem[_646]:
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
                            mem[(32 * idx) + 128] = 2 * mem[_646]
                        else:
                            if address(_570) == stor5:
                                require ext_code.size(address(_570))
                                staticcall address(_570).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(_563)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _656 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_656] == mem[_656]
                                if mem[_656] and 2 > -1 / mem[_656]:
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
                                mem[(32 * idx) + 128] = 2 * mem[_656]
                            else:
                                if address(_570) != stor4:
                                    require ext_code.size(address(_578))
                                    staticcall address(_578).balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(_563)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _664 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_664] == mem[_664]
                                    if mem[_664] and 2 > -1 / mem[_664]:
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
                                    mem[(32 * idx) + 128] = 2 * mem[_664]
                                else:
                                    require ext_code.size(address(_570))
                                    staticcall address(_570).balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(_563)
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
                        if address(_570) == stor2:
                            mem[mem[64] + 4] = address(_563)
                            if address(_570) == stor1:
                                require ext_code.size(address(_570))
                                staticcall address(_570).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(_563)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _657 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_657] == mem[_657]
                                if mem[_657] and 2 > -1 / mem[_657]:
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
                                mem[(32 * idx) + 128] = 2 * mem[_657]
                            else:
                                if address(_570) == stor5:
                                    require ext_code.size(address(_570))
                                    staticcall address(_570).balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(_563)
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
                                    if address(_570) != stor4:
                                        require ext_code.size(address(_578))
                                        staticcall address(_578).balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(_563)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _677 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_677] == mem[_677]
                                        if mem[_677] and 2 > -1 / mem[_677]:
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
                                        mem[(32 * idx) + 128] = 2 * mem[_677]
                                    else:
                                        require ext_code.size(address(_570))
                                        staticcall address(_570).balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(_563)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _678 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_678] == mem[_678]
                                        if mem[_678] and 2 > -1 / mem[_678]:
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
                                        mem[(32 * idx) + 128] = 2 * mem[_678]
                        else:
                            if mem[_576 + 12 len 20] == stor2:
                                mem[mem[64] + 4] = address(_563)
                                if address(_570) == stor1:
                                    require ext_code.size(address(_570))
                                    staticcall address(_570).balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(_563)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _667 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_667] == mem[_667]
                                    if mem[_667] and 2 > -1 / mem[_667]:
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
                                    mem[(32 * idx) + 128] = 2 * mem[_667]
                                else:
                                    if address(_570) == stor5:
                                        require ext_code.size(address(_570))
                                        staticcall address(_570).balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(_563)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _679 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_679] == mem[_679]
                                        if mem[_679] and 2 > -1 / mem[_679]:
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
                                        mem[(32 * idx) + 128] = 2 * mem[_679]
                                    else:
                                        if address(_570) != stor4:
                                            require ext_code.size(address(_578))
                                            staticcall address(_578).balanceOf(address arg1) with:
                                                    gas gas_remaining wei
                                                   args address(_563)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _691 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_691] == mem[_691]
                                            if mem[_691] and 2 > -1 / mem[_691]:
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
                                            mem[(32 * idx) + 128] = 2 * mem[_691]
                                        else:
                                            require ext_code.size(address(_570))
                                            staticcall address(_570).balanceOf(address arg1) with:
                                                    gas gas_remaining wei
                                                   args address(_563)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _692 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_692] == mem[_692]
                                            if mem[_692] and 2 > -1 / mem[_692]:
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
                                            mem[(32 * idx) + 128] = 2 * mem[_692]
                            else:
                                if address(_570) == stor3:
                                    mem[mem[64] + 4] = address(_563)
                                    if address(_570) == stor1:
                                        require ext_code.size(address(_570))
                                        staticcall address(_570).balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(_563)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _680 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_680] == mem[_680]
                                        if mem[_680] and 2 > -1 / mem[_680]:
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
                                        mem[(32 * idx) + 128] = 2 * mem[_680]
                                    else:
                                        if address(_570) == stor5:
                                            require ext_code.size(address(_570))
                                            staticcall address(_570).balanceOf(address arg1) with:
                                                    gas gas_remaining wei
                                                   args address(_563)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _693 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_693] == mem[_693]
                                            if mem[_693] and 2 > -1 / mem[_693]:
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
                                            mem[(32 * idx) + 128] = 2 * mem[_693]
                                        else:
                                            if address(_570) != stor4:
                                                require ext_code.size(address(_578))
                                                staticcall address(_578).balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args address(_563)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _704 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_704] == mem[_704]
                                                if mem[_704] and 2 > -1 / mem[_704]:
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
                                                mem[(32 * idx) + 128] = 2 * mem[_704]
                                            else:
                                                require ext_code.size(address(_570))
                                                staticcall address(_570).balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args address(_563)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _705 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_705] == mem[_705]
                                                if mem[_705] and 2 > -1 / mem[_705]:
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
                                                mem[(32 * idx) + 128] = 2 * mem[_705]
                                else:
                                    if mem[_576 + 12 len 20] == stor3:
                                        mem[mem[64] + 4] = address(_563)
                                        if address(_570) == stor1:
                                            require ext_code.size(address(_570))
                                            staticcall address(_570).balanceOf(address arg1) with:
                                                    gas gas_remaining wei
                                                   args address(_563)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _694 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_694] == mem[_694]
                                            if mem[_694] and 2 > -1 / mem[_694]:
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
                                            mem[(32 * idx) + 128] = 2 * mem[_694]
                                        else:
                                            if address(_570) == stor5:
                                                require ext_code.size(address(_570))
                                                staticcall address(_570).balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args address(_563)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _706 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_706] == mem[_706]
                                                if mem[_706] and 2 > -1 / mem[_706]:
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
                                                mem[(32 * idx) + 128] = 2 * mem[_706]
                                            else:
                                                if address(_570) != stor4:
                                                    require ext_code.size(address(_578))
                                                    staticcall address(_578).balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args address(_563)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _718 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_718] == mem[_718]
                                                    if mem[_718] and 2 > -1 / mem[_718]:
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
                                                    mem[(32 * idx) + 128] = 2 * mem[_718]
                                                else:
                                                    require ext_code.size(address(_570))
                                                    staticcall address(_570).balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args address(_563)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _719 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_719] == mem[_719]
                                                    if mem[_719] and 2 > -1 / mem[_719]:
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
                                                    mem[(32 * idx) + 128] = 2 * mem[_719]
                                    else:
                                        if address(_570) == stor4:
                                            mem[mem[64] + 4] = address(_563)
                                            if address(_570) == stor1:
                                                require ext_code.size(address(_570))
                                                staticcall address(_570).balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args address(_563)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _707 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_707] == mem[_707]
                                                if mem[_707] and 2 > -1 / mem[_707]:
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
                                                mem[(32 * idx) + 128] = 2 * mem[_707]
                                            else:
                                                if address(_570) == stor5:
                                                    require ext_code.size(address(_570))
                                                    staticcall address(_570).balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args address(_563)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _720 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_720] == mem[_720]
                                                    if mem[_720] and 2 > -1 / mem[_720]:
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
                                                    mem[(32 * idx) + 128] = 2 * mem[_720]
                                                else:
                                                    if address(_570) != stor4:
                                                        require ext_code.size(address(_578))
                                                        staticcall address(_578).balanceOf(address arg1) with:
                                                                gas gas_remaining wei
                                                               args address(_563)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _731 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_731] == mem[_731]
                                                        if mem[_731] and 2 > -1 / mem[_731]:
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
                                                        mem[(32 * idx) + 128] = 2 * mem[_731]
                                                    else:
                                                        require ext_code.size(address(_570))
                                                        staticcall address(_570).balanceOf(address arg1) with:
                                                                gas gas_remaining wei
                                                               args address(_563)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _732 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_732] == mem[_732]
                                                        if mem[_732] and 2 > -1 / mem[_732]:
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
                                                        mem[(32 * idx) + 128] = 2 * mem[_732]
                                        else:
                                            if mem[_576 + 12 len 20] == stor4:
                                                mem[mem[64] + 4] = address(_563)
                                                if address(_570) == stor1:
                                                    require ext_code.size(address(_570))
                                                    staticcall address(_570).balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args address(_563)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _724 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_724] == mem[_724]
                                                    if mem[_724] and 2 > -1 / mem[_724]:
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
                                                    mem[(32 * idx) + 128] = 2 * mem[_724]
                                                else:
                                                    if address(_570) == stor5:
                                                        require ext_code.size(address(_570))
                                                        staticcall address(_570).balanceOf(address arg1) with:
                                                                gas gas_remaining wei
                                                               args address(_563)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _736 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_736] == mem[_736]
                                                        if mem[_736] and 2 > -1 / mem[_736]:
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
                                                        mem[(32 * idx) + 128] = 2 * mem[_736]
                                                    else:
                                                        if address(_570) != stor4:
                                                            require ext_code.size(address(_578))
                                                            staticcall address(_578).balanceOf(address arg1) with:
                                                                    gas gas_remaining wei
                                                                   args address(_563)
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _743 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_743] == mem[_743]
                                                            if mem[_743] and 2 > -1 / mem[_743]:
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
                                                            mem[(32 * idx) + 128] = 2 * mem[_743]
                                                        else:
                                                            require ext_code.size(address(_570))
                                                            staticcall address(_570).balanceOf(address arg1) with:
                                                                    gas gas_remaining wei
                                                                   args address(_563)
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _744 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_744] == mem[_744]
                                                            if mem[_744] and 2 > -1 / mem[_744]:
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
                                                            mem[(32 * idx) + 128] = 2 * mem[_744]
                                            else:
                                                if address(_570) == stor6:
                                                    mem[mem[64] + 4] = address(_563)
                                                    require ext_code.size(address(_570))
                                                    staticcall address(_570).balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args address(_563)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _721 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_721] == mem[_721]
                                                    if mem[_721] and 2 > -1 / mem[_721]:
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
                                                    mem[(32 * idx) + 128] = 2 * mem[_721]
                                                else:
                                                    if mem[_576 + 12 len 20] == stor6:
                                                        mem[mem[64] + 4] = address(_563)
                                                        if address(_570) != stor6:
                                                            require ext_code.size(address(_578))
                                                            staticcall address(_578).balanceOf(address arg1) with:
                                                                    gas gas_remaining wei
                                                                   args address(_563)
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _734 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_734] == mem[_734]
                                                            if mem[_734] and 2 > -1 / mem[_734]:
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
                                                            mem[(32 * idx) + 128] = 2 * mem[_734]
                                                        else:
                                                            require ext_code.size(address(_570))
                                                            staticcall address(_570).balanceOf(address arg1) with:
                                                                    gas gas_remaining wei
                                                                   args address(_563)
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _735 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_735] == mem[_735]
                                                            if mem[_735] and 2 > -1 / mem[_735]:
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
                                                            mem[(32 * idx) + 128] = 2 * mem[_735]
                                                    else:
                                                        if address(_570) == stor8:
                                                            mem[mem[64] + 4] = address(_563)
                                                            require ext_code.size(address(_570))
                                                            staticcall address(_570).balanceOf(address arg1) with:
                                                                    gas gas_remaining wei
                                                                   args address(_563)
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _749 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_749] == mem[_749]
                                                            if mem[_749] and 2 > -1 / mem[_749]:
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
                                                            mem[(32 * idx) + 128] = 2 * mem[_749]
                                                        else:
                                                            if mem[_576 + 12 len 20] == stor8:
                                                                mem[mem[64] + 4] = address(_563)
                                                                if address(_570) != stor8:
                                                                    require ext_code.size(address(_578))
                                                                    staticcall address(_578).balanceOf(address arg1) with:
                                                                            gas gas_remaining wei
                                                                           args address(_563)
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _754 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_754] == mem[_754]
                                                                    if mem[_754] and 2 > -1 / mem[_754]:
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
                                                                    mem[(32 * idx) + 128] = 2 * mem[_754]
                                                                else:
                                                                    require ext_code.size(address(_570))
                                                                    staticcall address(_570).balanceOf(address arg1) with:
                                                                            gas gas_remaining wei
                                                                           args address(_563)
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _755 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_755] == mem[_755]
                                                                    if mem[_755] and 2 > -1 / mem[_755]:
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
                                                                    mem[(32 * idx) + 128] = 2 * mem[_755]
                                                            else:
                                                                if address(_570) == stor9:
                                                                    mem[mem[64] + 4] = address(_563)
                                                                    require ext_code.size(address(_570))
                                                                    staticcall address(_570).balanceOf(address arg1) with:
                                                                            gas gas_remaining wei
                                                                           args address(_563)
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _765 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_765] == mem[_765]
                                                                    if mem[_765] and 2 > -1 / mem[_765]:
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
                                                                    mem[(32 * idx) + 128] = 2 * mem[_765]
                                                                else:
                                                                    if mem[_576 + 12 len 20] == stor9:
                                                                        mem[mem[64] + 4] = address(_563)
                                                                        if address(_570) != stor9:
                                                                            require ext_code.size(address(_578))
                                                                            staticcall address(_578).balanceOf(address arg1) with:
                                                                                    gas gas_remaining wei
                                                                                   args address(_563)
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            _769 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_769] == mem[_769]
                                                                            if mem[_769] and 2 > -1 / mem[_769]:
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
                                                                            mem[(32 * idx) + 128] = 2 * mem[_769]
                                                                        else:
                                                                            require ext_code.size(address(_570))
                                                                            staticcall address(_570).balanceOf(address arg1) with:
                                                                                    gas gas_remaining wei
                                                                                   args address(_563)
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            _770 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_770] == mem[_770]
                                                                            if mem[_770] and 2 > -1 / mem[_770]:
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
                                                                            mem[(32 * idx) + 128] = 2 * mem[_770]
                                                                    else:
                                                                        if address(_570) == stor7:
                                                                            mem[mem[64] + 4] = address(_563)
                                                                            require ext_code.size(address(_570))
                                                                            staticcall address(_570).balanceOf(address arg1) with:
                                                                                    gas gas_remaining wei
                                                                                   args address(_563)
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            _777 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_777] == mem[_777]
                                                                            if mem[_777] and 2 > -1 / mem[_777]:
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
                                                                            mem[(32 * idx) + 128] = 2 * mem[_777]
                                                                        else:
                                                                            if mem[_576 + 12 len 20] != stor7:
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
                                                                                mem[mem[64] + 4] = address(_563)
                                                                                if address(_570) != stor7:
                                                                                    require ext_code.size(address(_578))
                                                                                    staticcall address(_578).balanceOf(address arg1) with:
                                                                                            gas gas_remaining wei
                                                                                           args address(_563)
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    _779 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_779] == mem[_779]
                                                                                    if mem[_779] and 2 > -1 / mem[_779]:
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
                                                                                    mem[(32 * idx) + 128] = 2 * mem[_779]
                                                                                else:
                                                                                    require ext_code.size(address(_570))
                                                                                    staticcall address(_570).balanceOf(address arg1) with:
                                                                                            gas gas_remaining wei
                                                                                           args address(_563)
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    _780 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_780] == mem[_780]
                                                                                    if mem[_780] and 2 > -1 / mem[_780]:
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
                                                                                    mem[(32 * idx) + 128] = 2 * mem[_780]
        if idx == -1:
            revert with 'NH{q', 17
        if idx != ext_call.return_data[0]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 8760 * 24 * 3600 * _559
        continue 
    _518 = mem[64]
    mem[mem[64]] = 192
    mem[mem[64] + 192] = mem[96]
    mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 32] = (32 * mem[96]) + 224
    mem[mem[64] + (32 * mem[96]) + 224] = mem[96]
    mem[mem[64] + (32 * mem[96]) + 256 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    var48007 = mem[64] + (64 * mem[96]) + 256
    mem[mem[64] + 64] = (64 * mem[96]) + 256
    _1032 = mem[96]
    mem[mem[64] + (64 * mem[96]) + 256] = mem[96]
    mem[var48007 + 32 len 32 * _1032] = mem[128 len 32 * _1032]
    mem[_518 + 96] = var48007 + (32 * _1032) + -_518 + 32
    _1040 = mem[96]
    mem[var48007 + (32 * _1032) + 32] = mem[96]
    mem[var48007 + (32 * _1032) + 64 len 32 * _1040] = mem[128 len 32 * _1040]
    mem[_518 + 128] = var48007 + (32 * _1032) + (32 * _1040) + -_518 + 64
    _1046 = mem[96]
    mem[var48007 + (32 * _1032) + (32 * _1040) + 64] = mem[96]
    mem[var48007 + (32 * _1032) + (32 * _1040) + 96 len 32 * _1046] = mem[128 len 32 * _1046]
    mem[_518 + 160] = s
    return memory
      from mem[64]
       len var48007 + (32 * _1032) + (32 * _1040) + (32 * _1046) + -mem[64] + 96
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
        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                gas gas_remaining wei
               args stor0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).totalSupply() with:
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
                                        staticcall address(ext_call.return_data[0]).0xd21220a7 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if address(ext_call.return_data[0]) == stor1:
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                            if address(ext_call.return_data[0]) == stor4:
                                                                                if address(ext_call.return_data[0]) == stor1:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
                                                                                                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
