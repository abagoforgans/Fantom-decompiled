contract main {




// =====================  Runtime code  =====================


#
#  - sub_324388c6(?)
#
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
        s = (6 * ceil32(return_data.size)) + 576
        t = (6 * ceil32(return_data.size)) + 836
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
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
        _321 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_321]
        mem[_321 + 32] = address(cd[(arg5 + 196)])
        require 1 < mem[_321]
        mem[_321 + 64] = address(cd[(arg5 + 164)])
        mem[_321 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_321 + 100] = _310
        mem[_321 + 132] = 1
        mem[_321 + 164] = 160
        mem[_321 + 260] = mem[_321]
        idx = 0
        s = _321 + 32
        t = _321 + 292
        while idx < mem[_321]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_321 + 196] = this.address
        mem[_321 + 228] = block.timestamp
        require ext_code.size(address(cd[(arg5 + 100)]))
        call address(cd[(arg5 + 100)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _321 + (32 * mem[_321]) + -mem[64] + 288]
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
        _524 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _526 = mem[_524]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = _526
        require ext_code.size(address(cd[(arg5 + 164)]))
        call address(cd[(arg5 + 164)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), _526
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _532 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_532] == bool(mem[_532])
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
        _545 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_545] < arg4 + arg3:
            revert with 0, 'Need more underlying to pay back loan'
        if arg4 + arg3 < arg3:
            revert with 0, 'SafeMath: addition overflow'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg4 + arg3
        require ext_code.size(arg2)
        call arg2.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg4 + arg3
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _558 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_558] == bool(mem[_558])
        if not mem[_558]:
            revert with 0, 'Transfer fund back failed'
    else:
        idx = 0
        s = (6 * ceil32(return_data.size)) + 576
        t = (6 * ceil32(return_data.size)) + 836
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
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
        _177 = mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28]
        require mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (6 * ceil32(return_data.size)) + return_data.size + 640 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28] + 671
        _179 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28] + 640]
        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28] + 640] <= test266151307()
        require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28] + 640]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28] + 640]) + 672 <= test266151307()
        mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28] + 640]) + 672
        mem[(7 * ceil32(return_data.size)) + 640] = _179
        require return_data.size >= _177 + (32 * _179) + 32
        mem[(7 * ceil32(return_data.size)) + 672 len 32 * _179] = mem[(6 * ceil32(return_data.size)) + _177 + 672 len 32 * _179]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 196)]))
        staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _307 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _309 = mem[_307]
        mem[mem[64] + 4] = address(cd[(arg5 + 100)])
        mem[mem[64] + 36] = _309
        require ext_code.size(address(cd[(arg5 + 196)]))
        call address(cd[(arg5 + 196)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg5 + 100)]), _309
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _315 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_315] == bool(mem[_315])
        _319 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_319]
        mem[_319 + 32] = address(cd[(arg5 + 196)])
        require 1 < mem[_319]
        mem[_319 + 64] = address(cd[(arg5 + 228)])
        mem[_319 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_319 + 100] = _309
        mem[_319 + 132] = 1
        mem[_319 + 164] = 160
        mem[_319 + 260] = mem[_319]
        idx = 0
        s = _319 + 32
        t = _319 + 292
        while idx < mem[_319]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_319 + 196] = this.address
        mem[_319 + 228] = block.timestamp
        require ext_code.size(address(cd[(arg5 + 100)]))
        call address(cd[(arg5 + 100)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _319 + (32 * mem[_319]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _423 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _425 = mem[_423]
        require mem[_423] <= test266151307()
        require _423 + return_data.size > _423 + mem[_423] + 31
        _427 = mem[_423 + mem[_423]]
        require mem[_423 + mem[_423]] <= test266151307()
        require (32 * mem[_423 + mem[_423]]) + 32 >= 0 and _423 + ceil32(return_data.size) + (32 * mem[_423 + mem[_423]]) + 32 <= test266151307()
        mem[64] = _423 + ceil32(return_data.size) + (32 * mem[_423 + mem[_423]]) + 32
        mem[_423 + ceil32(return_data.size)] = _427
        require return_data.size >= _425 + (32 * _427) + 32
        mem[_423 + ceil32(return_data.size) + 32 len 32 * _427] = mem[_423 + _425 + 32 len 32 * _427]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 228)]))
        staticcall address(cd[(arg5 + 228)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _515 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _517 = mem[_515]
        mem[mem[64] + 4] = address(cd[(arg5 + 100)])
        mem[mem[64] + 36] = _517
        require ext_code.size(address(cd[(arg5 + 196)]))
        call address(cd[(arg5 + 196)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg5 + 100)]), _517
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _523 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_523] == bool(mem[_523])
        _529 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_529]
        mem[_529 + 32] = address(cd[(arg5 + 228)])
        require 1 < mem[_529]
        mem[_529 + 64] = address(cd[(arg5 + 164)])
        mem[_529 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_529 + 100] = _517
        mem[_529 + 132] = cd[(arg5 + 36)]
        mem[_529 + 164] = 160
        mem[_529 + 260] = mem[_529]
        idx = 0
        s = _529 + 32
        t = _529 + 292
        while idx < mem[_529]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_529 + 196] = this.address
        mem[_529 + 228] = block.timestamp
        require ext_code.size(address(cd[(arg5 + 132)]))
        call address(cd[(arg5 + 132)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _529 + (32 * mem[_529]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _589 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _590 = mem[_589]
        require mem[_589] <= test266151307()
        require _589 + return_data.size > _589 + mem[_589] + 31
        _591 = mem[_589 + mem[_589]]
        require mem[_589 + mem[_589]] <= test266151307()
        require (32 * mem[_589 + mem[_589]]) + 32 >= 0 and _589 + ceil32(return_data.size) + (32 * mem[_589 + mem[_589]]) + 32 <= test266151307()
        mem[64] = _589 + ceil32(return_data.size) + (32 * mem[_589 + mem[_589]]) + 32
        mem[_589 + ceil32(return_data.size)] = _591
        require return_data.size >= _590 + (32 * _591) + 32
        mem[_589 + ceil32(return_data.size) + 32 len 32 * _591] = mem[_589 + _590 + 32 len 32 * _591]
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
        _629 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _630 = mem[_629]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = _630
        require ext_code.size(address(cd[(arg5 + 164)]))
        call address(cd[(arg5 + 164)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), _630
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _633 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_633] == bool(mem[_633])
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
        _639 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_639] < arg4 + arg3:
            revert with 0, 'Need more underlying to pay back loan'
        if arg4 + arg3 < arg3:
            revert with 0, 'SafeMath: addition overflow'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg4 + arg3
        require ext_code.size(arg2)
        call arg2.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg4 + arg3
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _647 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_647] == bool(mem[_647])
        if not mem[_647]:
            revert with 0, 'Transfer fund back failed'
}



}
