contract main {




// =====================  Runtime code  =====================


address stor0;
address stor2;
mapping of uint8 stor99;

function _fallback() payable {
  stop
}

function sub_618a5b57(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require cd[4] + (256 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size - s >= 256
        _246 = mem[64]
        require mem[64] + 256 >= mem[64] and mem[64] + 256 <= test266151307()
        mem[64] = mem[64] + 256
        require cd[s] == address(cd[s])
        mem[_246] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_246 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == ('signextend', 15, ('cd', ('add', 64, ('var', 1))))
        mem[_246 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == ('signextend', 15, ('cd', ('add', 96, ('var', 1))))
        mem[_246 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == address(cd[(s + 128)])
        mem[_246 + 128] = cd[(s + 128)]
        require cd[(s + 160)] == address(cd[(s + 160)])
        mem[_246 + 160] = cd[(s + 160)]
        require cd[(s + 192)] == bool(cd[(s + 192)])
        mem[_246 + 192] = cd[(s + 192)]
        require cd[(s + 224)] == bool(cd[(s + 224)])
        mem[_246 + 224] = cd[(s + 224)]
        mem[t] = _246
        idx = idx + 1
        s = s + 256
        t = t + 32
        continue 
    if stor2 != msg.sender:
        revert with 0, 'RESTRICTED'
    require 0 < mem[96]
    if mem[mem[128] + 192]:
        _486 = mem[96]
        idx = 0
        s = msg.value
        while idx < _486:
            _491 = mem[64]
            mem[64] = mem[64] + 256
            mem[_491] = 0
            mem[_491 + 32] = 0
            mem[_491 + 64] = 0
            mem[_491 + 96] = 0
            mem[_491 + 128] = 0
            mem[_491 + 160] = 0
            mem[_491 + 192] = 0
            mem[_491 + 224] = 0
            require idx < mem[96]
            _504 = mem[(32 * idx) + 128]
            if mem[mem[(32 * idx) + 128] + 192]:
                if stor0 == mem[mem[(32 * idx) + 128] + 140 len 20]:
                    _520 = mem[mem[(32 * idx) + 128] + 32]
                    mem[mem[64] + 4] = 1
                    mem[mem[64] + 36] = block.timestamp + 1000
                    require ext_code.size(address(_520))
                    call address(_520).ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
                       value msg.value wei
                         gas gas_remaining wei
                        args 1, block.timestamp + 1000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _589 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_589] == mem[_589]
                    _486 = mem[96]
                    idx = idx + 1
                    s = mem[_589]
                    continue 
                if stor0 != mem[mem[(32 * idx) + 128] + 172 len 20]:
                    revert with 0, 'ANYSWAP NO WFTM'
                _536 = mem[mem[(32 * idx) + 128] + 32]
                _537 = mem[mem[(32 * idx) + 128] + 128]
                _549 = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
                mem[0] = mem[mem[(32 * idx) + 128] + 140 len 20]
                mem[32] = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
                if stor[_549][address(mem[mem[(32 * idx) + 128] + 128])]:
                    _574 = mem[mem[(32 * idx) + 128] + 32]
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = block.timestamp + 1000
                    require ext_code.size(address(_574))
                    call address(_574).tokenToEthSwapInput(uint256 rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args s, 1, block.timestamp + 1000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _614 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_614] == mem[_614]
                    _486 = mem[96]
                    idx = idx + 1
                    s = mem[_614]
                    continue 
                mem[mem[64] + 4] = address(_536)
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_537))
                call address(_537).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(_536), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _598 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_598] == bool(mem[_598])
                mem[0] = address(_537)
                mem[32] = sha3(address(_536), 1)
                _640 = mem[_504 + 32]
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = block.timestamp + 1000
                require ext_code.size(address(_640))
                call address(_640).tokenToEthSwapInput(uint256 rg1, uint256 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args s, 1, block.timestamp + 1000
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _664 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_664] == mem[_664]
                _486 = mem[96]
                idx = idx + 1
                s = mem[_664]
                continue 
            if mem[mem[(32 * idx) + 128] + 224]:
                _517 = mem[mem[(32 * idx) + 128] + 32]
                _518 = mem[mem[(32 * idx) + 128] + 128]
                _533 = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
                mem[0] = mem[mem[(32 * idx) + 128] + 140 len 20]
                mem[32] = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
                if stor[_533][address(mem[mem[(32 * idx) + 128] + 128])]:
                    _565 = mem[mem[(32 * idx) + 128] + 32]
                    _566 = mem[mem[(32 * idx) + 128] + 64]
                    _567 = mem[mem[(32 * idx) + 128] + 96]
                    mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ('signextend', 15, ('var', '_566'))
                    mem[mem[64] + 36] = ('signextend', 15, ('var', '_567'))
                    mem[mem[64] + 68] = s
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(_565))
                    call address(_565).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args ('signextend', 15, ('var', '_566')), ('signextend', 15, ('var', '_567')), s, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _620 = mem[_504 + 160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_620))
                    staticcall address(_620).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _650 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_650] == mem[_650]
                    _486 = mem[96]
                    idx = idx + 1
                    s = mem[_650]
                    continue 
                mem[mem[64] + 4] = address(_517)
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_518))
                call address(_518).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(_517), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _595 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_595] == bool(mem[_595])
                mem[0] = address(_518)
                mem[32] = sha3(address(_517), 1)
                _631 = mem[_504 + 32]
                _632 = mem[_504 + 64]
                _633 = mem[_504 + 96]
                mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ('signextend', 15, ('var', '_632'))
                mem[mem[64] + 36] = ('signextend', 15, ('var', '_633'))
                mem[mem[64] + 68] = s
                mem[mem[64] + 100] = 1
                require ext_code.size(address(_631))
                call address(_631).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args ('signextend', 15, ('var', '_632')), ('signextend', 15, ('var', '_633')), s, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _671 = mem[_504 + 160]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_671))
                staticcall address(_671).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _688 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_688] == mem[_688]
                _486 = mem[96]
                idx = idx + 1
                s = mem[_688]
                continue 
            _514 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_514 + 32 len 64] = code.data[3986 len 64]
            require 0 < mem[_514]
            mem[_514 + 32] = mem[_504 + 140 len 20]
            require 1 < mem[_514]
            mem[_514 + 64] = mem[_504 + 172 len 20]
            _546 = mem[_504]
            _547 = mem[_504 + 128]
            mem[0] = mem[_504 + 12 len 20]
            _557 = sha3(mem[0], 1)
            mem[0] = address(_547)
            mem[32] = _557
            if stor[_557][address(_547)]:
                _579 = mem[_504]
                mem[_514 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_514 + 100] = s
                mem[_514 + 132] = 1
                mem[_514 + 164] = 160
                mem[_514 + 260] = mem[_514]
                s = 0
                t = _514 + 32
                u = _514 + 292
                while s < mem[_514]:
                    mem[u] = mem[t + 12 len 20]
                    _486 = mem[96]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_514 + 196] = this.address
                mem[_514 + 228] = block.timestamp + 1000
                require ext_code.size(address(_579))
                call address(_579).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _514 + (32 * mem[_514]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _729 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _733 = mem[_729]
                require mem[_729] <= test266151307()
                require _729 + mem[_729] + 31 < _729 + return_data.size
                _737 = mem[_729 + mem[_729]]
                require mem[_729 + mem[_729]] <= test266151307()
                require (32 * mem[_729 + mem[_729]]) + 32 >= 0 and _729 + ceil32(return_data.size) + (32 * mem[_729 + mem[_729]]) + 32 <= test266151307()
                mem[64] = _729 + ceil32(return_data.size) + (32 * mem[_729 + mem[_729]]) + 32
                mem[_729 + ceil32(return_data.size)] = _737
                require _733 + (32 * _737) + 32 <= return_data.size
                s = 0
                t = _729 + _733 + 32
                u = _729 + ceil32(return_data.size) + 32
                while s < _737:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    _486 = mem[96]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                _774 = mem[_504 + 160]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_774))
                staticcall address(_774).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _785 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_785] == mem[_785]
                _486 = mem[96]
                idx = idx + 1
                s = mem[_785]
                continue 
            mem[_514 + 100] = address(_546)
            mem[_514 + 132] = -1
            require ext_code.size(address(_547))
            call address(_547).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(_546), -1
            mem[_514 + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _514 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[0] = address(_547)
            mem[32] = sha3(address(_546), 1)
            _644 = mem[_504]
            mem[_514 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_514 + ceil32(return_data.size) + 100] = s
            mem[_514 + ceil32(return_data.size) + 132] = 1
            mem[_514 + ceil32(return_data.size) + 164] = 160
            mem[_514 + ceil32(return_data.size) + 260] = mem[_514]
            t = 0
            u = _514 + 32
            v = _514 + ceil32(return_data.size) + 292
            while t < mem[_514]:
                mem[v] = mem[u + 12 len 20]
                _486 = mem[96]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            mem[_514 + ceil32(return_data.size) + 196] = this.address
            mem[_514 + ceil32(return_data.size) + 228] = block.timestamp + 1000
            require ext_code.size(address(_644))
            call address(_644).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args s, 1, 160, address(this.address), block.timestamp + 1000, mem[_514 + ceil32(return_data.size) + 260 len (32 * mem[_514]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_514 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _514 + (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _732 = mem[_514 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_514 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 <= test266151307()
            require _514 + ceil32(return_data.size) + mem[_514 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 127 < _514 + ceil32(return_data.size) + return_data.size + 96
            _736 = mem[_514 + ceil32(return_data.size) + mem[_514 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            require mem[_514 + ceil32(return_data.size) + mem[_514 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= test266151307()
            require (32 * mem[_514 + ceil32(return_data.size) + mem[_514 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 >= 0 and _514 + (2 * ceil32(return_data.size)) + (32 * mem[_514 + ceil32(return_data.size) + mem[_514 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 128 <= test266151307()
            mem[64] = _514 + (2 * ceil32(return_data.size)) + (32 * mem[_514 + ceil32(return_data.size) + mem[_514 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 128
            mem[_514 + (2 * ceil32(return_data.size)) + 96] = _736
            require _732 + (32 * _736) + 32 <= return_data.size
            s = 0
            t = _514 + ceil32(return_data.size) + _732 + 128
            u = _514 + (2 * ceil32(return_data.size)) + 128
            while s < _736:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                _486 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _772 = mem[_504 + 160]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_772))
            staticcall address(_772).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _784 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_784] == mem[_784]
            _486 = mem[96]
            idx = idx + 1
            s = mem[_784]
            continue 
    else:
        mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor0)
        call stor0.deposit() with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _487 = mem[96]
        idx = 0
        s = msg.value
        while idx < _487:
            _495 = mem[64]
            mem[64] = mem[64] + 256
            mem[_495] = 0
            mem[_495 + 32] = 0
            mem[_495 + 64] = 0
            mem[_495 + 96] = 0
            mem[_495 + 128] = 0
            mem[_495 + 160] = 0
            mem[_495 + 192] = 0
            mem[_495 + 224] = 0
            require idx < mem[96]
            _508 = mem[(32 * idx) + 128]
            if mem[mem[(32 * idx) + 128] + 192]:
                if stor0 == mem[mem[(32 * idx) + 128] + 140 len 20]:
                    _528 = mem[mem[(32 * idx) + 128] + 32]
                    mem[mem[64] + 4] = 1
                    mem[mem[64] + 36] = block.timestamp + 1000
                    require ext_code.size(address(_528))
                    call address(_528).ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
                       value msg.value wei
                         gas gas_remaining wei
                        args 1, block.timestamp + 1000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _591 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_591] == mem[_591]
                    _487 = mem[96]
                    idx = idx + 1
                    s = mem[_591]
                    continue 
                if stor0 != mem[mem[(32 * idx) + 128] + 172 len 20]:
                    revert with 0, 'ANYSWAP NO WFTM'
                _544 = mem[mem[(32 * idx) + 128] + 32]
                _545 = mem[mem[(32 * idx) + 128] + 128]
                _554 = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
                mem[0] = mem[mem[(32 * idx) + 128] + 140 len 20]
                mem[32] = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
                if stor[_554][address(mem[mem[(32 * idx) + 128] + 128])]:
                    _576 = mem[mem[(32 * idx) + 128] + 32]
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = block.timestamp + 1000
                    require ext_code.size(address(_576))
                    call address(_576).tokenToEthSwapInput(uint256 rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args s, 1, block.timestamp + 1000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _615 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_615] == mem[_615]
                    _487 = mem[96]
                    idx = idx + 1
                    s = mem[_615]
                    continue 
                mem[mem[64] + 4] = address(_544)
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_545))
                call address(_545).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(_544), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _600 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_600] == bool(mem[_600])
                mem[0] = address(_545)
                mem[32] = sha3(address(_544), 1)
                _642 = mem[_508 + 32]
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = block.timestamp + 1000
                require ext_code.size(address(_642))
                call address(_642).tokenToEthSwapInput(uint256 rg1, uint256 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args s, 1, block.timestamp + 1000
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _665 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_665] == mem[_665]
                _487 = mem[96]
                idx = idx + 1
                s = mem[_665]
                continue 
            if mem[mem[(32 * idx) + 128] + 224]:
                _525 = mem[mem[(32 * idx) + 128] + 32]
                _526 = mem[mem[(32 * idx) + 128] + 128]
                _541 = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
                mem[0] = mem[mem[(32 * idx) + 128] + 140 len 20]
                mem[32] = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
                if stor[_541][address(mem[mem[(32 * idx) + 128] + 128])]:
                    _570 = mem[mem[(32 * idx) + 128] + 32]
                    _571 = mem[mem[(32 * idx) + 128] + 64]
                    _572 = mem[mem[(32 * idx) + 128] + 96]
                    mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ('signextend', 15, ('var', '_571'))
                    mem[mem[64] + 36] = ('signextend', 15, ('var', '_572'))
                    mem[mem[64] + 68] = s
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(_570))
                    call address(_570).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args ('signextend', 15, ('var', '_571')), ('signextend', 15, ('var', '_572')), s, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _625 = mem[_508 + 160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_625))
                    staticcall address(_625).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _651 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_651] == mem[_651]
                    _487 = mem[96]
                    idx = idx + 1
                    s = mem[_651]
                    continue 
                mem[mem[64] + 4] = address(_525)
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_526))
                call address(_526).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(_525), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _597 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_597] == bool(mem[_597])
                mem[0] = address(_526)
                mem[32] = sha3(address(_525), 1)
                _636 = mem[_508 + 32]
                _637 = mem[_508 + 64]
                _638 = mem[_508 + 96]
                mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ('signextend', 15, ('var', '_637'))
                mem[mem[64] + 36] = ('signextend', 15, ('var', '_638'))
                mem[mem[64] + 68] = s
                mem[mem[64] + 100] = 1
                require ext_code.size(address(_636))
                call address(_636).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args ('signextend', 15, ('var', '_637')), ('signextend', 15, ('var', '_638')), s, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _675 = mem[_508 + 160]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_675))
                staticcall address(_675).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _689 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_689] == mem[_689]
                _487 = mem[96]
                idx = idx + 1
                s = mem[_689]
                continue 
            _522 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_522 + 32 len 64] = code.data[3986 len 64]
            require 0 < mem[_522]
            mem[_522 + 32] = mem[_508 + 140 len 20]
            require 1 < mem[_522]
            mem[_522 + 64] = mem[_508 + 172 len 20]
            _551 = mem[_508]
            _552 = mem[_508 + 128]
            mem[0] = mem[_508 + 12 len 20]
            _561 = sha3(mem[0], 1)
            mem[0] = address(_552)
            mem[32] = _561
            if stor[_561][address(_552)]:
                _582 = mem[_508]
                mem[_522 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_522 + 100] = s
                mem[_522 + 132] = 1
                mem[_522 + 164] = 160
                mem[_522 + 260] = mem[_522]
                s = 0
                t = _522 + 32
                u = _522 + 292
                while s < mem[_522]:
                    mem[u] = mem[t + 12 len 20]
                    _487 = mem[96]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_522 + 196] = this.address
                mem[_522 + 228] = block.timestamp + 1000
                require ext_code.size(address(_582))
                call address(_582).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _522 + (32 * mem[_522]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _731 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _735 = mem[_731]
                require mem[_731] <= test266151307()
                require _731 + mem[_731] + 31 < _731 + return_data.size
                _739 = mem[_731 + mem[_731]]
                require mem[_731 + mem[_731]] <= test266151307()
                require (32 * mem[_731 + mem[_731]]) + 32 >= 0 and _731 + ceil32(return_data.size) + (32 * mem[_731 + mem[_731]]) + 32 <= test266151307()
                mem[64] = _731 + ceil32(return_data.size) + (32 * mem[_731 + mem[_731]]) + 32
                mem[_731 + ceil32(return_data.size)] = _739
                require _735 + (32 * _739) + 32 <= return_data.size
                s = 0
                t = _731 + _735 + 32
                u = _731 + ceil32(return_data.size) + 32
                while s < _739:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    _487 = mem[96]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                _778 = mem[_508 + 160]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_778))
                staticcall address(_778).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _787 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_787] == mem[_787]
                _487 = mem[96]
                idx = idx + 1
                s = mem[_787]
                continue 
            mem[_522 + 100] = address(_551)
            mem[_522 + 132] = -1
            require ext_code.size(address(_552))
            call address(_552).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(_551), -1
            mem[_522 + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _522 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[0] = address(_552)
            mem[32] = sha3(address(_551), 1)
            _646 = mem[_508]
            mem[_522 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_522 + ceil32(return_data.size) + 100] = s
            mem[_522 + ceil32(return_data.size) + 132] = 1
            mem[_522 + ceil32(return_data.size) + 164] = 160
            mem[_522 + ceil32(return_data.size) + 260] = mem[_522]
            s = 0
            t = _522 + 32
            u = _522 + ceil32(return_data.size) + 292
            while s < mem[_522]:
                mem[u] = mem[t + 12 len 20]
                _487 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_522 + ceil32(return_data.size) + 196] = this.address
            mem[_522 + ceil32(return_data.size) + 228] = block.timestamp + 1000
            require ext_code.size(address(_646))
            call address(_646).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _522 + ceil32(return_data.size) + (32 * mem[_522]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _730 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _734 = mem[_730]
            require mem[_730] <= test266151307()
            require _730 + mem[_730] + 31 < _730 + return_data.size
            _738 = mem[_730 + mem[_730]]
            require mem[_730 + mem[_730]] <= test266151307()
            require (32 * mem[_730 + mem[_730]]) + 32 >= 0 and _730 + ceil32(return_data.size) + (32 * mem[_730 + mem[_730]]) + 32 <= test266151307()
            mem[64] = _730 + ceil32(return_data.size) + (32 * mem[_730 + mem[_730]]) + 32
            mem[_730 + ceil32(return_data.size)] = _738
            require _734 + (32 * _738) + 32 <= return_data.size
            s = 0
            t = _730 + _734 + 32
            u = _730 + ceil32(return_data.size) + 32
            while s < _738:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                _487 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _776 = mem[_508 + 160]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_776))
            staticcall address(_776).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _786 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_786] == mem[_786]
            _487 = mem[96]
            idx = idx + 1
            s = mem[_786]
            continue 
    if s <= msg.value:
        revert with 0, 'P'
    require mem[96] - 1 < mem[96]
    if mem[mem[(32 * mem[96] - 1) + 128] + 192]:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(stor0)
        call stor0.withdraw(uint256 rg1) with:
             gas gas_remaining wei
            args s
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
}



}
