contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
array of address stor2;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function addRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2.length++
    stor2[stor2.length] = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_31bbcd52(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < stor2.length:
        mem[0] = 2
        require ext_code.size(stor2[idx])
        staticcall stor2[idx].factory() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            _205 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _206 = mem[_205]
            require mem[_205] == mem[_205 + 12 len 20]
            mem[mem[64]] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_206))
            staticcall address(_206).mem[var61003 len 4] with:
                    gas gas_remaining wei
                   args mem[var61003 + 4 len var61004 - 4]
            mem[var61005] = ext_call.return_data[0]
            if ext_call.success:
                mem[64] = mem[64] + ceil32(return_data.size)
                require var65002 - var65001 >= 32
                if var69002 >= var69001:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0x1e3dd18b00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = var71001
                require ext_code.size(address(_206))
                staticcall address(_206).mem[var73003 len 4] with:
                        gas gas_remaining wei
                       args mem[var73003 + 4 len var73004 - 4]
                mem[var73005] = ext_call.return_data[0]
                if ext_call.success:
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require var77002 - var77001 >= 32
                    _2326 = mem[var79002]
                    require mem[var79002] == mem[var79002 + 12 len 20]
                    require ext_code.size(mem[var79002 + 12 len 20])
                    staticcall mem[var79002 + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    s = _2326
                    t = _2326
                    u = var79002
                    u = var79003
                    u = var79006
                    while ext_call.success:
                        _2521 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2521] == mem[_2521 + 12 len 20]
                        if mem[_2521 + 12 len 20] == address(arg1):
                            if not address(t):
                                revert with 0, 'Couldn't find pair.'
                            require ext_code.size(address(t))
                            staticcall address(t).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2531 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2531] == mem[_2531 + 12 len 20]
                            if mem[_2531 + 12 len 20] == stor1:
                                if not mem[96]:
                                    revert with 0, 50
                                if 1 >= mem[96]:
                                    revert with 0, 50
                                if 0 >= mem[96]:
                                    revert with 0, 50
                                mem[128] = address(arg1)
                                if 1 >= mem[96]:
                                    revert with 0, 50
                                mem[160] = stor1
                                if 3600 > !block.timestamp:
                                    revert with 0, 17
                                require ext_code.size(address(t))
                                staticcall address(t).getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2560 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _2570 = mem[_2560]
                                require mem[_2560] == mem[_2560 + 18 len 14]
                                _2573 = mem[_2560 + 32]
                                require mem[_2560 + 32] == mem[_2560 + 50 len 14]
                                require mem[_2560 + 64] == mem[_2560 + 92 len 4]
                                require ext_code.size(address(t))
                                staticcall address(t).token0() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2588 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2588] == mem[_2588 + 12 len 20]
                                mem[mem[64] + 4] = msg.value
                                if mem[_2588 + 12 len 20] == stor1:
                                    mem[mem[64] + 36] = Mask(112, 0, _2570)
                                    mem[mem[64] + 68] = Mask(112, 0, _2573)
                                    require ext_code.size(stor2[idx])
                                    staticcall stor2[idx].getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args msg.value, _2570 << 144, Mask(112, 0, _2573)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2612 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2616 = mem[_2612]
                                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2616
                                    mem[mem[64] + 36] = 128
                                    _2622 = mem[96]
                                    mem[mem[64] + 132] = mem[96]
                                    u = 0
                                    v = 128
                                    w = mem[64] + 164
                                    while u < _2622:
                                        mem[w] = mem[v + 12 len 20]
                                        require s == address(s)
                                        require ext_code.size(address(t))
                                        staticcall address(t).token0() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        u = u + 1
                                        v = v + 32
                                        w = w + 32
                                        continue 
                                    mem[mem[64] + 100] = block.timestamp + 3600
                                    require ext_code.size(stor2[idx])
                                    call stor2[idx].mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 128, msg.sender, block.timestamp + 3600, mem[mem[64] + 132 len (32 * _2622) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2616
                                    mem[mem[64] + 36] = 10^10
                                    mem[mem[64] + 68] = 160
                                    _2736 = mem[96]
                                    mem[mem[64] + 164] = mem[96]
                                    u = 0
                                    v = 128
                                    w = mem[64] + 196
                                    while u < _2736:
                                        mem[w] = mem[v + 12 len 20]
                                        require s == address(s)
                                        require ext_code.size(address(t))
                                        staticcall address(t).token0() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        u = u + 1
                                        v = v + 32
                                        w = w + 32
                                        continue 
                                    require ext_code.size(stor2[idx])
                                    call stor2[idx].mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 10^10, 160, msg.sender, block.timestamp + 3600, mem[mem[64] + 164 len (32 * _2736) + 32]
                                else:
                                    mem[mem[64] + 36] = Mask(112, 0, _2573)
                                    mem[mem[64] + 68] = Mask(112, 0, _2570)
                                    require ext_code.size(stor2[idx])
                                    staticcall stor2[idx].getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args msg.value, _2573 << 144, Mask(112, 0, _2570)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2611 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2615 = mem[_2611]
                                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2615
                                    mem[mem[64] + 36] = 128
                                    _2621 = mem[96]
                                    mem[mem[64] + 132] = mem[96]
                                    u = 0
                                    v = 128
                                    w = mem[64] + 164
                                    while u < _2621:
                                        mem[w] = mem[v + 12 len 20]
                                        require s == address(s)
                                        require ext_code.size(address(t))
                                        staticcall address(t).token0() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        u = u + 1
                                        v = v + 32
                                        w = w + 32
                                        continue 
                                    mem[mem[64] + 100] = block.timestamp + 3600
                                    require ext_code.size(stor2[idx])
                                    call stor2[idx].mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 128, msg.sender, block.timestamp + 3600, mem[mem[64] + 132 len (32 * _2621) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2727 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2615
                                    mem[mem[64] + 36] = 10^10
                                    mem[mem[64] + 68] = 160
                                    _2735 = mem[96]
                                    mem[mem[64] + 164] = mem[96]
                                    u = 0
                                    v = 128
                                    w = mem[64] + 196
                                    while u < _2735:
                                        mem[w] = mem[v + 12 len 20]
                                        require s == address(s)
                                        require ext_code.size(address(t))
                                        staticcall address(t).token0() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        u = u + 1
                                        v = v + 32
                                        w = w + 32
                                        continue 
                                    mem[_2727 + 100] = msg.sender
                                    mem[_2727 + 132] = block.timestamp + 3600
                                    require ext_code.size(stor2[idx])
                                    call stor2[idx].mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _2727 + (32 * _2735) + -mem[64] + 192]
                            else:
                                require ext_code.size(address(t))
                                staticcall address(t).token1() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2541 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2541] == mem[_2541 + 12 len 20]
                                if mem[_2541 + 12 len 20] != stor1:
                                    revert with 0, 'Couldn't check, no WFTM pair.'
                                if not mem[96]:
                                    revert with 0, 50
                                if 1 >= mem[96]:
                                    revert with 0, 50
                                if 0 >= mem[96]:
                                    revert with 0, 50
                                mem[128] = address(arg1)
                                if 1 >= mem[96]:
                                    revert with 0, 50
                                mem[160] = stor1
                                if 3600 > !block.timestamp:
                                    revert with 0, 17
                                require ext_code.size(address(t))
                                staticcall address(t).getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2579 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _2589 = mem[_2579]
                                require mem[_2579] == mem[_2579 + 18 len 14]
                                _2593 = mem[_2579 + 32]
                                require mem[_2579 + 32] == mem[_2579 + 50 len 14]
                                require mem[_2579 + 64] == mem[_2579 + 92 len 4]
                                require ext_code.size(address(t))
                                staticcall address(t).token0() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2608 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2608] == mem[_2608 + 12 len 20]
                                mem[mem[64] + 4] = msg.value
                                if mem[_2608 + 12 len 20] == stor1:
                                    mem[mem[64] + 36] = Mask(112, 0, _2589)
                                    mem[mem[64] + 68] = Mask(112, 0, _2593)
                                    require ext_code.size(stor2[idx])
                                    staticcall stor2[idx].getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args msg.value, _2589 << 144, Mask(112, 0, _2593)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2639 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2644 = mem[_2639]
                                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2644
                                    mem[mem[64] + 36] = 128
                                    _2656 = mem[96]
                                    mem[mem[64] + 132] = mem[96]
                                    u = 0
                                    v = 128
                                    w = mem[64] + 164
                                    while u < _2656:
                                        mem[w] = mem[v + 12 len 20]
                                        require s == address(s)
                                        require ext_code.size(address(t))
                                        staticcall address(t).token0() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        u = u + 1
                                        v = v + 32
                                        w = w + 32
                                        continue 
                                    mem[mem[64] + 100] = block.timestamp + 3600
                                    require ext_code.size(stor2[idx])
                                    call stor2[idx].mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 128, msg.sender, block.timestamp + 3600, mem[mem[64] + 132 len (32 * _2656) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2730 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2644
                                    mem[mem[64] + 36] = 10^10
                                    mem[mem[64] + 68] = 160
                                    _2738 = mem[96]
                                    mem[mem[64] + 164] = mem[96]
                                    u = 0
                                    v = 128
                                    w = mem[64] + 196
                                    while u < _2738:
                                        mem[w] = mem[v + 12 len 20]
                                        require s == address(s)
                                        require ext_code.size(address(t))
                                        staticcall address(t).token0() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        u = u + 1
                                        v = v + 32
                                        w = w + 32
                                        continue 
                                    mem[_2730 + 100] = msg.sender
                                    mem[_2730 + 132] = block.timestamp + 3600
                                    require ext_code.size(stor2[idx])
                                    call stor2[idx].mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _2730 + (32 * _2738) + -mem[64] + 192]
                                else:
                                    mem[mem[64] + 36] = Mask(112, 0, _2593)
                                    mem[mem[64] + 68] = Mask(112, 0, _2589)
                                    require ext_code.size(stor2[idx])
                                    staticcall stor2[idx].getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args msg.value, _2593 << 144, Mask(112, 0, _2589)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2638 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2643 = mem[_2638]
                                    _2649 = mem[64]
                                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2643
                                    mem[mem[64] + 36] = 128
                                    _2655 = mem[96]
                                    mem[mem[64] + 132] = mem[96]
                                    u = 0
                                    v = 128
                                    w = mem[64] + 164
                                    while u < _2655:
                                        mem[w] = mem[v + 12 len 20]
                                        require s == address(s)
                                        require ext_code.size(address(t))
                                        staticcall address(t).token0() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        u = u + 1
                                        v = v + 32
                                        w = w + 32
                                        continue 
                                    mem[_2649 + 68] = msg.sender
                                    mem[_2649 + 100] = block.timestamp + 3600
                                    require ext_code.size(stor2[idx])
                                    call stor2[idx].mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _2649 + (32 * _2655) + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2729 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2643
                                    mem[mem[64] + 36] = 10^10
                                    mem[mem[64] + 68] = 160
                                    _2737 = mem[96]
                                    mem[mem[64] + 164] = mem[96]
                                    u = 0
                                    v = 128
                                    w = mem[64] + 196
                                    while u < _2737:
                                        mem[w] = mem[v + 12 len 20]
                                        require s == address(s)
                                        require ext_code.size(address(t))
                                        staticcall address(t).token0() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        u = u + 1
                                        v = v + 32
                                        w = w + 32
                                        continue 
                                    mem[_2729 + 100] = msg.sender
                                    mem[_2729 + 132] = block.timestamp + 3600
                                    require ext_code.size(stor2[idx])
                                    call stor2[idx].mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _2729 + (32 * _2737) + -mem[64] + 192]
                        else:
                            require ext_code.size(address(t))
                            staticcall address(t).token1() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2525 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2525] == mem[_2525 + 12 len 20]
                            if mem[_2525 + 12 len 20] != address(arg1):
                                if u == -1:
                                    revert with 0, 17
                                require ext_code.size(address(_206))
                                staticcall address(_206).allPairsLength() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2544 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if u + 1 >= mem[_2544]:
                                    if idx == -1:
                                        revert with 0, 17
                                    require s == address(s)
                                    require ext_code.size(address(t))
                                    staticcall address(t).token0() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    idx = idx + 1
                                    continue 
                                mem[mem[64] + 4] = u + 1
                                require ext_code.size(address(_206))
                                staticcall address(_206).allPairs(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (u + 1)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2553 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2558 = mem[_2553]
                                require mem[_2553] == mem[_2553 + 12 len 20]
                                require ext_code.size(mem[_2553 + 12 len 20])
                                staticcall mem[_2553 + 12 len 20].token0() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                s = _2558
                                t = _2558
                                u = _2553
                                u = _2553 + return_data.size
                                u = u + 1
                                continue 
                            if not address(t):
                                revert with 0, 'Couldn't find pair.'
                            require ext_code.size(address(t))
                            staticcall address(t).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2542 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2542] == mem[_2542 + 12 len 20]
                            if mem[_2542 + 12 len 20] == stor1:
                                if not mem[96]:
                                    revert with 0, 50
                                if 1 >= mem[96]:
                                    revert with 0, 50
                                if 0 >= mem[96]:
                                    revert with 0, 50
                                mem[128] = address(arg1)
                                if 1 >= mem[96]:
                                    revert with 0, 50
                                mem[160] = stor1
                                if 3600 > !block.timestamp:
                                    revert with 0, 17
                                require ext_code.size(address(t))
                                staticcall address(t).getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2580 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _2590 = mem[_2580]
                                require mem[_2580] == mem[_2580 + 18 len 14]
                                _2594 = mem[_2580 + 32]
                                require mem[_2580 + 32] == mem[_2580 + 50 len 14]
                                require mem[_2580 + 64] == mem[_2580 + 92 len 4]
                                require ext_code.size(address(t))
                                staticcall address(t).token0() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2609 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2609] == mem[_2609 + 12 len 20]
                                mem[mem[64] + 4] = msg.value
                                if mem[_2609 + 12 len 20] == stor1:
                                    mem[mem[64] + 36] = Mask(112, 0, _2590)
                                    mem[mem[64] + 68] = Mask(112, 0, _2594)
                                    require ext_code.size(stor2[idx])
                                    staticcall stor2[idx].getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args msg.value, _2590 << 144, Mask(112, 0, _2594)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2641 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2646 = mem[_2641]
                                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2646
                                    mem[mem[64] + 36] = 128
                                    _2658 = mem[96]
                                    mem[mem[64] + 132] = mem[96]
                                    u = 0
                                    v = 128
                                    w = mem[64] + 164
                                    while u < _2658:
                                        mem[w] = mem[v + 12 len 20]
                                        require s == address(s)
                                        require ext_code.size(address(t))
                                        staticcall address(t).token0() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        u = u + 1
                                        v = v + 32
                                        w = w + 32
                                        continue 
                                    mem[mem[64] + 100] = block.timestamp + 3600
                                    require ext_code.size(stor2[idx])
                                    call stor2[idx].mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 128, msg.sender, block.timestamp + 3600, mem[mem[64] + 132 len (32 * _2658) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2732 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2646
                                    mem[mem[64] + 36] = 10^10
                                    mem[mem[64] + 68] = 160
                                    _2740 = mem[96]
                                    mem[mem[64] + 164] = mem[96]
                                    u = 0
                                    v = 128
                                    w = mem[64] + 196
                                    while u < _2740:
                                        mem[w] = mem[v + 12 len 20]
                                        require s == address(s)
                                        require ext_code.size(address(t))
                                        staticcall address(t).token0() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        u = u + 1
                                        v = v + 32
                                        w = w + 32
                                        continue 
                                    mem[_2732 + 100] = msg.sender
                                    mem[_2732 + 132] = block.timestamp + 3600
                                    require ext_code.size(stor2[idx])
                                    call stor2[idx].mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _2732 + (32 * _2740) + -mem[64] + 192]
                                else:
                                    mem[mem[64] + 36] = Mask(112, 0, _2594)
                                    mem[mem[64] + 68] = Mask(112, 0, _2590)
                                    require ext_code.size(stor2[idx])
                                    staticcall stor2[idx].getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args msg.value, _2594 << 144, Mask(112, 0, _2590)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2640 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2645 = mem[_2640]
                                    _2651 = mem[64]
                                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2645
                                    mem[mem[64] + 36] = 128
                                    _2657 = mem[96]
                                    mem[mem[64] + 132] = mem[96]
                                    u = 0
                                    v = 128
                                    w = mem[64] + 164
                                    while u < _2657:
                                        mem[w] = mem[v + 12 len 20]
                                        require s == address(s)
                                        require ext_code.size(address(t))
                                        staticcall address(t).token0() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        u = u + 1
                                        v = v + 32
                                        w = w + 32
                                        continue 
                                    mem[_2651 + 68] = msg.sender
                                    mem[_2651 + 100] = block.timestamp + 3600
                                    require ext_code.size(stor2[idx])
                                    call stor2[idx].mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _2651 + (32 * _2657) + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2731 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2645
                                    mem[mem[64] + 36] = 10^10
                                    mem[mem[64] + 68] = 160
                                    _2739 = mem[96]
                                    mem[mem[64] + 164] = mem[96]
                                    u = 0
                                    v = 128
                                    w = mem[64] + 196
                                    while u < _2739:
                                        mem[w] = mem[v + 12 len 20]
                                        require s == address(s)
                                        require ext_code.size(address(t))
                                        staticcall address(t).token0() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        u = u + 1
                                        v = v + 32
                                        w = w + 32
                                        continue 
                                    mem[_2731 + 100] = msg.sender
                                    mem[_2731 + 132] = block.timestamp + 3600
                                    require ext_code.size(stor2[idx])
                                    call stor2[idx].mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _2731 + (32 * _2739) + -mem[64] + 192]
                            else:
                                require ext_code.size(address(t))
                                staticcall address(t).token1() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2559 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2559] == mem[_2559 + 12 len 20]
                                if mem[_2559 + 12 len 20] != stor1:
                                    revert with 0, 'Couldn't check, no WFTM pair.'
                                if not mem[96]:
                                    revert with 0, 50
                                if 1 >= mem[96]:
                                    revert with 0, 50
                                if 0 >= mem[96]:
                                    revert with 0, 50
                                mem[128] = address(arg1)
                                if 1 >= mem[96]:
                                    revert with 0, 50
                                mem[160] = stor1
                                if 3600 > !block.timestamp:
                                    revert with 0, 17
                                require ext_code.size(address(t))
                                staticcall address(t).getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2599 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _2610 = mem[_2599]
                                require mem[_2599] == mem[_2599 + 18 len 14]
                                _2617 = mem[_2599 + 32]
                                require mem[_2599 + 32] == mem[_2599 + 50 len 14]
                                require mem[_2599 + 64] == mem[_2599 + 92 len 4]
                                require ext_code.size(address(t))
                                staticcall address(t).token0() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2635 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2635] == mem[_2635 + 12 len 20]
                                mem[mem[64] + 4] = msg.value
                                if mem[_2635 + 12 len 20] != stor1:
                                    mem[mem[64] + 36] = Mask(112, 0, _2617)
                                    mem[mem[64] + 68] = Mask(112, 0, _2610)
                                    require ext_code.size(stor2[idx])
                                    staticcall stor2[idx].getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args msg.value, _2617 << 144, Mask(112, 0, _2610)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2675 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2677 = mem[_2675]
                                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2677
                                    mem[mem[64] + 36] = 128
                                    _2689 = mem[96]
                                    mem[mem[64] + 132] = mem[96]
                                    u = 0
                                    v = 128
                                    w = mem[64] + 164
                                    while u < _2689:
                                        mem[w] = mem[v + 12 len 20]
                                        require s == address(s)
                                        require ext_code.size(address(t))
                                        staticcall address(t).token0() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        u = u + 1
                                        v = v + 32
                                        w = w + 32
                                        continue 
                                    mem[mem[64] + 100] = block.timestamp + 3600
                                    require ext_code.size(stor2[idx])
                                    call stor2[idx].mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 128, msg.sender, block.timestamp + 3600, mem[mem[64] + 132 len (32 * _2689) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2733 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2677
                                    mem[mem[64] + 36] = 10^10
                                    mem[mem[64] + 68] = 160
                                    _2741 = mem[96]
                                    mem[mem[64] + 164] = mem[96]
                                    u = 0
                                    v = 128
                                    w = mem[64] + 196
                                    while u < _2741:
                                        mem[w] = mem[v + 12 len 20]
                                        require s == address(s)
                                        require ext_code.size(address(t))
                                        staticcall address(t).token0() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        u = u + 1
                                        v = v + 32
                                        w = w + 32
                                        continue 
                                    mem[_2733 + 100] = msg.sender
                                    mem[_2733 + 132] = block.timestamp + 3600
                                    require ext_code.size(stor2[idx])
                                    call stor2[idx].mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _2733 + (32 * _2741) + -mem[64] + 192]
                                else:
                                    mem[mem[64] + 36] = Mask(112, 0, _2610)
                                    mem[mem[64] + 68] = Mask(112, 0, _2617)
                                    require ext_code.size(stor2[idx])
                                    staticcall stor2[idx].getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args msg.value, _2610 << 144, Mask(112, 0, _2617)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2676 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2678 = mem[_2676]
                                    _2684 = mem[64]
                                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2678
                                    mem[mem[64] + 36] = 128
                                    _2690 = mem[96]
                                    mem[mem[64] + 132] = mem[96]
                                    u = 0
                                    v = 128
                                    w = mem[64] + 164
                                    while u < _2690:
                                        mem[w] = mem[v + 12 len 20]
                                        require s == address(s)
                                        require ext_code.size(address(t))
                                        staticcall address(t).token0() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        u = u + 1
                                        v = v + 32
                                        w = w + 32
                                        continue 
                                    mem[_2684 + 68] = msg.sender
                                    mem[_2684 + 100] = block.timestamp + 3600
                                    require ext_code.size(stor2[idx])
                                    call stor2[idx].mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _2684 + (32 * _2690) + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2734 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2678
                                    mem[mem[64] + 36] = 10^10
                                    mem[mem[64] + 68] = 160
                                    _2742 = mem[96]
                                    mem[mem[64] + 164] = mem[96]
                                    u = 0
                                    v = 128
                                    w = mem[64] + 196
                                    while u < _2742:
                                        mem[w] = mem[v + 12 len 20]
                                        require s == address(s)
                                        require ext_code.size(address(t))
                                        staticcall address(t).token0() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        u = u + 1
                                        v = v + 32
                                        w = w + 32
                                        continue 
                                    mem[_2734 + 100] = msg.sender
                                    mem[_2734 + 132] = block.timestamp + 3600
                                    require ext_code.size(stor2[idx])
                                    call stor2[idx].mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _2734 + (32 * _2742) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        revert with ext_call.return_data[0 len return_data.size]
    revert with 0, 'Couldn't find pair.'
}



}
