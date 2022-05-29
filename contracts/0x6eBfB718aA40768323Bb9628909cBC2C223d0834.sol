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

function _sync(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    call arg1.sync() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_f833118f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    call address(arg1).skim(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
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

function sub_b340364f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
}

function _getPair(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg1)
    staticcall arg1.0xc45a0155 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
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

function _getBalances(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0]
}

function sub_324388c6(?) payable {
    require calldata.size - 4 >= 256
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg7 == address(arg7)
    require arg8 == address(arg8)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).flashLoan(address arg1, uint256 arg2, bytes arg3) with:
         gas gas_remaining wei
        args address(this.address), arg2, 96, 224, arg2, address(arg3), address(arg4), address(arg5), address(arg6), address(arg7), address(arg8)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg6))
    staticcall address(arg6).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg6))
    call address(arg6).0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_028903b1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg1))
    staticcall address(arg1).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]):
        if ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]):
            return 1
        else:
            return 0
    else:
        return 0
}

function executeOperation(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    mem[100] = this.address
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'Invalid balance, was the flashLoan successful?'
    mem[ceil32(return_data.size) + 96] = 0
    mem[ceil32(return_data.size) + 128] = 0
    mem[ceil32(return_data.size) + 160] = 0
    mem[ceil32(return_data.size) + 192] = 0
    mem[ceil32(return_data.size) + 224] = 0
    mem[ceil32(return_data.size) + 256] = 0
    mem[ceil32(return_data.size) + 288] = 0
    require arg5.length >= 224
    require bool(ceil32(return_data.size) + 544 <= test266151307())
    mem[ceil32(return_data.size) + 320] = cd[(arg5 + 36)]
    require cd[(arg5 + 68)] == address(cd[(arg5 + 68)])
    mem[ceil32(return_data.size) + 352] = cd[(arg5 + 68)]
    require cd[(arg5 + 100)] == address(cd[(arg5 + 100)])
    mem[ceil32(return_data.size) + 384] = cd[(arg5 + 100)]
    require cd[(arg5 + 132)] == address(cd[(arg5 + 132)])
    mem[ceil32(return_data.size) + 416] = cd[(arg5 + 132)]
    require cd[(arg5 + 164)] == address(cd[(arg5 + 164)])
    mem[ceil32(return_data.size) + 448] = cd[(arg5 + 164)]
    require cd[(arg5 + 196)] == address(cd[(arg5 + 196)])
    mem[ceil32(return_data.size) + 480] = cd[(arg5 + 196)]
    require cd[(arg5 + 228)] == address(cd[(arg5 + 228)])
    mem[ceil32(return_data.size) + 512] = cd[(arg5 + 228)]
    mem[ceil32(return_data.size) + 548] = this.address
    require ext_code.size(address(cd[(arg5 + 164)]))
    staticcall address(cd[(arg5 + 164)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < cd[(arg5 + 36)]:
        revert with 0, 'No tokens'
    mem[(2 * ceil32(return_data.size)) + 548] = this.address
    require ext_code.size(address(cd[(arg5 + 164)]))
    staticcall address(cd[(arg5 + 164)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 548] = address(cd[(arg5 + 68)])
    mem[(4 * ceil32(return_data.size)) + 580] = ext_call.return_data[0]
    require ext_code.size(address(cd[(arg5 + 164)]))
    call address(cd[(arg5 + 164)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[(arg5 + 68)]), ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 544] = 2
    mem[(6 * ceil32(return_data.size)) + 576] = address(cd[(arg5 + 164)])
    mem[(6 * ceil32(return_data.size)) + 608] = address(cd[(arg5 + 196)])
    mem[(6 * ceil32(return_data.size)) + 640] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(6 * ceil32(return_data.size)) + 644] = ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 676] = 1
    mem[(6 * ceil32(return_data.size)) + 708] = 160
    mem[(6 * ceil32(return_data.size)) + 804] = 2
    if not address(cd[(arg5 + 132)]):
        idx = 0
        s = (6 * ceil32(return_data.size)) + 836
        t = (6 * ceil32(return_data.size)) + 576
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(6 * ceil32(return_data.size)) + 740] = this.address
        mem[(6 * ceil32(return_data.size)) + 772] = block.timestamp
        require ext_code.size(address(cd[(arg5 + 68)]))
        call address(cd[(arg5 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 1, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (7 * ceil32(return_data.size)) + 640
        require return_data.size >= 32
        _179 = mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28]
        require mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (6 * ceil32(return_data.size)) + return_data.size + 640 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28] + 671
        _181 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28] + 640]
        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28] + 640] <= test266151307()
        require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28] + 640]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28] + 640]) + 672 <= test266151307()
        mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28] + 640]) + 672
        mem[(7 * ceil32(return_data.size)) + 640] = _181
        require return_data.size >= _179 + (32 * _181) + 32
        mem[(7 * ceil32(return_data.size)) + 672 len 32 * _181] = mem[(6 * ceil32(return_data.size)) + _179 + 672 len 32 * _181]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 196)]))
        staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _309 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _311 = mem[_309]
        mem[mem[64] + 4] = address(cd[(arg5 + 100)])
        mem[mem[64] + 36] = _311
        require ext_code.size(address(cd[(arg5 + 196)]))
        call address(cd[(arg5 + 196)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg5 + 100)]), _311
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _317 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_317] == bool(mem[_317])
        _322 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_322]
        mem[_322 + 32] = address(cd[(arg5 + 196)])
        require 1 < mem[_322]
        mem[_322 + 64] = address(cd[(arg5 + 164)])
        mem[_322 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_322 + 100] = _311
        mem[_322 + 132] = 1
        mem[_322 + 164] = 160
        mem[_322 + 260] = mem[_322]
        idx = 0
        s = _322 + 292
        t = _322 + 32
        while idx < mem[_322]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_322 + 196] = this.address
        mem[_322 + 228] = block.timestamp
        require ext_code.size(address(cd[(arg5 + 100)]))
        call address(cd[(arg5 + 100)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _322 + (32 * mem[_322]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _425 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _427 = mem[_425]
        require mem[_425] <= test266151307()
        require _425 + return_data.size > _425 + mem[_425] + 31
        _429 = mem[_425 + mem[_425]]
        require mem[_425 + mem[_425]] <= test266151307()
        require (32 * mem[_425 + mem[_425]]) + 32 >= 0 and _425 + ceil32(return_data.size) + (32 * mem[_425 + mem[_425]]) + 32 <= test266151307()
        mem[64] = _425 + ceil32(return_data.size) + (32 * mem[_425 + mem[_425]]) + 32
        mem[_425 + ceil32(return_data.size)] = _429
        require return_data.size >= _427 + (32 * _429) + 32
        mem[_425 + ceil32(return_data.size) + 32 len 32 * _429] = mem[_425 + _427 + 32 len 32 * _429]
        require ext_code.size(address(cd[(arg5 + 164)]))
        staticcall address(cd[(arg5 + 164)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 164)]))
        staticcall address(cd[(arg5 + 164)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _525 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _527 = mem[_525]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = _527
        require ext_code.size(address(cd[(arg5 + 164)]))
        call address(cd[(arg5 + 164)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), _527
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _533 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_533] == bool(mem[_533])
        if arg4 + arg3 < arg3:
            revert with 0, 'SafeMath: addition overflow'
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _547 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_547] < arg4 + arg3:
            revert with 0, 'Need more underlying to pay back loan'
        if arg4 + arg3 < arg3:
            revert with 0, 'SafeMath: addition overflow'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg4 + arg3
        require ext_code.size(arg2)
        call arg2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg4 + arg3
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _560 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_560] == bool(mem[_560])
        if not mem[_560]:
            revert with 0, 'Transfer fund back failed'
    else:
        idx = 0
        s = (6 * ceil32(return_data.size)) + 836
        t = (6 * ceil32(return_data.size)) + 576
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(6 * ceil32(return_data.size)) + 740] = this.address
        mem[(6 * ceil32(return_data.size)) + 772] = block.timestamp
        require ext_code.size(address(cd[(arg5 + 68)]))
        call address(cd[(arg5 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 1, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (7 * ceil32(return_data.size)) + 640
        require return_data.size >= 32
        _178 = mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28]
        require mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (6 * ceil32(return_data.size)) + return_data.size + 640 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28] + 671
        _180 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28] + 640]
        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28] + 640] <= test266151307()
        require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28] + 640]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28] + 640]) + 672 <= test266151307()
        mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28] + 640]) + 672
        mem[(7 * ceil32(return_data.size)) + 640] = _180
        require return_data.size >= _178 + (32 * _180) + 32
        mem[(7 * ceil32(return_data.size)) + 672 len 32 * _180] = mem[(6 * ceil32(return_data.size)) + _178 + 672 len 32 * _180]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 196)]))
        staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _308 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _310 = mem[_308]
        mem[mem[64] + 4] = address(cd[(arg5 + 100)])
        mem[mem[64] + 36] = _310
        require ext_code.size(address(cd[(arg5 + 196)]))
        call address(cd[(arg5 + 196)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg5 + 100)]), _310
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _316 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_316] == bool(mem[_316])
        _320 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_320]
        mem[_320 + 32] = address(cd[(arg5 + 196)])
        require 1 < mem[_320]
        mem[_320 + 64] = address(cd[(arg5 + 228)])
        mem[_320 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_320 + 100] = _310
        mem[_320 + 132] = 1
        mem[_320 + 164] = 160
        mem[_320 + 260] = mem[_320]
        idx = 0
        s = _320 + 292
        t = _320 + 32
        while idx < mem[_320]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_320 + 196] = this.address
        mem[_320 + 228] = block.timestamp
        require ext_code.size(address(cd[(arg5 + 100)]))
        call address(cd[(arg5 + 100)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _320 + (32 * mem[_320]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _424 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _426 = mem[_424]
        require mem[_424] <= test266151307()
        require _424 + return_data.size > _424 + mem[_424] + 31
        _428 = mem[_424 + mem[_424]]
        require mem[_424 + mem[_424]] <= test266151307()
        require (32 * mem[_424 + mem[_424]]) + 32 >= 0 and _424 + ceil32(return_data.size) + (32 * mem[_424 + mem[_424]]) + 32 <= test266151307()
        mem[64] = _424 + ceil32(return_data.size) + (32 * mem[_424 + mem[_424]]) + 32
        mem[_424 + ceil32(return_data.size)] = _428
        require return_data.size >= _426 + (32 * _428) + 32
        mem[_424 + ceil32(return_data.size) + 32 len 32 * _428] = mem[_424 + _426 + 32 len 32 * _428]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 228)]))
        staticcall address(cd[(arg5 + 228)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _516 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _518 = mem[_516]
        mem[mem[64] + 4] = address(cd[(arg5 + 100)])
        mem[mem[64] + 36] = _518
        require ext_code.size(address(cd[(arg5 + 196)]))
        call address(cd[(arg5 + 196)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg5 + 100)]), _518
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _524 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_524] == bool(mem[_524])
        _530 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_530]
        mem[_530 + 32] = address(cd[(arg5 + 228)])
        require 1 < mem[_530]
        mem[_530 + 64] = address(cd[(arg5 + 164)])
        mem[_530 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_530 + 100] = _518
        mem[_530 + 132] = cd[(arg5 + 36)]
        mem[_530 + 164] = 160
        mem[_530 + 260] = mem[_530]
        idx = 0
        s = _530 + 292
        t = _530 + 32
        while idx < mem[_530]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_530 + 196] = this.address
        mem[_530 + 228] = block.timestamp
        require ext_code.size(address(cd[(arg5 + 132)]))
        call address(cd[(arg5 + 132)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _530 + (32 * mem[_530]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _590 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _591 = mem[_590]
        require mem[_590] <= test266151307()
        require _590 + return_data.size > _590 + mem[_590] + 31
        _592 = mem[_590 + mem[_590]]
        require mem[_590 + mem[_590]] <= test266151307()
        require (32 * mem[_590 + mem[_590]]) + 32 >= 0 and _590 + ceil32(return_data.size) + (32 * mem[_590 + mem[_590]]) + 32 <= test266151307()
        mem[64] = _590 + ceil32(return_data.size) + (32 * mem[_590 + mem[_590]]) + 32
        mem[_590 + ceil32(return_data.size)] = _592
        require return_data.size >= _591 + (32 * _592) + 32
        mem[_590 + ceil32(return_data.size) + 32 len 32 * _592] = mem[_590 + _591 + 32 len 32 * _592]
        require ext_code.size(address(cd[(arg5 + 164)]))
        staticcall address(cd[(arg5 + 164)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 164)]))
        staticcall address(cd[(arg5 + 164)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _630 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _631 = mem[_630]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = _631
        require ext_code.size(address(cd[(arg5 + 164)]))
        call address(cd[(arg5 + 164)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), _631
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _634 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_634] == bool(mem[_634])
        if arg4 + arg3 < arg3:
            revert with 0, 'SafeMath: addition overflow'
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _640 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_640] < arg4 + arg3:
            revert with 0, 'Need more underlying to pay back loan'
        if arg4 + arg3 < arg3:
            revert with 0, 'SafeMath: addition overflow'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg4 + arg3
        require ext_code.size(arg2)
        call arg2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg4 + arg3
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _648 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_648] == bool(mem[_648])
        if not mem[_648]:
            revert with 0, 'Transfer fund back failed'
}



}
