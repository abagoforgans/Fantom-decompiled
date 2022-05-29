contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0xfe8be007: owner, 0
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit 0xfe8be007: owner, arg1
    owner = arg1
}

function withdrawToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function executeOperation(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    require ext_code.size(arg2)
    staticcall arg2.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'Invalid balance, was the flashLoan successful?'
    require arg5.length >= 224
    require bool(ceil32(return_data.size) + 544 <= test266151307())
    require cd[(arg5 + 68)] == address(cd[(arg5 + 68)])
    require cd[(arg5 + 100)] == address(cd[(arg5 + 100)])
    require cd[(arg5 + 132)] == address(cd[(arg5 + 132)])
    require cd[(arg5 + 164)] == address(cd[(arg5 + 164)])
    require cd[(arg5 + 196)] == address(cd[(arg5 + 196)])
    require cd[(arg5 + 228)] == address(cd[(arg5 + 228)])
    if arg4 + arg3 < arg3:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(arg2)
    call arg2.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg4 + arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer fund back failed'
}

function getReservesByPairs(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg1.length <= test266151307()
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _47 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _50 = mem[_47]
            require mem[_47] == mem[_47 + 18 len 14]
            _54 = mem[_47 + 32]
            require mem[_47 + 32] == mem[_47 + 50 len 14]
            require mem[_47 + 64] == mem[_47 + 92 len 4]
            require idx < mem[96]
            _60 = mem[(32 * idx) + 128]
            require idx < mem[96]
            _62 = mem[(32 * idx) + 128]
            require idx < mem[96]
            mem[mem[(32 * idx) + 128] + 64] = mem[_47 + 92 len 4]
            mem[_62 + 32] = Mask(112, 0, _54)
            mem[_60] = Mask(112, 0, _50)
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _39 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _39:
            u = 0
            v = w
            w = mem[t]
            while u < 3:
                mem[v] = mem[w]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            u = 4
            w = mem[t] + 192
            t = t + 32
            continue 
    else:
        mem[64] = (32 * arg1.length) + 224
        mem[(32 * arg1.length) + 128 len 96] = call.data[calldata.size len 96]
        mem[var15001] = (32 * arg1.length) + 128
        s = var15001
        idx = var15002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[(32 * arg1.length) + 128 len 96] = call.data[calldata.size len 96]
            mem[s + 32] = (32 * arg1.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _101 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _102 = mem[_101]
            require mem[_101] == mem[_101 + 18 len 14]
            _103 = mem[_101 + 32]
            require mem[_101 + 32] == mem[_101 + 50 len 14]
            require mem[_101 + 64] == mem[_101 + 92 len 4]
            require idx < mem[96]
            _106 = mem[(32 * idx) + 128]
            require idx < mem[96]
            _108 = mem[(32 * idx) + 128]
            require idx < mem[96]
            mem[mem[(32 * idx) + 128] + 64] = mem[_101 + 92 len 4]
            mem[_108 + 32] = Mask(112, 0, _103)
            mem[_106] = Mask(112, 0, _102)
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _95 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _95:
            u = 0
            v = w
            w = mem[t]
            while u < 3:
                mem[v] = mem[w]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            u = 4
            w = mem[t] + 192
            t = t + 32
            continue 
    return memory
      from mem[64]
       len s - mem[64]
}

function sub_37dd852c(?) payable {
    require calldata.size - 4 >= 224
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg7 == address(arg7)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(address(arg5))
    staticcall address(arg5).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(arg2) != address(arg3):
        if not address(arg4):
            if ext_call.return_data[0] < arg1:
                revert with 0, 'SIMPLE ARB: No tokens'
            mem[ceil32(return_data.size) + 100] = address(arg2)
            mem[ceil32(return_data.size) + 132] = arg1
            require ext_code.size(address(arg5))
            call address(arg5).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), arg1
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 96] = 2
            mem[(2 * ceil32(return_data.size)) + 128] = address(arg5)
            mem[(2 * ceil32(return_data.size)) + 160] = address(arg6)
            mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = arg1
            mem[(2 * ceil32(return_data.size)) + 228] = 1
            mem[(2 * ceil32(return_data.size)) + 260] = 160
            mem[(2 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 292] = this.address
            mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
            require ext_code.size(address(arg2))
            call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, 1, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _357 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
            require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223
            _364 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
            require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
            mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            require return_data.size >= _357 + (32 * _364) + 32
            mem[(4 * ceil32(return_data.size)) + 224 len 32 * _364] = mem[(2 * ceil32(return_data.size)) + _357 + 224 len 32 * _364]
            if 1 < _364:
                _575 = mem[(4 * ceil32(return_data.size)) + 256]
                mem[mem[64] + 4] = address(arg3)
                mem[mem[64] + 36] = _575
                require ext_code.size(address(arg6))
                call address(arg6).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg3), _575
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _594 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_594] == bool(mem[_594])
                _607 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 < mem[_607]:
                    mem[_607 + 32] = address(arg6)
                    if 1 < mem[_607]:
                        mem[_607 + 64] = address(arg5)
                        mem[_607 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_607 + 100] = _575
                        mem[_607 + 132] = 1
                        mem[_607 + 164] = 160
                        mem[_607 + 260] = mem[_607]
                        idx = 0
                        s = _607 + 32
                        t = _607 + 292
                        while idx < mem[_607]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_607 + 196] = this.address
                        mem[_607 + 228] = block.timestamp
                        require ext_code.size(address(arg3))
                        call address(arg3).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _607 + (32 * mem[_607]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _756 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_756] <= test266151307()
                        require _756 + return_data.size > _756 + mem[_756] + 31
                        require mem[_756 + mem[_756]] <= test266151307()
                        require (32 * mem[_756 + mem[_756]]) + 32 >= 0 and _756 + ceil32(return_data.size) + (32 * mem[_756 + mem[_756]]) + 32 <= test266151307()
                        require return_data.size >= mem[_756] + (32 * mem[_756 + mem[_756]]) + 32
                        if 1 < mem[_756 + mem[_756]]:
        else:
            if ext_call.return_data[0] < arg1:
                revert with 0, 'EXTENDED ARB: No tokens'
            mem[ceil32(return_data.size) + 100] = address(arg2)
            mem[ceil32(return_data.size) + 132] = arg1
            require ext_code.size(address(arg5))
            call address(arg5).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), arg1
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 96] = 2
            mem[(2 * ceil32(return_data.size)) + 128] = address(arg5)
            mem[(2 * ceil32(return_data.size)) + 160] = address(arg6)
            mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = arg1
            mem[(2 * ceil32(return_data.size)) + 228] = 1
            mem[(2 * ceil32(return_data.size)) + 260] = 160
            mem[(2 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 292] = this.address
            mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
            require ext_code.size(address(arg2))
            call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, 1, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _356 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
            require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223
            _363 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
            require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
            mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            require return_data.size >= _356 + (32 * _363) + 32
            mem[(4 * ceil32(return_data.size)) + 224 len 32 * _363] = mem[(2 * ceil32(return_data.size)) + _356 + 224 len 32 * _363]
            if 1 < _363:
                _574 = mem[(4 * ceil32(return_data.size)) + 256]
                mem[mem[64] + 4] = address(arg3)
                mem[mem[64] + 36] = _574
                require ext_code.size(address(arg6))
                call address(arg6).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg3), _574
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _593 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_593] == bool(mem[_593])
                _605 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 < mem[_605]:
                    mem[_605 + 32] = address(arg6)
                    if 1 < mem[_605]:
                        mem[_605 + 64] = address(arg5)
                        mem[_605 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_605 + 100] = _574
                        mem[_605 + 132] = 1
                        mem[_605 + 164] = 160
                        mem[_605 + 260] = mem[_605]
                        idx = 0
                        s = _605 + 32
                        t = _605 + 292
                        while idx < mem[_605]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_605 + 196] = this.address
                        mem[_605 + 228] = block.timestamp
                        require ext_code.size(address(arg3))
                        call address(arg3).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _605 + (32 * mem[_605]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _755 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _761 = mem[_755]
                        require mem[_755] <= test266151307()
                        require _755 + return_data.size > _755 + mem[_755] + 31
                        _767 = mem[_755 + mem[_755]]
                        require mem[_755 + mem[_755]] <= test266151307()
                        require (32 * mem[_755 + mem[_755]]) + 32 >= 0 and _755 + ceil32(return_data.size) + (32 * mem[_755 + mem[_755]]) + 32 <= test266151307()
                        mem[64] = _755 + ceil32(return_data.size) + (32 * mem[_755 + mem[_755]]) + 32
                        mem[_755 + ceil32(return_data.size)] = _767
                        require return_data.size >= _761 + (32 * _767) + 32
                        mem[_755 + ceil32(return_data.size) + 32 len 32 * _767] = mem[_755 + _761 + 32 len 32 * _767]
                        if 1 < _767:
                            _863 = mem[_755 + ceil32(return_data.size) + 64]
                            mem[mem[64] + 4] = address(arg4)
                            mem[mem[64] + 36] = _863
                            require ext_code.size(address(arg7))
                            call address(arg7).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg4), _863
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _875 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_875] == bool(mem[_875])
                            _881 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 < mem[_881]:
                                mem[_881 + 32] = address(arg7)
                                if 1 < mem[_881]:
                                    mem[_881 + 64] = address(arg5)
                                    mem[_881 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_881 + 100] = _863
                                    mem[_881 + 132] = 1
                                    mem[_881 + 164] = 160
                                    mem[_881 + 260] = mem[_881]
                                    idx = 0
                                    s = _881 + 32
                                    t = _881 + 292
                                    while idx < mem[_881]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_881 + 196] = this.address
                                    mem[_881 + 228] = block.timestamp
                                    require ext_code.size(address(arg4))
                                    call address(arg4).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _881 + (32 * mem[_881]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _929 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_929] <= test266151307()
                                    require _929 + return_data.size > _929 + mem[_929] + 31
                                    require mem[_929 + mem[_929]] <= test266151307()
                                    require (32 * mem[_929 + mem[_929]]) + 32 >= 0 and _929 + ceil32(return_data.size) + (32 * mem[_929 + mem[_929]]) + 32 <= test266151307()
                                    require return_data.size >= mem[_929] + (32 * mem[_929 + mem[_929]]) + 32
                                    if 1 < mem[_929 + mem[_929]]:
    else:
        if address(arg3) != address(arg4):
            if not address(arg4):
                if ext_call.return_data[0] < arg1:
                    revert with 0, 'SIMPLE ARB: No tokens'
                mem[ceil32(return_data.size) + 100] = address(arg2)
                mem[ceil32(return_data.size) + 132] = arg1
                require ext_code.size(address(arg5))
                call address(arg5).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), arg1
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 96] = 2
                mem[(2 * ceil32(return_data.size)) + 128] = address(arg5)
                mem[(2 * ceil32(return_data.size)) + 160] = address(arg6)
                mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 196] = arg1
                mem[(2 * ceil32(return_data.size)) + 228] = 1
                mem[(2 * ceil32(return_data.size)) + 260] = 160
                mem[(2 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (2 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 292] = this.address
                mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                require ext_code.size(address(arg2))
                call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg1, 1, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _359 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
                require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223
                _366 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
                require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
                mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                require return_data.size >= _359 + (32 * _366) + 32
                mem[(4 * ceil32(return_data.size)) + 224 len 32 * _366] = mem[(2 * ceil32(return_data.size)) + _359 + 224 len 32 * _366]
                if 1 < _366:
                    _577 = mem[(4 * ceil32(return_data.size)) + 256]
                    mem[mem[64] + 4] = address(arg3)
                    mem[mem[64] + 36] = _577
                    require ext_code.size(address(arg6))
                    call address(arg6).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg3), _577
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _596 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_596] == bool(mem[_596])
                    _611 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 < mem[_611]:
                        mem[_611 + 32] = address(arg6)
                        if 1 < mem[_611]:
                            mem[_611 + 64] = address(arg5)
                            mem[_611 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_611 + 100] = _577
                            mem[_611 + 132] = 1
                            mem[_611 + 164] = 160
                            mem[_611 + 260] = mem[_611]
                            idx = 0
                            s = _611 + 32
                            t = _611 + 292
                            while idx < mem[_611]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_611 + 196] = this.address
                            mem[_611 + 228] = block.timestamp
                            require ext_code.size(address(arg3))
                            call address(arg3).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _611 + (32 * mem[_611]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _758 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_758] <= test266151307()
                            require _758 + return_data.size > _758 + mem[_758] + 31
                            require mem[_758 + mem[_758]] <= test266151307()
                            require (32 * mem[_758 + mem[_758]]) + 32 >= 0 and _758 + ceil32(return_data.size) + (32 * mem[_758 + mem[_758]]) + 32 <= test266151307()
                            require return_data.size >= mem[_758] + (32 * mem[_758 + mem[_758]]) + 32
                            if 1 < mem[_758 + mem[_758]]:
            else:
                if ext_call.return_data[0] < arg1:
                    revert with 0, 'EXTENDED ARB: No tokens'
                mem[ceil32(return_data.size) + 100] = address(arg2)
                mem[ceil32(return_data.size) + 132] = arg1
                require ext_code.size(address(arg5))
                call address(arg5).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), arg1
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 96] = 2
                mem[(2 * ceil32(return_data.size)) + 128] = address(arg5)
                mem[(2 * ceil32(return_data.size)) + 160] = address(arg6)
                mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 196] = arg1
                mem[(2 * ceil32(return_data.size)) + 228] = 1
                mem[(2 * ceil32(return_data.size)) + 260] = 160
                mem[(2 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (2 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 292] = this.address
                mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                require ext_code.size(address(arg2))
                call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg1, 1, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _358 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
                require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223
                _365 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
                require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
                mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                require return_data.size >= _358 + (32 * _365) + 32
                mem[(4 * ceil32(return_data.size)) + 224 len 32 * _365] = mem[(2 * ceil32(return_data.size)) + _358 + 224 len 32 * _365]
                if 1 < _365:
                    _576 = mem[(4 * ceil32(return_data.size)) + 256]
                    mem[mem[64] + 4] = address(arg3)
                    mem[mem[64] + 36] = _576
                    require ext_code.size(address(arg6))
                    call address(arg6).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg3), _576
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _595 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_595] == bool(mem[_595])
                    _609 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 < mem[_609]:
                        mem[_609 + 32] = address(arg6)
                        if 1 < mem[_609]:
                            mem[_609 + 64] = address(arg5)
                            mem[_609 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_609 + 100] = _576
                            mem[_609 + 132] = 1
                            mem[_609 + 164] = 160
                            mem[_609 + 260] = mem[_609]
                            idx = 0
                            s = _609 + 32
                            t = _609 + 292
                            while idx < mem[_609]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_609 + 196] = this.address
                            mem[_609 + 228] = block.timestamp
                            require ext_code.size(address(arg3))
                            call address(arg3).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _609 + (32 * mem[_609]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _757 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _763 = mem[_757]
                            require mem[_757] <= test266151307()
                            require _757 + return_data.size > _757 + mem[_757] + 31
                            _769 = mem[_757 + mem[_757]]
                            require mem[_757 + mem[_757]] <= test266151307()
                            require (32 * mem[_757 + mem[_757]]) + 32 >= 0 and _757 + ceil32(return_data.size) + (32 * mem[_757 + mem[_757]]) + 32 <= test266151307()
                            mem[64] = _757 + ceil32(return_data.size) + (32 * mem[_757 + mem[_757]]) + 32
                            mem[_757 + ceil32(return_data.size)] = _769
                            require return_data.size >= _763 + (32 * _769) + 32
                            mem[_757 + ceil32(return_data.size) + 32 len 32 * _769] = mem[_757 + _763 + 32 len 32 * _769]
                            if 1 < _769:
                                _865 = mem[_757 + ceil32(return_data.size) + 64]
                                mem[mem[64] + 4] = address(arg4)
                                mem[mem[64] + 36] = _865
                                require ext_code.size(address(arg7))
                                call address(arg7).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg4), _865
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _876 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_876] == bool(mem[_876])
                                _883 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 < mem[_883]:
                                    mem[_883 + 32] = address(arg7)
                                    if 1 < mem[_883]:
                                        mem[_883 + 64] = address(arg5)
                                        mem[_883 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_883 + 100] = _865
                                        mem[_883 + 132] = 1
                                        mem[_883 + 164] = 160
                                        mem[_883 + 260] = mem[_883]
                                        idx = 0
                                        s = _883 + 32
                                        t = _883 + 292
                                        while idx < mem[_883]:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_883 + 196] = this.address
                                        mem[_883 + 228] = block.timestamp
                                        require ext_code.size(address(arg4))
                                        call address(arg4).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _883 + (32 * mem[_883]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _930 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_930] <= test266151307()
                                        require _930 + return_data.size > _930 + mem[_930] + 31
                                        require mem[_930 + mem[_930]] <= test266151307()
                                        require (32 * mem[_930 + mem[_930]]) + 32 >= 0 and _930 + ceil32(return_data.size) + (32 * mem[_930 + mem[_930]]) + 32 <= test266151307()
                                        require return_data.size >= mem[_930] + (32 * mem[_930 + mem[_930]]) + 32
                                        if 1 < mem[_930 + mem[_930]]:
        else:
            if address(arg2) == address(arg4):
                if ext_call.return_data[0] < arg1:
                    revert with 0, 'INTERNAL ARB: No tokens'
                mem[ceil32(return_data.size) + 100] = address(arg2)
                mem[ceil32(return_data.size) + 132] = arg1
                require ext_code.size(address(arg5))
                call address(arg5).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), arg1
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 128] = address(arg5)
                mem[(2 * ceil32(return_data.size)) + 160] = address(arg6)
                mem[(2 * ceil32(return_data.size)) + 192] = address(arg7)
                mem[(2 * ceil32(return_data.size)) + 224] = address(arg5)
                mem[(2 * ceil32(return_data.size)) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 260] = arg1
                mem[(2 * ceil32(return_data.size)) + 292] = 1
                mem[(2 * ceil32(return_data.size)) + 324] = 160
                mem[(2 * ceil32(return_data.size)) + 420] = 4
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (2 * ceil32(return_data.size)) + 452
                while idx < 4:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 356] = this.address
                mem[(2 * ceil32(return_data.size)) + 388] = block.timestamp
                require ext_code.size(address(arg2))
                call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg1, 1, Array(len=4, data=mem[(2 * ceil32(return_data.size)) + 452 len 128]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + return_data.size + 256 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32 + 287
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32 + 256] <= test266151307()
                require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32 + 256]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32 + 256]) + 288 <= test266151307()
                require return_data.size >= mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32 + 256]) + 32
                if 1 < mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32 + 256]:
            else:
                if not address(arg4):
                    if ext_call.return_data[0] < arg1:
                        revert with 0, 'SIMPLE ARB: No tokens'
                    mem[ceil32(return_data.size) + 100] = address(arg2)
                    mem[ceil32(return_data.size) + 132] = arg1
                    require ext_code.size(address(arg5))
                    call address(arg5).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), arg1
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 96] = 2
                    mem[(2 * ceil32(return_data.size)) + 128] = address(arg5)
                    mem[(2 * ceil32(return_data.size)) + 160] = address(arg6)
                    mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 196] = arg1
                    mem[(2 * ceil32(return_data.size)) + 228] = 1
                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = (2 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                    require ext_code.size(address(arg2))
                    call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg1, 1, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _361 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223
                    _368 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
                    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
                    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                    require return_data.size >= _361 + (32 * _368) + 32
                    mem[(4 * ceil32(return_data.size)) + 224 len 32 * _368] = mem[(2 * ceil32(return_data.size)) + _361 + 224 len 32 * _368]
                    if 1 < _368:
                        _579 = mem[(4 * ceil32(return_data.size)) + 256]
                        mem[mem[64] + 4] = address(arg3)
                        mem[mem[64] + 36] = _579
                        require ext_code.size(address(arg6))
                        call address(arg6).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg3), _579
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _598 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_598] == bool(mem[_598])
                        _615 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 < mem[_615]:
                            mem[_615 + 32] = address(arg6)
                            if 1 < mem[_615]:
                                mem[_615 + 64] = address(arg5)
                                mem[_615 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_615 + 100] = _579
                                mem[_615 + 132] = 1
                                mem[_615 + 164] = 160
                                mem[_615 + 260] = mem[_615]
                                idx = 0
                                s = _615 + 32
                                t = _615 + 292
                                while idx < mem[_615]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_615 + 196] = this.address
                                mem[_615 + 228] = block.timestamp
                                require ext_code.size(address(arg3))
                                call address(arg3).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _615 + (32 * mem[_615]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _760 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_760] <= test266151307()
                                require _760 + return_data.size > _760 + mem[_760] + 31
                                require mem[_760 + mem[_760]] <= test266151307()
                                require (32 * mem[_760 + mem[_760]]) + 32 >= 0 and _760 + ceil32(return_data.size) + (32 * mem[_760 + mem[_760]]) + 32 <= test266151307()
                                require return_data.size >= mem[_760] + (32 * mem[_760 + mem[_760]]) + 32
                                if 1 < mem[_760 + mem[_760]]:
                else:
                    if ext_call.return_data[0] < arg1:
                        revert with 0, 'EXTENDED ARB: No tokens'
                    mem[ceil32(return_data.size) + 100] = address(arg2)
                    mem[ceil32(return_data.size) + 132] = arg1
                    require ext_code.size(address(arg5))
                    call address(arg5).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), arg1
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 96] = 2
                    mem[(2 * ceil32(return_data.size)) + 128] = address(arg5)
                    mem[(2 * ceil32(return_data.size)) + 160] = address(arg6)
                    mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 196] = arg1
                    mem[(2 * ceil32(return_data.size)) + 228] = 1
                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = (2 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                    require ext_code.size(address(arg2))
                    call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg1, 1, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _360 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223
                    _367 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
                    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
                    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                    require return_data.size >= _360 + (32 * _367) + 32
                    mem[(4 * ceil32(return_data.size)) + 224 len 32 * _367] = mem[(2 * ceil32(return_data.size)) + _360 + 224 len 32 * _367]
                    if 1 < _367:
                        _578 = mem[(4 * ceil32(return_data.size)) + 256]
                        mem[mem[64] + 4] = address(arg3)
                        mem[mem[64] + 36] = _578
                        require ext_code.size(address(arg6))
                        call address(arg6).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg3), _578
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _597 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_597] == bool(mem[_597])
                        _613 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 < mem[_613]:
                            mem[_613 + 32] = address(arg6)
                            if 1 < mem[_613]:
                                mem[_613 + 64] = address(arg5)
                                mem[_613 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_613 + 100] = _578
                                mem[_613 + 132] = 1
                                mem[_613 + 164] = 160
                                mem[_613 + 260] = mem[_613]
                                idx = 0
                                s = _613 + 32
                                t = _613 + 292
                                while idx < mem[_613]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_613 + 196] = this.address
                                mem[_613 + 228] = block.timestamp
                                require ext_code.size(address(arg3))
                                call address(arg3).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _613 + (32 * mem[_613]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _759 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _765 = mem[_759]
                                require mem[_759] <= test266151307()
                                require _759 + return_data.size > _759 + mem[_759] + 31
                                _771 = mem[_759 + mem[_759]]
                                require mem[_759 + mem[_759]] <= test266151307()
                                require (32 * mem[_759 + mem[_759]]) + 32 >= 0 and _759 + ceil32(return_data.size) + (32 * mem[_759 + mem[_759]]) + 32 <= test266151307()
                                mem[64] = _759 + ceil32(return_data.size) + (32 * mem[_759 + mem[_759]]) + 32
                                mem[_759 + ceil32(return_data.size)] = _771
                                require return_data.size >= _765 + (32 * _771) + 32
                                mem[_759 + ceil32(return_data.size) + 32 len 32 * _771] = mem[_759 + _765 + 32 len 32 * _771]
                                if 1 < _771:
                                    _867 = mem[_759 + ceil32(return_data.size) + 64]
                                    mem[mem[64] + 4] = address(arg4)
                                    mem[mem[64] + 36] = _867
                                    require ext_code.size(address(arg7))
                                    call address(arg7).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), _867
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _877 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_877] == bool(mem[_877])
                                    _885 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 < mem[_885]:
                                        mem[_885 + 32] = address(arg7)
                                        if 1 < mem[_885]:
                                            mem[_885 + 64] = address(arg5)
                                            mem[_885 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_885 + 100] = _867
                                            mem[_885 + 132] = 1
                                            mem[_885 + 164] = 160
                                            mem[_885 + 260] = mem[_885]
                                            idx = 0
                                            s = _885 + 32
                                            t = _885 + 292
                                            while idx < mem[_885]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_885 + 196] = this.address
                                            mem[_885 + 228] = block.timestamp
                                            require ext_code.size(address(arg4))
                                            call address(arg4).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _885 + (32 * mem[_885]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _931 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_931] <= test266151307()
                                            require _931 + return_data.size > _931 + mem[_931] + 31
                                            require mem[_931 + mem[_931]] <= test266151307()
                                            require (32 * mem[_931 + mem[_931]]) + 32 >= 0 and _931 + ceil32(return_data.size) + (32 * mem[_931 + mem[_931]]) + 32 <= test266151307()
                                            require return_data.size >= mem[_931] + (32 * mem[_931 + mem[_931]]) + 32
                                            if 1 < mem[_931 + mem[_931]]:
    revert
}



}
