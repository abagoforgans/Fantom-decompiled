contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor2;
address stor3;
mapping of uint8 stor99;

function _fallback() payable {
  stop
}

function allow(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor3 != msg.sender:
        revert with 0, 'NOT OWNER'
    stor2[address(arg1)] = uint8(arg2)
}

function withdrawETH() {
    if not stor2[msg.sender]:
        revert with 0, 'RESTRICTED'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor2[msg.sender]:
        revert with 0, 'RESTRICTED'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor3, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_1c3133cf(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if not stor2[msg.sender]:
        revert with 0, 'RESTRICTED'
    mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(arg2.length) + arg2.length + 128] = 0
    call address(arg1) with:
       funct Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256
       value msg.value wei
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
}

function sub_30fcf208(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require cd[4] + (288 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size - s >= 288
        _290 = mem[64]
        require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
        mem[64] = mem[64] + 288
        require cd[s] == address(cd[s])
        mem[_290] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_290 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == ('signextend', 15, ('cd', ('add', 64, ('var', 1))))
        mem[_290 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == ('signextend', 15, ('cd', ('add', 96, ('var', 1))))
        mem[_290 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == address(cd[(s + 128)])
        mem[_290 + 128] = cd[(s + 128)]
        require cd[(s + 160)] == address(cd[(s + 160)])
        mem[_290 + 160] = cd[(s + 160)]
        require cd[(s + 192)] == bool(cd[(s + 192)])
        mem[_290 + 192] = cd[(s + 192)]
        require cd[(s + 224)] == bool(cd[(s + 224)])
        mem[_290 + 224] = cd[(s + 224)]
        require cd[(s + 256)] == bool(cd[(s + 256)])
        mem[_290 + 256] = cd[(s + 256)]
        mem[t] = _290
        idx = idx + 1
        s = s + 288
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = 2
    if not stor2[msg.sender]:
        revert with 0, 'RESTRICTED'
    require 0 < mem[96]
    if mem[mem[128] + 192]:
        _576 = mem[96]
        idx = 0
        s = msg.value
        while idx < _576:
            _581 = mem[64]
            mem[64] = mem[64] + 288
            mem[_581] = 0
            mem[_581 + 32] = 0
            mem[_581 + 64] = 0
            mem[_581 + 96] = 0
            mem[_581 + 128] = 0
            mem[_581 + 160] = 0
            mem[_581 + 192] = 0
            mem[_581 + 224] = 0
            mem[_581 + 256] = 0
            require idx < mem[96]
            _594 = mem[(32 * idx) + 128]
            if mem[mem[(32 * idx) + 128] + 192]:
                if stor0 == mem[mem[(32 * idx) + 128] + 140 len 20]:
                    _610 = mem[mem[(32 * idx) + 128] + 32]
                    mem[mem[64] + 4] = 1
                    mem[mem[64] + 36] = block.timestamp + 1000
                    require ext_code.size(address(_610))
                    call address(_610).ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
                       value msg.value wei
                         gas gas_remaining wei
                        args 1, block.timestamp + 1000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _689 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_689] == mem[_689]
                    _576 = mem[96]
                    idx = idx + 1
                    s = mem[_689]
                    continue 
                if stor0 != mem[mem[(32 * idx) + 128] + 172 len 20]:
                    revert with 0, 'ANYSWAP NO WFTM'
                _626 = mem[mem[(32 * idx) + 128] + 32]
                _627 = mem[mem[(32 * idx) + 128] + 128]
                _639 = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
                mem[0] = mem[mem[(32 * idx) + 128] + 140 len 20]
                mem[32] = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
                if stor[_639][address(mem[mem[(32 * idx) + 128] + 128])]:
                    _666 = mem[mem[(32 * idx) + 128] + 32]
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = block.timestamp + 1000
                    require ext_code.size(address(_666))
                    call address(_666).tokenToEthSwapInput(uint256 rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args s, 1, block.timestamp + 1000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _714 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_714] == mem[_714]
                    _576 = mem[96]
                    idx = idx + 1
                    s = mem[_714]
                    continue 
                mem[mem[64] + 4] = address(_626)
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_627))
                call address(_627).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(_626), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _698 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_698] == bool(mem[_698])
                mem[0] = address(_627)
                mem[32] = sha3(address(_626), 1)
                _743 = mem[_594 + 32]
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = block.timestamp + 1000
                require ext_code.size(address(_743))
                call address(_743).tokenToEthSwapInput(uint256 rg1, uint256 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args s, 1, block.timestamp + 1000
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _785 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_785] == mem[_785]
                _576 = mem[96]
                idx = idx + 1
                s = mem[_785]
                continue 
            if mem[mem[(32 * idx) + 128] + 224]:
                _607 = mem[mem[(32 * idx) + 128] + 32]
                _608 = mem[mem[(32 * idx) + 128] + 128]
                _623 = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
                mem[0] = mem[mem[(32 * idx) + 128] + 140 len 20]
                mem[32] = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
                if stor[_623][address(mem[mem[(32 * idx) + 128] + 128])]:
                    if not mem[mem[(32 * idx) + 128] + 256]:
                        _658 = mem[mem[(32 * idx) + 128] + 32]
                        _659 = mem[mem[(32 * idx) + 128] + 64]
                        _660 = mem[mem[(32 * idx) + 128] + 96]
                        mem[mem[64]] = 0xa6417ed600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ('signextend', 15, ('var', '_659'))
                        mem[mem[64] + 36] = ('signextend', 15, ('var', '_660'))
                        mem[mem[64] + 68] = s
                        mem[mem[64] + 100] = 1
                        require ext_code.size(address(_658))
                        call address(_658).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args ('signextend', 15, ('var', '_659')), ('signextend', 15, ('var', '_660')), s, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _739 = mem[_594 + 160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_739))
                        staticcall address(_739).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _770 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_770] == mem[_770]
                        _576 = mem[96]
                        idx = idx + 1
                        s = mem[_770]
                        continue 
                    _662 = mem[mem[(32 * idx) + 128] + 32]
                    _663 = mem[mem[(32 * idx) + 128] + 64]
                    _664 = mem[mem[(32 * idx) + 128] + 96]
                    mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ('signextend', 15, ('var', '_663'))
                    mem[mem[64] + 36] = ('signextend', 15, ('var', '_664'))
                    mem[mem[64] + 68] = s
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(_662))
                    call address(_662).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args ('signextend', 15, ('var', '_663')), ('signextend', 15, ('var', '_664')), s, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _741 = mem[_594 + 160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_741))
                    staticcall address(_741).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _771 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_771] == mem[_771]
                    _576 = mem[96]
                    idx = idx + 1
                    s = mem[_771]
                    continue 
                mem[mem[64] + 4] = address(_607)
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_608))
                call address(_608).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(_607), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _695 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_695] == bool(mem[_695])
                mem[0] = address(_608)
                mem[32] = sha3(address(_607), 1)
                if not mem[_594 + 256]:
                    _731 = mem[_594 + 32]
                    _732 = mem[_594 + 64]
                    _733 = mem[_594 + 96]
                    mem[mem[64]] = 0xa6417ed600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ('signextend', 15, ('var', '_732'))
                    mem[mem[64] + 36] = ('signextend', 15, ('var', '_733'))
                    mem[mem[64] + 68] = s
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(_731))
                    call address(_731).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args ('signextend', 15, ('var', '_732')), ('signextend', 15, ('var', '_733')), s, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _798 = mem[_594 + 160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_798))
                    staticcall address(_798).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _819 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_819] == mem[_819]
                    _576 = mem[96]
                    idx = idx + 1
                    s = mem[_819]
                    continue 
                _735 = mem[_594 + 32]
                _736 = mem[_594 + 64]
                _737 = mem[_594 + 96]
                mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ('signextend', 15, ('var', '_736'))
                mem[mem[64] + 36] = ('signextend', 15, ('var', '_737'))
                mem[mem[64] + 68] = s
                mem[mem[64] + 100] = 1
                require ext_code.size(address(_735))
                call address(_735).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args ('signextend', 15, ('var', '_736')), ('signextend', 15, ('var', '_737')), s, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _800 = mem[_594 + 160]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_800))
                staticcall address(_800).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _820 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_820] == mem[_820]
                _576 = mem[96]
                idx = idx + 1
                s = mem[_820]
                continue 
            _604 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_604 + 32 len 64] = code.data[5664 len 64]
            require 0 < mem[_604]
            mem[_604 + 32] = mem[_594 + 140 len 20]
            require 1 < mem[_604]
            mem[_604 + 64] = mem[_594 + 172 len 20]
            _636 = mem[_594]
            _637 = mem[_594 + 128]
            mem[0] = mem[_594 + 12 len 20]
            _647 = sha3(mem[0], 1)
            mem[0] = address(_637)
            mem[32] = _647
            if stor[_647][address(_637)]:
                _679 = mem[_594]
                mem[_604 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_604 + 100] = s
                mem[_604 + 132] = 1
                mem[_604 + 164] = 160
                mem[_604 + 260] = mem[_604]
                s = 0
                t = _604 + 32
                u = _604 + 292
                while s < mem[_604]:
                    mem[u] = mem[t + 12 len 20]
                    _576 = mem[96]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_604 + 196] = this.address
                mem[_604 + 228] = block.timestamp + 1000
                require ext_code.size(address(_679))
                call address(_679).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _604 + (32 * mem[_604]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _863 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _867 = mem[_863]
                require mem[_863] <= test266151307()
                require _863 + mem[_863] + 31 < _863 + return_data.size
                _871 = mem[_863 + mem[_863]]
                require mem[_863 + mem[_863]] <= test266151307()
                require (32 * mem[_863 + mem[_863]]) + 32 >= 0 and _863 + ceil32(return_data.size) + (32 * mem[_863 + mem[_863]]) + 32 <= test266151307()
                mem[64] = _863 + ceil32(return_data.size) + (32 * mem[_863 + mem[_863]]) + 32
                mem[_863 + ceil32(return_data.size)] = _871
                require _867 + (32 * _871) + 32 <= return_data.size
                s = 0
                t = _863 + _867 + 32
                u = _863 + ceil32(return_data.size) + 32
                while s < _871:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    _576 = mem[96]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                _908 = mem[_594 + 160]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_908))
                staticcall address(_908).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _919 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_919] == mem[_919]
                _576 = mem[96]
                idx = idx + 1
                s = mem[_919]
                continue 
            mem[_604 + 100] = address(_636)
            mem[_604 + 132] = -1
            require ext_code.size(address(_637))
            call address(_637).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(_636), -1
            mem[_604 + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _604 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[0] = address(_637)
            mem[32] = sha3(address(_636), 1)
            _760 = mem[_594]
            mem[_604 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_604 + ceil32(return_data.size) + 100] = s
            mem[_604 + ceil32(return_data.size) + 132] = 1
            mem[_604 + ceil32(return_data.size) + 164] = 160
            mem[_604 + ceil32(return_data.size) + 260] = mem[_604]
            t = 0
            u = _604 + 32
            v = _604 + ceil32(return_data.size) + 292
            while t < mem[_604]:
                mem[v] = mem[u + 12 len 20]
                _576 = mem[96]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            mem[_604 + ceil32(return_data.size) + 196] = this.address
            mem[_604 + ceil32(return_data.size) + 228] = block.timestamp + 1000
            require ext_code.size(address(_760))
            call address(_760).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args s, 1, 160, address(this.address), block.timestamp + 1000, mem[_604 + ceil32(return_data.size) + 260 len (32 * mem[_604]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_604 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _604 + (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _866 = mem[_604 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_604 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 <= test266151307()
            require _604 + ceil32(return_data.size) + mem[_604 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 127 < _604 + ceil32(return_data.size) + return_data.size + 96
            _870 = mem[_604 + ceil32(return_data.size) + mem[_604 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            require mem[_604 + ceil32(return_data.size) + mem[_604 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= test266151307()
            require (32 * mem[_604 + ceil32(return_data.size) + mem[_604 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 >= 0 and _604 + (2 * ceil32(return_data.size)) + (32 * mem[_604 + ceil32(return_data.size) + mem[_604 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 128 <= test266151307()
            mem[64] = _604 + (2 * ceil32(return_data.size)) + (32 * mem[_604 + ceil32(return_data.size) + mem[_604 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 128
            mem[_604 + (2 * ceil32(return_data.size)) + 96] = _870
            require _866 + (32 * _870) + 32 <= return_data.size
            s = 0
            t = _604 + ceil32(return_data.size) + _866 + 128
            u = _604 + (2 * ceil32(return_data.size)) + 128
            while s < _870:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                _576 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _906 = mem[_594 + 160]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_906))
            staticcall address(_906).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _918 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_918] == mem[_918]
            _576 = mem[96]
            idx = idx + 1
            s = mem[_918]
            continue 
    else:
        mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor0)
        call stor0.deposit() with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _577 = mem[96]
        idx = 0
        s = msg.value
        while idx < _577:
            _585 = mem[64]
            mem[64] = mem[64] + 288
            mem[_585] = 0
            mem[_585 + 32] = 0
            mem[_585 + 64] = 0
            mem[_585 + 96] = 0
            mem[_585 + 128] = 0
            mem[_585 + 160] = 0
            mem[_585 + 192] = 0
            mem[_585 + 224] = 0
            mem[_585 + 256] = 0
            require idx < mem[96]
            _598 = mem[(32 * idx) + 128]
            if mem[mem[(32 * idx) + 128] + 192]:
                if stor0 == mem[mem[(32 * idx) + 128] + 140 len 20]:
                    _618 = mem[mem[(32 * idx) + 128] + 32]
                    mem[mem[64] + 4] = 1
                    mem[mem[64] + 36] = block.timestamp + 1000
                    require ext_code.size(address(_618))
                    call address(_618).ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
                       value msg.value wei
                         gas gas_remaining wei
                        args 1, block.timestamp + 1000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _691 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_691] == mem[_691]
                    _577 = mem[96]
                    idx = idx + 1
                    s = mem[_691]
                    continue 
                if stor0 != mem[mem[(32 * idx) + 128] + 172 len 20]:
                    revert with 0, 'ANYSWAP NO WFTM'
                _634 = mem[mem[(32 * idx) + 128] + 32]
                _635 = mem[mem[(32 * idx) + 128] + 128]
                _644 = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
                mem[0] = mem[mem[(32 * idx) + 128] + 140 len 20]
                mem[32] = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
                if stor[_644][address(mem[mem[(32 * idx) + 128] + 128])]:
                    _676 = mem[mem[(32 * idx) + 128] + 32]
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = block.timestamp + 1000
                    require ext_code.size(address(_676))
                    call address(_676).tokenToEthSwapInput(uint256 rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args s, 1, block.timestamp + 1000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _715 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_715] == mem[_715]
                    _577 = mem[96]
                    idx = idx + 1
                    s = mem[_715]
                    continue 
                mem[mem[64] + 4] = address(_634)
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_635))
                call address(_635).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(_634), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _700 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_700] == bool(mem[_700])
                mem[0] = address(_635)
                mem[32] = sha3(address(_634), 1)
                _758 = mem[_598 + 32]
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = block.timestamp + 1000
                require ext_code.size(address(_758))
                call address(_758).tokenToEthSwapInput(uint256 rg1, uint256 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args s, 1, block.timestamp + 1000
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _787 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_787] == mem[_787]
                _577 = mem[96]
                idx = idx + 1
                s = mem[_787]
                continue 
            if mem[mem[(32 * idx) + 128] + 224]:
                _615 = mem[mem[(32 * idx) + 128] + 32]
                _616 = mem[mem[(32 * idx) + 128] + 128]
                _631 = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
                mem[0] = mem[mem[(32 * idx) + 128] + 140 len 20]
                mem[32] = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
                if stor[_631][address(mem[mem[(32 * idx) + 128] + 128])]:
                    if not mem[mem[(32 * idx) + 128] + 256]:
                        _668 = mem[mem[(32 * idx) + 128] + 32]
                        _669 = mem[mem[(32 * idx) + 128] + 64]
                        _670 = mem[mem[(32 * idx) + 128] + 96]
                        mem[mem[64]] = 0xa6417ed600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ('signextend', 15, ('var', '_669'))
                        mem[mem[64] + 36] = ('signextend', 15, ('var', '_670'))
                        mem[mem[64] + 68] = s
                        mem[mem[64] + 100] = 1
                        require ext_code.size(address(_668))
                        call address(_668).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args ('signextend', 15, ('var', '_669')), ('signextend', 15, ('var', '_670')), s, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _754 = mem[_598 + 160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_754))
                        staticcall address(_754).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _774 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_774] == mem[_774]
                        _577 = mem[96]
                        idx = idx + 1
                        s = mem[_774]
                        continue 
                    _672 = mem[mem[(32 * idx) + 128] + 32]
                    _673 = mem[mem[(32 * idx) + 128] + 64]
                    _674 = mem[mem[(32 * idx) + 128] + 96]
                    mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ('signextend', 15, ('var', '_673'))
                    mem[mem[64] + 36] = ('signextend', 15, ('var', '_674'))
                    mem[mem[64] + 68] = s
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(_672))
                    call address(_672).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args ('signextend', 15, ('var', '_673')), ('signextend', 15, ('var', '_674')), s, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _756 = mem[_598 + 160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_756))
                    staticcall address(_756).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _775 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_775] == mem[_775]
                    _577 = mem[96]
                    idx = idx + 1
                    s = mem[_775]
                    continue 
                mem[mem[64] + 4] = address(_615)
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_616))
                call address(_616).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(_615), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _697 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_697] == bool(mem[_697])
                mem[0] = address(_616)
                mem[32] = sha3(address(_615), 1)
                if not mem[_598 + 256]:
                    _746 = mem[_598 + 32]
                    _747 = mem[_598 + 64]
                    _748 = mem[_598 + 96]
                    mem[mem[64]] = 0xa6417ed600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ('signextend', 15, ('var', '_747'))
                    mem[mem[64] + 36] = ('signextend', 15, ('var', '_748'))
                    mem[mem[64] + 68] = s
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(_746))
                    call address(_746).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args ('signextend', 15, ('var', '_747')), ('signextend', 15, ('var', '_748')), s, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _802 = mem[_598 + 160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_802))
                    staticcall address(_802).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _822 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_822] == mem[_822]
                    _577 = mem[96]
                    idx = idx + 1
                    s = mem[_822]
                    continue 
                _750 = mem[_598 + 32]
                _751 = mem[_598 + 64]
                _752 = mem[_598 + 96]
                mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ('signextend', 15, ('var', '_751'))
                mem[mem[64] + 36] = ('signextend', 15, ('var', '_752'))
                mem[mem[64] + 68] = s
                mem[mem[64] + 100] = 1
                require ext_code.size(address(_750))
                call address(_750).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args ('signextend', 15, ('var', '_751')), ('signextend', 15, ('var', '_752')), s, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _804 = mem[_598 + 160]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_804))
                staticcall address(_804).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _823 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_823] == mem[_823]
                _577 = mem[96]
                idx = idx + 1
                s = mem[_823]
                continue 
            _612 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_612 + 32 len 64] = code.data[5664 len 64]
            require 0 < mem[_612]
            mem[_612 + 32] = mem[_598 + 140 len 20]
            require 1 < mem[_612]
            mem[_612 + 64] = mem[_598 + 172 len 20]
            _641 = mem[_598]
            _642 = mem[_598 + 128]
            mem[0] = mem[_598 + 12 len 20]
            _651 = sha3(mem[0], 1)
            mem[0] = address(_642)
            mem[32] = _651
            if stor[_651][address(_642)]:
                _682 = mem[_598]
                mem[_612 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_612 + 100] = s
                mem[_612 + 132] = 1
                mem[_612 + 164] = 160
                mem[_612 + 260] = mem[_612]
                s = 0
                t = _612 + 32
                u = _612 + 292
                while s < mem[_612]:
                    mem[u] = mem[t + 12 len 20]
                    _577 = mem[96]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_612 + 196] = this.address
                mem[_612 + 228] = block.timestamp + 1000
                require ext_code.size(address(_682))
                call address(_682).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _612 + (32 * mem[_612]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _865 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _869 = mem[_865]
                require mem[_865] <= test266151307()
                require _865 + mem[_865] + 31 < _865 + return_data.size
                _873 = mem[_865 + mem[_865]]
                require mem[_865 + mem[_865]] <= test266151307()
                require (32 * mem[_865 + mem[_865]]) + 32 >= 0 and _865 + ceil32(return_data.size) + (32 * mem[_865 + mem[_865]]) + 32 <= test266151307()
                mem[64] = _865 + ceil32(return_data.size) + (32 * mem[_865 + mem[_865]]) + 32
                mem[_865 + ceil32(return_data.size)] = _873
                require _869 + (32 * _873) + 32 <= return_data.size
                s = 0
                t = _865 + _869 + 32
                u = _865 + ceil32(return_data.size) + 32
                while s < _873:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    _577 = mem[96]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                _912 = mem[_598 + 160]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_912))
                staticcall address(_912).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _921 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_921] == mem[_921]
                _577 = mem[96]
                idx = idx + 1
                s = mem[_921]
                continue 
            mem[_612 + 100] = address(_641)
            mem[_612 + 132] = -1
            require ext_code.size(address(_642))
            call address(_642).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(_641), -1
            mem[_612 + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _612 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[0] = address(_642)
            mem[32] = sha3(address(_641), 1)
            _762 = mem[_598]
            mem[_612 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_612 + ceil32(return_data.size) + 100] = s
            mem[_612 + ceil32(return_data.size) + 132] = 1
            mem[_612 + ceil32(return_data.size) + 164] = 160
            mem[_612 + ceil32(return_data.size) + 260] = mem[_612]
            t = 0
            u = _612 + 32
            v = _612 + ceil32(return_data.size) + 292
            while t < mem[_612]:
                mem[v] = mem[u + 12 len 20]
                _577 = mem[96]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            mem[_612 + ceil32(return_data.size) + 196] = this.address
            mem[_612 + ceil32(return_data.size) + 228] = block.timestamp + 1000
            require ext_code.size(address(_762))
            call address(_762).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args s, 1, 160, address(this.address), block.timestamp + 1000, mem[_612 + ceil32(return_data.size) + 260 len (32 * mem[_612]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_612 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _612 + (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _868 = mem[_612 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_612 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 <= test266151307()
            require _612 + ceil32(return_data.size) + mem[_612 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 127 < _612 + ceil32(return_data.size) + return_data.size + 96
            _872 = mem[_612 + ceil32(return_data.size) + mem[_612 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            require mem[_612 + ceil32(return_data.size) + mem[_612 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= test266151307()
            require (32 * mem[_612 + ceil32(return_data.size) + mem[_612 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 >= 0 and _612 + (2 * ceil32(return_data.size)) + (32 * mem[_612 + ceil32(return_data.size) + mem[_612 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 128 <= test266151307()
            mem[64] = _612 + (2 * ceil32(return_data.size)) + (32 * mem[_612 + ceil32(return_data.size) + mem[_612 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 128
            mem[_612 + (2 * ceil32(return_data.size)) + 96] = _872
            require _868 + (32 * _872) + 32 <= return_data.size
            s = 0
            t = _612 + ceil32(return_data.size) + _868 + 128
            u = _612 + (2 * ceil32(return_data.size)) + 128
            while s < _872:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                _577 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _910 = mem[_598 + 160]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_910))
            staticcall address(_910).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _920 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_920] == mem[_920]
            _577 = mem[96]
            idx = idx + 1
            s = mem[_920]
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
