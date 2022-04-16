contract main {




// =====================  Runtime code  =====================


address owner;
address comptrollerAddress;

function comptroller() payable {
    return comptrollerAddress
}

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

function sub_144cfbdb(?) payable {
    require calldata.size - 4 >= 32
    if not arg1 / 10000:
        return 0
    if 3 * arg1 / 10000 / arg1 / 10000 != 3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    return (3 * arg1 / 10000)
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

function sub_acddaefd(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).flashLoan(address rg1, uint256 rg2, bytes rg3) with:
         gas gas_remaining wei
        args address(this.address), arg2, 96, 160, arg2, address(arg3), address(arg4), address(arg5), address(arg6)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg5))
    staticcall address(arg5).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg5))
    call address(arg5).0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, ext_call.return_data[0]
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
    require arg5.length >= 160
    require bool(ceil32(return_data.size) + 416 <= test266151307())
    mem[ceil32(return_data.size) + 256] = cd[(arg5 + 36)]
    require cd[(arg5 + 68)] == address(cd[(arg5 + 68)])
    mem[ceil32(return_data.size) + 288] = cd[(arg5 + 68)]
    require cd[(arg5 + 100)] == address(cd[(arg5 + 100)])
    mem[ceil32(return_data.size) + 320] = cd[(arg5 + 100)]
    require cd[(arg5 + 132)] == address(cd[(arg5 + 132)])
    mem[ceil32(return_data.size) + 352] = cd[(arg5 + 132)]
    require cd[(arg5 + 164)] == address(cd[(arg5 + 164)])
    mem[ceil32(return_data.size) + 384] = cd[(arg5 + 164)]
    mem[ceil32(return_data.size) + 420] = this.address
    require ext_code.size(address(cd[(arg5 + 132)]))
    staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 416] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < cd[(arg5 + 36)]:
        revert with 0, 'No tokens'
    mem[(2 * ceil32(return_data.size)) + 416] = 2
    mem[(2 * ceil32(return_data.size)) + 448] = address(cd[(arg5 + 132)])
    mem[(2 * ceil32(return_data.size)) + 480] = address(cd[(arg5 + 164)])
    mem[(2 * ceil32(return_data.size)) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 516] = cd[(arg5 + 36)]
    mem[(2 * ceil32(return_data.size)) + 548] = 1
    mem[(2 * ceil32(return_data.size)) + 580] = 160
    mem[(2 * ceil32(return_data.size)) + 676] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 708
    t = (2 * ceil32(return_data.size)) + 448
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 612] = this.address
    mem[(2 * ceil32(return_data.size)) + 644] = block.timestamp
    require ext_code.size(address(cd[(arg5 + 68)]))
    call address(cd[(arg5 + 68)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args cd[(arg5 + 36)], 1, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 708 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 512
    require return_data.size >= 32
    _67 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, cd[(arg5 + 36)]) >> 32
    require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, cd[(arg5 + 36)]) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + return_data.size + 512 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, cd[(arg5 + 36)]) >> 32 + 543
    _68 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, cd[(arg5 + 36)]) >> 32 + 512]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, cd[(arg5 + 36)]) >> 32 + 512] <= test266151307()
    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, cd[(arg5 + 36)]) >> 32 + 512]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, cd[(arg5 + 36)]) >> 32 + 512]) + 544 <= test266151307()
    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, cd[(arg5 + 36)]) >> 32 + 512]) + 544
    mem[(4 * ceil32(return_data.size)) + 512] = _68
    require return_data.size >= _67 + (32 * _68) + 32
    mem[(4 * ceil32(return_data.size)) + 544 len 32 * _68] = mem[(2 * ceil32(return_data.size)) + _67 + 544 len 32 * _68]
    require 1 < _68
    _105 = mem[(4 * ceil32(return_data.size)) + 576]
    _106 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    require 0 < mem[_106]
    mem[_106 + 32] = address(cd[(arg5 + 164)])
    require 1 < mem[_106]
    mem[_106 + 64] = address(cd[(arg5 + 132)])
    mem[_106 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_106 + 100] = _105
    mem[_106 + 132] = 1
    mem[_106 + 164] = 160
    mem[_106 + 260] = mem[_106]
    idx = 0
    s = _106 + 292
    t = _106 + 32
    while idx < mem[_106]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_106 + 196] = this.address
    mem[_106 + 228] = block.timestamp
    require ext_code.size(address(cd[(arg5 + 100)]))
    call address(cd[(arg5 + 100)]).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _106 + (32 * mem[_106]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _138 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _139 = mem[_138]
    require mem[_138] <= test266151307()
    require _138 + return_data.size > _138 + mem[_138] + 31
    _140 = mem[_138 + mem[_138]]
    require mem[_138 + mem[_138]] <= test266151307()
    require (32 * mem[_138 + mem[_138]]) + 32 >= 0 and _138 + ceil32(return_data.size) + (32 * mem[_138 + mem[_138]]) + 32 <= test266151307()
    mem[64] = _138 + ceil32(return_data.size) + (32 * mem[_138 + mem[_138]]) + 32
    mem[_138 + ceil32(return_data.size)] = _140
    require return_data.size >= _139 + (32 * _140) + 32
    mem[_138 + ceil32(return_data.size) + 32 len 32 * _140] = mem[_138 + _139 + 32 len 32 * _140]
    require 1 < _140
    if mem[_138 + ceil32(return_data.size) + 64] <= cd[(arg5 + 36)]:
        revert with 0, 'Trade failed to make profit'
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
    _170 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_170] != arg4 + arg3:
        revert with 0, 'Need more underlying to pay back loan'
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = arg4 + arg3
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg4 + arg3
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _176 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_176] == bool(mem[_176])
    if not mem[_176]:
        revert with 0, 'Transfer fund back failed'
}



}
