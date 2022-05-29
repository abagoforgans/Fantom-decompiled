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
    if ext_call.return_data[0] < arg1:
        revert with 0, 'No tokens'
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
    if address(arg2) != address(arg3):
        mem[(2 * ceil32(return_data.size)) + 96] = 2
        mem[(2 * ceil32(return_data.size)) + 128] = address(arg5)
        mem[(2 * ceil32(return_data.size)) + 160] = address(arg6)
        mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = arg1
        mem[(2 * ceil32(return_data.size)) + 228] = 1
        mem[(2 * ceil32(return_data.size)) + 260] = 160
        mem[(2 * ceil32(return_data.size)) + 356] = 2
        if not address(arg4):
            idx = 0
            s = (2 * ceil32(return_data.size)) + 388
            t = (2 * ceil32(return_data.size)) + 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
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
            _374 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
            require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223
            _381 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
            require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
            mem[(4 * ceil32(return_data.size)) + 192] = _381
            require return_data.size >= _374 + (32 * _381) + 32
            mem[(4 * ceil32(return_data.size)) + 224 len 32 * _381] = mem[(2 * ceil32(return_data.size)) + _374 + 224 len 32 * _381]
            require 1 < _381
            _610 = mem[(4 * ceil32(return_data.size)) + 256]
            mem[mem[64] + 4] = address(arg3)
            mem[mem[64] + 36] = _610
            require ext_code.size(address(arg6))
            call address(arg6).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg3), _610
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _634 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_634] == bool(mem[_634])
            _648 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_648]
            mem[_648 + 32] = address(arg6)
            require 1 < mem[_648]
            mem[_648 + 64] = address(arg5)
            mem[_648 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_648 + 100] = _610
            mem[_648 + 132] = arg1
            mem[_648 + 164] = 160
            mem[_648 + 260] = mem[_648]
            idx = 0
            s = _648 + 292
            t = _648 + 32
            while idx < mem[_648]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_648 + 196] = this.address
            mem[_648 + 228] = block.timestamp
            require ext_code.size(address(arg3))
            call address(arg3).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _648 + (32 * mem[_648]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _809 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _815 = mem[_809]
            require mem[_809] <= test266151307()
            require _809 + return_data.size > _809 + mem[_809] + 31
            _821 = mem[_809 + mem[_809]]
            require mem[_809 + mem[_809]] <= test266151307()
            require (32 * mem[_809 + mem[_809]]) + 32 >= 0 and _809 + ceil32(return_data.size) + (32 * mem[_809 + mem[_809]]) + 32 <= test266151307()
            mem[64] = _809 + ceil32(return_data.size) + (32 * mem[_809 + mem[_809]]) + 32
            mem[_809 + ceil32(return_data.size)] = _821
            require return_data.size >= _815 + (32 * _821) + 32
            mem[_809 + ceil32(return_data.size) + 32 len 32 * _821] = mem[_809 + _815 + 32 len 32 * _821]
            require 1 < _821
            if mem[_809 + ceil32(return_data.size) + 64] <= arg1:
                revert with 0, 'Simple Arb failed to make profit'
        else:
            idx = 0
            s = (2 * ceil32(return_data.size)) + 388
            t = (2 * ceil32(return_data.size)) + 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
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
            _373 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
            require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223
            _380 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
            require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
            mem[(4 * ceil32(return_data.size)) + 192] = _380
            require return_data.size >= _373 + (32 * _380) + 32
            mem[(4 * ceil32(return_data.size)) + 224 len 32 * _380] = mem[(2 * ceil32(return_data.size)) + _373 + 224 len 32 * _380]
            require 1 < _380
            _609 = mem[(4 * ceil32(return_data.size)) + 256]
            mem[mem[64] + 4] = address(arg3)
            mem[mem[64] + 36] = _609
            require ext_code.size(address(arg6))
            call address(arg6).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg3), _609
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _633 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_633] == bool(mem[_633])
            _646 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_646]
            mem[_646 + 32] = address(arg6)
            require 1 < mem[_646]
            mem[_646 + 64] = address(arg5)
            mem[_646 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_646 + 100] = _609
            mem[_646 + 132] = arg1
            mem[_646 + 164] = 160
            mem[_646 + 260] = mem[_646]
            idx = 0
            s = _646 + 292
            t = _646 + 32
            while idx < mem[_646]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_646 + 196] = this.address
            mem[_646 + 228] = block.timestamp
            require ext_code.size(address(arg3))
            call address(arg3).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _646 + (32 * mem[_646]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _808 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _814 = mem[_808]
            require mem[_808] <= test266151307()
            require _808 + return_data.size > _808 + mem[_808] + 31
            _820 = mem[_808 + mem[_808]]
            require mem[_808 + mem[_808]] <= test266151307()
            require (32 * mem[_808 + mem[_808]]) + 32 >= 0 and _808 + ceil32(return_data.size) + (32 * mem[_808 + mem[_808]]) + 32 <= test266151307()
            mem[64] = _808 + ceil32(return_data.size) + (32 * mem[_808 + mem[_808]]) + 32
            mem[_808 + ceil32(return_data.size)] = _820
            require return_data.size >= _814 + (32 * _820) + 32
            mem[_808 + ceil32(return_data.size) + 32 len 32 * _820] = mem[_808 + _814 + 32 len 32 * _820]
            require 1 < _820
            _928 = mem[_808 + ceil32(return_data.size) + 64]
            mem[mem[64] + 4] = address(arg4)
            mem[mem[64] + 36] = _928
            require ext_code.size(address(arg7))
            call address(arg7).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg4), _928
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _946 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_946] == bool(mem[_946])
            _952 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_952]
            mem[_952 + 32] = address(arg7)
            require 1 < mem[_952]
            mem[_952 + 64] = address(arg5)
            mem[_952 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_952 + 100] = _928
            mem[_952 + 132] = arg1
            mem[_952 + 164] = 160
            mem[_952 + 260] = mem[_952]
            idx = 0
            s = _952 + 292
            t = _952 + 32
            while idx < mem[_952]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_952 + 196] = this.address
            mem[_952 + 228] = block.timestamp
            require ext_code.size(address(arg4))
            call address(arg4).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _952 + (32 * mem[_952]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1006 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1009 = mem[_1006]
            require mem[_1006] <= test266151307()
            require _1006 + return_data.size > _1006 + mem[_1006] + 31
            _1012 = mem[_1006 + mem[_1006]]
            require mem[_1006 + mem[_1006]] <= test266151307()
            require (32 * mem[_1006 + mem[_1006]]) + 32 >= 0 and _1006 + ceil32(return_data.size) + (32 * mem[_1006 + mem[_1006]]) + 32 <= test266151307()
            mem[64] = _1006 + ceil32(return_data.size) + (32 * mem[_1006 + mem[_1006]]) + 32
            mem[_1006 + ceil32(return_data.size)] = _1012
            require return_data.size >= _1009 + (32 * _1012) + 32
            mem[_1006 + ceil32(return_data.size) + 32 len 32 * _1012] = mem[_1006 + _1009 + 32 len 32 * _1012]
            require 1 < _1012
            if mem[_1006 + ceil32(return_data.size) + 64] <= arg1:
                revert with 0, 'Simple Arb failed to make profit'
    else:
        if address(arg3) != address(arg4):
            mem[(2 * ceil32(return_data.size)) + 96] = 2
            mem[(2 * ceil32(return_data.size)) + 128] = address(arg5)
            mem[(2 * ceil32(return_data.size)) + 160] = address(arg6)
            mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = arg1
            mem[(2 * ceil32(return_data.size)) + 228] = 1
            mem[(2 * ceil32(return_data.size)) + 260] = 160
            mem[(2 * ceil32(return_data.size)) + 356] = 2
            if not address(arg4):
                idx = 0
                s = (2 * ceil32(return_data.size)) + 388
                t = (2 * ceil32(return_data.size)) + 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
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
                _376 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
                require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223
                _383 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
                require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
                mem[(4 * ceil32(return_data.size)) + 192] = _383
                require return_data.size >= _376 + (32 * _383) + 32
                mem[(4 * ceil32(return_data.size)) + 224 len 32 * _383] = mem[(2 * ceil32(return_data.size)) + _376 + 224 len 32 * _383]
                require 1 < _383
                _612 = mem[(4 * ceil32(return_data.size)) + 256]
                mem[mem[64] + 4] = address(arg3)
                mem[mem[64] + 36] = _612
                require ext_code.size(address(arg6))
                call address(arg6).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg3), _612
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _636 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_636] == bool(mem[_636])
                _652 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_652]
                mem[_652 + 32] = address(arg6)
                require 1 < mem[_652]
                mem[_652 + 64] = address(arg5)
                mem[_652 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_652 + 100] = _612
                mem[_652 + 132] = arg1
                mem[_652 + 164] = 160
                mem[_652 + 260] = mem[_652]
                idx = 0
                s = _652 + 292
                t = _652 + 32
                while idx < mem[_652]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_652 + 196] = this.address
                mem[_652 + 228] = block.timestamp
                require ext_code.size(address(arg3))
                call address(arg3).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _652 + (32 * mem[_652]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _811 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _817 = mem[_811]
                require mem[_811] <= test266151307()
                require _811 + return_data.size > _811 + mem[_811] + 31
                _823 = mem[_811 + mem[_811]]
                require mem[_811 + mem[_811]] <= test266151307()
                require (32 * mem[_811 + mem[_811]]) + 32 >= 0 and _811 + ceil32(return_data.size) + (32 * mem[_811 + mem[_811]]) + 32 <= test266151307()
                mem[64] = _811 + ceil32(return_data.size) + (32 * mem[_811 + mem[_811]]) + 32
                mem[_811 + ceil32(return_data.size)] = _823
                require return_data.size >= _817 + (32 * _823) + 32
                mem[_811 + ceil32(return_data.size) + 32 len 32 * _823] = mem[_811 + _817 + 32 len 32 * _823]
                require 1 < _823
                if mem[_811 + ceil32(return_data.size) + 64] <= arg1:
                    revert with 0, 'Simple Arb failed to make profit'
            else:
                idx = 0
                s = (2 * ceil32(return_data.size)) + 388
                t = (2 * ceil32(return_data.size)) + 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
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
                _375 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
                require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223
                _382 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
                require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
                mem[(4 * ceil32(return_data.size)) + 192] = _382
                require return_data.size >= _375 + (32 * _382) + 32
                mem[(4 * ceil32(return_data.size)) + 224 len 32 * _382] = mem[(2 * ceil32(return_data.size)) + _375 + 224 len 32 * _382]
                require 1 < _382
                _611 = mem[(4 * ceil32(return_data.size)) + 256]
                mem[mem[64] + 4] = address(arg3)
                mem[mem[64] + 36] = _611
                require ext_code.size(address(arg6))
                call address(arg6).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg3), _611
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _635 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_635] == bool(mem[_635])
                _650 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_650]
                mem[_650 + 32] = address(arg6)
                require 1 < mem[_650]
                mem[_650 + 64] = address(arg5)
                mem[_650 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_650 + 100] = _611
                mem[_650 + 132] = arg1
                mem[_650 + 164] = 160
                mem[_650 + 260] = mem[_650]
                idx = 0
                s = _650 + 292
                t = _650 + 32
                while idx < mem[_650]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_650 + 196] = this.address
                mem[_650 + 228] = block.timestamp
                require ext_code.size(address(arg3))
                call address(arg3).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _650 + (32 * mem[_650]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _810 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _816 = mem[_810]
                require mem[_810] <= test266151307()
                require _810 + return_data.size > _810 + mem[_810] + 31
                _822 = mem[_810 + mem[_810]]
                require mem[_810 + mem[_810]] <= test266151307()
                require (32 * mem[_810 + mem[_810]]) + 32 >= 0 and _810 + ceil32(return_data.size) + (32 * mem[_810 + mem[_810]]) + 32 <= test266151307()
                mem[64] = _810 + ceil32(return_data.size) + (32 * mem[_810 + mem[_810]]) + 32
                mem[_810 + ceil32(return_data.size)] = _822
                require return_data.size >= _816 + (32 * _822) + 32
                mem[_810 + ceil32(return_data.size) + 32 len 32 * _822] = mem[_810 + _816 + 32 len 32 * _822]
                require 1 < _822
                _930 = mem[_810 + ceil32(return_data.size) + 64]
                mem[mem[64] + 4] = address(arg4)
                mem[mem[64] + 36] = _930
                require ext_code.size(address(arg7))
                call address(arg7).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg4), _930
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _947 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_947] == bool(mem[_947])
                _954 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_954]
                mem[_954 + 32] = address(arg7)
                require 1 < mem[_954]
                mem[_954 + 64] = address(arg5)
                mem[_954 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_954 + 100] = _930
                mem[_954 + 132] = arg1
                mem[_954 + 164] = 160
                mem[_954 + 260] = mem[_954]
                idx = 0
                s = _954 + 292
                t = _954 + 32
                while idx < mem[_954]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_954 + 196] = this.address
                mem[_954 + 228] = block.timestamp
                require ext_code.size(address(arg4))
                call address(arg4).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _954 + (32 * mem[_954]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1007 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1010 = mem[_1007]
                require mem[_1007] <= test266151307()
                require _1007 + return_data.size > _1007 + mem[_1007] + 31
                _1013 = mem[_1007 + mem[_1007]]
                require mem[_1007 + mem[_1007]] <= test266151307()
                require (32 * mem[_1007 + mem[_1007]]) + 32 >= 0 and _1007 + ceil32(return_data.size) + (32 * mem[_1007 + mem[_1007]]) + 32 <= test266151307()
                mem[64] = _1007 + ceil32(return_data.size) + (32 * mem[_1007 + mem[_1007]]) + 32
                mem[_1007 + ceil32(return_data.size)] = _1013
                require return_data.size >= _1010 + (32 * _1013) + 32
                mem[_1007 + ceil32(return_data.size) + 32 len 32 * _1013] = mem[_1007 + _1010 + 32 len 32 * _1013]
                require 1 < _1013
                if mem[_1007 + ceil32(return_data.size) + 64] <= arg1:
                    revert with 0, 'Simple Arb failed to make profit'
        else:
            if address(arg2) == address(arg4):
                mem[(2 * ceil32(return_data.size)) + 96] = 3
                mem[(2 * ceil32(return_data.size)) + 128 len 96] = call.data[calldata.size len 96]
                mem[(2 * ceil32(return_data.size)) + 128] = address(arg5)
                mem[(2 * ceil32(return_data.size)) + 160] = address(arg7)
                mem[(2 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 228] = arg1
                mem[(2 * ceil32(return_data.size)) + 260] = arg1
                mem[(2 * ceil32(return_data.size)) + 292] = 160
                mem[(2 * ceil32(return_data.size)) + 388] = 3
                idx = 0
                s = (2 * ceil32(return_data.size)) + 420
                t = (2 * ceil32(return_data.size)) + 128
                while idx < 3:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 324] = this.address
                mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                require ext_code.size(address(arg2))
                call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg1, arg1, Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 420 len 96]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + return_data.size + 224 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + 255
                _386 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224] <= test266151307()
                require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 256 <= test266151307()
                require return_data.size >= mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 32
                mem[(4 * ceil32(return_data.size)) + 256 len 32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + 256 len 32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]]
                require 1 < _386
                if mem[(4 * ceil32(return_data.size)) + 288] <= arg1:
                    revert with 0, 'Internal Arb failed to make profit'
                require 1 < _386
                if mem[(4 * ceil32(return_data.size)) + 288] <= arg1:
                    revert with 0, 'flashSwap did not make profit'
            else:
                mem[(2 * ceil32(return_data.size)) + 96] = 2
                mem[(2 * ceil32(return_data.size)) + 128] = address(arg5)
                mem[(2 * ceil32(return_data.size)) + 160] = address(arg6)
                mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 196] = arg1
                mem[(2 * ceil32(return_data.size)) + 228] = 1
                mem[(2 * ceil32(return_data.size)) + 260] = 160
                mem[(2 * ceil32(return_data.size)) + 356] = 2
                if not address(arg4):
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 388
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
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
                    _378 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223
                    _385 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
                    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
                    mem[(4 * ceil32(return_data.size)) + 192] = _385
                    require return_data.size >= _378 + (32 * _385) + 32
                    mem[(4 * ceil32(return_data.size)) + 224 len 32 * _385] = mem[(2 * ceil32(return_data.size)) + _378 + 224 len 32 * _385]
                    require 1 < _385
                    _614 = mem[(4 * ceil32(return_data.size)) + 256]
                    mem[mem[64] + 4] = address(arg3)
                    mem[mem[64] + 36] = _614
                    require ext_code.size(address(arg6))
                    call address(arg6).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg3), _614
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _638 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_638] == bool(mem[_638])
                    _656 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_656]
                    mem[_656 + 32] = address(arg6)
                    require 1 < mem[_656]
                    mem[_656 + 64] = address(arg5)
                    mem[_656 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_656 + 100] = _614
                    mem[_656 + 132] = arg1
                    mem[_656 + 164] = 160
                    mem[_656 + 260] = mem[_656]
                    idx = 0
                    s = _656 + 292
                    t = _656 + 32
                    while idx < mem[_656]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_656 + 196] = this.address
                    mem[_656 + 228] = block.timestamp
                    require ext_code.size(address(arg3))
                    call address(arg3).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _656 + (32 * mem[_656]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _813 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _819 = mem[_813]
                    require mem[_813] <= test266151307()
                    require _813 + return_data.size > _813 + mem[_813] + 31
                    _825 = mem[_813 + mem[_813]]
                    require mem[_813 + mem[_813]] <= test266151307()
                    require (32 * mem[_813 + mem[_813]]) + 32 >= 0 and _813 + ceil32(return_data.size) + (32 * mem[_813 + mem[_813]]) + 32 <= test266151307()
                    mem[64] = _813 + ceil32(return_data.size) + (32 * mem[_813 + mem[_813]]) + 32
                    mem[_813 + ceil32(return_data.size)] = _825
                    require return_data.size >= _819 + (32 * _825) + 32
                    mem[_813 + ceil32(return_data.size) + 32 len 32 * _825] = mem[_813 + _819 + 32 len 32 * _825]
                    require 1 < _825
                    if mem[_813 + ceil32(return_data.size) + 64] <= arg1:
                        revert with 0, 'Simple Arb failed to make profit'
                else:
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 388
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
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
                    _377 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223
                    _384 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
                    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
                    mem[(4 * ceil32(return_data.size)) + 192] = _384
                    require return_data.size >= _377 + (32 * _384) + 32
                    mem[(4 * ceil32(return_data.size)) + 224 len 32 * _384] = mem[(2 * ceil32(return_data.size)) + _377 + 224 len 32 * _384]
                    require 1 < _384
                    _613 = mem[(4 * ceil32(return_data.size)) + 256]
                    mem[mem[64] + 4] = address(arg3)
                    mem[mem[64] + 36] = _613
                    require ext_code.size(address(arg6))
                    call address(arg6).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg3), _613
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _637 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_637] == bool(mem[_637])
                    _654 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_654]
                    mem[_654 + 32] = address(arg6)
                    require 1 < mem[_654]
                    mem[_654 + 64] = address(arg5)
                    mem[_654 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_654 + 100] = _613
                    mem[_654 + 132] = arg1
                    mem[_654 + 164] = 160
                    mem[_654 + 260] = mem[_654]
                    idx = 0
                    s = _654 + 292
                    t = _654 + 32
                    while idx < mem[_654]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_654 + 196] = this.address
                    mem[_654 + 228] = block.timestamp
                    require ext_code.size(address(arg3))
                    call address(arg3).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _654 + (32 * mem[_654]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _812 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _818 = mem[_812]
                    require mem[_812] <= test266151307()
                    require _812 + return_data.size > _812 + mem[_812] + 31
                    _824 = mem[_812 + mem[_812]]
                    require mem[_812 + mem[_812]] <= test266151307()
                    require (32 * mem[_812 + mem[_812]]) + 32 >= 0 and _812 + ceil32(return_data.size) + (32 * mem[_812 + mem[_812]]) + 32 <= test266151307()
                    mem[64] = _812 + ceil32(return_data.size) + (32 * mem[_812 + mem[_812]]) + 32
                    mem[_812 + ceil32(return_data.size)] = _824
                    require return_data.size >= _818 + (32 * _824) + 32
                    mem[_812 + ceil32(return_data.size) + 32 len 32 * _824] = mem[_812 + _818 + 32 len 32 * _824]
                    require 1 < _824
                    _932 = mem[_812 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 4] = address(arg4)
                    mem[mem[64] + 36] = _932
                    require ext_code.size(address(arg7))
                    call address(arg7).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg4), _932
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _948 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_948] == bool(mem[_948])
                    _956 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_956]
                    mem[_956 + 32] = address(arg7)
                    require 1 < mem[_956]
                    mem[_956 + 64] = address(arg5)
                    mem[_956 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_956 + 100] = _932
                    mem[_956 + 132] = arg1
                    mem[_956 + 164] = 160
                    mem[_956 + 260] = mem[_956]
                    idx = 0
                    s = _956 + 292
                    t = _956 + 32
                    while idx < mem[_956]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_956 + 196] = this.address
                    mem[_956 + 228] = block.timestamp
                    require ext_code.size(address(arg4))
                    call address(arg4).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _956 + (32 * mem[_956]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1008 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1011 = mem[_1008]
                    require mem[_1008] <= test266151307()
                    require _1008 + return_data.size > _1008 + mem[_1008] + 31
                    _1014 = mem[_1008 + mem[_1008]]
                    require mem[_1008 + mem[_1008]] <= test266151307()
                    require (32 * mem[_1008 + mem[_1008]]) + 32 >= 0 and _1008 + ceil32(return_data.size) + (32 * mem[_1008 + mem[_1008]]) + 32 <= test266151307()
                    mem[64] = _1008 + ceil32(return_data.size) + (32 * mem[_1008 + mem[_1008]]) + 32
                    mem[_1008 + ceil32(return_data.size)] = _1014
                    require return_data.size >= _1011 + (32 * _1014) + 32
                    mem[_1008 + ceil32(return_data.size) + 32 len 32 * _1014] = mem[_1008 + _1011 + 32 len 32 * _1014]
                    require 1 < _1014
                    if mem[_1008 + ceil32(return_data.size) + 64] <= arg1:
                        revert with 0, 'Simple Arb failed to make profit'
}



}
