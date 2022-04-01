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
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
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
    while idx < mem[96]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp + 1
    require ext_code.size(address(arg7))
    call address(arg7).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len 96], address(this.address), block.timestamp + 1, mem[mem[64] + 164 len 96]
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
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
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
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
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
            call address(cd[(arg5 + 196)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg3, 1, 160, address(this.address), block.timestamp + 1, mem[(2 * ceil32(return_data.size)) + 612 len (32 * mem[ceil32(return_data.size) + 352]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 448
            require return_data.size >= 32
            _312 = mem[(2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32
            require mem[(2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + 479 < (2 * ceil32(return_data.size)) + return_data.size + 448
            _315 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448]
            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448] <= test266151307()
            require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448]) + 480 <= test266151307()
            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448]) + 480
            mem[(4 * ceil32(return_data.size)) + 448] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448]
            require return_data.size >= _312 + (32 * _315) + 32
            mem[(4 * ceil32(return_data.size)) + 480 len 32 * _315] = mem[(2 * ceil32(return_data.size)) + _312 + 480 len 32 * _315]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 100)]))
            staticcall address(cd[(arg5 + 100)]).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _553 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _556 = mem[_553]
            if mem[_553] <= 0:
                revert with 0, 'Contract has not recived Token B'
            mem[mem[64] + 4] = 0
            require ext_code.size(address(cd[(arg5 + 228)]))
            staticcall address(cd[(arg5 + 228)]).coins(uint256 rg1) with:
                    gas gas_remaining wei
                   args 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _572 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_572] == mem[_572 + 12 len 20]
            if mem[_572 + 12 len 20] == address(cd[(arg5 + 100)]):
                mem[mem[64] + 4] = address(cd[(arg5 + 228)])
                mem[mem[64] + 36] = -1
                require ext_code.size(address(cd[(arg5 + 100)]))
                call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg5 + 228)]), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _592 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_592] == bool(mem[_592])
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = _556
                mem[mem[64] + 100] = 1
                require ext_code.size(address(cd[(arg5 + 228)]))
                call address(cd[(arg5 + 228)]).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args 0, 1, _556, 1
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
                _626 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _631 = mem[_626]
                if mem[_626] <= 0:
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
                _657 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_657] == bool(mem[_657])
                require ext_code.size(address(cd[(arg5 + 68)]))
                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _631
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = 160
                _689 = mem[ceil32(return_data.size) + 352]
                mem[mem[64] + 164] = mem[ceil32(return_data.size) + 352]
                idx = 0
                s = mem[64] + 196
                t = ceil32(return_data.size) + 384
                while idx < _689:
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
                    args _631, 1, 160, address(this.address), block.timestamp + 1, mem[mem[64] + 164 len (32 * _689) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _785 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _792 = mem[_785]
                require mem[_785] <= test266151307()
                require _785 + mem[_785] + 31 < _785 + return_data.size
                _799 = mem[_785 + mem[_785]]
                require mem[_785 + mem[_785]] <= test266151307()
                require (32 * mem[_785 + mem[_785]]) + 32 >= 0 and _785 + ceil32(return_data.size) + (32 * mem[_785 + mem[_785]]) + 32 <= test266151307()
                mem[64] = _785 + ceil32(return_data.size) + (32 * mem[_785 + mem[_785]]) + 32
                mem[_785 + ceil32(return_data.size)] = _799
                require return_data.size >= _792 + (32 * _799) + 32
                mem[_785 + ceil32(return_data.size) + 32 len 32 * _799] = mem[_785 + _792 + 32 len 32 * _799]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 68)]))
                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1300 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1300] <= 0:
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
                _589 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_589] == mem[_589 + 12 len 20]
                mem[mem[64] + 4] = address(cd[(arg5 + 228)])
                mem[mem[64] + 36] = -1
                require ext_code.size(address(cd[(arg5 + 100)]))
                call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg5 + 228)]), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_589 + 12 len 20] != address(cd[(arg5 + 100)]):
                    _615 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_615] == bool(mem[_615])
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = _556
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(cd[(arg5 + 228)]))
                    call address(cd[(arg5 + 228)]).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args 0, 0, _556, 1
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
                    _656 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _660 = mem[_656]
                    if mem[_656] <= 0:
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
                    _680 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_680] == bool(mem[_680])
                    require ext_code.size(address(cd[(arg5 + 68)]))
                    staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _660
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    _710 = mem[ceil32(return_data.size) + 352]
                    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 352]
                    idx = 0
                    s = mem[64] + 196
                    t = ceil32(return_data.size) + 384
                    while idx < _710:
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
                        args _660, 1, 160, address(this.address), block.timestamp + 1, mem[mem[64] + 164 len (32 * _710) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _783 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _790 = mem[_783]
                    require mem[_783] <= test266151307()
                    require _783 + mem[_783] + 31 < _783 + return_data.size
                    _797 = mem[_783 + mem[_783]]
                    require mem[_783 + mem[_783]] <= test266151307()
                    require (32 * mem[_783 + mem[_783]]) + 32 >= 0 and _783 + ceil32(return_data.size) + (32 * mem[_783 + mem[_783]]) + 32 <= test266151307()
                    mem[64] = _783 + ceil32(return_data.size) + (32 * mem[_783 + mem[_783]]) + 32
                    mem[_783 + ceil32(return_data.size)] = _797
                    require return_data.size >= _790 + (32 * _797) + 32
                    mem[_783 + ceil32(return_data.size) + 32 len 32 * _797] = mem[_783 + _790 + 32 len 32 * _797]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 68)]))
                    staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1298 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1298] <= 0:
                        revert with 0, 'Contract has not recived Token A at the END'
                else:
                    _618 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_618] == bool(mem[_618])
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = _556
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(cd[(arg5 + 228)]))
                    call address(cd[(arg5 + 228)]).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args 1, 0, _556, 1
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
                    _658 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _662 = mem[_658]
                    if mem[_658] <= 0:
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
                    _682 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_682] == bool(mem[_682])
                    require ext_code.size(address(cd[(arg5 + 68)]))
                    staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _662
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    _713 = mem[ceil32(return_data.size) + 352]
                    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 352]
                    idx = 0
                    s = mem[64] + 196
                    t = ceil32(return_data.size) + 384
                    while idx < _713:
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
                        args _662, 1, 160, address(this.address), block.timestamp + 1, mem[mem[64] + 164 len (32 * _713) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _784 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _791 = mem[_784]
                    require mem[_784] <= test266151307()
                    require _784 + mem[_784] + 31 < _784 + return_data.size
                    _798 = mem[_784 + mem[_784]]
                    require mem[_784 + mem[_784]] <= test266151307()
                    require (32 * mem[_784 + mem[_784]]) + 32 >= 0 and _784 + ceil32(return_data.size) + (32 * mem[_784 + mem[_784]]) + 32 <= test266151307()
                    mem[64] = _784 + ceil32(return_data.size) + (32 * mem[_784 + mem[_784]]) + 32
                    mem[_784 + ceil32(return_data.size)] = _798
                    require return_data.size >= _791 + (32 * _798) + 32
                    mem[_784 + ceil32(return_data.size) + 32 len 32 * _798] = mem[_784 + _791 + 32 len 32 * _798]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 68)]))
                    staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1299 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1299] <= 0:
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
                call address(cd[(arg5 + 196)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg3, 1, 160, address(this.address), block.timestamp + 1, mem[(2 * ceil32(return_data.size)) + 612 len (32 * mem[ceil32(return_data.size) + 352]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 448
                require return_data.size >= 32
                _311 = mem[(2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32
                require mem[(2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + 479 < (2 * ceil32(return_data.size)) + return_data.size + 448
                _314 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448] <= test266151307()
                require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448]) + 480 <= test266151307()
                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448]) + 480
                mem[(4 * ceil32(return_data.size)) + 448] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448]
                require return_data.size >= _311 + (32 * _314) + 32
                mem[(4 * ceil32(return_data.size)) + 480 len 32 * _314] = mem[(2 * ceil32(return_data.size)) + _311 + 480 len 32 * _314]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 100)]))
                staticcall address(cd[(arg5 + 100)]).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _552 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _555 = mem[_552]
                if mem[_552] <= 0:
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
                _574 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_574] == bool(mem[_574])
                _580 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _555
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = 160
                _583 = mem[ceil32(return_data.size) + 352]
                mem[mem[64] + 164] = mem[ceil32(return_data.size) + 352]
                idx = 0
                s = mem[64] + 196
                t = ceil32(return_data.size) + 384
                while idx < _583:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_580 + 100] = this.address
                mem[_580 + 132] = block.timestamp + 1
                require ext_code.size(address(cd[(arg5 + 228)]))
                call address(cd[(arg5 + 228)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _580 + (32 * _583) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _782 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _789 = mem[_782]
                require mem[_782] <= test266151307()
                require _782 + mem[_782] + 31 < _782 + return_data.size
                _796 = mem[_782 + mem[_782]]
                require mem[_782 + mem[_782]] <= test266151307()
                require (32 * mem[_782 + mem[_782]]) + 32 >= 0 and _782 + ceil32(return_data.size) + (32 * mem[_782 + mem[_782]]) + 32 <= test266151307()
                mem[64] = _782 + ceil32(return_data.size) + (32 * mem[_782 + mem[_782]]) + 32
                mem[_782 + ceil32(return_data.size)] = _796
                require return_data.size >= _789 + (32 * _796) + 32
                mem[_782 + ceil32(return_data.size) + 32 len 32 * _796] = mem[_782 + _789 + 32 len 32 * _796]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 132)]))
                staticcall address(cd[(arg5 + 132)]).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1297 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1310 = mem[_1297]
                if mem[_1297] <= 0:
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
                _1356 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1356] == bool(mem[_1356])
                require ext_code.size(address(cd[(arg5 + 68)]))
                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1428 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1310
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = 160
                _1429 = mem[ceil32(return_data.size) + 352]
                mem[mem[64] + 164] = mem[ceil32(return_data.size) + 352]
                idx = 0
                s = mem[64] + 196
                t = ceil32(return_data.size) + 384
                while idx < _1429:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1428 + 100] = this.address
                mem[_1428 + 132] = block.timestamp + 1
                require ext_code.size(address(cd[(arg5 + 196)]))
                call address(cd[(arg5 + 196)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1428 + (32 * _1429) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1474 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1484 = mem[_1474]
                require mem[_1474] <= test266151307()
                require _1474 + mem[_1474] + 31 < _1474 + return_data.size
                _1494 = mem[_1474 + mem[_1474]]
                require mem[_1474 + mem[_1474]] <= test266151307()
                require (32 * mem[_1474 + mem[_1474]]) + 32 >= 0 and _1474 + ceil32(return_data.size) + (32 * mem[_1474 + mem[_1474]]) + 32 <= test266151307()
                mem[64] = _1474 + ceil32(return_data.size) + (32 * mem[_1474 + mem[_1474]]) + 32
                mem[_1474 + ceil32(return_data.size)] = _1494
                require return_data.size >= _1484 + (32 * _1494) + 32
                mem[_1474 + ceil32(return_data.size) + 32 len 32 * _1494] = mem[_1474 + _1484 + 32 len 32 * _1494]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 68)]))
                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1544 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1544] <= 0:
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
            _310 = mem[ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 479 < ceil32(return_data.size) + return_data.size + 448
            _313 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448]
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448] <= test266151307()
            require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448]) + 480 <= test266151307()
            mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448]) + 480
            mem[(2 * ceil32(return_data.size)) + 448] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448]
            require return_data.size >= _310 + (32 * _313) + 32
            mem[(2 * ceil32(return_data.size)) + 480 len 32 * _313] = mem[ceil32(return_data.size) + _310 + 480 len 32 * _313]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 100)]))
            staticcall address(cd[(arg5 + 100)]).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _551 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _554 = mem[_551]
            if mem[_551] <= 0:
                revert with 0, 'Contract has not recived Token B'
            mem[mem[64] + 4] = 0
            require ext_code.size(address(cd[(arg5 + 228)]))
            staticcall address(cd[(arg5 + 228)]).coins(uint256 rg1) with:
                    gas gas_remaining wei
                   args 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _570 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_570] == mem[_570 + 12 len 20]
            if address(cd[(arg5 + 100)]) == mem[_570 + 12 len 20]:
                mem[mem[64] + 4] = stor3
                mem[mem[64] + 36] = -1
                require ext_code.size(address(cd[(arg5 + 100)]))
                call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor3, -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _590 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_590] == bool(mem[_590])
                _600 = mem[64]
                mem[64] = mem[64] + 64
                mem[_600] = _554
                mem[_600 + 32] = 0
                mem[mem[64] + 4 len 64] = _554, 0
                mem[mem[64] + 68] = 1
                require ext_code.size(address(cd[(arg5 + 228)]))
                call address(cd[(arg5 + 228)]).add_liquidity(uint256[2] rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args _554, 0 >> 256, 1
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
                _795 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _802 = mem[_795]
                if mem[_795] <= 0:
                    revert with 0, 'Contract has not recived Token C'
                mem[mem[64] + 4] = 0
                require ext_code.size(address(cd[(arg5 + 260)]))
                staticcall address(cd[(arg5 + 260)]).coins(uint256 rg1) with:
                        gas gas_remaining wei
                       args 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _825 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_825] == mem[_825 + 12 len 20]
                if mem[_825 + 12 len 20] == address(cd[(arg5 + 132)]):
                    mem[mem[64] + 4] = address(cd[(arg5 + 260)])
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(cd[(arg5 + 132)]))
                    call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(cd[(arg5 + 260)]), -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _873 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_873] == bool(mem[_873])
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = _802
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(cd[(arg5 + 260)]))
                    call address(cd[(arg5 + 260)]).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args 0, 1, _802, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 164)]))
                    staticcall address(cd[(arg5 + 164)]).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _930 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_930] <= 0:
                        revert with 0, 'Contract has not recived Token D'
                    mem[384] = address(cd[(arg5 + 164)])
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
                    _988 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_988] == bool(mem[_988])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 164)]))
                    staticcall address(cd[(arg5 + 164)]).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1052 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1062 = mem[_1052]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1062
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
                    require ext_code.size(address(cd[(arg5 + 196)]))
                    call address(cd[(arg5 + 196)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args _1062, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1283 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1296 = mem[_1283]
                    require mem[_1283] <= test266151307()
                    require _1283 + mem[_1283] + 31 < _1283 + return_data.size
                    _1309 = mem[_1283 + mem[_1283]]
                    require mem[_1283 + mem[_1283]] <= test266151307()
                    require (32 * mem[_1283 + mem[_1283]]) + 32 >= 0 and _1283 + ceil32(return_data.size) + (32 * mem[_1283 + mem[_1283]]) + 32 <= test266151307()
                    mem[64] = _1283 + ceil32(return_data.size) + (32 * mem[_1283 + mem[_1283]]) + 32
                    mem[_1283 + ceil32(return_data.size)] = _1309
                    require return_data.size >= _1296 + (32 * _1309) + 32
                    mem[_1283 + ceil32(return_data.size) + 32 len 32 * _1309] = mem[_1283 + _1296 + 32 len 32 * _1309]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 68)]))
                    staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1483 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1483] <= 0:
                        revert with 0, 'Contract has not recived Token A at the END'
                else:
                    mem[mem[64] + 4] = 1
                    require ext_code.size(address(cd[(arg5 + 260)]))
                    staticcall address(cd[(arg5 + 260)]).coins(uint256 rg1) with:
                            gas gas_remaining wei
                           args 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _870 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_870] == mem[_870 + 12 len 20]
                    mem[mem[64] + 4] = address(cd[(arg5 + 260)])
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(cd[(arg5 + 132)]))
                    call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(cd[(arg5 + 260)]), -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[_870 + 12 len 20] != address(cd[(arg5 + 132)]):
                        _912 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_912] == bool(mem[_912])
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = _802
                        mem[mem[64] + 100] = 1
                        require ext_code.size(address(cd[(arg5 + 260)]))
                        call address(cd[(arg5 + 260)]).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args 0, 0, _802, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[(arg5 + 164)]))
                        staticcall address(cd[(arg5 + 164)]).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _987 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_987] <= 0:
                            revert with 0, 'Contract has not recived Token D'
                        mem[384] = address(cd[(arg5 + 164)])
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
                        _1051 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1051] == bool(mem[_1051])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[(arg5 + 164)]))
                        staticcall address(cd[(arg5 + 164)]).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1099 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1109 = mem[_1099]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1109
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
                        require ext_code.size(address(cd[(arg5 + 196)]))
                        call address(cd[(arg5 + 196)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args _1109, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1281 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1294 = mem[_1281]
                        require mem[_1281] <= test266151307()
                        require _1281 + mem[_1281] + 31 < _1281 + return_data.size
                        _1307 = mem[_1281 + mem[_1281]]
                        require mem[_1281 + mem[_1281]] <= test266151307()
                        require (32 * mem[_1281 + mem[_1281]]) + 32 >= 0 and _1281 + ceil32(return_data.size) + (32 * mem[_1281 + mem[_1281]]) + 32 <= test266151307()
                        mem[64] = _1281 + ceil32(return_data.size) + (32 * mem[_1281 + mem[_1281]]) + 32
                        mem[_1281 + ceil32(return_data.size)] = _1307
                        require return_data.size >= _1294 + (32 * _1307) + 32
                        mem[_1281 + ceil32(return_data.size) + 32 len 32 * _1307] = mem[_1281 + _1294 + 32 len 32 * _1307]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[(arg5 + 68)]))
                        staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1481 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1481] <= 0:
                            revert with 0, 'Contract has not recived Token A at the END'
                    else:
                        _917 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_917] == bool(mem[_917])
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = _802
                        mem[mem[64] + 100] = 1
                        require ext_code.size(address(cd[(arg5 + 260)]))
                        call address(cd[(arg5 + 260)]).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args 1, 0, _802, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[(arg5 + 164)]))
                        staticcall address(cd[(arg5 + 164)]).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _991 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_991] <= 0:
                            revert with 0, 'Contract has not recived Token D'
                        mem[384] = address(cd[(arg5 + 164)])
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
                        _1055 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1055] == bool(mem[_1055])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[(arg5 + 164)]))
                        staticcall address(cd[(arg5 + 164)]).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1105 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1118 = mem[_1105]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1118
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
                        require ext_code.size(address(cd[(arg5 + 196)]))
                        call address(cd[(arg5 + 196)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args _1118, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1282 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1295 = mem[_1282]
                        require mem[_1282] <= test266151307()
                        require _1282 + mem[_1282] + 31 < _1282 + return_data.size
                        _1308 = mem[_1282 + mem[_1282]]
                        require mem[_1282 + mem[_1282]] <= test266151307()
                        require (32 * mem[_1282 + mem[_1282]]) + 32 >= 0 and _1282 + ceil32(return_data.size) + (32 * mem[_1282 + mem[_1282]]) + 32 <= test266151307()
                        mem[64] = _1282 + ceil32(return_data.size) + (32 * mem[_1282 + mem[_1282]]) + 32
                        mem[_1282 + ceil32(return_data.size)] = _1308
                        require return_data.size >= _1295 + (32 * _1308) + 32
                        mem[_1282 + ceil32(return_data.size) + 32 len 32 * _1308] = mem[_1282 + _1295 + 32 len 32 * _1308]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[(arg5 + 68)]))
                        staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1482 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1482] <= 0:
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
                _587 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_587] == mem[_587 + 12 len 20]
                mem[mem[64] + 4] = stor3
                mem[mem[64] + 36] = -1
                require ext_code.size(address(cd[(arg5 + 100)]))
                call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor3, -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(cd[(arg5 + 100)]) != mem[_587 + 12 len 20]:
                    _614 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_614] == bool(mem[_614])
                    _627 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_627] = 0
                    mem[_627 + 32] = 0
                    mem[mem[64] + 4 len 64] = 0
                    mem[mem[64] + 68] = 1
                    require ext_code.size(address(cd[(arg5 + 228)]))
                    call address(cd[(arg5 + 228)]).add_liquidity(uint256[2] rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args 0, 1
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
                    _793 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _800 = mem[_793]
                    if mem[_793] <= 0:
                        revert with 0, 'Contract has not recived Token C'
                    mem[mem[64] + 4] = 0
                    require ext_code.size(address(cd[(arg5 + 260)]))
                    staticcall address(cd[(arg5 + 260)]).coins(uint256 rg1) with:
                            gas gas_remaining wei
                           args 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _823 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_823] == mem[_823 + 12 len 20]
                    if mem[_823 + 12 len 20] == address(cd[(arg5 + 132)]):
                        mem[mem[64] + 4] = address(cd[(arg5 + 260)])
                        mem[mem[64] + 36] = -1
                        require ext_code.size(address(cd[(arg5 + 132)]))
                        call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(cd[(arg5 + 260)]), -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _871 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_871] == bool(mem[_871])
                        mem[mem[64] + 36] = 1
                        mem[mem[64] + 68] = _800
                        mem[mem[64] + 100] = 1
                        require ext_code.size(address(cd[(arg5 + 260)]))
                        call address(cd[(arg5 + 260)]).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args 0, 1, _800, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[(arg5 + 164)]))
                        staticcall address(cd[(arg5 + 164)]).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _928 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_928] <= 0:
                            revert with 0, 'Contract has not recived Token D'
                        mem[384] = address(cd[(arg5 + 164)])
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
                        _984 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_984] == bool(mem[_984])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[(arg5 + 164)]))
                        staticcall address(cd[(arg5 + 164)]).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1048 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1058 = mem[_1048]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1058
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
                        require ext_code.size(address(cd[(arg5 + 196)]))
                        call address(cd[(arg5 + 196)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args _1058, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1277 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1290 = mem[_1277]
                        require mem[_1277] <= test266151307()
                        require _1277 + mem[_1277] + 31 < _1277 + return_data.size
                        _1303 = mem[_1277 + mem[_1277]]
                        require mem[_1277 + mem[_1277]] <= test266151307()
                        require (32 * mem[_1277 + mem[_1277]]) + 32 >= 0 and _1277 + ceil32(return_data.size) + (32 * mem[_1277 + mem[_1277]]) + 32 <= test266151307()
                        mem[64] = _1277 + ceil32(return_data.size) + (32 * mem[_1277 + mem[_1277]]) + 32
                        mem[_1277 + ceil32(return_data.size)] = _1303
                        require return_data.size >= _1290 + (32 * _1303) + 32
                        mem[_1277 + ceil32(return_data.size) + 32 len 32 * _1303] = mem[_1277 + _1290 + 32 len 32 * _1303]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[(arg5 + 68)]))
                        staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1477 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1477] <= 0:
                            revert with 0, 'Contract has not recived Token A at the END'
                    else:
                        mem[mem[64] + 4] = 1
                        require ext_code.size(address(cd[(arg5 + 260)]))
                        staticcall address(cd[(arg5 + 260)]).coins(uint256 rg1) with:
                                gas gas_remaining wei
                               args 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _868 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_868] == mem[_868 + 12 len 20]
                        mem[mem[64] + 4] = address(cd[(arg5 + 260)])
                        mem[mem[64] + 36] = -1
                        require ext_code.size(address(cd[(arg5 + 132)]))
                        call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(cd[(arg5 + 260)]), -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if mem[_868 + 12 len 20] != address(cd[(arg5 + 132)]):
                            _908 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_908] == bool(mem[_908])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = _800
                            mem[mem[64] + 100] = 1
                            require ext_code.size(address(cd[(arg5 + 260)]))
                            call address(cd[(arg5 + 260)]).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, _800, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[(arg5 + 164)]))
                            staticcall address(cd[(arg5 + 164)]).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _983 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_983] <= 0:
                                revert with 0, 'Contract has not recived Token D'
                            mem[384] = address(cd[(arg5 + 164)])
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
                            _1047 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1047] == bool(mem[_1047])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[(arg5 + 164)]))
                            staticcall address(cd[(arg5 + 164)]).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1097 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1107 = mem[_1097]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1107
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
                            require ext_code.size(address(cd[(arg5 + 196)]))
                            call address(cd[(arg5 + 196)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args _1107, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1275 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1288 = mem[_1275]
                            require mem[_1275] <= test266151307()
                            require _1275 + mem[_1275] + 31 < _1275 + return_data.size
                            _1301 = mem[_1275 + mem[_1275]]
                            require mem[_1275 + mem[_1275]] <= test266151307()
                            require (32 * mem[_1275 + mem[_1275]]) + 32 >= 0 and _1275 + ceil32(return_data.size) + (32 * mem[_1275 + mem[_1275]]) + 32 <= test266151307()
                            mem[64] = _1275 + ceil32(return_data.size) + (32 * mem[_1275 + mem[_1275]]) + 32
                            mem[_1275 + ceil32(return_data.size)] = _1301
                            require return_data.size >= _1288 + (32 * _1301) + 32
                            mem[_1275 + ceil32(return_data.size) + 32 len 32 * _1301] = mem[_1275 + _1288 + 32 len 32 * _1301]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[(arg5 + 68)]))
                            staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1475 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_1475] <= 0:
                                revert with 0, 'Contract has not recived Token A at the END'
                        else:
                            _915 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_915] == bool(mem[_915])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = _800
                            mem[mem[64] + 100] = 1
                            require ext_code.size(address(cd[(arg5 + 260)]))
                            call address(cd[(arg5 + 260)]).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                 gas gas_remaining wei
                                args 1, 0, _800, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[(arg5 + 164)]))
                            staticcall address(cd[(arg5 + 164)]).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _989 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_989] <= 0:
                                revert with 0, 'Contract has not recived Token D'
                            mem[384] = address(cd[(arg5 + 164)])
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
                            _1053 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1053] == bool(mem[_1053])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[(arg5 + 164)]))
                            staticcall address(cd[(arg5 + 164)]).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1101 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1112 = mem[_1101]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1112
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
                            require ext_code.size(address(cd[(arg5 + 196)]))
                            call address(cd[(arg5 + 196)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args _1112, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1276 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1289 = mem[_1276]
                            require mem[_1276] <= test266151307()
                            require _1276 + mem[_1276] + 31 < _1276 + return_data.size
                            _1302 = mem[_1276 + mem[_1276]]
                            require mem[_1276 + mem[_1276]] <= test266151307()
                            require (32 * mem[_1276 + mem[_1276]]) + 32 >= 0 and _1276 + ceil32(return_data.size) + (32 * mem[_1276 + mem[_1276]]) + 32 <= test266151307()
                            mem[64] = _1276 + ceil32(return_data.size) + (32 * mem[_1276 + mem[_1276]]) + 32
                            mem[_1276 + ceil32(return_data.size)] = _1302
                            require return_data.size >= _1289 + (32 * _1302) + 32
                            mem[_1276 + ceil32(return_data.size) + 32 len 32 * _1302] = mem[_1276 + _1289 + 32 len 32 * _1302]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[(arg5 + 68)]))
                            staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1476 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_1476] <= 0:
                                revert with 0, 'Contract has not recived Token A at the END'
                else:
                    _617 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_617] == bool(mem[_617])
                    _632 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_632] = 0
                    mem[_632 + 32] = _554
                    mem[mem[64] + 4 len 64] = 0, _554
                    mem[mem[64] + 68] = 1
                    require ext_code.size(address(cd[(arg5 + 228)]))
                    call address(cd[(arg5 + 228)]).add_liquidity(uint256[2] rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args 0, _554 >> 256, 1
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
                    _794 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _801 = mem[_794]
                    if mem[_794] <= 0:
                        revert with 0, 'Contract has not recived Token C'
                    mem[mem[64] + 4] = 0
                    require ext_code.size(address(cd[(arg5 + 260)]))
                    staticcall address(cd[(arg5 + 260)]).coins(uint256 rg1) with:
                            gas gas_remaining wei
                           args 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _824 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_824] == mem[_824 + 12 len 20]
                    if mem[_824 + 12 len 20] == address(cd[(arg5 + 132)]):
                        mem[mem[64] + 4] = address(cd[(arg5 + 260)])
                        mem[mem[64] + 36] = -1
                        require ext_code.size(address(cd[(arg5 + 132)]))
                        call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(cd[(arg5 + 260)]), -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _872 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_872] == bool(mem[_872])
                        mem[mem[64] + 36] = 1
                        mem[mem[64] + 68] = _801
                        mem[mem[64] + 100] = 1
                        require ext_code.size(address(cd[(arg5 + 260)]))
                        call address(cd[(arg5 + 260)]).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args 0, 1, _801, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[(arg5 + 164)]))
                        staticcall address(cd[(arg5 + 164)]).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _929 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_929] <= 0:
                            revert with 0, 'Contract has not recived Token D'
                        mem[384] = address(cd[(arg5 + 164)])
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
                        _986 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_986] == bool(mem[_986])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[(arg5 + 164)]))
                        staticcall address(cd[(arg5 + 164)]).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1050 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1060 = mem[_1050]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1060
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
                        require ext_code.size(address(cd[(arg5 + 196)]))
                        call address(cd[(arg5 + 196)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args _1060, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1280 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1293 = mem[_1280]
                        require mem[_1280] <= test266151307()
                        require _1280 + mem[_1280] + 31 < _1280 + return_data.size
                        _1306 = mem[_1280 + mem[_1280]]
                        require mem[_1280 + mem[_1280]] <= test266151307()
                        require (32 * mem[_1280 + mem[_1280]]) + 32 >= 0 and _1280 + ceil32(return_data.size) + (32 * mem[_1280 + mem[_1280]]) + 32 <= test266151307()
                        mem[64] = _1280 + ceil32(return_data.size) + (32 * mem[_1280 + mem[_1280]]) + 32
                        mem[_1280 + ceil32(return_data.size)] = _1306
                        require return_data.size >= _1293 + (32 * _1306) + 32
                        mem[_1280 + ceil32(return_data.size) + 32 len 32 * _1306] = mem[_1280 + _1293 + 32 len 32 * _1306]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[(arg5 + 68)]))
                        staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1480 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1480] <= 0:
                            revert with 0, 'Contract has not recived Token A at the END'
                    else:
                        mem[mem[64] + 4] = 1
                        require ext_code.size(address(cd[(arg5 + 260)]))
                        staticcall address(cd[(arg5 + 260)]).coins(uint256 rg1) with:
                                gas gas_remaining wei
                               args 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _869 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_869] == mem[_869 + 12 len 20]
                        mem[mem[64] + 4] = address(cd[(arg5 + 260)])
                        mem[mem[64] + 36] = -1
                        require ext_code.size(address(cd[(arg5 + 132)]))
                        call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(cd[(arg5 + 260)]), -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if mem[_869 + 12 len 20] != address(cd[(arg5 + 132)]):
                            _910 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_910] == bool(mem[_910])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = _801
                            mem[mem[64] + 100] = 1
                            require ext_code.size(address(cd[(arg5 + 260)]))
                            call address(cd[(arg5 + 260)]).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, _801, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[(arg5 + 164)]))
                            staticcall address(cd[(arg5 + 164)]).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _985 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_985] <= 0:
                                revert with 0, 'Contract has not recived Token D'
                            mem[384] = address(cd[(arg5 + 164)])
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
                            _1049 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1049] == bool(mem[_1049])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[(arg5 + 164)]))
                            staticcall address(cd[(arg5 + 164)]).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1098 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1108 = mem[_1098]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1108
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
                            require ext_code.size(address(cd[(arg5 + 196)]))
                            call address(cd[(arg5 + 196)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args _1108, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1278 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1291 = mem[_1278]
                            require mem[_1278] <= test266151307()
                            require _1278 + mem[_1278] + 31 < _1278 + return_data.size
                            _1304 = mem[_1278 + mem[_1278]]
                            require mem[_1278 + mem[_1278]] <= test266151307()
                            require (32 * mem[_1278 + mem[_1278]]) + 32 >= 0 and _1278 + ceil32(return_data.size) + (32 * mem[_1278 + mem[_1278]]) + 32 <= test266151307()
                            mem[64] = _1278 + ceil32(return_data.size) + (32 * mem[_1278 + mem[_1278]]) + 32
                            mem[_1278 + ceil32(return_data.size)] = _1304
                            require return_data.size >= _1291 + (32 * _1304) + 32
                            mem[_1278 + ceil32(return_data.size) + 32 len 32 * _1304] = mem[_1278 + _1291 + 32 len 32 * _1304]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[(arg5 + 68)]))
                            staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1478 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_1478] <= 0:
                                revert with 0, 'Contract has not recived Token A at the END'
                        else:
                            _916 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_916] == bool(mem[_916])
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = _801
                            mem[mem[64] + 100] = 1
                            require ext_code.size(address(cd[(arg5 + 260)]))
                            call address(cd[(arg5 + 260)]).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                 gas gas_remaining wei
                                args 1, 0, _801, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[(arg5 + 164)]))
                            staticcall address(cd[(arg5 + 164)]).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _990 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_990] <= 0:
                                revert with 0, 'Contract has not recived Token D'
                            mem[384] = address(cd[(arg5 + 164)])
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
                            _1054 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1054] == bool(mem[_1054])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[(arg5 + 164)]))
                            staticcall address(cd[(arg5 + 164)]).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1103 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1115 = mem[_1103]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1115
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
                            require ext_code.size(address(cd[(arg5 + 196)]))
                            call address(cd[(arg5 + 196)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args _1115, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1279 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1292 = mem[_1279]
                            require mem[_1279] <= test266151307()
                            require _1279 + mem[_1279] + 31 < _1279 + return_data.size
                            _1305 = mem[_1279 + mem[_1279]]
                            require mem[_1279 + mem[_1279]] <= test266151307()
                            require (32 * mem[_1279 + mem[_1279]]) + 32 >= 0 and _1279 + ceil32(return_data.size) + (32 * mem[_1279 + mem[_1279]]) + 32 <= test266151307()
                            mem[64] = _1279 + ceil32(return_data.size) + (32 * mem[_1279 + mem[_1279]]) + 32
                            mem[_1279 + ceil32(return_data.size)] = _1305
                            require return_data.size >= _1292 + (32 * _1305) + 32
                            mem[_1279 + ceil32(return_data.size) + 32 len 32 * _1305] = mem[_1279 + _1292 + 32 len 32 * _1305]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[(arg5 + 68)]))
                            staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1479 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_1479] <= 0:
                                revert with 0, 'Contract has not recived Token A at the END'
    return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9
}



}
