contract main {




// =====================  Runtime code  =====================


address owner;
address stor2;
address stor3;
address stor8;

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

function sub_556de210(?) payable {
    require calldata.size - 4 >= 288
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg7 == address(arg7)
    require arg8 == address(arg8)
    require arg9 == bool(arg9)
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(address(arg2))
    staticcall address(arg2).allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(this.address), stor8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor8)
    staticcall stor8.flashFee(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    call address(arg2).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor8, (2 * ext_call.return_data[0]) + arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor8)
    call stor8.flashLoan(address rg1, address rg2, uint256 rg3, bytes rg4) with:
         gas gas_remaining wei
        args address(this.address), address(arg2), arg1, 128, 256, bool(arg9), address(arg2), address(arg3), address(arg4), address(arg5), address(arg6), address(arg7), address(arg8)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg2))
    call address(arg2).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(this.address), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg2))
    staticcall address(arg2).balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    call address(arg2).transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_b7b3973e(?) payable {
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
    _72 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _73 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
    mem[(2 * ceil32(return_data.size)) + 192] = _73
    require return_data.size >= _72 + (32 * _73) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _73] = mem[ceil32(return_data.size) + _72 + 224 len 32 * _73]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg3))
    staticcall address(arg3).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _131 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _132 = mem[_131]
    if mem[_131] <= 0:
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
    _139 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_139] == bool(mem[_139])
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _132
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
        args _132, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _183 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _184 = mem[_183]
    require mem[_183] <= test266151307()
    require _183 + mem[_183] + 31 < _183 + return_data.size
    _185 = mem[_183 + mem[_183]]
    require mem[_183 + mem[_183]] <= test266151307()
    require (32 * mem[_183 + mem[_183]]) + 32 >= 0 and _183 + ceil32(return_data.size) + (32 * mem[_183 + mem[_183]]) + 32 <= test266151307()
    mem[64] = _183 + ceil32(return_data.size) + (32 * mem[_183 + mem[_183]]) + 32
    mem[_183 + ceil32(return_data.size)] = _185
    require return_data.size >= _184 + (32 * _185) + 32
    mem[_183 + ceil32(return_data.size) + 32 len 32 * _185] = mem[_183 + _184 + 32 len 32 * _185]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg4))
    staticcall address(arg4).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _222 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _223 = mem[_222]
    if mem[_222] <= 0:
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
    _230 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_230] == bool(mem[_230])
    require ext_code.size(address(arg2))
    staticcall address(arg2).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _223
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
        args _223, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _253 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _254 = mem[_253]
    require mem[_253] <= test266151307()
    require _253 + mem[_253] + 31 < _253 + return_data.size
    _255 = mem[_253 + mem[_253]]
    require mem[_253 + mem[_253]] <= test266151307()
    require (32 * mem[_253 + mem[_253]]) + 32 >= 0 and _253 + ceil32(return_data.size) + (32 * mem[_253 + mem[_253]]) + 32 <= test266151307()
    mem[64] = _253 + ceil32(return_data.size) + (32 * mem[_253 + mem[_253]]) + 32
    mem[_253 + ceil32(return_data.size)] = _255
    require return_data.size >= _254 + (32 * _255) + 32
    mem[_253 + ceil32(return_data.size) + 32 len 32 * _255] = mem[_253 + _254 + 32 len 32 * _255]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg2))
    staticcall address(arg2).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _267 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_267] <= 0:
        revert with 0, 'Contract has not recived Token A at the END'
}

function sub_1b307879(?) payable {
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
    _145 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _146 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
    mem[(2 * ceil32(return_data.size)) + 192] = _146
    require return_data.size >= _145 + (32 * _146) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _146] = mem[ceil32(return_data.size) + _145 + 224 len 32 * _146]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg3))
    staticcall address(arg3).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _277 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _278 = mem[_277]
    if mem[_277] <= 0:
        revert with 0, 'Contract has not recived Token B'
    mem[mem[64] + 4] = 0
    require ext_code.size(address(arg6))
    staticcall address(arg6).coins(uint256 rg1) with:
            gas gas_remaining wei
           args 0
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _283 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_283] == mem[_283 + 12 len 20]
    if mem[_283 + 12 len 20] == address(arg3):
        mem[mem[64] + 4] = address(arg6)
        mem[mem[64] + 36] = -1
        require ext_code.size(address(arg3))
        call address(arg3).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg6), -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _290 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_290] == bool(mem[_290])
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = _278
        mem[mem[64] + 100] = 1
        require ext_code.size(address(arg6))
        call address(arg6).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
             gas gas_remaining wei
            args 0, 1, _278, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg4))
        staticcall address(arg4).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _305 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _307 = mem[_305]
        if mem[_305] <= 0:
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
        _322 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_322] == bool(mem[_322])
        require ext_code.size(address(arg2))
        staticcall address(arg2).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _307
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
            args _307, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _408 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _411 = mem[_408]
        require mem[_408] <= test266151307()
        require _408 + mem[_408] + 31 < _408 + return_data.size
        _414 = mem[_408 + mem[_408]]
        require mem[_408 + mem[_408]] <= test266151307()
        require (32 * mem[_408 + mem[_408]]) + 32 >= 0 and _408 + ceil32(return_data.size) + (32 * mem[_408 + mem[_408]]) + 32 <= test266151307()
        mem[64] = _408 + ceil32(return_data.size) + (32 * mem[_408 + mem[_408]]) + 32
        mem[_408 + ceil32(return_data.size)] = _414
        require return_data.size >= _411 + (32 * _414) + 32
        mem[_408 + ceil32(return_data.size) + 32 len 32 * _414] = mem[_408 + _411 + 32 len 32 * _414]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _450 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_450] <= 0:
            revert with 0, 'Contract has not recived Token A at the END'
    else:
        mem[mem[64] + 4] = 1
        require ext_code.size(address(arg6))
        staticcall address(arg6).coins(uint256 rg1) with:
                gas gas_remaining wei
               args 1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _289 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_289] == mem[_289 + 12 len 20]
        mem[mem[64] + 4] = address(arg6)
        mem[mem[64] + 36] = -1
        require ext_code.size(address(arg3))
        call address(arg3).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg6), -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_289 + 12 len 20] != address(arg3):
            _299 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_299] == bool(mem[_299])
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = _278
            mem[mem[64] + 100] = 1
            require ext_code.size(address(arg6))
            call address(arg6).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args 0, 0, _278, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg4))
            staticcall address(arg4).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _321 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _324 = mem[_321]
            if mem[_321] <= 0:
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
            _341 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_341] == bool(mem[_341])
            require ext_code.size(address(arg2))
            staticcall address(arg2).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _324
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
                args _324, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _406 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _409 = mem[_406]
            require mem[_406] <= test266151307()
            require _406 + mem[_406] + 31 < _406 + return_data.size
            _412 = mem[_406 + mem[_406]]
            require mem[_406 + mem[_406]] <= test266151307()
            require (32 * mem[_406 + mem[_406]]) + 32 >= 0 and _406 + ceil32(return_data.size) + (32 * mem[_406 + mem[_406]]) + 32 <= test266151307()
            mem[64] = _406 + ceil32(return_data.size) + (32 * mem[_406 + mem[_406]]) + 32
            mem[_406 + ceil32(return_data.size)] = _412
            require return_data.size >= _409 + (32 * _412) + 32
            mem[_406 + ceil32(return_data.size) + 32 len 32 * _412] = mem[_406 + _409 + 32 len 32 * _412]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg2))
            staticcall address(arg2).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _448 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_448] <= 0:
                revert with 0, 'Contract has not recived Token A at the END'
        else:
            _301 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_301] == bool(mem[_301])
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = _278
            mem[mem[64] + 100] = 1
            require ext_code.size(address(arg6))
            call address(arg6).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args 1, 0, _278, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg4))
            staticcall address(arg4).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _323 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _326 = mem[_323]
            if mem[_323] <= 0:
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
            _343 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_343] == bool(mem[_343])
            require ext_code.size(address(arg2))
            staticcall address(arg2).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _326
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
                args _326, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _407 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _410 = mem[_407]
            require mem[_407] <= test266151307()
            require _407 + mem[_407] + 31 < _407 + return_data.size
            _413 = mem[_407 + mem[_407]]
            require mem[_407 + mem[_407]] <= test266151307()
            require (32 * mem[_407 + mem[_407]]) + 32 >= 0 and _407 + ceil32(return_data.size) + (32 * mem[_407 + mem[_407]]) + 32 <= test266151307()
            mem[64] = _407 + ceil32(return_data.size) + (32 * mem[_407 + mem[_407]]) + 32
            mem[_407 + ceil32(return_data.size)] = _413
            require return_data.size >= _410 + (32 * _413) + 32
            mem[_407 + ceil32(return_data.size) + 32 len 32 * _413] = mem[_407 + _410 + 32 len 32 * _413]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg2))
            staticcall address(arg2).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _449 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_449] <= 0:
                revert with 0, 'Contract has not recived Token A at the END'
}

function sub_c7d7f099(?) payable {
    require calldata.size - 4 >= 256
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg7 == address(arg7)
    require arg8 == address(arg8)
    mem[96] = 2
    mem[128] = address(arg2)
    mem[160] = address(arg3)
    mem[196] = address(arg6)
    mem[228] = -1
    require ext_code.size(address(arg2))
    call address(arg2).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg6), -1
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
    require ext_code.size(address(arg6))
    call address(arg6).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg1, 1, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _208 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _209 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
    mem[(2 * ceil32(return_data.size)) + 192] = _209
    require return_data.size >= _208 + (32 * _209) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _209] = mem[ceil32(return_data.size) + _208 + 224 len 32 * _209]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg3))
    staticcall address(arg3).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _403 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _404 = mem[_403]
    if mem[_403] <= 0:
        revert with 0, 'Contract has not recived Token B'
    mem[mem[64] + 4] = 0
    require ext_code.size(address(arg7))
    staticcall address(arg7).coins(uint256 rg1) with:
            gas gas_remaining wei
           args 0
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _409 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_409] == mem[_409 + 12 len 20]
    if mem[_409 + 12 len 20] == address(arg3):
        mem[mem[64] + 4] = address(arg7)
        mem[mem[64] + 36] = -1
        require ext_code.size(address(arg3))
        call address(arg3).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg7), -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _416 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_416] == bool(mem[_416])
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = _404
        mem[mem[64] + 100] = 1
        require ext_code.size(address(arg7))
        call address(arg7).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
             gas gas_remaining wei
            args 0, 1, _404, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg4))
        staticcall address(arg4).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _431 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _433 = mem[_431]
        if mem[_431] <= 0:
            revert with 0, 'Contract has not recived Token C'
        mem[128] = address(arg4)
        mem[160] = address(arg5)
        mem[mem[64] + 4] = address(arg8)
        mem[mem[64] + 36] = -1
        require ext_code.size(address(arg4))
        call address(arg4).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg8), -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _448 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_448] == bool(mem[_448])
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _433
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
        require ext_code.size(address(arg8))
        call address(arg8).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args _433, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _597 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _600 = mem[_597]
        require mem[_597] <= test266151307()
        require _597 + mem[_597] + 31 < _597 + return_data.size
        _603 = mem[_597 + mem[_597]]
        require mem[_597 + mem[_597]] <= test266151307()
        require (32 * mem[_597 + mem[_597]]) + 32 >= 0 and _597 + ceil32(return_data.size) + (32 * mem[_597 + mem[_597]]) + 32 <= test266151307()
        mem[64] = _597 + ceil32(return_data.size) + (32 * mem[_597 + mem[_597]]) + 32
        mem[_597 + ceil32(return_data.size)] = _603
        require return_data.size >= _600 + (32 * _603) + 32
        mem[_597 + ceil32(return_data.size) + 32 len 32 * _603] = mem[_597 + _600 + 32 len 32 * _603]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg5))
        staticcall address(arg5).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _714 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _717 = mem[_714]
        if mem[_714] <= 0:
            revert with 0, 'Contract has not recived Token D'
        mem[128] = address(arg5)
        mem[160] = address(arg2)
        mem[mem[64] + 4] = address(arg6)
        mem[mem[64] + 36] = -1
        require ext_code.size(address(arg5))
        call address(arg5).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg6), -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _738 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_738] == bool(mem[_738])
        require ext_code.size(address(arg2))
        staticcall address(arg2).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _717
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
            args _717, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _807 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _810 = mem[_807]
        require mem[_807] <= test266151307()
        require _807 + mem[_807] + 31 < _807 + return_data.size
        _813 = mem[_807 + mem[_807]]
        require mem[_807 + mem[_807]] <= test266151307()
        require (32 * mem[_807 + mem[_807]]) + 32 >= 0 and _807 + ceil32(return_data.size) + (32 * mem[_807 + mem[_807]]) + 32 <= test266151307()
        mem[64] = _807 + ceil32(return_data.size) + (32 * mem[_807 + mem[_807]]) + 32
        mem[_807 + ceil32(return_data.size)] = _813
        require return_data.size >= _810 + (32 * _813) + 32
        mem[_807 + ceil32(return_data.size) + 32 len 32 * _813] = mem[_807 + _810 + 32 len 32 * _813]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _849 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_849] <= 0:
            revert with 0, 'Contract has not recived Token A at the END'
    else:
        mem[mem[64] + 4] = 1
        require ext_code.size(address(arg7))
        staticcall address(arg7).coins(uint256 rg1) with:
                gas gas_remaining wei
               args 1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _415 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_415] == mem[_415 + 12 len 20]
        mem[mem[64] + 4] = address(arg7)
        mem[mem[64] + 36] = -1
        require ext_code.size(address(arg3))
        call address(arg3).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg7), -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_415 + 12 len 20] != address(arg3):
            _425 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_425] == bool(mem[_425])
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = _404
            mem[mem[64] + 100] = 1
            require ext_code.size(address(arg7))
            call address(arg7).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args 0, 0, _404, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg4))
            staticcall address(arg4).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _447 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _450 = mem[_447]
            if mem[_447] <= 0:
                revert with 0, 'Contract has not recived Token C'
            mem[128] = address(arg4)
            mem[160] = address(arg5)
            mem[mem[64] + 4] = address(arg8)
            mem[mem[64] + 36] = -1
            require ext_code.size(address(arg4))
            call address(arg4).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg8), -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _468 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_468] == bool(mem[_468])
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _450
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
            require ext_code.size(address(arg8))
            call address(arg8).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args _450, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _595 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _598 = mem[_595]
            require mem[_595] <= test266151307()
            require _595 + mem[_595] + 31 < _595 + return_data.size
            _601 = mem[_595 + mem[_595]]
            require mem[_595 + mem[_595]] <= test266151307()
            require (32 * mem[_595 + mem[_595]]) + 32 >= 0 and _595 + ceil32(return_data.size) + (32 * mem[_595 + mem[_595]]) + 32 <= test266151307()
            mem[64] = _595 + ceil32(return_data.size) + (32 * mem[_595 + mem[_595]]) + 32
            mem[_595 + ceil32(return_data.size)] = _601
            require return_data.size >= _598 + (32 * _601) + 32
            mem[_595 + ceil32(return_data.size) + 32 len 32 * _601] = mem[_595 + _598 + 32 len 32 * _601]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg5))
            staticcall address(arg5).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _712 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _715 = mem[_712]
            if mem[_712] <= 0:
                revert with 0, 'Contract has not recived Token D'
            mem[128] = address(arg5)
            mem[160] = address(arg2)
            mem[mem[64] + 4] = address(arg6)
            mem[mem[64] + 36] = -1
            require ext_code.size(address(arg5))
            call address(arg5).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg6), -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _736 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_736] == bool(mem[_736])
            require ext_code.size(address(arg2))
            staticcall address(arg2).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _715
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
                args _715, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _805 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _808 = mem[_805]
            require mem[_805] <= test266151307()
            require _805 + mem[_805] + 31 < _805 + return_data.size
            _811 = mem[_805 + mem[_805]]
            require mem[_805 + mem[_805]] <= test266151307()
            require (32 * mem[_805 + mem[_805]]) + 32 >= 0 and _805 + ceil32(return_data.size) + (32 * mem[_805 + mem[_805]]) + 32 <= test266151307()
            mem[64] = _805 + ceil32(return_data.size) + (32 * mem[_805 + mem[_805]]) + 32
            mem[_805 + ceil32(return_data.size)] = _811
            require return_data.size >= _808 + (32 * _811) + 32
            mem[_805 + ceil32(return_data.size) + 32 len 32 * _811] = mem[_805 + _808 + 32 len 32 * _811]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg2))
            staticcall address(arg2).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _847 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_847] <= 0:
                revert with 0, 'Contract has not recived Token A at the END'
        else:
            _427 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_427] == bool(mem[_427])
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = _404
            mem[mem[64] + 100] = 1
            require ext_code.size(address(arg7))
            call address(arg7).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args 1, 0, _404, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg4))
            staticcall address(arg4).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _449 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _452 = mem[_449]
            if mem[_449] <= 0:
                revert with 0, 'Contract has not recived Token C'
            mem[128] = address(arg4)
            mem[160] = address(arg5)
            mem[mem[64] + 4] = address(arg8)
            mem[mem[64] + 36] = -1
            require ext_code.size(address(arg4))
            call address(arg4).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg8), -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _470 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_470] == bool(mem[_470])
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _452
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
            require ext_code.size(address(arg8))
            call address(arg8).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args _452, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _596 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _599 = mem[_596]
            require mem[_596] <= test266151307()
            require _596 + mem[_596] + 31 < _596 + return_data.size
            _602 = mem[_596 + mem[_596]]
            require mem[_596 + mem[_596]] <= test266151307()
            require (32 * mem[_596 + mem[_596]]) + 32 >= 0 and _596 + ceil32(return_data.size) + (32 * mem[_596 + mem[_596]]) + 32 <= test266151307()
            mem[64] = _596 + ceil32(return_data.size) + (32 * mem[_596 + mem[_596]]) + 32
            mem[_596 + ceil32(return_data.size)] = _602
            require return_data.size >= _599 + (32 * _602) + 32
            mem[_596 + ceil32(return_data.size) + 32 len 32 * _602] = mem[_596 + _599 + 32 len 32 * _602]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg5))
            staticcall address(arg5).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _713 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _716 = mem[_713]
            if mem[_713] <= 0:
                revert with 0, 'Contract has not recived Token D'
            mem[128] = address(arg5)
            mem[160] = address(arg2)
            mem[mem[64] + 4] = address(arg6)
            mem[mem[64] + 36] = -1
            require ext_code.size(address(arg5))
            call address(arg5).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg6), -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _737 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_737] == bool(mem[_737])
            require ext_code.size(address(arg2))
            staticcall address(arg2).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _716
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
                args _716, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _806 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _809 = mem[_806]
            require mem[_806] <= test266151307()
            require _806 + mem[_806] + 31 < _806 + return_data.size
            _812 = mem[_806 + mem[_806]]
            require mem[_806 + mem[_806]] <= test266151307()
            require (32 * mem[_806 + mem[_806]]) + 32 >= 0 and _806 + ceil32(return_data.size) + (32 * mem[_806 + mem[_806]]) + 32 <= test266151307()
            mem[64] = _806 + ceil32(return_data.size) + (32 * mem[_806 + mem[_806]]) + 32
            mem[_806 + ceil32(return_data.size)] = _812
            require return_data.size >= _809 + (32 * _812) + 32
            mem[_806 + ceil32(return_data.size) + 32 len 32 * _812] = mem[_806 + _809 + 32 len 32 * _812]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg2))
            staticcall address(arg2).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _848 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_848] <= 0:
                revert with 0, 'Contract has not recived Token A at the END'
}

function sub_01d31887(?) payable {
    require calldata.size - 4 >= 256
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg7 == address(arg7)
    require arg8 == address(arg8)
    mem[96] = 2
    mem[128] = address(arg2)
    mem[160] = address(arg3)
    mem[196] = address(arg6)
    mem[228] = -1
    require ext_code.size(address(arg2))
    call address(arg2).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg6), -1
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
    require ext_code.size(address(arg6))
    call address(arg6).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg1, 1, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _55 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _56 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
    mem[(2 * ceil32(return_data.size)) + 192] = _56
    require return_data.size >= _55 + (32 * _56) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _56] = mem[ceil32(return_data.size) + _55 + 224 len 32 * _56]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg3))
    staticcall address(arg3).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _97 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _98 = mem[_97]
    if mem[_97] <= 0:
        revert with 0, 'Contract has not recived Token B'
    mem[mem[64] + 4] = 0
    require ext_code.size(address(arg7))
    staticcall address(arg7).coins(uint256 rg1) with:
            gas gas_remaining wei
           args 0
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _103 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_103] == mem[_103 + 12 len 20]
    if address(arg3) == mem[_103 + 12 len 20]:
        mem[mem[64] + 4] = stor3
        mem[mem[64] + 36] = -1
        require ext_code.size(address(arg3))
        call address(arg3).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor3, -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _110 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_110] == bool(mem[_110])
        _114 = mem[64]
        mem[64] = mem[64] + 64
        mem[_114] = _98
        mem[_114 + 32] = 0
        mem[mem[64] + 4 len 64] = _98, 0
        mem[mem[64] + 68] = 1
        require ext_code.size(address(arg7))
        call address(arg7).add_liquidity(uint256[2] rg1, uint256 rg2) with:
             gas gas_remaining wei
            args _98, 0 >> 256, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg4))
        staticcall address(arg4).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _144 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _147 = mem[_144]
        if mem[_144] <= 0:
            revert with 0, 'Contract has not recived Token C'
        mem[mem[64] + 4] = 0
        require ext_code.size(address(arg8))
        staticcall address(arg8).coins(uint256 rg1) with:
                gas gas_remaining wei
               args 0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _162 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_162] == mem[_162 + 12 len 20]
        if mem[_162 + 12 len 20] == address(arg4):
            mem[mem[64] + 4] = address(arg8)
            mem[mem[64] + 36] = -1
            require ext_code.size(address(arg4))
            call address(arg4).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg8), -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _183 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_183] == bool(mem[_183])
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = _147
            mem[mem[64] + 100] = 1
            require ext_code.size(address(arg8))
            call address(arg8).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args 0, 1, _147, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg5))
            staticcall address(arg5).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _228 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_228] <= 0:
                revert with 0, 'Contract has not recived Token D'
            mem[128] = address(arg5)
            mem[160] = address(arg2)
            mem[mem[64] + 4] = address(arg6)
            mem[mem[64] + 36] = -1
            require ext_code.size(address(arg5))
            call address(arg5).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg6), -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _279 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_279] == bool(mem[_279])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg5))
            staticcall address(arg5).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _339 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _348 = mem[_339]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _348
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
                args _348, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _537 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _546 = mem[_537]
            require mem[_537] <= test266151307()
            require _537 + mem[_537] + 31 < _537 + return_data.size
            _555 = mem[_537 + mem[_537]]
            require mem[_537 + mem[_537]] <= test266151307()
            require (32 * mem[_537 + mem[_537]]) + 32 >= 0 and _537 + ceil32(return_data.size) + (32 * mem[_537 + mem[_537]]) + 32 <= test266151307()
            mem[64] = _537 + ceil32(return_data.size) + (32 * mem[_537 + mem[_537]]) + 32
            mem[_537 + ceil32(return_data.size)] = _555
            require return_data.size >= _546 + (32 * _555) + 32
            mem[_537 + ceil32(return_data.size) + 32 len 32 * _555] = mem[_537 + _546 + 32 len 32 * _555]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg2))
            staticcall address(arg2).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _663 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_663] <= 0:
                revert with 0, 'Contract has not recived Token A at the END'
        else:
            mem[mem[64] + 4] = 1
            require ext_code.size(address(arg8))
            staticcall address(arg8).coins(uint256 rg1) with:
                    gas gas_remaining wei
                   args 1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _180 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_180] == mem[_180 + 12 len 20]
            mem[mem[64] + 4] = address(arg8)
            mem[mem[64] + 36] = -1
            require ext_code.size(address(arg4))
            call address(arg4).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg8), -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_180 + 12 len 20] != address(arg4):
                _212 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_212] == bool(mem[_212])
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = _147
                mem[mem[64] + 100] = 1
                require ext_code.size(address(arg8))
                call address(arg8).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args 0, 0, _147, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg5))
                staticcall address(arg5).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _278 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_278] <= 0:
                    revert with 0, 'Contract has not recived Token D'
                mem[128] = address(arg5)
                mem[160] = address(arg2)
                mem[mem[64] + 4] = address(arg6)
                mem[mem[64] + 36] = -1
                require ext_code.size(address(arg5))
                call address(arg5).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg6), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _338 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_338] == bool(mem[_338])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg5))
                staticcall address(arg5).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _381 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _390 = mem[_381]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _390
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
                    args _390, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _535 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _544 = mem[_535]
                require mem[_535] <= test266151307()
                require _535 + mem[_535] + 31 < _535 + return_data.size
                _553 = mem[_535 + mem[_535]]
                require mem[_535 + mem[_535]] <= test266151307()
                require (32 * mem[_535 + mem[_535]]) + 32 >= 0 and _535 + ceil32(return_data.size) + (32 * mem[_535 + mem[_535]]) + 32 <= test266151307()
                mem[64] = _535 + ceil32(return_data.size) + (32 * mem[_535 + mem[_535]]) + 32
                mem[_535 + ceil32(return_data.size)] = _553
                require return_data.size >= _544 + (32 * _553) + 32
                mem[_535 + ceil32(return_data.size) + 32 len 32 * _553] = mem[_535 + _544 + 32 len 32 * _553]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _661 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_661] <= 0:
                    revert with 0, 'Contract has not recived Token A at the END'
            else:
                _216 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_216] == bool(mem[_216])
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = _147
                mem[mem[64] + 100] = 1
                require ext_code.size(address(arg8))
                call address(arg8).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args 1, 0, _147, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg5))
                staticcall address(arg5).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _282 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_282] <= 0:
                    revert with 0, 'Contract has not recived Token D'
                mem[128] = address(arg5)
                mem[160] = address(arg2)
                mem[mem[64] + 4] = address(arg6)
                mem[mem[64] + 36] = -1
                require ext_code.size(address(arg5))
                call address(arg5).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg6), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _342 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_342] == bool(mem[_342])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg5))
                staticcall address(arg5).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _386 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _398 = mem[_386]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _398
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
                    args _398, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _536 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _545 = mem[_536]
                require mem[_536] <= test266151307()
                require _536 + mem[_536] + 31 < _536 + return_data.size
                _554 = mem[_536 + mem[_536]]
                require mem[_536 + mem[_536]] <= test266151307()
                require (32 * mem[_536 + mem[_536]]) + 32 >= 0 and _536 + ceil32(return_data.size) + (32 * mem[_536 + mem[_536]]) + 32 <= test266151307()
                mem[64] = _536 + ceil32(return_data.size) + (32 * mem[_536 + mem[_536]]) + 32
                mem[_536 + ceil32(return_data.size)] = _554
                require return_data.size >= _545 + (32 * _554) + 32
                mem[_536 + ceil32(return_data.size) + 32 len 32 * _554] = mem[_536 + _545 + 32 len 32 * _554]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _662 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_662] <= 0:
                    revert with 0, 'Contract has not recived Token A at the END'
    else:
        mem[mem[64] + 4] = 1
        require ext_code.size(address(arg7))
        staticcall address(arg7).coins(uint256 rg1) with:
                gas gas_remaining wei
               args 1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _109 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_109] == mem[_109 + 12 len 20]
        mem[mem[64] + 4] = stor3
        mem[mem[64] + 36] = -1
        require ext_code.size(address(arg3))
        call address(arg3).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor3, -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if address(arg3) != mem[_109 + 12 len 20]:
            _120 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_120] == bool(mem[_120])
            _124 = mem[64]
            mem[64] = mem[64] + 64
            mem[_124] = 0
            mem[_124 + 32] = 0
            mem[mem[64] + 4 len 64] = 0
            mem[mem[64] + 68] = 1
            require ext_code.size(address(arg7))
            call address(arg7).add_liquidity(uint256[2] rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args 0, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg4))
            staticcall address(arg4).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _142 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _145 = mem[_142]
            if mem[_142] <= 0:
                revert with 0, 'Contract has not recived Token C'
            mem[mem[64] + 4] = 0
            require ext_code.size(address(arg8))
            staticcall address(arg8).coins(uint256 rg1) with:
                    gas gas_remaining wei
                   args 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _160 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_160] == mem[_160 + 12 len 20]
            if mem[_160 + 12 len 20] == address(arg4):
                mem[mem[64] + 4] = address(arg8)
                mem[mem[64] + 36] = -1
                require ext_code.size(address(arg4))
                call address(arg4).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg8), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _181 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_181] == bool(mem[_181])
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = _145
                mem[mem[64] + 100] = 1
                require ext_code.size(address(arg8))
                call address(arg8).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args 0, 1, _145, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg5))
                staticcall address(arg5).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _226 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_226] <= 0:
                    revert with 0, 'Contract has not recived Token D'
                mem[128] = address(arg5)
                mem[160] = address(arg2)
                mem[mem[64] + 4] = address(arg6)
                mem[mem[64] + 36] = -1
                require ext_code.size(address(arg5))
                call address(arg5).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg6), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _275 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_275] == bool(mem[_275])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg5))
                staticcall address(arg5).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _335 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _344 = mem[_335]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _344
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
                    args _344, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _531 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _540 = mem[_531]
                require mem[_531] <= test266151307()
                require _531 + mem[_531] + 31 < _531 + return_data.size
                _549 = mem[_531 + mem[_531]]
                require mem[_531 + mem[_531]] <= test266151307()
                require (32 * mem[_531 + mem[_531]]) + 32 >= 0 and _531 + ceil32(return_data.size) + (32 * mem[_531 + mem[_531]]) + 32 <= test266151307()
                mem[64] = _531 + ceil32(return_data.size) + (32 * mem[_531 + mem[_531]]) + 32
                mem[_531 + ceil32(return_data.size)] = _549
                require return_data.size >= _540 + (32 * _549) + 32
                mem[_531 + ceil32(return_data.size) + 32 len 32 * _549] = mem[_531 + _540 + 32 len 32 * _549]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _657 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_657] <= 0:
                    revert with 0, 'Contract has not recived Token A at the END'
            else:
                mem[mem[64] + 4] = 1
                require ext_code.size(address(arg8))
                staticcall address(arg8).coins(uint256 rg1) with:
                        gas gas_remaining wei
                       args 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _178 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_178] == mem[_178 + 12 len 20]
                mem[mem[64] + 4] = address(arg8)
                mem[mem[64] + 36] = -1
                require ext_code.size(address(arg4))
                call address(arg4).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg8), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_178 + 12 len 20] != address(arg4):
                    _208 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_208] == bool(mem[_208])
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = _145
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(arg8))
                    call address(arg8).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args 0, 0, _145, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _274 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_274] <= 0:
                        revert with 0, 'Contract has not recived Token D'
                    mem[128] = address(arg5)
                    mem[160] = address(arg2)
                    mem[mem[64] + 4] = address(arg6)
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(arg5))
                    call address(arg5).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg6), -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _334 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_334] == bool(mem[_334])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _379 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _388 = mem[_379]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _388
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
                        args _388, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _529 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _538 = mem[_529]
                    require mem[_529] <= test266151307()
                    require _529 + mem[_529] + 31 < _529 + return_data.size
                    _547 = mem[_529 + mem[_529]]
                    require mem[_529 + mem[_529]] <= test266151307()
                    require (32 * mem[_529 + mem[_529]]) + 32 >= 0 and _529 + ceil32(return_data.size) + (32 * mem[_529 + mem[_529]]) + 32 <= test266151307()
                    mem[64] = _529 + ceil32(return_data.size) + (32 * mem[_529 + mem[_529]]) + 32
                    mem[_529 + ceil32(return_data.size)] = _547
                    require return_data.size >= _538 + (32 * _547) + 32
                    mem[_529 + ceil32(return_data.size) + 32 len 32 * _547] = mem[_529 + _538 + 32 len 32 * _547]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _655 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_655] <= 0:
                        revert with 0, 'Contract has not recived Token A at the END'
                else:
                    _214 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_214] == bool(mem[_214])
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = _145
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(arg8))
                    call address(arg8).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args 1, 0, _145, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _280 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_280] <= 0:
                        revert with 0, 'Contract has not recived Token D'
                    mem[128] = address(arg5)
                    mem[160] = address(arg2)
                    mem[mem[64] + 4] = address(arg6)
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(arg5))
                    call address(arg5).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg6), -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _340 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_340] == bool(mem[_340])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _382 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _392 = mem[_382]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _392
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
                        args _392, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _530 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _539 = mem[_530]
                    require mem[_530] <= test266151307()
                    require _530 + mem[_530] + 31 < _530 + return_data.size
                    _548 = mem[_530 + mem[_530]]
                    require mem[_530 + mem[_530]] <= test266151307()
                    require (32 * mem[_530 + mem[_530]]) + 32 >= 0 and _530 + ceil32(return_data.size) + (32 * mem[_530 + mem[_530]]) + 32 <= test266151307()
                    mem[64] = _530 + ceil32(return_data.size) + (32 * mem[_530 + mem[_530]]) + 32
                    mem[_530 + ceil32(return_data.size)] = _548
                    require return_data.size >= _539 + (32 * _548) + 32
                    mem[_530 + ceil32(return_data.size) + 32 len 32 * _548] = mem[_530 + _539 + 32 len 32 * _548]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _656 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_656] <= 0:
                        revert with 0, 'Contract has not recived Token A at the END'
        else:
            _121 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_121] == bool(mem[_121])
            _126 = mem[64]
            mem[64] = mem[64] + 64
            mem[_126] = 0
            mem[_126 + 32] = _98
            mem[mem[64] + 4 len 64] = 0, _98
            mem[mem[64] + 68] = 1
            require ext_code.size(address(arg7))
            call address(arg7).add_liquidity(uint256[2] rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args 0, _98 >> 256, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg4))
            staticcall address(arg4).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _143 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _146 = mem[_143]
            if mem[_143] <= 0:
                revert with 0, 'Contract has not recived Token C'
            mem[mem[64] + 4] = 0
            require ext_code.size(address(arg8))
            staticcall address(arg8).coins(uint256 rg1) with:
                    gas gas_remaining wei
                   args 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _161 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_161] == mem[_161 + 12 len 20]
            if mem[_161 + 12 len 20] == address(arg4):
                mem[mem[64] + 4] = address(arg8)
                mem[mem[64] + 36] = -1
                require ext_code.size(address(arg4))
                call address(arg4).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg8), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _182 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_182] == bool(mem[_182])
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = _146
                mem[mem[64] + 100] = 1
                require ext_code.size(address(arg8))
                call address(arg8).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args 0, 1, _146, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg5))
                staticcall address(arg5).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _227 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_227] <= 0:
                    revert with 0, 'Contract has not recived Token D'
                mem[128] = address(arg5)
                mem[160] = address(arg2)
                mem[mem[64] + 4] = address(arg6)
                mem[mem[64] + 36] = -1
                require ext_code.size(address(arg5))
                call address(arg5).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg6), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _277 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_277] == bool(mem[_277])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg5))
                staticcall address(arg5).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _337 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _346 = mem[_337]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _346
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
                    args _346, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _534 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _543 = mem[_534]
                require mem[_534] <= test266151307()
                require _534 + mem[_534] + 31 < _534 + return_data.size
                _552 = mem[_534 + mem[_534]]
                require mem[_534 + mem[_534]] <= test266151307()
                require (32 * mem[_534 + mem[_534]]) + 32 >= 0 and _534 + ceil32(return_data.size) + (32 * mem[_534 + mem[_534]]) + 32 <= test266151307()
                mem[64] = _534 + ceil32(return_data.size) + (32 * mem[_534 + mem[_534]]) + 32
                mem[_534 + ceil32(return_data.size)] = _552
                require return_data.size >= _543 + (32 * _552) + 32
                mem[_534 + ceil32(return_data.size) + 32 len 32 * _552] = mem[_534 + _543 + 32 len 32 * _552]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _660 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_660] <= 0:
                    revert with 0, 'Contract has not recived Token A at the END'
            else:
                mem[mem[64] + 4] = 1
                require ext_code.size(address(arg8))
                staticcall address(arg8).coins(uint256 rg1) with:
                        gas gas_remaining wei
                       args 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _179 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_179] == mem[_179 + 12 len 20]
                mem[mem[64] + 4] = address(arg8)
                mem[mem[64] + 36] = -1
                require ext_code.size(address(arg4))
                call address(arg4).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg8), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_179 + 12 len 20] != address(arg4):
                    _210 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_210] == bool(mem[_210])
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = _146
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(arg8))
                    call address(arg8).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args 0, 0, _146, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _276 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_276] <= 0:
                        revert with 0, 'Contract has not recived Token D'
                    mem[128] = address(arg5)
                    mem[160] = address(arg2)
                    mem[mem[64] + 4] = address(arg6)
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(arg5))
                    call address(arg5).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg6), -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _336 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_336] == bool(mem[_336])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _380 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _389 = mem[_380]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _389
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
                        args _389, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _532 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _541 = mem[_532]
                    require mem[_532] <= test266151307()
                    require _532 + mem[_532] + 31 < _532 + return_data.size
                    _550 = mem[_532 + mem[_532]]
                    require mem[_532 + mem[_532]] <= test266151307()
                    require (32 * mem[_532 + mem[_532]]) + 32 >= 0 and _532 + ceil32(return_data.size) + (32 * mem[_532 + mem[_532]]) + 32 <= test266151307()
                    mem[64] = _532 + ceil32(return_data.size) + (32 * mem[_532 + mem[_532]]) + 32
                    mem[_532 + ceil32(return_data.size)] = _550
                    require return_data.size >= _541 + (32 * _550) + 32
                    mem[_532 + ceil32(return_data.size) + 32 len 32 * _550] = mem[_532 + _541 + 32 len 32 * _550]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _658 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_658] <= 0:
                        revert with 0, 'Contract has not recived Token A at the END'
                else:
                    _215 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_215] == bool(mem[_215])
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = _146
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(arg8))
                    call address(arg8).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args 1, 0, _146, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _281 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_281] <= 0:
                        revert with 0, 'Contract has not recived Token D'
                    mem[128] = address(arg5)
                    mem[160] = address(arg2)
                    mem[mem[64] + 4] = address(arg6)
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(arg5))
                    call address(arg5).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg6), -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _341 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_341] == bool(mem[_341])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _384 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _395 = mem[_384]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _395
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
                        args _395, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _533 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _542 = mem[_533]
                    require mem[_533] <= test266151307()
                    require _533 + mem[_533] + 31 < _533 + return_data.size
                    _551 = mem[_533 + mem[_533]]
                    require mem[_533 + mem[_533]] <= test266151307()
                    require (32 * mem[_533 + mem[_533]]) + 32 >= 0 and _533 + ceil32(return_data.size) + (32 * mem[_533 + mem[_533]]) + 32 <= test266151307()
                    mem[64] = _533 + ceil32(return_data.size) + (32 * mem[_533 + mem[_533]]) + 32
                    mem[_533 + ceil32(return_data.size)] = _551
                    require return_data.size >= _542 + (32 * _551) + 32
                    mem[_533 + ceil32(return_data.size) + 32 len 32 * _551] = mem[_533 + _542 + 32 len 32 * _551]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _659 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_659] <= 0:
                        revert with 0, 'Contract has not recived Token A at the END'
}

function onFlashLoan(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if stor8 != msg.sender:
        revert with 0, 'FlashBorrower: Untrusted lender'
    if arg1 != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FlashBorrower: Untrusted loan initiator'
    require arg5.length >= 256
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
    require cd[(arg5 + 260)] == address(cd[(arg5 + 260)])
    mem[320] = cd[(arg5 + 260)]
    if 1 == bool(cd[(arg5 + 36)]):
        mem[356] = this.address
        require ext_code.size(arg2)
        staticcall arg2.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        mem[352] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg3:
            revert with 0, 'contract did not recive funds'
        if stor3 == address(cd[(arg5 + 228)]):
            mem[ceil32(return_data.size) + 352] = 2
            mem[ceil32(return_data.size) + 384] = address(cd[(arg5 + 68)])
            mem[ceil32(return_data.size) + 416] = address(cd[(arg5 + 100)])
            mem[ceil32(return_data.size) + 452] = address(cd[(arg5 + 196)])
            mem[ceil32(return_data.size) + 484] = -1
            require ext_code.size(address(cd[(arg5 + 68)]))
            call address(cd[(arg5 + 68)]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(cd[(arg5 + 196)]), -1
            mem[ceil32(return_data.size) + 448] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 448
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 452] = arg3
            mem[(2 * ceil32(return_data.size)) + 484] = 1
            mem[(2 * ceil32(return_data.size)) + 516] = 160
            mem[(2 * ceil32(return_data.size)) + 612] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 644
            t = ceil32(return_data.size) + 384
            while idx < mem[ceil32(return_data.size) + 352]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 548] = this.address
            mem[(2 * ceil32(return_data.size)) + 580] = block.timestamp + 1
            require ext_code.size(address(cd[(arg5 + 196)]))
            call address(cd[(arg5 + 196)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 704]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _419 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _422 = mem[_419]
            require mem[_419] <= test266151307()
            require _419 + mem[_419] + 31 < _419 + return_data.size
            _425 = mem[_419 + mem[_419]]
            require mem[_419 + mem[_419]] <= test266151307()
            require (32 * mem[_419 + mem[_419]]) + 32 >= 0 and _419 + ceil32(return_data.size) + (32 * mem[_419 + mem[_419]]) + 32 <= test266151307()
            mem[64] = _419 + ceil32(return_data.size) + (32 * mem[_419 + mem[_419]]) + 32
            mem[_419 + ceil32(return_data.size)] = _425
            require return_data.size >= _422 + (32 * _425) + 32
            mem[_419 + ceil32(return_data.size) + 32 len 32 * _425] = mem[_419 + _422 + 32 len 32 * _425]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 100)]))
            staticcall address(cd[(arg5 + 100)]).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _822 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _825 = mem[_822]
            if mem[_822] <= 0:
                revert with 0, 'Contract has not recived Token B'
            mem[mem[64] + 4] = 0
            require ext_code.size(address(cd[(arg5 + 228)]))
            staticcall address(cd[(arg5 + 228)]).coins(uint256 rg1) with:
                    gas gas_remaining wei
                   args 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _841 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_841] == mem[_841 + 12 len 20]
            if mem[_841 + 12 len 20] == address(cd[(arg5 + 100)]):
                mem[mem[64] + 4] = address(cd[(arg5 + 228)])
                mem[mem[64] + 36] = -1
                require ext_code.size(address(cd[(arg5 + 100)]))
                call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg5 + 228)]), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _861 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_861] == bool(mem[_861])
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = _825
                mem[mem[64] + 100] = 1
                require ext_code.size(address(cd[(arg5 + 228)]))
                call address(cd[(arg5 + 228)]).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args 0, 1, _825, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 132)]))
                staticcall address(cd[(arg5 + 132)]).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _897 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _902 = mem[_897]
                if mem[_897] <= 0:
                    revert with 0, 'Contract has not recived Token C'
                require 0 < mem[ceil32(return_data.size) + 352]
                mem[ceil32(return_data.size) + 384] = address(cd[(arg5 + 132)])
                require 1 < mem[ceil32(return_data.size) + 352]
                mem[ceil32(return_data.size) + 416] = address(cd[(arg5 + 68)])
                mem[mem[64] + 4] = address(cd[(arg5 + 196)])
                mem[mem[64] + 36] = -1
                require ext_code.size(address(cd[(arg5 + 132)]))
                call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg5 + 196)]), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _939 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_939] == bool(mem[_939])
                require ext_code.size(address(cd[(arg5 + 68)]))
                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _902
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = 160
                _997 = mem[ceil32(return_data.size) + 352]
                mem[mem[64] + 164] = mem[ceil32(return_data.size) + 352]
                idx = 0
                s = mem[64] + 196
                t = ceil32(return_data.size) + 384
                while idx < _997:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp + 1
                require ext_code.size(address(cd[(arg5 + 196)]))
                call address(cd[(arg5 + 196)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args _902, 1, 160, address(this.address), block.timestamp + 1, mem[mem[64] + 164 len (32 * _997) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1213 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1220 = mem[_1213]
                require mem[_1213] <= test266151307()
                require _1213 + mem[_1213] + 31 < _1213 + return_data.size
                _1227 = mem[_1213 + mem[_1213]]
                require mem[_1213 + mem[_1213]] <= test266151307()
                require (32 * mem[_1213 + mem[_1213]]) + 32 >= 0 and _1213 + ceil32(return_data.size) + (32 * mem[_1213 + mem[_1213]]) + 32 <= test266151307()
                mem[64] = _1213 + ceil32(return_data.size) + (32 * mem[_1213 + mem[_1213]]) + 32
                mem[_1213 + ceil32(return_data.size)] = _1227
                require return_data.size >= _1220 + (32 * _1227) + 32
                mem[_1213 + ceil32(return_data.size) + 32 len 32 * _1227] = mem[_1213 + _1220 + 32 len 32 * _1227]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 68)]))
                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1425 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1425] <= 0:
                    revert with 0, 'Contract has not recived Token A at the END'
            else:
                mem[mem[64] + 4] = 1
                require ext_code.size(address(cd[(arg5 + 228)]))
                staticcall address(cd[(arg5 + 228)]).coins(uint256 rg1) with:
                        gas gas_remaining wei
                       args 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _858 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_858] == mem[_858 + 12 len 20]
                mem[mem[64] + 4] = address(cd[(arg5 + 228)])
                mem[mem[64] + 36] = -1
                require ext_code.size(address(cd[(arg5 + 100)]))
                call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg5 + 228)]), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_858 + 12 len 20] != address(cd[(arg5 + 100)]):
                    _884 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_884] == bool(mem[_884])
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = _825
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(cd[(arg5 + 228)]))
                    call address(cd[(arg5 + 228)]).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args 0, 0, _825, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 132)]))
                    staticcall address(cd[(arg5 + 132)]).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _938 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _945 = mem[_938]
                    if mem[_938] <= 0:
                        revert with 0, 'Contract has not recived Token C'
                    require 0 < mem[ceil32(return_data.size) + 352]
                    mem[ceil32(return_data.size) + 384] = address(cd[(arg5 + 132)])
                    require 1 < mem[ceil32(return_data.size) + 352]
                    mem[ceil32(return_data.size) + 416] = address(cd[(arg5 + 68)])
                    mem[mem[64] + 4] = address(cd[(arg5 + 196)])
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(cd[(arg5 + 132)]))
                    call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(cd[(arg5 + 196)]), -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _983 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_983] == bool(mem[_983])
                    require ext_code.size(address(cd[(arg5 + 68)]))
                    staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _945
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    _1033 = mem[ceil32(return_data.size) + 352]
                    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 352]
                    idx = 0
                    s = mem[64] + 196
                    t = ceil32(return_data.size) + 384
                    while idx < _1033:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 1
                    require ext_code.size(address(cd[(arg5 + 196)]))
                    call address(cd[(arg5 + 196)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args _945, 1, 160, address(this.address), block.timestamp + 1, mem[mem[64] + 164 len (32 * _1033) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1211 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1218 = mem[_1211]
                    require mem[_1211] <= test266151307()
                    require _1211 + mem[_1211] + 31 < _1211 + return_data.size
                    _1225 = mem[_1211 + mem[_1211]]
                    require mem[_1211 + mem[_1211]] <= test266151307()
                    require (32 * mem[_1211 + mem[_1211]]) + 32 >= 0 and _1211 + ceil32(return_data.size) + (32 * mem[_1211 + mem[_1211]]) + 32 <= test266151307()
                    mem[64] = _1211 + ceil32(return_data.size) + (32 * mem[_1211 + mem[_1211]]) + 32
                    mem[_1211 + ceil32(return_data.size)] = _1225
                    require return_data.size >= _1218 + (32 * _1225) + 32
                    mem[_1211 + ceil32(return_data.size) + 32 len 32 * _1225] = mem[_1211 + _1218 + 32 len 32 * _1225]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 68)]))
                    staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1423 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1423] <= 0:
                        revert with 0, 'Contract has not recived Token A at the END'
                else:
                    _887 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_887] == bool(mem[_887])
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = _825
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(cd[(arg5 + 228)]))
                    call address(cd[(arg5 + 228)]).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args 1, 0, _825, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 132)]))
                    staticcall address(cd[(arg5 + 132)]).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _941 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _948 = mem[_941]
                    if mem[_941] <= 0:
                        revert with 0, 'Contract has not recived Token C'
                    require 0 < mem[ceil32(return_data.size) + 352]
                    mem[ceil32(return_data.size) + 384] = address(cd[(arg5 + 132)])
                    require 1 < mem[ceil32(return_data.size) + 352]
                    mem[ceil32(return_data.size) + 416] = address(cd[(arg5 + 68)])
                    mem[mem[64] + 4] = address(cd[(arg5 + 196)])
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(cd[(arg5 + 132)]))
                    call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(cd[(arg5 + 196)]), -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _986 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_986] == bool(mem[_986])
                    require ext_code.size(address(cd[(arg5 + 68)]))
                    staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _948
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    _1037 = mem[ceil32(return_data.size) + 352]
                    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 352]
                    idx = 0
                    s = mem[64] + 196
                    t = ceil32(return_data.size) + 384
                    while idx < _1037:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 1
                    require ext_code.size(address(cd[(arg5 + 196)]))
                    call address(cd[(arg5 + 196)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args _948, 1, 160, address(this.address), block.timestamp + 1, mem[mem[64] + 164 len (32 * _1037) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1212 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1219 = mem[_1212]
                    require mem[_1212] <= test266151307()
                    require _1212 + mem[_1212] + 31 < _1212 + return_data.size
                    _1226 = mem[_1212 + mem[_1212]]
                    require mem[_1212 + mem[_1212]] <= test266151307()
                    require (32 * mem[_1212 + mem[_1212]]) + 32 >= 0 and _1212 + ceil32(return_data.size) + (32 * mem[_1212 + mem[_1212]]) + 32 <= test266151307()
                    mem[64] = _1212 + ceil32(return_data.size) + (32 * mem[_1212 + mem[_1212]]) + 32
                    mem[_1212 + ceil32(return_data.size)] = _1226
                    require return_data.size >= _1219 + (32 * _1226) + 32
                    mem[_1212 + ceil32(return_data.size) + 32 len 32 * _1226] = mem[_1212 + _1219 + 32 len 32 * _1226]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 68)]))
                    staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1424 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1424] <= 0:
                        revert with 0, 'Contract has not recived Token A at the END'
        else:
            if stor2 == address(cd[(arg5 + 228)]):
                mem[ceil32(return_data.size) + 352] = 2
                mem[ceil32(return_data.size) + 384] = address(cd[(arg5 + 68)])
                mem[ceil32(return_data.size) + 416] = address(cd[(arg5 + 100)])
                mem[ceil32(return_data.size) + 452] = address(cd[(arg5 + 196)])
                mem[ceil32(return_data.size) + 484] = -1
                require ext_code.size(address(cd[(arg5 + 68)]))
                call address(cd[(arg5 + 68)]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg5 + 196)]), -1
                mem[ceil32(return_data.size) + 448] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 448
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 452] = arg3
                mem[(2 * ceil32(return_data.size)) + 484] = 1
                mem[(2 * ceil32(return_data.size)) + 516] = 160
                mem[(2 * ceil32(return_data.size)) + 612] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 644
                t = ceil32(return_data.size) + 384
                while idx < mem[ceil32(return_data.size) + 352]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 548] = this.address
                mem[(2 * ceil32(return_data.size)) + 580] = block.timestamp + 1
                require ext_code.size(address(cd[(arg5 + 196)]))
                call address(cd[(arg5 + 196)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 704]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _418 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _421 = mem[_418]
                require mem[_418] <= test266151307()
                require _418 + mem[_418] + 31 < _418 + return_data.size
                _424 = mem[_418 + mem[_418]]
                require mem[_418 + mem[_418]] <= test266151307()
                require (32 * mem[_418 + mem[_418]]) + 32 >= 0 and _418 + ceil32(return_data.size) + (32 * mem[_418 + mem[_418]]) + 32 <= test266151307()
                mem[64] = _418 + ceil32(return_data.size) + (32 * mem[_418 + mem[_418]]) + 32
                mem[_418 + ceil32(return_data.size)] = _424
                require return_data.size >= _421 + (32 * _424) + 32
                mem[_418 + ceil32(return_data.size) + 32 len 32 * _424] = mem[_418 + _421 + 32 len 32 * _424]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 100)]))
                staticcall address(cd[(arg5 + 100)]).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _821 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _824 = mem[_821]
                if mem[_821] <= 0:
                    revert with 0, 'Contract has not recived Token B'
                require 0 < mem[ceil32(return_data.size) + 352]
                mem[ceil32(return_data.size) + 384] = address(cd[(arg5 + 100)])
                require 1 < mem[ceil32(return_data.size) + 352]
                mem[ceil32(return_data.size) + 416] = address(cd[(arg5 + 132)])
                mem[mem[64] + 4] = address(cd[(arg5 + 228)])
                mem[mem[64] + 36] = -1
                require ext_code.size(address(cd[(arg5 + 100)]))
                call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg5 + 228)]), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _843 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_843] == bool(mem[_843])
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _824
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = 160
                _852 = mem[ceil32(return_data.size) + 352]
                mem[mem[64] + 164] = mem[ceil32(return_data.size) + 352]
                idx = 0
                s = mem[64] + 196
                t = ceil32(return_data.size) + 384
                while idx < _852:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp + 1
                require ext_code.size(address(cd[(arg5 + 228)]))
                call address(cd[(arg5 + 228)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args _824, 1, 160, address(this.address), block.timestamp + 1, mem[mem[64] + 164 len (32 * _852) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1210 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1217 = mem[_1210]
                require mem[_1210] <= test266151307()
                require _1210 + mem[_1210] + 31 < _1210 + return_data.size
                _1224 = mem[_1210 + mem[_1210]]
                require mem[_1210 + mem[_1210]] <= test266151307()
                require (32 * mem[_1210 + mem[_1210]]) + 32 >= 0 and _1210 + ceil32(return_data.size) + (32 * mem[_1210 + mem[_1210]]) + 32 <= test266151307()
                mem[64] = _1210 + ceil32(return_data.size) + (32 * mem[_1210 + mem[_1210]]) + 32
                mem[_1210 + ceil32(return_data.size)] = _1224
                require return_data.size >= _1217 + (32 * _1224) + 32
                mem[_1210 + ceil32(return_data.size) + 32 len 32 * _1224] = mem[_1210 + _1217 + 32 len 32 * _1224]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 132)]))
                staticcall address(cd[(arg5 + 132)]).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1422 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1429 = mem[_1422]
                if mem[_1422] <= 0:
                    revert with 0, 'Contract has not recived Token C'
                require 0 < mem[ceil32(return_data.size) + 352]
                mem[ceil32(return_data.size) + 384] = address(cd[(arg5 + 132)])
                require 1 < mem[ceil32(return_data.size) + 352]
                mem[ceil32(return_data.size) + 416] = address(cd[(arg5 + 68)])
                mem[mem[64] + 4] = address(cd[(arg5 + 196)])
                mem[mem[64] + 36] = -1
                require ext_code.size(address(cd[(arg5 + 132)]))
                call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg5 + 196)]), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1469 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1469] == bool(mem[_1469])
                require ext_code.size(address(cd[(arg5 + 68)]))
                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1429
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = 160
                _1500 = mem[ceil32(return_data.size) + 352]
                mem[mem[64] + 164] = mem[ceil32(return_data.size) + 352]
                idx = 0
                s = mem[64] + 196
                t = ceil32(return_data.size) + 384
                while idx < _1500:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp + 1
                require ext_code.size(address(cd[(arg5 + 196)]))
                call address(cd[(arg5 + 196)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args _1429, 1, 160, address(this.address), block.timestamp + 1, mem[mem[64] + 164 len (32 * _1500) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1572 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1576 = mem[_1572]
                require mem[_1572] <= test266151307()
                require _1572 + mem[_1572] + 31 < _1572 + return_data.size
                _1580 = mem[_1572 + mem[_1572]]
                require mem[_1572 + mem[_1572]] <= test266151307()
                require (32 * mem[_1572 + mem[_1572]]) + 32 >= 0 and _1572 + ceil32(return_data.size) + (32 * mem[_1572 + mem[_1572]]) + 32 <= test266151307()
                mem[64] = _1572 + ceil32(return_data.size) + (32 * mem[_1572 + mem[_1572]]) + 32
                mem[_1572 + ceil32(return_data.size)] = _1580
                require return_data.size >= _1576 + (32 * _1580) + 32
                mem[_1572 + ceil32(return_data.size) + 32 len 32 * _1580] = mem[_1572 + _1576 + 32 len 32 * _1580]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 68)]))
                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1636 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1636] <= 0:
                    revert with 0, 'Contract has not recived Token A at the END'
    else:
        if not cd[(arg5 + 36)]:
            mem[352] = 2
            mem[384] = address(cd[(arg5 + 68)])
            mem[416] = address(cd[(arg5 + 100)])
            mem[452] = address(cd[(arg5 + 196)])
            mem[484] = -1
            require ext_code.size(address(cd[(arg5 + 68)]))
            call address(cd[(arg5 + 68)]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(cd[(arg5 + 196)]), -1
            mem[448] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 452] = arg3
            mem[ceil32(return_data.size) + 484] = 1
            mem[ceil32(return_data.size) + 516] = 160
            mem[ceil32(return_data.size) + 612] = 2
            idx = 0
            s = ceil32(return_data.size) + 644
            t = 384
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 548] = this.address
            mem[ceil32(return_data.size) + 580] = block.timestamp + 1
            require ext_code.size(address(cd[(arg5 + 196)]))
            call address(cd[(arg5 + 196)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg3, 1, Array(len=2, data=mem[ceil32(return_data.size) + 644 len 64]), address(this.address), block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 448
            require return_data.size >= 32
            _420 = mem[ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 479 < ceil32(return_data.size) + return_data.size + 448
            _423 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448]
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448] <= test266151307()
            require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448]) + 480 <= test266151307()
            mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448]) + 480
            mem[(2 * ceil32(return_data.size)) + 448] = _423
            require return_data.size >= _420 + (32 * _423) + 32
            mem[(2 * ceil32(return_data.size)) + 480 len 32 * _423] = mem[ceil32(return_data.size) + _420 + 480 len 32 * _423]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 100)]))
            staticcall address(cd[(arg5 + 100)]).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _820 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _823 = mem[_820]
            if mem[_820] <= 0:
                revert with 0, 'Contract has not recived Token B'
            mem[mem[64] + 4] = 0
            require ext_code.size(address(cd[(arg5 + 228)]))
            staticcall address(cd[(arg5 + 228)]).coins(uint256 rg1) with:
                    gas gas_remaining wei
                   args 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _839 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_839] == mem[_839 + 12 len 20]
            if mem[_839 + 12 len 20] == address(cd[(arg5 + 100)]):
                mem[mem[64] + 4] = address(cd[(arg5 + 228)])
                mem[mem[64] + 36] = -1
                require ext_code.size(address(cd[(arg5 + 100)]))
                call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg5 + 228)]), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _859 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_859] == bool(mem[_859])
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = _823
                mem[mem[64] + 100] = 1
                require ext_code.size(address(cd[(arg5 + 228)]))
                call address(cd[(arg5 + 228)]).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args 0, 1, _823, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 132)]))
                staticcall address(cd[(arg5 + 132)]).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _895 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _899 = mem[_895]
                if mem[_895] <= 0:
                    revert with 0, 'Contract has not recived Token C'
                mem[384] = address(cd[(arg5 + 132)])
                mem[416] = address(cd[(arg5 + 164)])
                mem[mem[64] + 4] = address(cd[(arg5 + 260)])
                mem[mem[64] + 36] = -1
                require ext_code.size(address(cd[(arg5 + 132)]))
                call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg5 + 260)]), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _935 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_935] == bool(mem[_935])
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _899
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = 2
                idx = 0
                s = mem[64] + 196
                t = 384
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp + 1
                require ext_code.size(address(cd[(arg5 + 260)]))
                call address(cd[(arg5 + 260)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args _899, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1209 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1216 = mem[_1209]
                require mem[_1209] <= test266151307()
                require _1209 + mem[_1209] + 31 < _1209 + return_data.size
                _1223 = mem[_1209 + mem[_1209]]
                require mem[_1209 + mem[_1209]] <= test266151307()
                require (32 * mem[_1209 + mem[_1209]]) + 32 >= 0 and _1209 + ceil32(return_data.size) + (32 * mem[_1209 + mem[_1209]]) + 32 <= test266151307()
                mem[64] = _1209 + ceil32(return_data.size) + (32 * mem[_1209 + mem[_1209]]) + 32
                mem[_1209 + ceil32(return_data.size)] = _1223
                require return_data.size >= _1216 + (32 * _1223) + 32
                mem[_1209 + ceil32(return_data.size) + 32 len 32 * _1223] = mem[_1209 + _1216 + 32 len 32 * _1223]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 164)]))
                staticcall address(cd[(arg5 + 164)]).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1421 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1428 = mem[_1421]
                if mem[_1421] <= 0:
                    revert with 0, 'Contract has not recived Token D'
                require 0 < mem[352]
                mem[384] = address(cd[(arg5 + 164)])
                require 1 < mem[352]
                mem[416] = address(cd[(arg5 + 68)])
                mem[mem[64] + 4] = address(cd[(arg5 + 196)])
                mem[mem[64] + 36] = -1
                require ext_code.size(address(cd[(arg5 + 164)]))
                call address(cd[(arg5 + 164)]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg5 + 196)]), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1468 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1468] == bool(mem[_1468])
                require ext_code.size(address(cd[(arg5 + 68)]))
                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1428
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = 160
                _1499 = mem[352]
                mem[mem[64] + 164] = mem[352]
                idx = 0
                s = mem[64] + 196
                t = 384
                while idx < _1499:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp + 1
                require ext_code.size(address(cd[(arg5 + 196)]))
                call address(cd[(arg5 + 196)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args _1428, 1, 160, address(this.address), block.timestamp + 1, mem[mem[64] + 164 len (32 * _1499) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1571 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1575 = mem[_1571]
                require mem[_1571] <= test266151307()
                require _1571 + mem[_1571] + 31 < _1571 + return_data.size
                _1579 = mem[_1571 + mem[_1571]]
                require mem[_1571 + mem[_1571]] <= test266151307()
                require (32 * mem[_1571 + mem[_1571]]) + 32 >= 0 and _1571 + ceil32(return_data.size) + (32 * mem[_1571 + mem[_1571]]) + 32 <= test266151307()
                mem[64] = _1571 + ceil32(return_data.size) + (32 * mem[_1571 + mem[_1571]]) + 32
                mem[_1571 + ceil32(return_data.size)] = _1579
                require return_data.size >= _1575 + (32 * _1579) + 32
                mem[_1571 + ceil32(return_data.size) + 32 len 32 * _1579] = mem[_1571 + _1575 + 32 len 32 * _1579]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 68)]))
                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1635 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1635] <= 0:
                    revert with 0, 'Contract has not recived Token A at the END'
            else:
                mem[mem[64] + 4] = 1
                require ext_code.size(address(cd[(arg5 + 228)]))
                staticcall address(cd[(arg5 + 228)]).coins(uint256 rg1) with:
                        gas gas_remaining wei
                       args 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _856 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_856] == mem[_856 + 12 len 20]
                mem[mem[64] + 4] = address(cd[(arg5 + 228)])
                mem[mem[64] + 36] = -1
                require ext_code.size(address(cd[(arg5 + 100)]))
                call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg5 + 228)]), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_856 + 12 len 20] != address(cd[(arg5 + 100)]):
                    _882 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_882] == bool(mem[_882])
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = _823
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(cd[(arg5 + 228)]))
                    call address(cd[(arg5 + 228)]).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args 0, 0, _823, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 132)]))
                    staticcall address(cd[(arg5 + 132)]).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _934 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _942 = mem[_934]
                    if mem[_934] <= 0:
                        revert with 0, 'Contract has not recived Token C'
                    mem[384] = address(cd[(arg5 + 132)])
                    mem[416] = address(cd[(arg5 + 164)])
                    mem[mem[64] + 4] = address(cd[(arg5 + 260)])
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(cd[(arg5 + 132)]))
                    call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(cd[(arg5 + 260)]), -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _980 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_980] == bool(mem[_980])
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _942
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = mem[64] + 196
                    t = 384
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 1
                    require ext_code.size(address(cd[(arg5 + 260)]))
                    call address(cd[(arg5 + 260)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args _942, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1207 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1214 = mem[_1207]
                    require mem[_1207] <= test266151307()
                    require _1207 + mem[_1207] + 31 < _1207 + return_data.size
                    _1221 = mem[_1207 + mem[_1207]]
                    require mem[_1207 + mem[_1207]] <= test266151307()
                    require (32 * mem[_1207 + mem[_1207]]) + 32 >= 0 and _1207 + ceil32(return_data.size) + (32 * mem[_1207 + mem[_1207]]) + 32 <= test266151307()
                    mem[64] = _1207 + ceil32(return_data.size) + (32 * mem[_1207 + mem[_1207]]) + 32
                    mem[_1207 + ceil32(return_data.size)] = _1221
                    require return_data.size >= _1214 + (32 * _1221) + 32
                    mem[_1207 + ceil32(return_data.size) + 32 len 32 * _1221] = mem[_1207 + _1214 + 32 len 32 * _1221]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 164)]))
                    staticcall address(cd[(arg5 + 164)]).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1419 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1426 = mem[_1419]
                    if mem[_1419] <= 0:
                        revert with 0, 'Contract has not recived Token D'
                    require 0 < mem[352]
                    mem[384] = address(cd[(arg5 + 164)])
                    require 1 < mem[352]
                    mem[416] = address(cd[(arg5 + 68)])
                    mem[mem[64] + 4] = address(cd[(arg5 + 196)])
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(cd[(arg5 + 164)]))
                    call address(cd[(arg5 + 164)]).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(cd[(arg5 + 196)]), -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1466 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1466] == bool(mem[_1466])
                    require ext_code.size(address(cd[(arg5 + 68)]))
                    staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1426
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    _1497 = mem[352]
                    mem[mem[64] + 164] = mem[352]
                    idx = 0
                    s = mem[64] + 196
                    t = 384
                    while idx < _1497:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 1
                    require ext_code.size(address(cd[(arg5 + 196)]))
                    call address(cd[(arg5 + 196)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args _1426, 1, 160, address(this.address), block.timestamp + 1, mem[mem[64] + 164 len (32 * _1497) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1569 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1573 = mem[_1569]
                    require mem[_1569] <= test266151307()
                    require _1569 + mem[_1569] + 31 < _1569 + return_data.size
                    _1577 = mem[_1569 + mem[_1569]]
                    require mem[_1569 + mem[_1569]] <= test266151307()
                    require (32 * mem[_1569 + mem[_1569]]) + 32 >= 0 and _1569 + ceil32(return_data.size) + (32 * mem[_1569 + mem[_1569]]) + 32 <= test266151307()
                    mem[64] = _1569 + ceil32(return_data.size) + (32 * mem[_1569 + mem[_1569]]) + 32
                    mem[_1569 + ceil32(return_data.size)] = _1577
                    require return_data.size >= _1573 + (32 * _1577) + 32
                    mem[_1569 + ceil32(return_data.size) + 32 len 32 * _1577] = mem[_1569 + _1573 + 32 len 32 * _1577]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 68)]))
                    staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1633 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1633] <= 0:
                        revert with 0, 'Contract has not recived Token A at the END'
                else:
                    _886 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_886] == bool(mem[_886])
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = _823
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(cd[(arg5 + 228)]))
                    call address(cd[(arg5 + 228)]).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args 1, 0, _823, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 132)]))
                    staticcall address(cd[(arg5 + 132)]).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _940 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _947 = mem[_940]
                    if mem[_940] <= 0:
                        revert with 0, 'Contract has not recived Token C'
                    mem[384] = address(cd[(arg5 + 132)])
                    mem[416] = address(cd[(arg5 + 164)])
                    mem[mem[64] + 4] = address(cd[(arg5 + 260)])
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(cd[(arg5 + 132)]))
                    call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(cd[(arg5 + 260)]), -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _985 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_985] == bool(mem[_985])
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _947
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = mem[64] + 196
                    t = 384
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 1
                    require ext_code.size(address(cd[(arg5 + 260)]))
                    call address(cd[(arg5 + 260)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args _947, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1208 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1215 = mem[_1208]
                    require mem[_1208] <= test266151307()
                    require _1208 + mem[_1208] + 31 < _1208 + return_data.size
                    _1222 = mem[_1208 + mem[_1208]]
                    require mem[_1208 + mem[_1208]] <= test266151307()
                    require (32 * mem[_1208 + mem[_1208]]) + 32 >= 0 and _1208 + ceil32(return_data.size) + (32 * mem[_1208 + mem[_1208]]) + 32 <= test266151307()
                    mem[64] = _1208 + ceil32(return_data.size) + (32 * mem[_1208 + mem[_1208]]) + 32
                    mem[_1208 + ceil32(return_data.size)] = _1222
                    require return_data.size >= _1215 + (32 * _1222) + 32
                    mem[_1208 + ceil32(return_data.size) + 32 len 32 * _1222] = mem[_1208 + _1215 + 32 len 32 * _1222]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 164)]))
                    staticcall address(cd[(arg5 + 164)]).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1420 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1427 = mem[_1420]
                    if mem[_1420] <= 0:
                        revert with 0, 'Contract has not recived Token D'
                    require 0 < mem[352]
                    mem[384] = address(cd[(arg5 + 164)])
                    require 1 < mem[352]
                    mem[416] = address(cd[(arg5 + 68)])
                    mem[mem[64] + 4] = address(cd[(arg5 + 196)])
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(cd[(arg5 + 164)]))
                    call address(cd[(arg5 + 164)]).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(cd[(arg5 + 196)]), -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1467 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1467] == bool(mem[_1467])
                    require ext_code.size(address(cd[(arg5 + 68)]))
                    staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1427
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    _1498 = mem[352]
                    mem[mem[64] + 164] = mem[352]
                    idx = 0
                    s = mem[64] + 196
                    t = 384
                    while idx < _1498:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 1
                    require ext_code.size(address(cd[(arg5 + 196)]))
                    call address(cd[(arg5 + 196)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args _1427, 1, 160, address(this.address), block.timestamp + 1, mem[mem[64] + 164 len (32 * _1498) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1570 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1574 = mem[_1570]
                    require mem[_1570] <= test266151307()
                    require _1570 + mem[_1570] + 31 < _1570 + return_data.size
                    _1578 = mem[_1570 + mem[_1570]]
                    require mem[_1570 + mem[_1570]] <= test266151307()
                    require (32 * mem[_1570 + mem[_1570]]) + 32 >= 0 and _1570 + ceil32(return_data.size) + (32 * mem[_1570 + mem[_1570]]) + 32 <= test266151307()
                    mem[64] = _1570 + ceil32(return_data.size) + (32 * mem[_1570 + mem[_1570]]) + 32
                    mem[_1570 + ceil32(return_data.size)] = _1578
                    require return_data.size >= _1574 + (32 * _1578) + 32
                    mem[_1570 + ceil32(return_data.size) + 32 len 32 * _1578] = mem[_1570 + _1574 + 32 len 32 * _1578]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 68)]))
                    staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1634 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1634] <= 0:
                        revert with 0, 'Contract has not recived Token A at the END'
    return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9
}



}
