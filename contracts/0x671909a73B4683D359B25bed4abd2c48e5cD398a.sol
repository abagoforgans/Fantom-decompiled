contract main {




// =====================  Runtime code  =====================


const WETH_address = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83


address stor0;
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
    require ext_code.size(0x30748322b6e34545dbe0788c421886aeb5297789)
    staticcall 0x30748322b6e34545dbe0788c421886aeb5297789.getReserves() with:
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
    require ext_code.size(0x30748322b6e34545dbe0788c421886aeb5297789)
    call 0x30748322b6e34545dbe0788c421886aeb5297789.approve(address arg1, uint256 arg2) with:
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
    _70 = mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3 / 3) >> 32
    require mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3 / 3) >> 32 <= test266151307()
    require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3 / 3) >> 32 + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
    _71 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3 / 3) >> 32 + 192]
    require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3 / 3) >> 32 + 192] <= test266151307()
    require (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3 / 3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3 / 3) >> 32 + 192]) + 32 >= 0
    mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3 / 3) >> 32 + 192]) + 224
    mem[(10 * ceil32(return_data.size)) + 192] = _71
    require _70 + (32 * _71) + 32 <= return_data.size
    idx = 0
    s = (8 * ceil32(return_data.size)) + _70 + 224
    t = (10 * ceil32(return_data.size)) + 224
    while idx < _71:
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
    _102 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _103 = mem[_102]
    require mem[_102] == mem[_102]
    mem[mem[64] + 68] = 97 * mem[_102] / 100
    mem[mem[64] + 100] = arg3 / 3
    mem[mem[64] + 132] = this.address
    mem[mem[64] + 164] = block.timestamp
    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args stor0, _103, 97 * _103 / 100, arg3 / 3, address(this.address), block.timestamp
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _106 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    require mem[_106] == mem[_106]
    require mem[_106 + 32] == mem[_106 + 32]
    require mem[_106 + 64] == mem[_106 + 64]
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x30748322b6e34545dbe0788c421886aeb5297789)
    staticcall 0x30748322b6e34545dbe0788c421886aeb5297789.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _112 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _113 = mem[_112]
    require mem[_112] == mem[_112]
    require ext_code.size(0xefe02cb895b6e061fa227de683c04f3ce19f3a62)
    call 0xefe02cb895b6e061fa227de683c04f3ce19f3a62.deposit(uint256 arg1) with:
         gas gas_remaining wei
        args mem[_112]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xefe02cb895b6e061fa227de683c04f3ce19f3a62)
    call 0xefe02cb895b6e061fa227de683c04f3ce19f3a62.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args mem[_112]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 36] = mem[_112]
    mem[mem[64] + 68] = 97 * _113 / 100
    mem[mem[64] + 100] = arg3 / 3
    mem[mem[64] + 132] = this.address
    mem[mem[64] + 164] = block.timestamp
    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.removeLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args stor0, _113, 97 * _113 / 100, arg3 / 3, address(this.address), block.timestamp
    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _120 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 64
    require mem[_120] == mem[_120]
    require mem[_120 + 32] == mem[_120 + 32]
    require ext_code.size(0x30748322b6e34545dbe0788c421886aeb5297789)
    staticcall 0x30748322b6e34545dbe0788c421886aeb5297789.getReserves() with:
            gas gas_remaining wei
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _125 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _126 = mem[_125]
    require mem[_125] == mem[_125 + 18 len 14]
    _127 = mem[_125 + 32]
    require mem[_125 + 32] == mem[_125 + 50 len 14]
    require mem[_125 + 64] == mem[_125 + 92 len 4]
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _131 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _132 = mem[_131]
    require mem[_131] == mem[_131]
    _133 = mem[64]
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
    mem[mem[64] + ceil32(return_data.size) + 100] = _132
    mem[mem[64] + ceil32(return_data.size) + 132] = Mask(112, 0, _127)
    mem[mem[64] + ceil32(return_data.size) + 164] = Mask(112, 0, _126)
    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args _132, _127 << 144, Mask(112, 0, _126)
    mem[mem[64] + ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[_133 + (2 * ceil32(return_data.size)) + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[_133 + (2 * ceil32(return_data.size)) + 100] = _132
    mem[_133 + (2 * ceil32(return_data.size)) + 132] = 88 * ext_call.return_data[0] / 100
    mem[_133 + (2 * ceil32(return_data.size)) + 164] = 160
    mem[_133 + (2 * ceil32(return_data.size)) + 260] = mem[_133]
    idx = 0
    s = _133 + 32
    t = _133 + (2 * ceil32(return_data.size)) + 292
    while idx < mem[_133]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_133 + (2 * ceil32(return_data.size)) + 196] = msg.sender
    mem[_133 + (2 * ceil32(return_data.size)) + 228] = block.timestamp
    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _132, 88 * ext_call.return_data[0] / 100, 160, msg.sender, block.timestamp, mem[_133 + (2 * ceil32(return_data.size)) + 260 len (32 * mem[_133]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[_133 + (2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = _133 + (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _170 = mem[_133 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _132) >> 32
    require mem[_133 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _132) >> 32 <= test266151307()
    require _133 + (2 * ceil32(return_data.size)) + mem[_133 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _132) >> 32 + 127 < _133 + (2 * ceil32(return_data.size)) + return_data.size + 96
    _171 = mem[_133 + (2 * ceil32(return_data.size)) + mem[_133 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _132) >> 32 + 96]
    require mem[_133 + (2 * ceil32(return_data.size)) + mem[_133 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _132) >> 32 + 96] <= test266151307()
    require _133 + (4 * ceil32(return_data.size)) + (32 * mem[_133 + (2 * ceil32(return_data.size)) + mem[_133 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _132) >> 32 + 96]) + 128 <= test266151307() and (32 * mem[_133 + (2 * ceil32(return_data.size)) + mem[_133 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _132) >> 32 + 96]) + 32 >= 0
    mem[64] = _133 + (4 * ceil32(return_data.size)) + (32 * mem[_133 + (2 * ceil32(return_data.size)) + mem[_133 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _132) >> 32 + 96]) + 128
    mem[_133 + (4 * ceil32(return_data.size)) + 96] = mem[_133 + (2 * ceil32(return_data.size)) + mem[_133 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _132) >> 32 + 96]
    require _170 + (32 * _171) + 32 <= return_data.size
    idx = 0
    s = _133 + (2 * ceil32(return_data.size)) + _170 + 128
    t = _133 + (4 * ceil32(return_data.size)) + 128
    while idx < _171:
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
    _191 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _192 = mem[_191]
    require mem[_191] == mem[_191]
    mem[mem[64] + 4] = owner
    mem[mem[64] + 36] = _192 - ext_call.return_data[0] - arg4
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
         gas gas_remaining wei
        args owner, _192 - ext_call.return_data[0] - arg4
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _195 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_195] == bool(mem[_195])
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = ext_call.return_data[0] + arg4
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0] + arg4
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _199 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_199] == bool(mem[_199])
    if not mem[_199]:
        revert with 0, 'Transfer fund back failed'
}



}
