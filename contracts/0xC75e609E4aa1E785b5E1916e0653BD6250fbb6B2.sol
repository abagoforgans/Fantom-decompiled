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
            _371 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
            require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223
            _378 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
            require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
            mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            require return_data.size >= _371 + (32 * _378) + 32
            mem[(4 * ceil32(return_data.size)) + 224 len 32 * _378] = mem[(2 * ceil32(return_data.size)) + _371 + 224 len 32 * _378]
            require 1 < _378
            _603 = mem[(4 * ceil32(return_data.size)) + 256]
            mem[mem[64] + 4] = address(arg3)
            mem[mem[64] + 36] = _603
            require ext_code.size(address(arg6))
            call address(arg6).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg3), _603
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _624 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_624] == bool(mem[_624])
            _637 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_637]
            mem[_637 + 32] = address(arg6)
            require 1 < mem[_637]
            mem[_637 + 64] = address(arg5)
            mem[_637 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_637 + 100] = _603
            mem[_637 + 132] = 1
            mem[_637 + 164] = 160
            mem[_637 + 260] = mem[_637]
            idx = 0
            s = _637 + 32
            t = _637 + 292
            while idx < mem[_637]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_637 + 196] = this.address
            mem[_637 + 228] = block.timestamp
            require ext_code.size(address(arg3))
            call address(arg3).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _637 + (32 * mem[_637]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _798 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _804 = mem[_798]
            require mem[_798] <= test266151307()
            require _798 + return_data.size > _798 + mem[_798] + 31
            _810 = mem[_798 + mem[_798]]
            require mem[_798 + mem[_798]] <= test266151307()
            require (32 * mem[_798 + mem[_798]]) + 32 >= 0 and _798 + ceil32(return_data.size) + (32 * mem[_798 + mem[_798]]) + 32 <= test266151307()
            mem[64] = _798 + ceil32(return_data.size) + (32 * mem[_798 + mem[_798]]) + 32
            mem[_798 + ceil32(return_data.size)] = _810
            require return_data.size >= _804 + (32 * _810) + 32
            mem[_798 + ceil32(return_data.size) + 32 len 32 * _810] = mem[_798 + _804 + 32 len 32 * _810]
            require 1 < _810
            if mem[_798 + ceil32(return_data.size) + 64] <= arg1:
                revert with 0, 'flashSwap did not make profit'
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
            _370 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
            require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223
            _377 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
            require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
            mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            require return_data.size >= _370 + (32 * _377) + 32
            mem[(4 * ceil32(return_data.size)) + 224 len 32 * _377] = mem[(2 * ceil32(return_data.size)) + _370 + 224 len 32 * _377]
            require 1 < _377
            _602 = mem[(4 * ceil32(return_data.size)) + 256]
            mem[mem[64] + 4] = address(arg3)
            mem[mem[64] + 36] = _602
            require ext_code.size(address(arg6))
            call address(arg6).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg3), _602
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _623 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_623] == bool(mem[_623])
            _635 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_635]
            mem[_635 + 32] = address(arg6)
            require 1 < mem[_635]
            mem[_635 + 64] = address(arg5)
            mem[_635 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_635 + 100] = _602
            mem[_635 + 132] = 1
            mem[_635 + 164] = 160
            mem[_635 + 260] = mem[_635]
            idx = 0
            s = _635 + 32
            t = _635 + 292
            while idx < mem[_635]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_635 + 196] = this.address
            mem[_635 + 228] = block.timestamp
            require ext_code.size(address(arg3))
            call address(arg3).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _635 + (32 * mem[_635]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _797 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _803 = mem[_797]
            require mem[_797] <= test266151307()
            require _797 + return_data.size > _797 + mem[_797] + 31
            _809 = mem[_797 + mem[_797]]
            require mem[_797 + mem[_797]] <= test266151307()
            require (32 * mem[_797 + mem[_797]]) + 32 >= 0 and _797 + ceil32(return_data.size) + (32 * mem[_797 + mem[_797]]) + 32 <= test266151307()
            mem[64] = _797 + ceil32(return_data.size) + (32 * mem[_797 + mem[_797]]) + 32
            mem[_797 + ceil32(return_data.size)] = _809
            require return_data.size >= _803 + (32 * _809) + 32
            mem[_797 + ceil32(return_data.size) + 32 len 32 * _809] = mem[_797 + _803 + 32 len 32 * _809]
            require 1 < _809
            _917 = mem[_797 + ceil32(return_data.size) + 64]
            mem[mem[64] + 4] = address(arg4)
            mem[mem[64] + 36] = _917
            require ext_code.size(address(arg7))
            call address(arg7).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg4), _917
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _932 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_932] == bool(mem[_932])
            _941 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_941]
            mem[_941 + 32] = address(arg7)
            require 1 < mem[_941]
            mem[_941 + 64] = address(arg5)
            mem[_941 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_941 + 100] = _917
            mem[_941 + 132] = 1
            mem[_941 + 164] = 160
            mem[_941 + 260] = mem[_941]
            idx = 0
            s = _941 + 32
            t = _941 + 292
            while idx < mem[_941]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_941 + 196] = this.address
            mem[_941 + 228] = block.timestamp
            require ext_code.size(address(arg4))
            call address(arg4).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _941 + (32 * mem[_941]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _995 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _998 = mem[_995]
            require mem[_995] <= test266151307()
            require _995 + return_data.size > _995 + mem[_995] + 31
            _1001 = mem[_995 + mem[_995]]
            require mem[_995 + mem[_995]] <= test266151307()
            require (32 * mem[_995 + mem[_995]]) + 32 >= 0 and _995 + ceil32(return_data.size) + (32 * mem[_995 + mem[_995]]) + 32 <= test266151307()
            mem[64] = _995 + ceil32(return_data.size) + (32 * mem[_995 + mem[_995]]) + 32
            mem[_995 + ceil32(return_data.size)] = _1001
            require return_data.size >= _998 + (32 * _1001) + 32
            mem[_995 + ceil32(return_data.size) + 32 len 32 * _1001] = mem[_995 + _998 + 32 len 32 * _1001]
            require 1 < _1001
            if mem[_995 + ceil32(return_data.size) + 64] <= arg1:
                revert with 0, 'flashSwap did not make profit'
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
                _373 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
                require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223
                _380 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
                require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
                mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                require return_data.size >= _373 + (32 * _380) + 32
                mem[(4 * ceil32(return_data.size)) + 224 len 32 * _380] = mem[(2 * ceil32(return_data.size)) + _373 + 224 len 32 * _380]
                require 1 < _380
                _605 = mem[(4 * ceil32(return_data.size)) + 256]
                mem[mem[64] + 4] = address(arg3)
                mem[mem[64] + 36] = _605
                require ext_code.size(address(arg6))
                call address(arg6).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg3), _605
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _626 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_626] == bool(mem[_626])
                _641 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_641]
                mem[_641 + 32] = address(arg6)
                require 1 < mem[_641]
                mem[_641 + 64] = address(arg5)
                mem[_641 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_641 + 100] = _605
                mem[_641 + 132] = 1
                mem[_641 + 164] = 160
                mem[_641 + 260] = mem[_641]
                idx = 0
                s = _641 + 32
                t = _641 + 292
                while idx < mem[_641]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_641 + 196] = this.address
                mem[_641 + 228] = block.timestamp
                require ext_code.size(address(arg3))
                call address(arg3).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _641 + (32 * mem[_641]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _800 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _806 = mem[_800]
                require mem[_800] <= test266151307()
                require _800 + return_data.size > _800 + mem[_800] + 31
                _812 = mem[_800 + mem[_800]]
                require mem[_800 + mem[_800]] <= test266151307()
                require (32 * mem[_800 + mem[_800]]) + 32 >= 0 and _800 + ceil32(return_data.size) + (32 * mem[_800 + mem[_800]]) + 32 <= test266151307()
                mem[64] = _800 + ceil32(return_data.size) + (32 * mem[_800 + mem[_800]]) + 32
                mem[_800 + ceil32(return_data.size)] = _812
                require return_data.size >= _806 + (32 * _812) + 32
                mem[_800 + ceil32(return_data.size) + 32 len 32 * _812] = mem[_800 + _806 + 32 len 32 * _812]
                require 1 < _812
                if mem[_800 + ceil32(return_data.size) + 64] <= arg1:
                    revert with 0, 'flashSwap did not make profit'
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
                _372 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
                require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223
                _379 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
                require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
                mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                require return_data.size >= _372 + (32 * _379) + 32
                mem[(4 * ceil32(return_data.size)) + 224 len 32 * _379] = mem[(2 * ceil32(return_data.size)) + _372 + 224 len 32 * _379]
                require 1 < _379
                _604 = mem[(4 * ceil32(return_data.size)) + 256]
                mem[mem[64] + 4] = address(arg3)
                mem[mem[64] + 36] = _604
                require ext_code.size(address(arg6))
                call address(arg6).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg3), _604
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _625 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_625] == bool(mem[_625])
                _639 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_639]
                mem[_639 + 32] = address(arg6)
                require 1 < mem[_639]
                mem[_639 + 64] = address(arg5)
                mem[_639 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_639 + 100] = _604
                mem[_639 + 132] = 1
                mem[_639 + 164] = 160
                mem[_639 + 260] = mem[_639]
                idx = 0
                s = _639 + 32
                t = _639 + 292
                while idx < mem[_639]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_639 + 196] = this.address
                mem[_639 + 228] = block.timestamp
                require ext_code.size(address(arg3))
                call address(arg3).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _639 + (32 * mem[_639]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _799 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _805 = mem[_799]
                require mem[_799] <= test266151307()
                require _799 + return_data.size > _799 + mem[_799] + 31
                _811 = mem[_799 + mem[_799]]
                require mem[_799 + mem[_799]] <= test266151307()
                require (32 * mem[_799 + mem[_799]]) + 32 >= 0 and _799 + ceil32(return_data.size) + (32 * mem[_799 + mem[_799]]) + 32 <= test266151307()
                mem[64] = _799 + ceil32(return_data.size) + (32 * mem[_799 + mem[_799]]) + 32
                mem[_799 + ceil32(return_data.size)] = _811
                require return_data.size >= _805 + (32 * _811) + 32
                mem[_799 + ceil32(return_data.size) + 32 len 32 * _811] = mem[_799 + _805 + 32 len 32 * _811]
                require 1 < _811
                _919 = mem[_799 + ceil32(return_data.size) + 64]
                mem[mem[64] + 4] = address(arg4)
                mem[mem[64] + 36] = _919
                require ext_code.size(address(arg7))
                call address(arg7).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg4), _919
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _934 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_934] == bool(mem[_934])
                _943 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_943]
                mem[_943 + 32] = address(arg7)
                require 1 < mem[_943]
                mem[_943 + 64] = address(arg5)
                mem[_943 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_943 + 100] = _919
                mem[_943 + 132] = 1
                mem[_943 + 164] = 160
                mem[_943 + 260] = mem[_943]
                idx = 0
                s = _943 + 32
                t = _943 + 292
                while idx < mem[_943]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_943 + 196] = this.address
                mem[_943 + 228] = block.timestamp
                require ext_code.size(address(arg4))
                call address(arg4).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _943 + (32 * mem[_943]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _996 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _999 = mem[_996]
                require mem[_996] <= test266151307()
                require _996 + return_data.size > _996 + mem[_996] + 31
                _1002 = mem[_996 + mem[_996]]
                require mem[_996 + mem[_996]] <= test266151307()
                require (32 * mem[_996 + mem[_996]]) + 32 >= 0 and _996 + ceil32(return_data.size) + (32 * mem[_996 + mem[_996]]) + 32 <= test266151307()
                mem[64] = _996 + ceil32(return_data.size) + (32 * mem[_996 + mem[_996]]) + 32
                mem[_996 + ceil32(return_data.size)] = _1002
                require return_data.size >= _999 + (32 * _1002) + 32
                mem[_996 + ceil32(return_data.size) + 32 len 32 * _1002] = mem[_996 + _999 + 32 len 32 * _1002]
                require 1 < _1002
                if mem[_996 + ceil32(return_data.size) + 64] <= arg1:
                    revert with 0, 'flashSwap did not make profit'
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
                mem[(2 * ceil32(return_data.size)) + 96] = 4
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
                _383 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32 + 256]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32 + 256] <= test266151307()
                require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32 + 256]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32 + 256]) + 288 <= test266151307()
                require return_data.size >= mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32 + 256]) + 32
                mem[(4 * ceil32(return_data.size)) + 288 len 32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32 + 256]] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32 + 288 len 32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32 + 256]]
                require 3 < _383
                if mem[(4 * ceil32(return_data.size)) + 384] <= arg1:
                    revert with 0, 'flashSwap did not make profit'
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
                    _375 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223
                    _382 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
                    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
                    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                    require return_data.size >= _375 + (32 * _382) + 32
                    mem[(4 * ceil32(return_data.size)) + 224 len 32 * _382] = mem[(2 * ceil32(return_data.size)) + _375 + 224 len 32 * _382]
                    require 1 < _382
                    _607 = mem[(4 * ceil32(return_data.size)) + 256]
                    mem[mem[64] + 4] = address(arg3)
                    mem[mem[64] + 36] = _607
                    require ext_code.size(address(arg6))
                    call address(arg6).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg3), _607
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _628 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_628] == bool(mem[_628])
                    _645 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_645]
                    mem[_645 + 32] = address(arg6)
                    require 1 < mem[_645]
                    mem[_645 + 64] = address(arg5)
                    mem[_645 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_645 + 100] = _607
                    mem[_645 + 132] = 1
                    mem[_645 + 164] = 160
                    mem[_645 + 260] = mem[_645]
                    idx = 0
                    s = _645 + 32
                    t = _645 + 292
                    while idx < mem[_645]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_645 + 196] = this.address
                    mem[_645 + 228] = block.timestamp
                    require ext_code.size(address(arg3))
                    call address(arg3).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _645 + (32 * mem[_645]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _802 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _808 = mem[_802]
                    require mem[_802] <= test266151307()
                    require _802 + return_data.size > _802 + mem[_802] + 31
                    _814 = mem[_802 + mem[_802]]
                    require mem[_802 + mem[_802]] <= test266151307()
                    require (32 * mem[_802 + mem[_802]]) + 32 >= 0 and _802 + ceil32(return_data.size) + (32 * mem[_802 + mem[_802]]) + 32 <= test266151307()
                    mem[64] = _802 + ceil32(return_data.size) + (32 * mem[_802 + mem[_802]]) + 32
                    mem[_802 + ceil32(return_data.size)] = _814
                    require return_data.size >= _808 + (32 * _814) + 32
                    mem[_802 + ceil32(return_data.size) + 32 len 32 * _814] = mem[_802 + _808 + 32 len 32 * _814]
                    require 1 < _814
                    if mem[_802 + ceil32(return_data.size) + 64] <= arg1:
                        revert with 0, 'flashSwap did not make profit'
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
                    _374 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223
                    _381 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
                    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
                    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                    require return_data.size >= _374 + (32 * _381) + 32
                    mem[(4 * ceil32(return_data.size)) + 224 len 32 * _381] = mem[(2 * ceil32(return_data.size)) + _374 + 224 len 32 * _381]
                    require 1 < _381
                    _606 = mem[(4 * ceil32(return_data.size)) + 256]
                    mem[mem[64] + 4] = address(arg3)
                    mem[mem[64] + 36] = _606
                    require ext_code.size(address(arg6))
                    call address(arg6).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg3), _606
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _627 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_627] == bool(mem[_627])
                    _643 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_643]
                    mem[_643 + 32] = address(arg6)
                    require 1 < mem[_643]
                    mem[_643 + 64] = address(arg5)
                    mem[_643 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_643 + 100] = _606
                    mem[_643 + 132] = 1
                    mem[_643 + 164] = 160
                    mem[_643 + 260] = mem[_643]
                    idx = 0
                    s = _643 + 32
                    t = _643 + 292
                    while idx < mem[_643]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_643 + 196] = this.address
                    mem[_643 + 228] = block.timestamp
                    require ext_code.size(address(arg3))
                    call address(arg3).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _643 + (32 * mem[_643]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _801 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _807 = mem[_801]
                    require mem[_801] <= test266151307()
                    require _801 + return_data.size > _801 + mem[_801] + 31
                    _813 = mem[_801 + mem[_801]]
                    require mem[_801 + mem[_801]] <= test266151307()
                    require (32 * mem[_801 + mem[_801]]) + 32 >= 0 and _801 + ceil32(return_data.size) + (32 * mem[_801 + mem[_801]]) + 32 <= test266151307()
                    mem[64] = _801 + ceil32(return_data.size) + (32 * mem[_801 + mem[_801]]) + 32
                    mem[_801 + ceil32(return_data.size)] = _813
                    require return_data.size >= _807 + (32 * _813) + 32
                    mem[_801 + ceil32(return_data.size) + 32 len 32 * _813] = mem[_801 + _807 + 32 len 32 * _813]
                    require 1 < _813
                    _921 = mem[_801 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 4] = address(arg4)
                    mem[mem[64] + 36] = _921
                    require ext_code.size(address(arg7))
                    call address(arg7).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg4), _921
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _936 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_936] == bool(mem[_936])
                    _945 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_945]
                    mem[_945 + 32] = address(arg7)
                    require 1 < mem[_945]
                    mem[_945 + 64] = address(arg5)
                    mem[_945 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_945 + 100] = _921
                    mem[_945 + 132] = 1
                    mem[_945 + 164] = 160
                    mem[_945 + 260] = mem[_945]
                    idx = 0
                    s = _945 + 32
                    t = _945 + 292
                    while idx < mem[_945]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_945 + 196] = this.address
                    mem[_945 + 228] = block.timestamp
                    require ext_code.size(address(arg4))
                    call address(arg4).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _945 + (32 * mem[_945]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _997 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1000 = mem[_997]
                    require mem[_997] <= test266151307()
                    require _997 + return_data.size > _997 + mem[_997] + 31
                    _1003 = mem[_997 + mem[_997]]
                    require mem[_997 + mem[_997]] <= test266151307()
                    require (32 * mem[_997 + mem[_997]]) + 32 >= 0 and _997 + ceil32(return_data.size) + (32 * mem[_997 + mem[_997]]) + 32 <= test266151307()
                    mem[64] = _997 + ceil32(return_data.size) + (32 * mem[_997 + mem[_997]]) + 32
                    mem[_997 + ceil32(return_data.size)] = _1003
                    require return_data.size >= _1000 + (32 * _1003) + 32
                    mem[_997 + ceil32(return_data.size) + 32 len 32 * _1003] = mem[_997 + _1000 + 32 len 32 * _1003]
                    require 1 < _1003
                    if mem[_997 + ceil32(return_data.size) + 64] <= arg1:
                        revert with 0, 'flashSwap did not make profit'
}



}
