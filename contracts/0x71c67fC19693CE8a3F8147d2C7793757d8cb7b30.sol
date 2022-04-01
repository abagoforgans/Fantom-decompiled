contract main {




// =====================  Runtime code  =====================


#
#  - sub_1b307879(?)
#  - onFlashLoan(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5)
#
address owner;
address stor10;
address stor11;
address stor15;

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
           args address(this.address), stor15
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor15)
    staticcall stor15.flashFee(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    call address(arg2).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor15, (2 * ext_call.return_data[0]) + arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor15)
    call stor15.flashLoan(address rg1, address rg2, uint256 rg3, bytes rg4) with:
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

function sub_f4055f00(?) payable {
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
    _418 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _419 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
    mem[(2 * ceil32(return_data.size)) + 192] = _419
    require return_data.size >= _418 + (32 * _419) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _419] = mem[ceil32(return_data.size) + _418 + 224 len 32 * _419]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg3))
    staticcall address(arg3).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _824 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _825 = mem[_824]
    if mem[_824] <= 0:
        revert with 0, 'Contract has not recived Token B'
    mem[mem[64] + 4] = address(arg7)
    mem[mem[64] + 36] = -1
    require ext_code.size(address(arg3))
    call address(arg3).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg7), -1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _830 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_830] == bool(mem[_830])
    mem[mem[64] + 4] = 0
    require ext_code.size(address(arg7))
    staticcall address(arg7).coins(uint256 rg1) with:
            gas gas_remaining wei
           args 0
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _834 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_834] == mem[_834 + 12 len 20]
    if mem[_834 + 12 len 20] == address(arg3):
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = _825
        mem[mem[64] + 100] = 1
        require ext_code.size(address(arg7))
        call address(arg7).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
             gas gas_remaining wei
            args 0, 1, _825, 1
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
        _844 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _846 = mem[_844]
        if mem[_844] <= 0:
            revert with 0, 'Contract has not recived Token C'
        mem[mem[64] + 4] = 0
        require ext_code.size(address(arg8))
        staticcall address(arg8).coins(uint256 rg1) with:
                gas gas_remaining wei
               args 0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _857 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_857] == mem[_857 + 12 len 20]
        if mem[_857 + 12 len 20] == address(arg5):
            mem[mem[64] + 4] = address(arg8)
            mem[mem[64] + 36] = -1
            require ext_code.size(address(arg4))
            call address(arg4).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg8), -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _880 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_880] == bool(mem[_880])
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 1
            require ext_code.size(address(arg8))
            call address(arg8).remove_liquidity_one_coin(uint256 rg1, int128 rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args _846, 0, 1
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
            _912 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _916 = mem[_912]
            if mem[_912] <= 0:
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
            _954 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_954] == bool(mem[_954])
            require ext_code.size(address(arg2))
            staticcall address(arg2).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _916
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
                args _916, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1247 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1256 = mem[_1247]
            require mem[_1247] <= test266151307()
            require _1247 + mem[_1247] + 31 < _1247 + return_data.size
            _1265 = mem[_1247 + mem[_1247]]
            require mem[_1247 + mem[_1247]] <= test266151307()
            require (32 * mem[_1247 + mem[_1247]]) + 32 >= 0 and _1247 + ceil32(return_data.size) + (32 * mem[_1247 + mem[_1247]]) + 32 <= test266151307()
            mem[64] = _1247 + ceil32(return_data.size) + (32 * mem[_1247 + mem[_1247]]) + 32
            mem[_1247 + ceil32(return_data.size)] = _1265
            require return_data.size >= _1256 + (32 * _1265) + 32
            mem[_1247 + ceil32(return_data.size) + 32 len 32 * _1265] = mem[_1247 + _1256 + 32 len 32 * _1265]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg2))
            staticcall address(arg2).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1373 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_1373] <= 0:
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
            _878 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_878] == mem[_878 + 12 len 20]
            mem[mem[64] + 4] = address(arg8)
            mem[mem[64] + 36] = -1
            require ext_code.size(address(arg4))
            call address(arg4).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg8), -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_878 + 12 len 20] != address(arg5):
                _901 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_901] == bool(mem[_901])
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 1
                require ext_code.size(address(arg8))
                call address(arg8).remove_liquidity_one_coin(uint256 rg1, int128 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args _846, 0, 1
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
                _953 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _959 = mem[_953]
                if mem[_953] <= 0:
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
                _1006 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1006] == bool(mem[_1006])
                require ext_code.size(address(arg2))
                staticcall address(arg2).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _959
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
                    args _959, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1245 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1254 = mem[_1245]
                require mem[_1245] <= test266151307()
                require _1245 + mem[_1245] + 31 < _1245 + return_data.size
                _1263 = mem[_1245 + mem[_1245]]
                require mem[_1245 + mem[_1245]] <= test266151307()
                require (32 * mem[_1245 + mem[_1245]]) + 32 >= 0 and _1245 + ceil32(return_data.size) + (32 * mem[_1245 + mem[_1245]]) + 32 <= test266151307()
                mem[64] = _1245 + ceil32(return_data.size) + (32 * mem[_1245 + mem[_1245]]) + 32
                mem[_1245 + ceil32(return_data.size)] = _1263
                require return_data.size >= _1254 + (32 * _1263) + 32
                mem[_1245 + ceil32(return_data.size) + 32 len 32 * _1263] = mem[_1245 + _1254 + 32 len 32 * _1263]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1371 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1371] <= 0:
                    revert with 0, 'Contract has not recived Token A at the END'
            else:
                _905 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_905] == bool(mem[_905])
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = 1
                require ext_code.size(address(arg8))
                call address(arg8).remove_liquidity_one_coin(uint256 rg1, int128 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args _846, 1, 1
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
                _956 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _964 = mem[_956]
                if mem[_956] <= 0:
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
                _1011 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1011] == bool(mem[_1011])
                require ext_code.size(address(arg2))
                staticcall address(arg2).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _964
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
                    args _964, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1246 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1255 = mem[_1246]
                require mem[_1246] <= test266151307()
                require _1246 + mem[_1246] + 31 < _1246 + return_data.size
                _1264 = mem[_1246 + mem[_1246]]
                require mem[_1246 + mem[_1246]] <= test266151307()
                require (32 * mem[_1246 + mem[_1246]]) + 32 >= 0 and _1246 + ceil32(return_data.size) + (32 * mem[_1246 + mem[_1246]]) + 32 <= test266151307()
                mem[64] = _1246 + ceil32(return_data.size) + (32 * mem[_1246 + mem[_1246]]) + 32
                mem[_1246 + ceil32(return_data.size)] = _1264
                require return_data.size >= _1255 + (32 * _1264) + 32
                mem[_1246 + ceil32(return_data.size) + 32 len 32 * _1264] = mem[_1246 + _1255 + 32 len 32 * _1264]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1372 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1372] <= 0:
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
        _840 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_840] == mem[_840 + 12 len 20]
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = _825
        mem[mem[64] + 100] = 1
        require ext_code.size(address(arg7))
        if mem[_840 + 12 len 20] != address(arg3):
            call address(arg7).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args 0, 0, _825, 1
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
            _859 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _862 = mem[_859]
            if mem[_859] <= 0:
                revert with 0, 'Contract has not recived Token C'
            mem[mem[64] + 4] = 0
            require ext_code.size(address(arg8))
            staticcall address(arg8).coins(uint256 rg1) with:
                    gas gas_remaining wei
                   args 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _875 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_875] == mem[_875 + 12 len 20]
            if mem[_875 + 12 len 20] == address(arg5):
                mem[mem[64] + 4] = address(arg8)
                mem[mem[64] + 36] = -1
                require ext_code.size(address(arg4))
                call address(arg4).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg8), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _899 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_899] == bool(mem[_899])
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 1
                require ext_code.size(address(arg8))
                call address(arg8).remove_liquidity_one_coin(uint256 rg1, int128 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args _862, 0, 1
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
                _951 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _958 = mem[_951]
                if mem[_951] <= 0:
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
                _1004 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1004] == bool(mem[_1004])
                require ext_code.size(address(arg2))
                staticcall address(arg2).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _958
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
                    args _958, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1241 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1250 = mem[_1241]
                require mem[_1241] <= test266151307()
                require _1241 + mem[_1241] + 31 < _1241 + return_data.size
                _1259 = mem[_1241 + mem[_1241]]
                require mem[_1241 + mem[_1241]] <= test266151307()
                require (32 * mem[_1241 + mem[_1241]]) + 32 >= 0 and _1241 + ceil32(return_data.size) + (32 * mem[_1241 + mem[_1241]]) + 32 <= test266151307()
                mem[64] = _1241 + ceil32(return_data.size) + (32 * mem[_1241 + mem[_1241]]) + 32
                mem[_1241 + ceil32(return_data.size)] = _1259
                require return_data.size >= _1250 + (32 * _1259) + 32
                mem[_1241 + ceil32(return_data.size) + 32 len 32 * _1259] = mem[_1241 + _1250 + 32 len 32 * _1259]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1367 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1367] <= 0:
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
                _896 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_896] == mem[_896 + 12 len 20]
                mem[mem[64] + 4] = address(arg8)
                mem[mem[64] + 36] = -1
                require ext_code.size(address(arg4))
                call address(arg4).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg8), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_896 + 12 len 20] != address(arg5):
                    _932 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_932] == bool(mem[_932])
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 1
                    require ext_code.size(address(arg8))
                    call address(arg8).remove_liquidity_one_coin(uint256 rg1, int128 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args _862, 0, 1
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
                    _1003 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1012 = mem[_1003]
                    if mem[_1003] <= 0:
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
                    _1058 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1058] == bool(mem[_1058])
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1012
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
                        args _1012, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1239 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1248 = mem[_1239]
                    require mem[_1239] <= test266151307()
                    require _1239 + mem[_1239] + 31 < _1239 + return_data.size
                    _1257 = mem[_1239 + mem[_1239]]
                    require mem[_1239 + mem[_1239]] <= test266151307()
                    require (32 * mem[_1239 + mem[_1239]]) + 32 >= 0 and _1239 + ceil32(return_data.size) + (32 * mem[_1239 + mem[_1239]]) + 32 <= test266151307()
                    mem[64] = _1239 + ceil32(return_data.size) + (32 * mem[_1239 + mem[_1239]]) + 32
                    mem[_1239 + ceil32(return_data.size)] = _1257
                    require return_data.size >= _1248 + (32 * _1257) + 32
                    mem[_1239 + ceil32(return_data.size) + 32 len 32 * _1257] = mem[_1239 + _1248 + 32 len 32 * _1257]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1365 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1365] <= 0:
                        revert with 0, 'Contract has not recived Token A at the END'
                else:
                    _938 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_938] == bool(mem[_938])
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 1
                    require ext_code.size(address(arg8))
                    call address(arg8).remove_liquidity_one_coin(uint256 rg1, int128 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args _862, 1, 1
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
                    _1008 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1017 = mem[_1008]
                    if mem[_1008] <= 0:
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
                    _1062 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1062] == bool(mem[_1062])
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1017
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
                        args _1017, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1240 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1249 = mem[_1240]
                    require mem[_1240] <= test266151307()
                    require _1240 + mem[_1240] + 31 < _1240 + return_data.size
                    _1258 = mem[_1240 + mem[_1240]]
                    require mem[_1240 + mem[_1240]] <= test266151307()
                    require (32 * mem[_1240 + mem[_1240]]) + 32 >= 0 and _1240 + ceil32(return_data.size) + (32 * mem[_1240 + mem[_1240]]) + 32 <= test266151307()
                    mem[64] = _1240 + ceil32(return_data.size) + (32 * mem[_1240 + mem[_1240]]) + 32
                    mem[_1240 + ceil32(return_data.size)] = _1258
                    require return_data.size >= _1249 + (32 * _1258) + 32
                    mem[_1240 + ceil32(return_data.size) + 32 len 32 * _1258] = mem[_1240 + _1249 + 32 len 32 * _1258]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1366 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1366] <= 0:
                        revert with 0, 'Contract has not recived Token A at the END'
        else:
            call address(arg7).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args 1, 0, _825, 1
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
            _861 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _863 = mem[_861]
            if mem[_861] <= 0:
                revert with 0, 'Contract has not recived Token C'
            mem[mem[64] + 4] = 0
            require ext_code.size(address(arg8))
            staticcall address(arg8).coins(uint256 rg1) with:
                    gas gas_remaining wei
                   args 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _877 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_877] == mem[_877 + 12 len 20]
            if mem[_877 + 12 len 20] == address(arg5):
                mem[mem[64] + 4] = address(arg8)
                mem[mem[64] + 36] = -1
                require ext_code.size(address(arg4))
                call address(arg4).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg8), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _904 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_904] == bool(mem[_904])
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 1
                require ext_code.size(address(arg8))
                call address(arg8).remove_liquidity_one_coin(uint256 rg1, int128 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args _863, 0, 1
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
                _955 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _963 = mem[_955]
                if mem[_955] <= 0:
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
                _1010 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1010] == bool(mem[_1010])
                require ext_code.size(address(arg2))
                staticcall address(arg2).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _963
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
                    args _963, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1244 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1253 = mem[_1244]
                require mem[_1244] <= test266151307()
                require _1244 + mem[_1244] + 31 < _1244 + return_data.size
                _1262 = mem[_1244 + mem[_1244]]
                require mem[_1244 + mem[_1244]] <= test266151307()
                require (32 * mem[_1244 + mem[_1244]]) + 32 >= 0 and _1244 + ceil32(return_data.size) + (32 * mem[_1244 + mem[_1244]]) + 32 <= test266151307()
                mem[64] = _1244 + ceil32(return_data.size) + (32 * mem[_1244 + mem[_1244]]) + 32
                mem[_1244 + ceil32(return_data.size)] = _1262
                require return_data.size >= _1253 + (32 * _1262) + 32
                mem[_1244 + ceil32(return_data.size) + 32 len 32 * _1262] = mem[_1244 + _1253 + 32 len 32 * _1262]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1370 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1370] <= 0:
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
                _900 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_900] == mem[_900 + 12 len 20]
                mem[mem[64] + 4] = address(arg8)
                mem[mem[64] + 36] = -1
                require ext_code.size(address(arg4))
                call address(arg4).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg8), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_900 + 12 len 20] != address(arg5):
                    _939 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_939] == bool(mem[_939])
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 1
                    require ext_code.size(address(arg8))
                    call address(arg8).remove_liquidity_one_coin(uint256 rg1, int128 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args _863, 1, 1
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
                    _1009 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1018 = mem[_1009]
                    if mem[_1009] <= 0:
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
                    _1063 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1063] == bool(mem[_1063])
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1018
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
                        args _1018, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1242 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1251 = mem[_1242]
                    require mem[_1242] <= test266151307()
                    require _1242 + mem[_1242] + 31 < _1242 + return_data.size
                    _1260 = mem[_1242 + mem[_1242]]
                    require mem[_1242 + mem[_1242]] <= test266151307()
                    require (32 * mem[_1242 + mem[_1242]]) + 32 >= 0 and _1242 + ceil32(return_data.size) + (32 * mem[_1242 + mem[_1242]]) + 32 <= test266151307()
                    mem[64] = _1242 + ceil32(return_data.size) + (32 * mem[_1242 + mem[_1242]]) + 32
                    mem[_1242 + ceil32(return_data.size)] = _1260
                    require return_data.size >= _1251 + (32 * _1260) + 32
                    mem[_1242 + ceil32(return_data.size) + 32 len 32 * _1260] = mem[_1242 + _1251 + 32 len 32 * _1260]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1368 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1368] <= 0:
                        revert with 0, 'Contract has not recived Token A at the END'
                else:
                    _944 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_944] == bool(mem[_944])
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 1
                    require ext_code.size(address(arg8))
                    call address(arg8).remove_liquidity_one_coin(uint256 rg1, int128 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args _863, 1, 1
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
                    _1014 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1024 = mem[_1014]
                    if mem[_1014] <= 0:
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
                    _1069 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1069] == bool(mem[_1069])
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1024
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
                        args _1024, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1243 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1252 = mem[_1243]
                    require mem[_1243] <= test266151307()
                    require _1243 + mem[_1243] + 31 < _1243 + return_data.size
                    _1261 = mem[_1243 + mem[_1243]]
                    require mem[_1243 + mem[_1243]] <= test266151307()
                    require (32 * mem[_1243 + mem[_1243]]) + 32 >= 0 and _1243 + ceil32(return_data.size) + (32 * mem[_1243 + mem[_1243]]) + 32 <= test266151307()
                    mem[64] = _1243 + ceil32(return_data.size) + (32 * mem[_1243 + mem[_1243]]) + 32
                    mem[_1243 + ceil32(return_data.size)] = _1261
                    require return_data.size >= _1252 + (32 * _1261) + 32
                    mem[_1243 + ceil32(return_data.size) + 32 len 32 * _1261] = mem[_1243 + _1252 + 32 len 32 * _1261]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1369 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1369] <= 0:
                        revert with 0, 'Contract has not recived Token A at the END'
}

function sub_045a4ab2(?) payable {
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
    _63 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _64 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
    mem[(2 * ceil32(return_data.size)) + 192] = _64
    require return_data.size >= _63 + (32 * _64) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _64] = mem[ceil32(return_data.size) + _63 + 224 len 32 * _64]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg3))
    staticcall address(arg3).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _113 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_113] <= 0:
        revert with 0, 'Contract has not recived Token B'
    mem[mem[64] + 4] = 0
    require ext_code.size(address(arg7))
    staticcall address(arg7).coins(uint256 rg1) with:
            gas gas_remaining wei
           args 0
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _119 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_119] == mem[_119 + 12 len 20]
    if mem[_119 + 12 len 20] == stor10:
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg3))
        staticcall address(arg3).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _126 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _128 = mem[_126]
        mem[mem[64] + 4] = address(arg7)
        mem[mem[64] + 36] = -1
        require ext_code.size(address(arg3))
        call address(arg3).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg7), -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _133 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_133] == bool(mem[_133])
        _141 = mem[64]
        mem[64] = mem[64] + 64
        mem[_141] = _128
        mem[_141 + 32] = 0
        mem[mem[64] + 4 len 64] = _128, 0
        mem[mem[64] + 68] = 1
        require ext_code.size(address(arg7))
        call address(arg7).add_liquidity(uint256[2] rg1, uint256 rg2) with:
             gas gas_remaining wei
            args _128, 0 >> 256, 1
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
        _168 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_168] <= 0:
            revert with 0, 'Contract has not recived Token D'
        mem[mem[64] + 4] = address(arg8)
        mem[mem[64] + 36] = -1
        require ext_code.size(address(arg4))
        call address(arg4).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg8), -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _186 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_186] == bool(mem[_186])
        mem[mem[64] + 4] = 0
        require ext_code.size(address(arg8))
        staticcall address(arg8).coins(uint256 rg1) with:
                gas gas_remaining wei
               args 0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _198 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_198] == mem[_198 + 12 len 20]
        if mem[_198 + 12 len 20] == address(arg4):
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg4))
            staticcall address(arg4).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _219 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _225 = mem[_219]
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = _225
            mem[mem[64] + 100] = 1
            require ext_code.size(address(arg8))
            call address(arg8).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args 0, 1, _225, 1
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
            _258 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_258] <= 0:
                revert with 0, 'Contract has not recived Token C'
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
            _315 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_315] == bool(mem[_315])
            require ext_code.size(address(arg2))
            staticcall address(arg2).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg5))
            staticcall address(arg5).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _402 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _411 = mem[_402]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _411
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
                args _411, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _609 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _618 = mem[_609]
            require mem[_609] <= test266151307()
            require _609 + mem[_609] + 31 < _609 + return_data.size
            _627 = mem[_609 + mem[_609]]
            require mem[_609 + mem[_609]] <= test266151307()
            require (32 * mem[_609 + mem[_609]]) + 32 >= 0 and _609 + ceil32(return_data.size) + (32 * mem[_609 + mem[_609]]) + 32 <= test266151307()
            mem[64] = _609 + ceil32(return_data.size) + (32 * mem[_609 + mem[_609]]) + 32
            mem[_609 + ceil32(return_data.size)] = _627
            require return_data.size >= _618 + (32 * _627) + 32
            mem[_609 + ceil32(return_data.size) + 32 len 32 * _627] = mem[_609 + _618 + 32 len 32 * _627]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg2))
            staticcall address(arg2).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _735 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_735] <= 0:
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
            _216 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_216] == mem[_216 + 12 len 20]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg4))
            staticcall address(arg4).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_216 + 12 len 20] != address(arg4):
                _252 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _261 = mem[_252]
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = _261
                mem[mem[64] + 100] = 1
                require ext_code.size(address(arg8))
                call address(arg8).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args 1, 0, _261, 1
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
                _314 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_314] <= 0:
                    revert with 0, 'Contract has not recived Token C'
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
                _374 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_374] == bool(mem[_374])
                require ext_code.size(address(arg2))
                staticcall address(arg2).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg5))
                staticcall address(arg5).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _453 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _462 = mem[_453]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _462
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
                    args _462, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _607 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _616 = mem[_607]
                require mem[_607] <= test266151307()
                require _607 + mem[_607] + 31 < _607 + return_data.size
                _625 = mem[_607 + mem[_607]]
                require mem[_607 + mem[_607]] <= test266151307()
                require (32 * mem[_607 + mem[_607]]) + 32 >= 0 and _607 + ceil32(return_data.size) + (32 * mem[_607 + mem[_607]]) + 32 <= test266151307()
                mem[64] = _607 + ceil32(return_data.size) + (32 * mem[_607 + mem[_607]]) + 32
                mem[_607 + ceil32(return_data.size)] = _625
                require return_data.size >= _616 + (32 * _625) + 32
                mem[_607 + ceil32(return_data.size) + 32 len 32 * _625] = mem[_607 + _616 + 32 len 32 * _625]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _733 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_733] <= 0:
                    revert with 0, 'Contract has not recived Token A at the END'
            else:
                _257 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _269 = mem[_257]
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = _269
                mem[mem[64] + 100] = 1
                require ext_code.size(address(arg8))
                call address(arg8).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args 1, 0, _269, 1
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
                _318 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_318] <= 0:
                    revert with 0, 'Contract has not recived Token C'
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
                _378 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_378] == bool(mem[_378])
                require ext_code.size(address(arg2))
                staticcall address(arg2).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg5))
                staticcall address(arg5).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _458 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _470 = mem[_458]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _470
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
                    args _470, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _608 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _617 = mem[_608]
                require mem[_608] <= test266151307()
                require _608 + mem[_608] + 31 < _608 + return_data.size
                _626 = mem[_608 + mem[_608]]
                require mem[_608 + mem[_608]] <= test266151307()
                require (32 * mem[_608 + mem[_608]]) + 32 >= 0 and _608 + ceil32(return_data.size) + (32 * mem[_608 + mem[_608]]) + 32 <= test266151307()
                mem[64] = _608 + ceil32(return_data.size) + (32 * mem[_608 + mem[_608]]) + 32
                mem[_608 + ceil32(return_data.size)] = _626
                require return_data.size >= _617 + (32 * _626) + 32
                mem[_608 + ceil32(return_data.size) + 32 len 32 * _626] = mem[_608 + _617 + 32 len 32 * _626]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _734 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_734] <= 0:
                    revert with 0, 'Contract has not recived Token A at the END'
    else:
        mem[mem[64] + 4] = 0
        require ext_code.size(address(arg7))
        staticcall address(arg7).coins(uint256 rg1) with:
                gas gas_remaining wei
               args 0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _125 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_125] == mem[_125 + 12 len 20]
        if mem[_125 + 12 len 20] != stor11:
            mem[mem[64] + 4] = address(arg7)
            mem[mem[64] + 36] = -1
            require ext_code.size(address(arg3))
            call address(arg3).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg7), -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _137 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_137] == bool(mem[_137])
            _144 = mem[64]
            mem[64] = mem[64] + 64
            mem[_144] = 0
            mem[_144 + 32] = 0
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
            _166 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_166] <= 0:
                revert with 0, 'Contract has not recived Token D'
            mem[mem[64] + 4] = address(arg8)
            mem[mem[64] + 36] = -1
            require ext_code.size(address(arg4))
            call address(arg4).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg8), -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _184 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_184] == bool(mem[_184])
            mem[mem[64] + 4] = 0
            require ext_code.size(address(arg8))
            staticcall address(arg8).coins(uint256 rg1) with:
                    gas gas_remaining wei
                   args 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _196 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_196] == mem[_196 + 12 len 20]
            if mem[_196 + 12 len 20] == address(arg4):
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg4))
                staticcall address(arg4).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _217 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _223 = mem[_217]
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = _223
                mem[mem[64] + 100] = 1
                require ext_code.size(address(arg8))
                call address(arg8).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args 0, 1, _223, 1
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
                _254 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_254] <= 0:
                    revert with 0, 'Contract has not recived Token C'
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
                _311 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_311] == bool(mem[_311])
                require ext_code.size(address(arg2))
                staticcall address(arg2).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg5))
                staticcall address(arg5).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _398 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _407 = mem[_398]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _407
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
                    args _407, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _603 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _612 = mem[_603]
                require mem[_603] <= test266151307()
                require _603 + mem[_603] + 31 < _603 + return_data.size
                _621 = mem[_603 + mem[_603]]
                require mem[_603 + mem[_603]] <= test266151307()
                require (32 * mem[_603 + mem[_603]]) + 32 >= 0 and _603 + ceil32(return_data.size) + (32 * mem[_603 + mem[_603]]) + 32 <= test266151307()
                mem[64] = _603 + ceil32(return_data.size) + (32 * mem[_603 + mem[_603]]) + 32
                mem[_603 + ceil32(return_data.size)] = _621
                require return_data.size >= _612 + (32 * _621) + 32
                mem[_603 + ceil32(return_data.size) + 32 len 32 * _621] = mem[_603 + _612 + 32 len 32 * _621]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _729 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_729] <= 0:
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
                _214 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_214] == mem[_214 + 12 len 20]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg4))
                staticcall address(arg4).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_214 + 12 len 20] != address(arg4):
                    _250 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _259 = mem[_250]
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = _259
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(arg8))
                    call address(arg8).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args 0, 0, _259, 1
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
                    _310 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_310] <= 0:
                        revert with 0, 'Contract has not recived Token C'
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
                    _370 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_370] == bool(mem[_370])
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _451 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _460 = mem[_451]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _460
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
                        args _460, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _601 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _610 = mem[_601]
                    require mem[_601] <= test266151307()
                    require _601 + mem[_601] + 31 < _601 + return_data.size
                    _619 = mem[_601 + mem[_601]]
                    require mem[_601 + mem[_601]] <= test266151307()
                    require (32 * mem[_601 + mem[_601]]) + 32 >= 0 and _601 + ceil32(return_data.size) + (32 * mem[_601 + mem[_601]]) + 32 <= test266151307()
                    mem[64] = _601 + ceil32(return_data.size) + (32 * mem[_601 + mem[_601]]) + 32
                    mem[_601 + ceil32(return_data.size)] = _619
                    require return_data.size >= _610 + (32 * _619) + 32
                    mem[_601 + ceil32(return_data.size) + 32 len 32 * _619] = mem[_601 + _610 + 32 len 32 * _619]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _727 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_727] <= 0:
                        revert with 0, 'Contract has not recived Token A at the END'
                else:
                    _253 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _263 = mem[_253]
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = _263
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(arg8))
                    call address(arg8).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args 1, 0, _263, 1
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
                    _316 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_316] <= 0:
                        revert with 0, 'Contract has not recived Token C'
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
                    _376 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_376] == bool(mem[_376])
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _454 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _464 = mem[_454]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _464
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
                        args _464, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _602 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _611 = mem[_602]
                    require mem[_602] <= test266151307()
                    require _602 + mem[_602] + 31 < _602 + return_data.size
                    _620 = mem[_602 + mem[_602]]
                    require mem[_602 + mem[_602]] <= test266151307()
                    require (32 * mem[_602 + mem[_602]]) + 32 >= 0 and _602 + ceil32(return_data.size) + (32 * mem[_602 + mem[_602]]) + 32 <= test266151307()
                    mem[64] = _602 + ceil32(return_data.size) + (32 * mem[_602 + mem[_602]]) + 32
                    mem[_602 + ceil32(return_data.size)] = _620
                    require return_data.size >= _611 + (32 * _620) + 32
                    mem[_602 + ceil32(return_data.size) + 32 len 32 * _620] = mem[_602 + _611 + 32 len 32 * _620]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _728 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_728] <= 0:
                        revert with 0, 'Contract has not recived Token A at the END'
        else:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _138 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _140 = mem[_138]
            mem[mem[64] + 4] = address(arg7)
            mem[mem[64] + 36] = -1
            require ext_code.size(address(arg3))
            call address(arg3).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg7), -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _148 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_148] == bool(mem[_148])
            _151 = mem[64]
            mem[64] = mem[64] + 64
            mem[_151] = 0
            mem[_151 + 32] = _140
            mem[mem[64] + 4 len 64] = 0, _140
            mem[mem[64] + 68] = 1
            require ext_code.size(address(arg7))
            call address(arg7).add_liquidity(uint256[2] rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args 0, _140 >> 256, 1
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
            _167 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_167] <= 0:
                revert with 0, 'Contract has not recived Token D'
            mem[mem[64] + 4] = address(arg8)
            mem[mem[64] + 36] = -1
            require ext_code.size(address(arg4))
            call address(arg4).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg8), -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _185 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_185] == bool(mem[_185])
            mem[mem[64] + 4] = 0
            require ext_code.size(address(arg8))
            staticcall address(arg8).coins(uint256 rg1) with:
                    gas gas_remaining wei
                   args 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _197 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_197] == mem[_197 + 12 len 20]
            if mem[_197 + 12 len 20] == address(arg4):
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg4))
                staticcall address(arg4).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _218 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _224 = mem[_218]
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = _224
                mem[mem[64] + 100] = 1
                require ext_code.size(address(arg8))
                call address(arg8).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args 0, 1, _224, 1
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
                _256 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_256] <= 0:
                    revert with 0, 'Contract has not recived Token C'
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
                _313 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_313] == bool(mem[_313])
                require ext_code.size(address(arg2))
                staticcall address(arg2).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg5))
                staticcall address(arg5).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _400 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _409 = mem[_400]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _409
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
                    args _409, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _606 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _615 = mem[_606]
                require mem[_606] <= test266151307()
                require _606 + mem[_606] + 31 < _606 + return_data.size
                _624 = mem[_606 + mem[_606]]
                require mem[_606 + mem[_606]] <= test266151307()
                require (32 * mem[_606 + mem[_606]]) + 32 >= 0 and _606 + ceil32(return_data.size) + (32 * mem[_606 + mem[_606]]) + 32 <= test266151307()
                mem[64] = _606 + ceil32(return_data.size) + (32 * mem[_606 + mem[_606]]) + 32
                mem[_606 + ceil32(return_data.size)] = _624
                require return_data.size >= _615 + (32 * _624) + 32
                mem[_606 + ceil32(return_data.size) + 32 len 32 * _624] = mem[_606 + _615 + 32 len 32 * _624]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _732 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_732] <= 0:
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
                _215 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_215] == mem[_215 + 12 len 20]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg4))
                staticcall address(arg4).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_215 + 12 len 20] != address(arg4):
                    _251 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _260 = mem[_251]
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = _260
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(arg8))
                    call address(arg8).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args 0, 1, _260, 1
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
                    _312 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_312] <= 0:
                        revert with 0, 'Contract has not recived Token C'
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
                    _372 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_372] == bool(mem[_372])
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _452 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _461 = mem[_452]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _461
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
                        args _461, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _604 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _613 = mem[_604]
                    require mem[_604] <= test266151307()
                    require _604 + mem[_604] + 31 < _604 + return_data.size
                    _622 = mem[_604 + mem[_604]]
                    require mem[_604 + mem[_604]] <= test266151307()
                    require (32 * mem[_604 + mem[_604]]) + 32 >= 0 and _604 + ceil32(return_data.size) + (32 * mem[_604 + mem[_604]]) + 32 <= test266151307()
                    mem[64] = _604 + ceil32(return_data.size) + (32 * mem[_604 + mem[_604]]) + 32
                    mem[_604 + ceil32(return_data.size)] = _622
                    require return_data.size >= _613 + (32 * _622) + 32
                    mem[_604 + ceil32(return_data.size) + 32 len 32 * _622] = mem[_604 + _613 + 32 len 32 * _622]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _730 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_730] <= 0:
                        revert with 0, 'Contract has not recived Token A at the END'
                else:
                    _255 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _266 = mem[_255]
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = _266
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(arg8))
                    call address(arg8).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args 1, 0, _266, 1
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
                    _317 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_317] <= 0:
                        revert with 0, 'Contract has not recived Token C'
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
                    _377 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_377] == bool(mem[_377])
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _456 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _467 = mem[_456]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _467
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
                        args _467, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _605 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _614 = mem[_605]
                    require mem[_605] <= test266151307()
                    require _605 + mem[_605] + 31 < _605 + return_data.size
                    _623 = mem[_605 + mem[_605]]
                    require mem[_605 + mem[_605]] <= test266151307()
                    require (32 * mem[_605 + mem[_605]]) + 32 >= 0 and _605 + ceil32(return_data.size) + (32 * mem[_605 + mem[_605]]) + 32 <= test266151307()
                    mem[64] = _605 + ceil32(return_data.size) + (32 * mem[_605 + mem[_605]]) + 32
                    mem[_605 + ceil32(return_data.size)] = _623
                    require return_data.size >= _614 + (32 * _623) + 32
                    mem[_605 + ceil32(return_data.size) + 32 len 32 * _623] = mem[_605 + _614 + 32 len 32 * _623]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _731 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_731] <= 0:
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
    _638 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _639 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
    mem[(2 * ceil32(return_data.size)) + 192] = _639
    require return_data.size >= _638 + (32 * _639) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _639] = mem[ceil32(return_data.size) + _638 + 224 len 32 * _639]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg3))
    staticcall address(arg3).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1263 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1264 = mem[_1263]
    if mem[_1263] <= 0:
        revert with 0, 'Contract has not recived Token B'
    mem[mem[64] + 4] = 0
    require ext_code.size(address(arg7))
    staticcall address(arg7).coins(uint256 rg1) with:
            gas gas_remaining wei
           args 0
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1269 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1269] == mem[_1269 + 12 len 20]
    mem[mem[64] + 4] = 0
    require ext_code.size(address(arg7))
    staticcall address(arg7).coins(uint256 rg1) with:
            gas gas_remaining wei
           args 0
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if mem[_1269 + 12 len 20] == address(arg3):
        _1279 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1279] == mem[_1279 + 12 len 20]
        if mem[_1279 + 12 len 20] == address(arg4):
            revert with 0, 'i and j have to be unique'
        if stor10 == address(arg4):
            mem[mem[64] + 4] = address(arg7)
            mem[mem[64] + 36] = -1
            require ext_code.size(address(arg3))
            call address(arg3).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg7), -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1319 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1319] == bool(mem[_1319])
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = _1264
            mem[mem[64] + 100] = 1
            require ext_code.size(address(arg7))
            call address(arg7).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args 0, 1, _1264, 1
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
            _1380 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1390 = mem[_1380]
            if mem[_1380] <= 0:
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
            _1460 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1460] == bool(mem[_1460])
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1390
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
                args _1390, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1908 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1918 = mem[_1908]
            require mem[_1908] <= test266151307()
            require _1908 + mem[_1908] + 31 < _1908 + return_data.size
            _1928 = mem[_1908 + mem[_1908]]
            require mem[_1908 + mem[_1908]] <= test266151307()
            require (32 * mem[_1908 + mem[_1908]]) + 32 >= 0 and _1908 + ceil32(return_data.size) + (32 * mem[_1908 + mem[_1908]]) + 32 <= test266151307()
            mem[64] = _1908 + ceil32(return_data.size) + (32 * mem[_1908 + mem[_1908]]) + 32
            mem[_1908 + ceil32(return_data.size)] = _1928
            require return_data.size >= _1918 + (32 * _1928) + 32
            mem[_1908 + ceil32(return_data.size) + 32 len 32 * _1928] = mem[_1908 + _1918 + 32 len 32 * _1928]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg5))
            staticcall address(arg5).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2298 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2308 = mem[_2298]
            if mem[_2298] <= 0:
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
            _2378 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2378] == bool(mem[_2378])
            require ext_code.size(address(arg2))
            staticcall address(arg2).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _2308
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
                args _2308, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2608 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2618 = mem[_2608]
            require mem[_2608] <= test266151307()
            require _2608 + mem[_2608] + 31 < _2608 + return_data.size
            _2628 = mem[_2608 + mem[_2608]]
            require mem[_2608 + mem[_2608]] <= test266151307()
            require (32 * mem[_2608 + mem[_2608]]) + 32 >= 0 and _2608 + ceil32(return_data.size) + (32 * mem[_2608 + mem[_2608]]) + 32 <= test266151307()
            mem[64] = _2608 + ceil32(return_data.size) + (32 * mem[_2608 + mem[_2608]]) + 32
            mem[_2608 + ceil32(return_data.size)] = _2628
            require return_data.size >= _2618 + (32 * _2628) + 32
            mem[_2608 + ceil32(return_data.size) + 32 len 32 * _2628] = mem[_2608 + _2618 + 32 len 32 * _2628]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg2))
            staticcall address(arg2).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2748 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_2748] <= 0:
                revert with 0, 'Contract has not recived Token A at the END'
        else:
            if stor11 != address(arg4):
                revert with 0, 'i and j have to be unique'
            mem[mem[64] + 4] = address(arg7)
            mem[mem[64] + 36] = -1
            require ext_code.size(address(arg3))
            call address(arg3).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg7), -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1324 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1324] == bool(mem[_1324])
            mem[mem[64] + 36] = 2
            mem[mem[64] + 68] = _1264
            mem[mem[64] + 100] = 1
            require ext_code.size(address(arg7))
            call address(arg7).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args 0, 2, _1264, 1
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
            _1384 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1394 = mem[_1384]
            if mem[_1384] <= 0:
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
            _1464 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1464] == bool(mem[_1464])
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1394
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
                args _1394, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1907 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1917 = mem[_1907]
            require mem[_1907] <= test266151307()
            require _1907 + mem[_1907] + 31 < _1907 + return_data.size
            _1927 = mem[_1907 + mem[_1907]]
            require mem[_1907 + mem[_1907]] <= test266151307()
            require (32 * mem[_1907 + mem[_1907]]) + 32 >= 0 and _1907 + ceil32(return_data.size) + (32 * mem[_1907 + mem[_1907]]) + 32 <= test266151307()
            mem[64] = _1907 + ceil32(return_data.size) + (32 * mem[_1907 + mem[_1907]]) + 32
            mem[_1907 + ceil32(return_data.size)] = _1927
            require return_data.size >= _1917 + (32 * _1927) + 32
            mem[_1907 + ceil32(return_data.size) + 32 len 32 * _1927] = mem[_1907 + _1917 + 32 len 32 * _1927]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg5))
            staticcall address(arg5).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2297 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2307 = mem[_2297]
            if mem[_2297] <= 0:
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
            _2377 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2377] == bool(mem[_2377])
            require ext_code.size(address(arg2))
            staticcall address(arg2).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _2307
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
                args _2307, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2607 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2617 = mem[_2607]
            require mem[_2607] <= test266151307()
            require _2607 + mem[_2607] + 31 < _2607 + return_data.size
            _2627 = mem[_2607 + mem[_2607]]
            require mem[_2607 + mem[_2607]] <= test266151307()
            require (32 * mem[_2607 + mem[_2607]]) + 32 >= 0 and _2607 + ceil32(return_data.size) + (32 * mem[_2607 + mem[_2607]]) + 32 <= test266151307()
            mem[64] = _2607 + ceil32(return_data.size) + (32 * mem[_2607 + mem[_2607]]) + 32
            mem[_2607 + ceil32(return_data.size)] = _2627
            require return_data.size >= _2617 + (32 * _2627) + 32
            mem[_2607 + ceil32(return_data.size) + 32 len 32 * _2627] = mem[_2607 + _2617 + 32 len 32 * _2627]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg2))
            staticcall address(arg2).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2747 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_2747] <= 0:
                revert with 0, 'Contract has not recived Token A at the END'
    else:
        if stor10 == address(arg3):
            _1281 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1281] == mem[_1281 + 12 len 20]
            if mem[_1281 + 12 len 20] == address(arg4):
                mem[mem[64] + 4] = address(arg7)
                mem[mem[64] + 36] = -1
                require ext_code.size(address(arg3))
                call address(arg3).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg7), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1318 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1318] == bool(mem[_1318])
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = _1264
                mem[mem[64] + 100] = 1
                require ext_code.size(address(arg7))
                call address(arg7).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args 1, 0, _1264, 1
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
                _1379 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1389 = mem[_1379]
                if mem[_1379] <= 0:
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
                _1459 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1459] == bool(mem[_1459])
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1389
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
                    args _1389, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1906 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1916 = mem[_1906]
                require mem[_1906] <= test266151307()
                require _1906 + mem[_1906] + 31 < _1906 + return_data.size
                _1926 = mem[_1906 + mem[_1906]]
                require mem[_1906 + mem[_1906]] <= test266151307()
                require (32 * mem[_1906 + mem[_1906]]) + 32 >= 0 and _1906 + ceil32(return_data.size) + (32 * mem[_1906 + mem[_1906]]) + 32 <= test266151307()
                mem[64] = _1906 + ceil32(return_data.size) + (32 * mem[_1906 + mem[_1906]]) + 32
                mem[_1906 + ceil32(return_data.size)] = _1926
                require return_data.size >= _1916 + (32 * _1926) + 32
                mem[_1906 + ceil32(return_data.size) + 32 len 32 * _1926] = mem[_1906 + _1916 + 32 len 32 * _1926]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg5))
                staticcall address(arg5).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2296 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2306 = mem[_2296]
                if mem[_2296] <= 0:
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
                _2376 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2376] == bool(mem[_2376])
                require ext_code.size(address(arg2))
                staticcall address(arg2).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _2306
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
                    args _2306, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2606 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2616 = mem[_2606]
                require mem[_2606] <= test266151307()
                require _2606 + mem[_2606] + 31 < _2606 + return_data.size
                _2626 = mem[_2606 + mem[_2606]]
                require mem[_2606 + mem[_2606]] <= test266151307()
                require (32 * mem[_2606 + mem[_2606]]) + 32 >= 0 and _2606 + ceil32(return_data.size) + (32 * mem[_2606 + mem[_2606]]) + 32 <= test266151307()
                mem[64] = _2606 + ceil32(return_data.size) + (32 * mem[_2606 + mem[_2606]]) + 32
                mem[_2606 + ceil32(return_data.size)] = _2626
                require return_data.size >= _2616 + (32 * _2626) + 32
                mem[_2606 + ceil32(return_data.size) + 32 len 32 * _2626] = mem[_2606 + _2616 + 32 len 32 * _2626]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2746 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_2746] <= 0:
                    revert with 0, 'Contract has not recived Token A at the END'
            else:
                if stor10 == address(arg4):
                    revert with 0, 'i and j have to be unique'
                mem[mem[64] + 4] = address(arg7)
                mem[mem[64] + 36] = -1
                require ext_code.size(address(arg3))
                call address(arg3).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg7), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if stor11 != address(arg4):
                    _1323 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1323] == bool(mem[_1323])
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = _1264
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(arg7))
                    call address(arg7).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args 1, 0, _1264, 1
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
                    _1383 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1393 = mem[_1383]
                    if mem[_1383] <= 0:
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
                    _1463 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1463] == bool(mem[_1463])
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1393
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
                        args _1393, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1904 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1914 = mem[_1904]
                    require mem[_1904] <= test266151307()
                    require _1904 + mem[_1904] + 31 < _1904 + return_data.size
                    _1924 = mem[_1904 + mem[_1904]]
                    require mem[_1904 + mem[_1904]] <= test266151307()
                    require (32 * mem[_1904 + mem[_1904]]) + 32 >= 0 and _1904 + ceil32(return_data.size) + (32 * mem[_1904 + mem[_1904]]) + 32 <= test266151307()
                    mem[64] = _1904 + ceil32(return_data.size) + (32 * mem[_1904 + mem[_1904]]) + 32
                    mem[_1904 + ceil32(return_data.size)] = _1924
                    require return_data.size >= _1914 + (32 * _1924) + 32
                    mem[_1904 + ceil32(return_data.size) + 32 len 32 * _1924] = mem[_1904 + _1914 + 32 len 32 * _1924]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2294 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2304 = mem[_2294]
                    if mem[_2294] <= 0:
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
                    _2374 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2374] == bool(mem[_2374])
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _2304
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
                        args _2304, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2604 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2614 = mem[_2604]
                    require mem[_2604] <= test266151307()
                    require _2604 + mem[_2604] + 31 < _2604 + return_data.size
                    _2624 = mem[_2604 + mem[_2604]]
                    require mem[_2604 + mem[_2604]] <= test266151307()
                    require (32 * mem[_2604 + mem[_2604]]) + 32 >= 0 and _2604 + ceil32(return_data.size) + (32 * mem[_2604 + mem[_2604]]) + 32 <= test266151307()
                    mem[64] = _2604 + ceil32(return_data.size) + (32 * mem[_2604 + mem[_2604]]) + 32
                    mem[_2604 + ceil32(return_data.size)] = _2624
                    require return_data.size >= _2614 + (32 * _2624) + 32
                    mem[_2604 + ceil32(return_data.size) + 32 len 32 * _2624] = mem[_2604 + _2614 + 32 len 32 * _2624]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2744 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2744] <= 0:
                        revert with 0, 'Contract has not recived Token A at the END'
                else:
                    _1328 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1328] == bool(mem[_1328])
                    mem[mem[64] + 36] = 2
                    mem[mem[64] + 68] = _1264
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(arg7))
                    call address(arg7).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args 1, 2, _1264, 1
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
                    _1388 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1398 = mem[_1388]
                    if mem[_1388] <= 0:
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
                    _1468 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1468] == bool(mem[_1468])
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1398
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
                        args _1398, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1905 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1915 = mem[_1905]
                    require mem[_1905] <= test266151307()
                    require _1905 + mem[_1905] + 31 < _1905 + return_data.size
                    _1925 = mem[_1905 + mem[_1905]]
                    require mem[_1905 + mem[_1905]] <= test266151307()
                    require (32 * mem[_1905 + mem[_1905]]) + 32 >= 0 and _1905 + ceil32(return_data.size) + (32 * mem[_1905 + mem[_1905]]) + 32 <= test266151307()
                    mem[64] = _1905 + ceil32(return_data.size) + (32 * mem[_1905 + mem[_1905]]) + 32
                    mem[_1905 + ceil32(return_data.size)] = _1925
                    require return_data.size >= _1915 + (32 * _1925) + 32
                    mem[_1905 + ceil32(return_data.size) + 32 len 32 * _1925] = mem[_1905 + _1915 + 32 len 32 * _1925]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2295 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2305 = mem[_2295]
                    if mem[_2295] <= 0:
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
                    _2375 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2375] == bool(mem[_2375])
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _2305
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
                        args _2305, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2605 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2615 = mem[_2605]
                    require mem[_2605] <= test266151307()
                    require _2605 + mem[_2605] + 31 < _2605 + return_data.size
                    _2625 = mem[_2605 + mem[_2605]]
                    require mem[_2605 + mem[_2605]] <= test266151307()
                    require (32 * mem[_2605 + mem[_2605]]) + 32 >= 0 and _2605 + ceil32(return_data.size) + (32 * mem[_2605 + mem[_2605]]) + 32 <= test266151307()
                    mem[64] = _2605 + ceil32(return_data.size) + (32 * mem[_2605 + mem[_2605]]) + 32
                    mem[_2605 + ceil32(return_data.size)] = _2625
                    require return_data.size >= _2615 + (32 * _2625) + 32
                    mem[_2605 + ceil32(return_data.size) + 32 len 32 * _2625] = mem[_2605 + _2615 + 32 len 32 * _2625]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2745 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2745] <= 0:
                        revert with 0, 'Contract has not recived Token A at the END'
        else:
            if stor11 != address(arg3):
                _1280 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1280] == mem[_1280 + 12 len 20]
                if mem[_1280 + 12 len 20] == address(arg4):
                    revert with 0, 'i and j have to be unique'
                if stor10 == address(arg4):
                    mem[mem[64] + 4] = address(arg7)
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(arg3))
                    call address(arg3).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg7), -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1320 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1320] == bool(mem[_1320])
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = _1264
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(arg7))
                    call address(arg7).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args 0, 1, _1264, 1
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
                    _1381 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1391 = mem[_1381]
                    if mem[_1381] <= 0:
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
                    _1461 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1461] == bool(mem[_1461])
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1391
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
                        args _1391, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1900 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1910 = mem[_1900]
                    require mem[_1900] <= test266151307()
                    require _1900 + mem[_1900] + 31 < _1900 + return_data.size
                    _1920 = mem[_1900 + mem[_1900]]
                    require mem[_1900 + mem[_1900]] <= test266151307()
                    require (32 * mem[_1900 + mem[_1900]]) + 32 >= 0 and _1900 + ceil32(return_data.size) + (32 * mem[_1900 + mem[_1900]]) + 32 <= test266151307()
                    mem[64] = _1900 + ceil32(return_data.size) + (32 * mem[_1900 + mem[_1900]]) + 32
                    mem[_1900 + ceil32(return_data.size)] = _1920
                    require return_data.size >= _1910 + (32 * _1920) + 32
                    mem[_1900 + ceil32(return_data.size) + 32 len 32 * _1920] = mem[_1900 + _1910 + 32 len 32 * _1920]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2290 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2300 = mem[_2290]
                    if mem[_2290] <= 0:
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
                    _2370 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2370] == bool(mem[_2370])
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _2300
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
                        args _2300, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2600 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2610 = mem[_2600]
                    require mem[_2600] <= test266151307()
                    require _2600 + mem[_2600] + 31 < _2600 + return_data.size
                    _2620 = mem[_2600 + mem[_2600]]
                    require mem[_2600 + mem[_2600]] <= test266151307()
                    require (32 * mem[_2600 + mem[_2600]]) + 32 >= 0 and _2600 + ceil32(return_data.size) + (32 * mem[_2600 + mem[_2600]]) + 32 <= test266151307()
                    mem[64] = _2600 + ceil32(return_data.size) + (32 * mem[_2600 + mem[_2600]]) + 32
                    mem[_2600 + ceil32(return_data.size)] = _2620
                    require return_data.size >= _2610 + (32 * _2620) + 32
                    mem[_2600 + ceil32(return_data.size) + 32 len 32 * _2620] = mem[_2600 + _2610 + 32 len 32 * _2620]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2740 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2740] <= 0:
                        revert with 0, 'Contract has not recived Token A at the END'
                else:
                    if stor11 != address(arg4):
                        revert with 0, 'i and j have to be unique'
                    mem[mem[64] + 4] = address(arg7)
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(arg3))
                    call address(arg3).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg7), -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1325 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1325] == bool(mem[_1325])
                    mem[mem[64] + 36] = 2
                    mem[mem[64] + 68] = _1264
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(arg7))
                    call address(arg7).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args 0, 2, _1264, 1
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
                    _1385 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1395 = mem[_1385]
                    if mem[_1385] <= 0:
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
                    _1465 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1465] == bool(mem[_1465])
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1395
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
                        args _1395, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1899 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1909 = mem[_1899]
                    require mem[_1899] <= test266151307()
                    require _1899 + mem[_1899] + 31 < _1899 + return_data.size
                    _1919 = mem[_1899 + mem[_1899]]
                    require mem[_1899 + mem[_1899]] <= test266151307()
                    require (32 * mem[_1899 + mem[_1899]]) + 32 >= 0 and _1899 + ceil32(return_data.size) + (32 * mem[_1899 + mem[_1899]]) + 32 <= test266151307()
                    mem[64] = _1899 + ceil32(return_data.size) + (32 * mem[_1899 + mem[_1899]]) + 32
                    mem[_1899 + ceil32(return_data.size)] = _1919
                    require return_data.size >= _1909 + (32 * _1919) + 32
                    mem[_1899 + ceil32(return_data.size) + 32 len 32 * _1919] = mem[_1899 + _1909 + 32 len 32 * _1919]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2289 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2299 = mem[_2289]
                    if mem[_2289] <= 0:
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
                    _2369 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2369] == bool(mem[_2369])
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _2299
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
                        args _2299, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2599 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2609 = mem[_2599]
                    require mem[_2599] <= test266151307()
                    require _2599 + mem[_2599] + 31 < _2599 + return_data.size
                    _2619 = mem[_2599 + mem[_2599]]
                    require mem[_2599 + mem[_2599]] <= test266151307()
                    require (32 * mem[_2599 + mem[_2599]]) + 32 >= 0 and _2599 + ceil32(return_data.size) + (32 * mem[_2599 + mem[_2599]]) + 32 <= test266151307()
                    mem[64] = _2599 + ceil32(return_data.size) + (32 * mem[_2599 + mem[_2599]]) + 32
                    mem[_2599 + ceil32(return_data.size)] = _2619
                    require return_data.size >= _2609 + (32 * _2619) + 32
                    mem[_2599 + ceil32(return_data.size) + 32 len 32 * _2619] = mem[_2599 + _2609 + 32 len 32 * _2619]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2739 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2739] <= 0:
                        revert with 0, 'Contract has not recived Token A at the END'
            else:
                _1282 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1282] == mem[_1282 + 12 len 20]
                if mem[_1282 + 12 len 20] == address(arg4):
                    mem[mem[64] + 4] = address(arg7)
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(arg3))
                    call address(arg3).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg7), -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1322 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1322] == bool(mem[_1322])
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = _1264
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(arg7))
                    call address(arg7).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args 2, 0, _1264, 1
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
                    _1382 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1392 = mem[_1382]
                    if mem[_1382] <= 0:
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
                    _1462 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1462] == bool(mem[_1462])
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1392
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
                        args _1392, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1903 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1913 = mem[_1903]
                    require mem[_1903] <= test266151307()
                    require _1903 + mem[_1903] + 31 < _1903 + return_data.size
                    _1923 = mem[_1903 + mem[_1903]]
                    require mem[_1903 + mem[_1903]] <= test266151307()
                    require (32 * mem[_1903 + mem[_1903]]) + 32 >= 0 and _1903 + ceil32(return_data.size) + (32 * mem[_1903 + mem[_1903]]) + 32 <= test266151307()
                    mem[64] = _1903 + ceil32(return_data.size) + (32 * mem[_1903 + mem[_1903]]) + 32
                    mem[_1903 + ceil32(return_data.size)] = _1923
                    require return_data.size >= _1913 + (32 * _1923) + 32
                    mem[_1903 + ceil32(return_data.size) + 32 len 32 * _1923] = mem[_1903 + _1913 + 32 len 32 * _1923]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2293 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2303 = mem[_2293]
                    if mem[_2293] <= 0:
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
                    _2373 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2373] == bool(mem[_2373])
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _2303
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
                        args _2303, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2603 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2613 = mem[_2603]
                    require mem[_2603] <= test266151307()
                    require _2603 + mem[_2603] + 31 < _2603 + return_data.size
                    _2623 = mem[_2603 + mem[_2603]]
                    require mem[_2603 + mem[_2603]] <= test266151307()
                    require (32 * mem[_2603 + mem[_2603]]) + 32 >= 0 and _2603 + ceil32(return_data.size) + (32 * mem[_2603 + mem[_2603]]) + 32 <= test266151307()
                    mem[64] = _2603 + ceil32(return_data.size) + (32 * mem[_2603 + mem[_2603]]) + 32
                    mem[_2603 + ceil32(return_data.size)] = _2623
                    require return_data.size >= _2613 + (32 * _2623) + 32
                    mem[_2603 + ceil32(return_data.size) + 32 len 32 * _2623] = mem[_2603 + _2613 + 32 len 32 * _2623]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2743 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2743] <= 0:
                        revert with 0, 'Contract has not recived Token A at the END'
                else:
                    if stor10 == address(arg4):
                        mem[mem[64] + 4] = address(arg7)
                        mem[mem[64] + 36] = -1
                        require ext_code.size(address(arg3))
                        call address(arg3).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(arg7), -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1327 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1327] == bool(mem[_1327])
                        mem[mem[64] + 36] = 1
                        mem[mem[64] + 68] = _1264
                        mem[mem[64] + 100] = 1
                        require ext_code.size(address(arg7))
                        call address(arg7).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args 2, 1, _1264, 1
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
                        _1387 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1397 = mem[_1387]
                        if mem[_1387] <= 0:
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
                        _1467 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1467] == bool(mem[_1467])
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1397
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
                            args _1397, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1902 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1912 = mem[_1902]
                        require mem[_1902] <= test266151307()
                        require _1902 + mem[_1902] + 31 < _1902 + return_data.size
                        _1922 = mem[_1902 + mem[_1902]]
                        require mem[_1902 + mem[_1902]] <= test266151307()
                        require (32 * mem[_1902 + mem[_1902]]) + 32 >= 0 and _1902 + ceil32(return_data.size) + (32 * mem[_1902 + mem[_1902]]) + 32 <= test266151307()
                        mem[64] = _1902 + ceil32(return_data.size) + (32 * mem[_1902 + mem[_1902]]) + 32
                        mem[_1902 + ceil32(return_data.size)] = _1922
                        require return_data.size >= _1912 + (32 * _1922) + 32
                        mem[_1902 + ceil32(return_data.size) + 32 len 32 * _1922] = mem[_1902 + _1912 + 32 len 32 * _1922]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(arg5))
                        staticcall address(arg5).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2292 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2302 = mem[_2292]
                        if mem[_2292] <= 0:
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
                        _2372 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2372] == bool(mem[_2372])
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2302
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
                            args _2302, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2602 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2612 = mem[_2602]
                        require mem[_2602] <= test266151307()
                        require _2602 + mem[_2602] + 31 < _2602 + return_data.size
                        _2622 = mem[_2602 + mem[_2602]]
                        require mem[_2602 + mem[_2602]] <= test266151307()
                        require (32 * mem[_2602 + mem[_2602]]) + 32 >= 0 and _2602 + ceil32(return_data.size) + (32 * mem[_2602 + mem[_2602]]) + 32 <= test266151307()
                        mem[64] = _2602 + ceil32(return_data.size) + (32 * mem[_2602 + mem[_2602]]) + 32
                        mem[_2602 + ceil32(return_data.size)] = _2622
                        require return_data.size >= _2612 + (32 * _2622) + 32
                        mem[_2602 + ceil32(return_data.size) + 32 len 32 * _2622] = mem[_2602 + _2612 + 32 len 32 * _2622]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2742 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_2742] <= 0:
                            revert with 0, 'Contract has not recived Token A at the END'
                    else:
                        if stor11 == address(arg4):
                            revert with 0, 'i and j have to be unique'
                        mem[mem[64] + 4] = address(arg7)
                        mem[mem[64] + 36] = -1
                        require ext_code.size(address(arg3))
                        call address(arg3).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(arg7), -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1326 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1326] == bool(mem[_1326])
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = _1264
                        mem[mem[64] + 100] = 1
                        require ext_code.size(address(arg7))
                        call address(arg7).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args 2, 0, _1264, 1
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
                        _1386 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1396 = mem[_1386]
                        if mem[_1386] <= 0:
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
                        _1466 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1466] == bool(mem[_1466])
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1396
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
                            args _1396, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1901 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1911 = mem[_1901]
                        require mem[_1901] <= test266151307()
                        require _1901 + mem[_1901] + 31 < _1901 + return_data.size
                        _1921 = mem[_1901 + mem[_1901]]
                        require mem[_1901 + mem[_1901]] <= test266151307()
                        require (32 * mem[_1901 + mem[_1901]]) + 32 >= 0 and _1901 + ceil32(return_data.size) + (32 * mem[_1901 + mem[_1901]]) + 32 <= test266151307()
                        mem[64] = _1901 + ceil32(return_data.size) + (32 * mem[_1901 + mem[_1901]]) + 32
                        mem[_1901 + ceil32(return_data.size)] = _1921
                        require return_data.size >= _1911 + (32 * _1921) + 32
                        mem[_1901 + ceil32(return_data.size) + 32 len 32 * _1921] = mem[_1901 + _1911 + 32 len 32 * _1921]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(arg5))
                        staticcall address(arg5).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2291 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2301 = mem[_2291]
                        if mem[_2291] <= 0:
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
                        _2371 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2371] == bool(mem[_2371])
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2301
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
                            args _2301, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2601 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2611 = mem[_2601]
                        require mem[_2601] <= test266151307()
                        require _2601 + mem[_2601] + 31 < _2601 + return_data.size
                        _2621 = mem[_2601 + mem[_2601]]
                        require mem[_2601 + mem[_2601]] <= test266151307()
                        require (32 * mem[_2601 + mem[_2601]]) + 32 >= 0 and _2601 + ceil32(return_data.size) + (32 * mem[_2601 + mem[_2601]]) + 32 <= test266151307()
                        mem[64] = _2601 + ceil32(return_data.size) + (32 * mem[_2601 + mem[_2601]]) + 32
                        mem[_2601 + ceil32(return_data.size)] = _2621
                        require return_data.size >= _2611 + (32 * _2621) + 32
                        mem[_2601 + ceil32(return_data.size) + 32 len 32 * _2621] = mem[_2601 + _2611 + 32 len 32 * _2621]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2741 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_2741] <= 0:
                            revert with 0, 'Contract has not recived Token A at the END'
}



}
