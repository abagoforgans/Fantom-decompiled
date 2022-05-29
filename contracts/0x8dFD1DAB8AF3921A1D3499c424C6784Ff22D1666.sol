contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function sub_22c90166(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
    staticcall arg1.0x70a08231 with:
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
    call arg1.0xa9059cbb with:
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
    staticcall arg2.0x70a08231 with:
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
    call arg2.0xa9059cbb with:
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

function sub_69ec0a72(?) payable {
    require calldata.size - 4 >= 160
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'No tokens'
    mem[ceil32(return_data.size) + 100] = address(arg5)
    mem[ceil32(return_data.size) + 132] = arg1
    require ext_code.size(address(arg2))
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg5), arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = 3
    mem[(2 * ceil32(return_data.size)) + 128 len 96] = call.data[calldata.size len 96]
    mem[(2 * ceil32(return_data.size)) + 128] = address(arg2)
    mem[(2 * ceil32(return_data.size)) + 160] = address(arg4)
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
    require ext_code.size(address(arg5))
    call address(arg5).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, arg1, Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 420 len 96]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _37 = mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32
    require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + return_data.size + 224 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + 255
    _38 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224] <= test266151307()
    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 256 <= test266151307()
    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 256
    mem[(4 * ceil32(return_data.size)) + 224] = _38
    require return_data.size >= _37 + (32 * _38) + 32
    mem[(4 * ceil32(return_data.size)) + 256 len 32 * _38] = mem[(2 * ceil32(return_data.size)) + _37 + 256 len 32 * _38]
    require 1 < _38
    if mem[(4 * ceil32(return_data.size)) + 288] <= arg1:
        revert with 0, 'Internal Arb failed to make profit'
    require 1 < _38
    mem[mem[64]] = mem[(4 * ceil32(return_data.size)) + 288]
    return memory
      from mem[64]
       len 32
}

function sub_c0d234c5(?) payable {
    require calldata.size - 4 >= 160
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'No tokens'
    mem[ceil32(return_data.size) + 100] = address(arg4)
    mem[ceil32(return_data.size) + 132] = arg1
    require ext_code.size(address(arg2))
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg4), arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = 2
    mem[(2 * ceil32(return_data.size)) + 128] = address(arg2)
    mem[(2 * ceil32(return_data.size)) + 160] = address(arg3)
    mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = arg1
    mem[(2 * ceil32(return_data.size)) + 228] = 1
    mem[(2 * ceil32(return_data.size)) + 260] = 160
    mem[(2 * ceil32(return_data.size)) + 356] = 2
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
    require ext_code.size(address(arg4))
    call address(arg4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 1, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _52 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223
    _53 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require return_data.size >= _52 + (32 * _53) + 32
    mem[(4 * ceil32(return_data.size)) + 224 len 32 * _53] = mem[(2 * ceil32(return_data.size)) + _52 + 224 len 32 * _53]
    require 1 < _53
    _82 = mem[(4 * ceil32(return_data.size)) + 256]
    mem[mem[64] + 4] = address(arg5)
    mem[mem[64] + 36] = _82
    require ext_code.size(address(arg3))
    call address(arg3).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg5), _82
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _85 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_85] == bool(mem[_85])
    _87 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    require 0 < mem[_87]
    mem[_87 + 32] = address(arg3)
    require 1 < mem[_87]
    mem[_87 + 64] = address(arg2)
    mem[_87 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_87 + 100] = _82
    mem[_87 + 132] = arg1
    mem[_87 + 164] = 160
    mem[_87 + 260] = mem[_87]
    idx = 0
    s = _87 + 292
    t = _87 + 32
    while idx < mem[_87]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_87 + 196] = this.address
    mem[_87 + 228] = block.timestamp
    require ext_code.size(address(arg5))
    call address(arg5).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _87 + (32 * mem[_87]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _107 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _108 = mem[_107]
    require mem[_107] <= test266151307()
    require _107 + return_data.size > _107 + mem[_107] + 31
    _109 = mem[_107 + mem[_107]]
    require mem[_107 + mem[_107]] <= test266151307()
    require (32 * mem[_107 + mem[_107]]) + 32 >= 0 and _107 + ceil32(return_data.size) + (32 * mem[_107 + mem[_107]]) + 32 <= test266151307()
    mem[64] = _107 + ceil32(return_data.size) + (32 * mem[_107 + mem[_107]]) + 32
    mem[_107 + ceil32(return_data.size)] = _109
    require return_data.size >= _108 + (32 * _109) + 32
    mem[_107 + ceil32(return_data.size) + 32 len 32 * _109] = mem[_107 + _108 + 32 len 32 * _109]
    require 1 < _109
    if mem[_107 + ceil32(return_data.size) + 64] <= arg1:
        revert with 0, 'Simple Arb failed to make profit'
    mem[mem[64]] = mem[_107 + ceil32(return_data.size) + 64]
    return memory
      from mem[64]
       len 32
}

function sub_13866e7a(?) payable {
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
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'No tokens'
    mem[ceil32(return_data.size) + 100] = address(arg5)
    mem[ceil32(return_data.size) + 132] = arg1
    require ext_code.size(address(arg2))
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg5), arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = 2
    mem[(2 * ceil32(return_data.size)) + 128] = address(arg2)
    mem[(2 * ceil32(return_data.size)) + 160] = address(arg3)
    mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = arg1
    mem[(2 * ceil32(return_data.size)) + 228] = 1
    mem[(2 * ceil32(return_data.size)) + 260] = 160
    mem[(2 * ceil32(return_data.size)) + 356] = 2
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
    require ext_code.size(address(arg5))
    call address(arg5).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 1, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _70 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223
    _71 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require return_data.size >= _70 + (32 * _71) + 32
    mem[(4 * ceil32(return_data.size)) + 224 len 32 * _71] = mem[(2 * ceil32(return_data.size)) + _70 + 224 len 32 * _71]
    require 1 < _71
    _118 = mem[(4 * ceil32(return_data.size)) + 256]
    mem[mem[64] + 4] = address(arg6)
    mem[mem[64] + 36] = _118
    require ext_code.size(address(arg3))
    call address(arg3).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg6), _118
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _121 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_121] == bool(mem[_121])
    _123 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    require 0 < mem[_123]
    mem[_123 + 32] = address(arg3)
    require 1 < mem[_123]
    mem[_123 + 64] = address(arg2)
    mem[_123 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_123 + 100] = _118
    mem[_123 + 132] = arg1
    mem[_123 + 164] = 160
    mem[_123 + 260] = mem[_123]
    idx = 0
    s = _123 + 292
    t = _123 + 32
    while idx < mem[_123]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_123 + 196] = this.address
    mem[_123 + 228] = block.timestamp
    require ext_code.size(address(arg6))
    call address(arg6).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _123 + (32 * mem[_123]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _161 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _162 = mem[_161]
    require mem[_161] <= test266151307()
    require _161 + return_data.size > _161 + mem[_161] + 31
    _163 = mem[_161 + mem[_161]]
    require mem[_161 + mem[_161]] <= test266151307()
    require (32 * mem[_161 + mem[_161]]) + 32 >= 0 and _161 + ceil32(return_data.size) + (32 * mem[_161 + mem[_161]]) + 32 <= test266151307()
    mem[64] = _161 + ceil32(return_data.size) + (32 * mem[_161 + mem[_161]]) + 32
    mem[_161 + ceil32(return_data.size)] = _163
    require return_data.size >= _162 + (32 * _163) + 32
    mem[_161 + ceil32(return_data.size) + 32 len 32 * _163] = mem[_161 + _162 + 32 len 32 * _163]
    require 1 < _163
    _192 = mem[_161 + ceil32(return_data.size) + 64]
    mem[mem[64] + 4] = address(arg7)
    mem[mem[64] + 36] = _192
    require ext_code.size(address(arg4))
    call address(arg4).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg7), _192
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _195 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_195] == bool(mem[_195])
    _197 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    require 0 < mem[_197]
    mem[_197 + 32] = address(arg4)
    require 1 < mem[_197]
    mem[_197 + 64] = address(arg2)
    mem[_197 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_197 + 100] = _192
    mem[_197 + 132] = arg1
    mem[_197 + 164] = 160
    mem[_197 + 260] = mem[_197]
    idx = 0
    s = _197 + 292
    t = _197 + 32
    while idx < mem[_197]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_197 + 196] = this.address
    mem[_197 + 228] = block.timestamp
    require ext_code.size(address(arg7))
    call address(arg7).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _197 + (32 * mem[_197]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _217 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _218 = mem[_217]
    require mem[_217] <= test266151307()
    require _217 + return_data.size > _217 + mem[_217] + 31
    _219 = mem[_217 + mem[_217]]
    require mem[_217 + mem[_217]] <= test266151307()
    require (32 * mem[_217 + mem[_217]]) + 32 >= 0 and _217 + ceil32(return_data.size) + (32 * mem[_217 + mem[_217]]) + 32 <= test266151307()
    mem[64] = _217 + ceil32(return_data.size) + (32 * mem[_217 + mem[_217]]) + 32
    mem[_217 + ceil32(return_data.size)] = _219
    require return_data.size >= _218 + (32 * _219) + 32
    mem[_217 + ceil32(return_data.size) + 32 len 32 * _219] = mem[_217 + _218 + 32 len 32 * _219]
    require 1 < _219
    if mem[_217 + ceil32(return_data.size) + 64] <= arg1:
        revert with 0, 'Simple Arb failed to make profit'
    mem[mem[64]] = mem[_217 + ceil32(return_data.size) + 64]
    return memory
      from mem[64]
       len 32
}



}
