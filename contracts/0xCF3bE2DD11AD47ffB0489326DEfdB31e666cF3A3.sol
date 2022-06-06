contract main {




// =====================  Runtime code  =====================


const WETH_address = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83


address stor0;
uint256 stor1;
address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function sub_fb9e7d23(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
    call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
         gas gas_remaining wei
        args address(this.address), arg1, 96, 96, 'hello'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function executeOperation(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
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
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg3:
        revert with 0, 'Invalid balance, was the flashLoan successful?'
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[ceil32(return_data.size) + 160] = stor0
    require ext_code.size(0xe6c7f64a2d8b0d40a02d27cae14e84daad60cebe)
    staticcall 0xe6c7f64a2d8b0d40a02d27cae14e84daad60cebe.getReserves() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 192 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    mem[(2 * ceil32(return_data.size)) + 196] = arg3 / 3
    mem[(2 * ceil32(return_data.size)) + 228] = Mask(112, 0, ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 260] = Mask(112, 0, ext_call.return_data[32])
    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 96]
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 196] = 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
    mem[(4 * ceil32(return_data.size)) + 228] = 2 * arg3
    require ext_code.size(stor0)
    call stor0.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args mem[(4 * ceil32(return_data.size)) + 196 len (5 * ceil32(return_data.size)) + 64]
    mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'approve failed.', mem[(6 * ceil32(return_data.size)) + 292 len 9 * ceil32(return_data.size)]
    mem[(6 * ceil32(return_data.size)) + 196] = 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
    mem[(6 * ceil32(return_data.size)) + 228] = 2 * arg3
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, 2 * arg3, mem[(6 * ceil32(return_data.size)) + 260 len 9 * ceil32(return_data.size)]
    mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'approve failed.'
    mem[(7 * ceil32(return_data.size)) + 196] = this.address
    mem[(7 * ceil32(return_data.size)) + 228] = arg3
    require ext_code.size(0xe6c7f64a2d8b0d40a02d27cae14e84daad60cebe)
    call 0xe6c7f64a2d8b0d40a02d27cae14e84daad60cebe.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), arg3
    mem[(7 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(8 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + 196] = arg3 / 3
    mem[(8 * ceil32(return_data.size)) + 228] = 88 * ext_call.return_data[0] / 100
    mem[(8 * ceil32(return_data.size)) + 260] = 160
    mem[(8 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 128
    t = (8 * ceil32(return_data.size)) + 388
    while idx < mem[ceil32(return_data.size) + 96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(8 * ceil32(return_data.size)) + 292] = msg.sender
    mem[(8 * ceil32(return_data.size)) + 324] = block.timestamp
    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg3 / 3, 88 * ext_call.return_data[0] / 100, 160, msg.sender, block.timestamp, mem[(8 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (10 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _69 = mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3 / 3) >> 32
    require mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3 / 3) >> 32 <= test266151307()
    require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3 / 3) >> 32 + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
    _70 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3 / 3) >> 32 + 192]
    require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3 / 3) >> 32 + 192] <= test266151307()
    require (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3 / 3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3 / 3) >> 32 + 192]) + 32 >= 0
    mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3 / 3) >> 32 + 192]) + 224
    mem[(10 * ceil32(return_data.size)) + 192] = _70
    require _69 + (32 * _70) + 32 <= return_data.size
    idx = 0
    s = (8 * ceil32(return_data.size)) + _69 + 224
    t = (10 * ceil32(return_data.size)) + 224
    while idx < _70:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _99 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _100 = mem[_99]
    require mem[_99] == mem[_99]
    mem[mem[64] + 68] = 97 * mem[_99] / 100
    mem[mem[64] + 100] = arg3 / 3
    mem[mem[64] + 132] = this.address
    mem[mem[64] + 164] = block.timestamp
    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args stor0, _100, 97 * _100 / 100, arg3 / 3, address(this.address), block.timestamp
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _103 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    require mem[_103] == mem[_103]
    require mem[_103 + 32] == mem[_103 + 32]
    require mem[_103 + 64] == mem[_103 + 64]
    mem[mem[64] + 4] = this.address
    require ext_code.size(0xe6c7f64a2d8b0d40a02d27cae14e84daad60cebe)
    staticcall 0xe6c7f64a2d8b0d40a02d27cae14e84daad60cebe.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _109 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _110 = mem[_109]
    require mem[_109] == mem[_109]
    require ext_code.size(0xbe5c44f4c02c26c9cfccae2efe69947076d804e4)
    call 0xbe5c44f4c02c26c9cfccae2efe69947076d804e4.0xe2bbb158 with:
         gas gas_remaining wei
        args stor1, mem[_109]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xbe5c44f4c02c26c9cfccae2efe69947076d804e4)
    call 0xbe5c44f4c02c26c9cfccae2efe69947076d804e4.0x51eb05a6 with:
         gas gas_remaining wei
        args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xbe5c44f4c02c26c9cfccae2efe69947076d804e4)
    call 0xbe5c44f4c02c26c9cfccae2efe69947076d804e4.0x441a3e70 with:
         gas gas_remaining wei
        args stor1, mem[_109]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 36] = mem[_109]
    mem[mem[64] + 68] = 97 * _110 / 100
    mem[mem[64] + 100] = arg3 / 3
    mem[mem[64] + 132] = this.address
    mem[mem[64] + 164] = block.timestamp
    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.removeLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args stor0, _110, 97 * _110 / 100, arg3 / 3, address(this.address), block.timestamp
    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _119 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 64
    require mem[_119] == mem[_119]
    require mem[_119 + 32] == mem[_119 + 32]
    require ext_code.size(0xe6c7f64a2d8b0d40a02d27cae14e84daad60cebe)
    staticcall 0xe6c7f64a2d8b0d40a02d27cae14e84daad60cebe.getReserves() with:
            gas gas_remaining wei
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _124 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _125 = mem[_124]
    require mem[_124] == mem[_124 + 18 len 14]
    _126 = mem[_124 + 32]
    require mem[_124 + 32] == mem[_124 + 50 len 14]
    require mem[_124 + 64] == mem[_124 + 92 len 4]
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _130 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _131 = mem[_130]
    require mem[_130] == mem[_130]
    _132 = mem[64]
    mem[mem[64]] = 2
    mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
    require 0 < mem[ceil32(return_data.size) + 96]
    mem[ceil32(return_data.size) + 128] = stor0
    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.WETH() with:
            gas gas_remaining wei
    mem[mem[64] + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require 1 < mem[ceil32(return_data.size) + 96]
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
    mem[mem[64] + ceil32(return_data.size) + 100] = _131
    mem[mem[64] + ceil32(return_data.size) + 132] = Mask(112, 0, _126)
    mem[mem[64] + ceil32(return_data.size) + 164] = Mask(112, 0, _125)
    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args _131, _126 << 144, Mask(112, 0, _125)
    mem[mem[64] + ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[_132 + (2 * ceil32(return_data.size)) + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[_132 + (2 * ceil32(return_data.size)) + 100] = _131
    mem[_132 + (2 * ceil32(return_data.size)) + 132] = 88 * ext_call.return_data[0] / 100
    mem[_132 + (2 * ceil32(return_data.size)) + 164] = 160
    mem[_132 + (2 * ceil32(return_data.size)) + 260] = mem[_132]
    idx = 0
    s = _132 + 32
    t = _132 + (2 * ceil32(return_data.size)) + 292
    while idx < mem[_132]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_132 + (2 * ceil32(return_data.size)) + 196] = msg.sender
    mem[_132 + (2 * ceil32(return_data.size)) + 228] = block.timestamp
    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _132 + (2 * ceil32(return_data.size)) + (32 * mem[_132]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _167 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _168 = mem[_167]
    require mem[_167] <= test266151307()
    require _167 + mem[_167] + 31 < _167 + return_data.size
    _169 = mem[_167 + mem[_167]]
    require mem[_167 + mem[_167]] <= test266151307()
    require _167 + ceil32(return_data.size) + (32 * mem[_167 + mem[_167]]) + 32 <= test266151307() and (32 * mem[_167 + mem[_167]]) + 32 >= 0
    mem[64] = _167 + ceil32(return_data.size) + (32 * mem[_167 + mem[_167]]) + 32
    mem[_167 + ceil32(return_data.size)] = _169
    require _168 + (32 * _169) + 32 <= return_data.size
    idx = 0
    s = _167 + _168 + 32
    t = _167 + ceil32(return_data.size) + 32
    while idx < _169:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _189 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _190 = mem[_189]
    require mem[_189] == mem[_189]
    mem[mem[64] + 4] = owner
    mem[mem[64] + 36] = _190 - ext_call.return_data[0] - arg4
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
         gas gas_remaining wei
        args owner, _190 - ext_call.return_data[0] - arg4
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _193 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_193] == bool(mem[_193])
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = ext_call.return_data[0] + arg4
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0] + arg4
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _197 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_197] == bool(mem[_197])
    if not mem[_197]:
        revert with 0, 'Transfer fund back failed'
}



}
