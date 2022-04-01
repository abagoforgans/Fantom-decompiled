contract main {




// =====================  Runtime code  =====================


address owner;
address stor11;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function balance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_2349a086(?) payable {
    require calldata.size - 4 >= 256
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg7 == address(arg7)
    require arg8 == bool(arg8)
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(address(arg2))
    staticcall address(arg2).allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(this.address), stor11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor11)
    staticcall stor11.flashFee(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    call address(arg2).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor11, (2 * ext_call.return_data[0]) + arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor11)
    call stor11.flashLoan(address rg1, address rg2, uint256 rg3, bytes rg4) with:
         gas gas_remaining wei
        args address(this.address), address(arg2), arg1, 128, 224, bool(arg8), address(arg2), address(arg3), address(arg4), address(arg5), address(arg6), address(arg7)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_8ad7a804(?) payable {
    require calldata.size - 4 >= 224
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg7 == address(arg7)
    mem[96] = 2
    mem[128] = address(arg2)
    mem[160] = address(arg3)
    mem[196] = address(arg5)
    mem[228] = -1
    require ext_code.size(address(arg2))
    call address(arg2).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg5), -1
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg1
    mem[ceil32(return_data.size) + 228] = 1
    mem[ceil32(return_data.size) + 260] = 160
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 388
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 292] = this.address
    mem[ceil32(return_data.size) + 324] = block.timestamp + 1
    require ext_code.size(address(arg5))
    call address(arg5).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg1, 1, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _68 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _69 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require return_data.size >= _68 + (32 * _69) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _69] = mem[ceil32(return_data.size) + _68 + 224 len 32 * _69]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg3))
    staticcall address(arg3).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _123 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _124 = mem[_123]
    if mem[_123] <= 0:
        revert with 0, 'Contract has not recived Token B'
    mem[128] = address(arg3)
    mem[160] = address(arg4)
    mem[mem[64] + 4] = address(arg6)
    mem[mem[64] + 36] = -1
    require ext_code.size(address(arg3))
    call address(arg3).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg6), -1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _131 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_131] == bool(mem[_131])
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _124
    mem[mem[64] + 36] = 1
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = 2
    idx = 0
    s = mem[64] + 196
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp + 1
    require ext_code.size(address(arg6))
    call address(arg6).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args _124, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _171 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _172 = mem[_171]
    require mem[_171] <= test266151307()
    require _171 + mem[_171] + 31 < _171 + return_data.size
    _173 = mem[_171 + mem[_171]]
    require mem[_171 + mem[_171]] <= test266151307()
    require (32 * mem[_171 + mem[_171]]) + 32 >= 0 and _171 + ceil32(return_data.size) + (32 * mem[_171 + mem[_171]]) + 32 <= test266151307()
    mem[64] = _171 + ceil32(return_data.size) + (32 * mem[_171 + mem[_171]]) + 32
    mem[_171 + ceil32(return_data.size)] = _173
    require return_data.size >= _172 + (32 * _173) + 32
    mem[_171 + ceil32(return_data.size) + 32 len 32 * _173] = mem[_171 + _172 + 32 len 32 * _173]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg4))
    staticcall address(arg4).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _206 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _207 = mem[_206]
    if mem[_206] <= 0:
        revert with 0, 'Contract has not recived Token C'
    mem[128] = address(arg4)
    mem[160] = address(arg2)
    mem[mem[64] + 4] = address(arg7)
    mem[mem[64] + 36] = -1
    require ext_code.size(address(arg4))
    call address(arg4).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg7), -1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _214 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_214] == bool(mem[_214])
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _207
    mem[mem[64] + 36] = 1
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = 2
    idx = 0
    s = mem[64] + 196
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp + 1
    require ext_code.size(address(arg7))
    call address(arg7).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args _207, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _233 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _234 = mem[_233]
    require mem[_233] <= test266151307()
    require _233 + mem[_233] + 31 < _233 + return_data.size
    _235 = mem[_233 + mem[_233]]
    require mem[_233 + mem[_233]] <= test266151307()
    require (32 * mem[_233 + mem[_233]]) + 32 >= 0 and _233 + ceil32(return_data.size) + (32 * mem[_233 + mem[_233]]) + 32 <= test266151307()
    mem[64] = _233 + ceil32(return_data.size) + (32 * mem[_233 + mem[_233]]) + 32
    mem[_233 + ceil32(return_data.size)] = _235
    require return_data.size >= _234 + (32 * _235) + 32
    mem[_233 + ceil32(return_data.size) + 32 len 32 * _235] = mem[_233 + _234 + 32 len 32 * _235]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg2))
    staticcall address(arg2).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _247 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_247] <= 0:
        revert with 0, 'Contract has not recived Token A'
}

function onFlashLoan(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if stor11 != msg.sender:
        revert with 0, 'FlashBorrower: Untrusted lender'
    if arg1 != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FlashBorrower: Untrusted loan initiator'
    require arg5.length >= 224
    require cd[(arg5 + 36)] == bool(cd[(arg5 + 36)])
    mem[96] = cd[(arg5 + 36)]
    require cd[(arg5 + 68)] == address(cd[(arg5 + 68)])
    mem[128] = cd[(arg5 + 68)]
    require cd[(arg5 + 100)] == address(cd[(arg5 + 100)])
    mem[160] = cd[(arg5 + 100)]
    require cd[(arg5 + 132)] == address(cd[(arg5 + 132)])
    mem[192] = cd[(arg5 + 132)]
    require cd[(arg5 + 164)] == address(cd[(arg5 + 164)])
    mem[224] = cd[(arg5 + 164)]
    require cd[(arg5 + 196)] == address(cd[(arg5 + 196)])
    mem[256] = cd[(arg5 + 196)]
    require cd[(arg5 + 228)] == address(cd[(arg5 + 228)])
    mem[288] = cd[(arg5 + 228)]
    if 1 == bool(cd[(arg5 + 36)]):
        mem[324] = this.address
        require ext_code.size(arg2)
        staticcall arg2.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        mem[320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg3:
            revert with 0, 'contract did not recive funds'
        mem[ceil32(return_data.size) + 320] = 2
        mem[ceil32(return_data.size) + 352] = address(cd[(arg5 + 68)])
        mem[ceil32(return_data.size) + 384] = address(cd[(arg5 + 100)])
        mem[ceil32(return_data.size) + 420] = address(cd[(arg5 + 164)])
        mem[ceil32(return_data.size) + 452] = -1
        require ext_code.size(address(cd[(arg5 + 68)]))
        call address(cd[(arg5 + 68)]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(cd[(arg5 + 164)]), -1
        mem[ceil32(return_data.size) + 416] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 420] = arg3
        mem[(2 * ceil32(return_data.size)) + 452] = 1
        mem[(2 * ceil32(return_data.size)) + 484] = 160
        mem[(2 * ceil32(return_data.size)) + 580] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 612
        t = ceil32(return_data.size) + 352
        while idx < mem[ceil32(return_data.size) + 320]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 516] = this.address
        mem[(2 * ceil32(return_data.size)) + 548] = block.timestamp + 1
        require ext_code.size(address(cd[(arg5 + 164)]))
        call address(cd[(arg5 + 164)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg3, 1, 160, address(this.address), block.timestamp + 1, mem[(2 * ceil32(return_data.size)) + 580 len (32 * mem[ceil32(return_data.size) + 320]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 416
        require return_data.size >= 32
        _90 = mem[(2 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32
        require mem[(2 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + 447 < (2 * ceil32(return_data.size)) + return_data.size + 416
        _91 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]
        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416] <= test266151307()
        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]) + 448 <= test266151307()
        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]) + 448
        mem[(4 * ceil32(return_data.size)) + 416] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]
        require return_data.size >= _90 + (32 * _91) + 32
        mem[(4 * ceil32(return_data.size)) + 448 len 32 * _91] = mem[(2 * ceil32(return_data.size)) + _90 + 448 len 32 * _91]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 100)]))
        staticcall address(cd[(arg5 + 100)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _147 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _148 = mem[_147]
        if mem[_147] <= 0:
            revert with 0, 'Contract has not recived Token B'
        require 0 < mem[ceil32(return_data.size) + 320]
        mem[ceil32(return_data.size) + 352] = address(cd[(arg5 + 100)])
        require 1 < mem[ceil32(return_data.size) + 320]
        mem[ceil32(return_data.size) + 384] = address(cd[(arg5 + 132)])
        mem[mem[64] + 4] = address(cd[(arg5 + 196)])
        mem[mem[64] + 36] = -1
        require ext_code.size(address(cd[(arg5 + 100)]))
        call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(cd[(arg5 + 196)]), -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _155 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_155] == bool(mem[_155])
        _157 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _148
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = 160
        _158 = mem[ceil32(return_data.size) + 320]
        mem[mem[64] + 164] = mem[ceil32(return_data.size) + 320]
        idx = 0
        s = mem[64] + 196
        t = ceil32(return_data.size) + 352
        while idx < _158:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_157 + 100] = this.address
        mem[_157 + 132] = block.timestamp + 1
        require ext_code.size(address(cd[(arg5 + 196)]))
        call address(cd[(arg5 + 196)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _157 + (32 * _158) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _197 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _198 = mem[_197]
        require mem[_197] <= test266151307()
        require _197 + mem[_197] + 31 < _197 + return_data.size
        _199 = mem[_197 + mem[_197]]
        require mem[_197 + mem[_197]] <= test266151307()
        require (32 * mem[_197 + mem[_197]]) + 32 >= 0 and _197 + ceil32(return_data.size) + (32 * mem[_197 + mem[_197]]) + 32 <= test266151307()
        mem[64] = _197 + ceil32(return_data.size) + (32 * mem[_197 + mem[_197]]) + 32
        mem[_197 + ceil32(return_data.size)] = _199
        require return_data.size >= _198 + (32 * _199) + 32
        mem[_197 + ceil32(return_data.size) + 32 len 32 * _199] = mem[_197 + _198 + 32 len 32 * _199]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 132)]))
        staticcall address(cd[(arg5 + 132)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _234 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _235 = mem[_234]
        if mem[_234] <= 0:
            revert with 0, 'Contract has not recived Token C'
        require 0 < mem[ceil32(return_data.size) + 320]
        mem[ceil32(return_data.size) + 352] = address(cd[(arg5 + 132)])
        require 1 < mem[ceil32(return_data.size) + 320]
        mem[ceil32(return_data.size) + 384] = address(cd[(arg5 + 68)])
        mem[mem[64] + 4] = address(cd[(arg5 + 228)])
        mem[mem[64] + 36] = -1
        require ext_code.size(address(cd[(arg5 + 132)]))
        call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(cd[(arg5 + 228)]), -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _242 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_242] == bool(mem[_242])
        _244 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _235
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = 160
        _245 = mem[ceil32(return_data.size) + 320]
        mem[mem[64] + 164] = mem[ceil32(return_data.size) + 320]
        idx = 0
        s = mem[64] + 196
        t = ceil32(return_data.size) + 352
        while idx < _245:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_244 + 100] = this.address
        mem[_244 + 132] = block.timestamp + 1
        require ext_code.size(address(cd[(arg5 + 228)]))
        call address(cd[(arg5 + 228)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _244 + (32 * _245) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _263 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _264 = mem[_263]
        require mem[_263] <= test266151307()
        require _263 + mem[_263] + 31 < _263 + return_data.size
        _265 = mem[_263 + mem[_263]]
        require mem[_263 + mem[_263]] <= test266151307()
        require (32 * mem[_263 + mem[_263]]) + 32 >= 0 and _263 + ceil32(return_data.size) + (32 * mem[_263 + mem[_263]]) + 32 <= test266151307()
        mem[64] = _263 + ceil32(return_data.size) + (32 * mem[_263 + mem[_263]]) + 32
        mem[_263 + ceil32(return_data.size)] = _265
        require return_data.size >= _264 + (32 * _265) + 32
        mem[_263 + ceil32(return_data.size) + 32 len 32 * _265] = mem[_263 + _264 + 32 len 32 * _265]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 68)]))
        staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _279 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_279] <= 0:
            revert with 0, 'Contract has not recived Token A'
    return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9
}



}
