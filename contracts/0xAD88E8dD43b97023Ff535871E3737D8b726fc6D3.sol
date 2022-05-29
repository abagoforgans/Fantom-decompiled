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
    if address(arg2) != address(arg3):
        mem[100] = this.address
        require ext_code.size(address(arg5))
        staticcall address(arg5).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
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
                _606 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 < mem[_606]:
                    mem[_606 + 32] = address(arg6)
                    if 1 < mem[_606]:
                        mem[_606 + 64] = address(arg5)
                        mem[_606 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_606 + 100] = _574
                        mem[_606 + 132] = 1
                        mem[_606 + 164] = 160
                        mem[_606 + 260] = mem[_606]
                        idx = 0
                        s = _606 + 32
                        t = _606 + 292
                        while idx < mem[_606]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_606 + 196] = this.address
                        mem[_606 + 228] = block.timestamp
                        require ext_code.size(address(arg3))
                        call address(arg3).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _606 + (32 * mem[_606]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _755 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_755] <= test266151307()
                        require _755 + return_data.size > _755 + mem[_755] + 31
                        require mem[_755 + mem[_755]] <= test266151307()
                        require (32 * mem[_755 + mem[_755]]) + 32 >= 0 and _755 + ceil32(return_data.size) + (32 * mem[_755 + mem[_755]]) + 32 <= test266151307()
                        require return_data.size >= mem[_755] + (32 * mem[_755 + mem[_755]]) + 32
                        if 1 < mem[_755 + mem[_755]]:
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
            _355 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
            require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223
            _362 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
            require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
            mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            require return_data.size >= _355 + (32 * _362) + 32
            mem[(4 * ceil32(return_data.size)) + 224 len 32 * _362] = mem[(2 * ceil32(return_data.size)) + _355 + 224 len 32 * _362]
            if 1 < _362:
                _573 = mem[(4 * ceil32(return_data.size)) + 256]
                mem[mem[64] + 4] = address(arg3)
                mem[mem[64] + 36] = _573
                require ext_code.size(address(arg6))
                call address(arg6).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg3), _573
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _592 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_592] == bool(mem[_592])
                _604 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 < mem[_604]:
                    mem[_604 + 32] = address(arg6)
                    if 1 < mem[_604]:
                        mem[_604 + 64] = address(arg5)
                        mem[_604 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_604 + 100] = _573
                        mem[_604 + 132] = 1
                        mem[_604 + 164] = 160
                        mem[_604 + 260] = mem[_604]
                        idx = 0
                        s = _604 + 32
                        t = _604 + 292
                        while idx < mem[_604]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_604 + 196] = this.address
                        mem[_604 + 228] = block.timestamp
                        require ext_code.size(address(arg3))
                        call address(arg3).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _604 + (32 * mem[_604]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _754 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _760 = mem[_754]
                        require mem[_754] <= test266151307()
                        require _754 + return_data.size > _754 + mem[_754] + 31
                        _766 = mem[_754 + mem[_754]]
                        require mem[_754 + mem[_754]] <= test266151307()
                        require (32 * mem[_754 + mem[_754]]) + 32 >= 0 and _754 + ceil32(return_data.size) + (32 * mem[_754 + mem[_754]]) + 32 <= test266151307()
                        mem[64] = _754 + ceil32(return_data.size) + (32 * mem[_754 + mem[_754]]) + 32
                        mem[_754 + ceil32(return_data.size)] = _766
                        require return_data.size >= _760 + (32 * _766) + 32
                        mem[_754 + ceil32(return_data.size) + 32 len 32 * _766] = mem[_754 + _760 + 32 len 32 * _766]
                        if 1 < _766:
                            _862 = mem[_754 + ceil32(return_data.size) + 64]
                            mem[mem[64] + 4] = address(arg4)
                            mem[mem[64] + 36] = _862
                            require ext_code.size(address(arg7))
                            call address(arg7).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg4), _862
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _874 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_874] == bool(mem[_874])
                            _880 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 < mem[_880]:
                                mem[_880 + 32] = address(arg7)
                                if 1 < mem[_880]:
                                    mem[_880 + 64] = address(arg5)
                                    mem[_880 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_880 + 100] = _862
                                    mem[_880 + 132] = 1
                                    mem[_880 + 164] = 160
                                    mem[_880 + 260] = mem[_880]
                                    idx = 0
                                    s = _880 + 32
                                    t = _880 + 292
                                    while idx < mem[_880]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_880 + 196] = this.address
                                    mem[_880 + 228] = block.timestamp
                                    require ext_code.size(address(arg4))
                                    call address(arg4).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _880 + (32 * mem[_880]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _928 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_928] <= test266151307()
                                    require _928 + return_data.size > _928 + mem[_928] + 31
                                    require mem[_928 + mem[_928]] <= test266151307()
                                    require (32 * mem[_928 + mem[_928]]) + 32 >= 0 and _928 + ceil32(return_data.size) + (32 * mem[_928 + mem[_928]]) + 32 <= test266151307()
                                    require return_data.size >= mem[_928] + (32 * mem[_928 + mem[_928]]) + 32
                                    if 1 < mem[_928 + mem[_928]]:
    else:
        if address(arg3) != address(arg4):
            mem[100] = this.address
            require ext_code.size(address(arg5))
            staticcall address(arg5).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
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
                    _610 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 < mem[_610]:
                        mem[_610 + 32] = address(arg6)
                        if 1 < mem[_610]:
                            mem[_610 + 64] = address(arg5)
                            mem[_610 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_610 + 100] = _576
                            mem[_610 + 132] = 1
                            mem[_610 + 164] = 160
                            mem[_610 + 260] = mem[_610]
                            idx = 0
                            s = _610 + 32
                            t = _610 + 292
                            while idx < mem[_610]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_610 + 196] = this.address
                            mem[_610 + 228] = block.timestamp
                            require ext_code.size(address(arg3))
                            call address(arg3).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _610 + (32 * mem[_610]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _757 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_757] <= test266151307()
                            require _757 + return_data.size > _757 + mem[_757] + 31
                            require mem[_757 + mem[_757]] <= test266151307()
                            require (32 * mem[_757 + mem[_757]]) + 32 >= 0 and _757 + ceil32(return_data.size) + (32 * mem[_757 + mem[_757]]) + 32 <= test266151307()
                            require return_data.size >= mem[_757] + (32 * mem[_757 + mem[_757]]) + 32
                            if 1 < mem[_757 + mem[_757]]:
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
                    _608 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 < mem[_608]:
                        mem[_608 + 32] = address(arg6)
                        if 1 < mem[_608]:
                            mem[_608 + 64] = address(arg5)
                            mem[_608 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_608 + 100] = _575
                            mem[_608 + 132] = 1
                            mem[_608 + 164] = 160
                            mem[_608 + 260] = mem[_608]
                            idx = 0
                            s = _608 + 32
                            t = _608 + 292
                            while idx < mem[_608]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_608 + 196] = this.address
                            mem[_608 + 228] = block.timestamp
                            require ext_code.size(address(arg3))
                            call address(arg3).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _608 + (32 * mem[_608]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _756 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _762 = mem[_756]
                            require mem[_756] <= test266151307()
                            require _756 + return_data.size > _756 + mem[_756] + 31
                            _768 = mem[_756 + mem[_756]]
                            require mem[_756 + mem[_756]] <= test266151307()
                            require (32 * mem[_756 + mem[_756]]) + 32 >= 0 and _756 + ceil32(return_data.size) + (32 * mem[_756 + mem[_756]]) + 32 <= test266151307()
                            mem[64] = _756 + ceil32(return_data.size) + (32 * mem[_756 + mem[_756]]) + 32
                            mem[_756 + ceil32(return_data.size)] = _768
                            require return_data.size >= _762 + (32 * _768) + 32
                            mem[_756 + ceil32(return_data.size) + 32 len 32 * _768] = mem[_756 + _762 + 32 len 32 * _768]
                            if 1 < _768:
                                _864 = mem[_756 + ceil32(return_data.size) + 64]
                                mem[mem[64] + 4] = address(arg4)
                                mem[mem[64] + 36] = _864
                                require ext_code.size(address(arg7))
                                call address(arg7).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg4), _864
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _875 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_875] == bool(mem[_875])
                                _882 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 < mem[_882]:
                                    mem[_882 + 32] = address(arg7)
                                    if 1 < mem[_882]:
                                        mem[_882 + 64] = address(arg5)
                                        mem[_882 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_882 + 100] = _864
                                        mem[_882 + 132] = 1
                                        mem[_882 + 164] = 160
                                        mem[_882 + 260] = mem[_882]
                                        idx = 0
                                        s = _882 + 32
                                        t = _882 + 292
                                        while idx < mem[_882]:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_882 + 196] = this.address
                                        mem[_882 + 228] = block.timestamp
                                        require ext_code.size(address(arg4))
                                        call address(arg4).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _882 + (32 * mem[_882]) + -mem[64] + 288]
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
            if address(arg2) == address(arg4):
                require ext_code.size(address(arg5))
                staticcall address(arg5).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
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
                mem[(2 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 228] = arg1
                mem[(2 * ceil32(return_data.size)) + 260] = 1
                mem[(2 * ceil32(return_data.size)) + 292] = 160
                mem[(2 * ceil32(return_data.size)) + 388] = 3
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (2 * ceil32(return_data.size)) + 420
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 324] = this.address
                mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                require ext_code.size(address(arg2))
                call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg1, 1, Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 420 len 96]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + return_data.size + 224 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + 255
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224] <= test266151307()
                require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 256 <= test266151307()
                require return_data.size >= mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 32
                if 1 < mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]:
            else:
                mem[100] = this.address
                require ext_code.size(address(arg5))
                staticcall address(arg5).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
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
                        _614 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 < mem[_614]:
                            mem[_614 + 32] = address(arg6)
                            if 1 < mem[_614]:
                                mem[_614 + 64] = address(arg5)
                                mem[_614 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_614 + 100] = _578
                                mem[_614 + 132] = 1
                                mem[_614 + 164] = 160
                                mem[_614 + 260] = mem[_614]
                                idx = 0
                                s = _614 + 32
                                t = _614 + 292
                                while idx < mem[_614]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_614 + 196] = this.address
                                mem[_614 + 228] = block.timestamp
                                require ext_code.size(address(arg3))
                                call address(arg3).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _614 + (32 * mem[_614]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _759 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_759] <= test266151307()
                                require _759 + return_data.size > _759 + mem[_759] + 31
                                require mem[_759 + mem[_759]] <= test266151307()
                                require (32 * mem[_759 + mem[_759]]) + 32 >= 0 and _759 + ceil32(return_data.size) + (32 * mem[_759 + mem[_759]]) + 32 <= test266151307()
                                require return_data.size >= mem[_759] + (32 * mem[_759 + mem[_759]]) + 32
                                if 1 < mem[_759 + mem[_759]]:
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
                        _612 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 < mem[_612]:
                            mem[_612 + 32] = address(arg6)
                            if 1 < mem[_612]:
                                mem[_612 + 64] = address(arg5)
                                mem[_612 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_612 + 100] = _577
                                mem[_612 + 132] = 1
                                mem[_612 + 164] = 160
                                mem[_612 + 260] = mem[_612]
                                idx = 0
                                s = _612 + 32
                                t = _612 + 292
                                while idx < mem[_612]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_612 + 196] = this.address
                                mem[_612 + 228] = block.timestamp
                                require ext_code.size(address(arg3))
                                call address(arg3).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _612 + (32 * mem[_612]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _758 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _764 = mem[_758]
                                require mem[_758] <= test266151307()
                                require _758 + return_data.size > _758 + mem[_758] + 31
                                _770 = mem[_758 + mem[_758]]
                                require mem[_758 + mem[_758]] <= test266151307()
                                require (32 * mem[_758 + mem[_758]]) + 32 >= 0 and _758 + ceil32(return_data.size) + (32 * mem[_758 + mem[_758]]) + 32 <= test266151307()
                                mem[64] = _758 + ceil32(return_data.size) + (32 * mem[_758 + mem[_758]]) + 32
                                mem[_758 + ceil32(return_data.size)] = _770
                                require return_data.size >= _764 + (32 * _770) + 32
                                mem[_758 + ceil32(return_data.size) + 32 len 32 * _770] = mem[_758 + _764 + 32 len 32 * _770]
                                if 1 < _770:
                                    _866 = mem[_758 + ceil32(return_data.size) + 64]
                                    mem[mem[64] + 4] = address(arg4)
                                    mem[mem[64] + 36] = _866
                                    require ext_code.size(address(arg7))
                                    call address(arg7).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), _866
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _876 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_876] == bool(mem[_876])
                                    _884 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 < mem[_884]:
                                        mem[_884 + 32] = address(arg7)
                                        if 1 < mem[_884]:
                                            mem[_884 + 64] = address(arg5)
                                            mem[_884 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_884 + 100] = _866
                                            mem[_884 + 132] = 1
                                            mem[_884 + 164] = 160
                                            mem[_884 + 260] = mem[_884]
                                            idx = 0
                                            s = _884 + 32
                                            t = _884 + 292
                                            while idx < mem[_884]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_884 + 196] = this.address
                                            mem[_884 + 228] = block.timestamp
                                            require ext_code.size(address(arg4))
                                            call address(arg4).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _884 + (32 * mem[_884]) + -mem[64] + 288]
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
    revert
}



}
