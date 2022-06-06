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

function sub_d2557b35(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg3.length) + 128 >= 96 and ceil32(arg3.length) + 128 <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require ext_code.size(address(arg1))
    call address(arg1) with:
         gas gas_remaining wei
        args address(this.address), arg2, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[ceil32(return_data.size) + 160] = stor0
    mem[ceil32(return_data.size) + 196] = 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
    mem[ceil32(return_data.size) + 228] = 2 * arg3
    require ext_code.size(stor0)
    call stor0.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, 2 * arg3
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 15
        mem[(2 * ceil32(return_data.size)) + 260] = 'approve failed.'
        revert with memory
          from (2 * ceil32(return_data.size)) + 192
           len ceil32(return_data.size) + 100
    mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = arg3 / 2
    mem[(2 * ceil32(return_data.size)) + 228] = uint255(arg3) * 2
    mem[(2 * ceil32(return_data.size)) + 260] = 160
    mem[(2 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 388
    t = ceil32(return_data.size) + 128
    while idx < mem[ceil32(return_data.size) + 96]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 292] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args Mask(255, 1, arg3), uint255(arg3) * 2, 160, msg.sender, block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _81 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223
    _82 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307()
    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    require return_data.size >= _81 + (32 * _82) + 32
    mem[(4 * ceil32(return_data.size)) + 224 len 32 * _82] = mem[(2 * ceil32(return_data.size)) + _81 + 224 len 32 * _82]
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _141 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _142 = mem[_141]
    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args stor0, 2 * mem[_141] / 3, mem[_141], Mask(255, 1, arg3), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    require ext_code.size(0xefe02cb895b6e061fa227de683c04f3ce19f3a62)
    call 0xefe02cb895b6e061fa227de683c04f3ce19f3a62.deposit(uint256 arg1) with:
         gas gas_remaining wei
        args (2 * _142 / 3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xefe02cb895b6e061fa227de683c04f3ce19f3a62)
    call 0xefe02cb895b6e061fa227de683c04f3ce19f3a62.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args (2 * _142 / 3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 36] = stor0
    mem[mem[64] + 68] = 2 * _142 / 3
    mem[mem[64] + 100] = arg3 / 2
    mem[mem[64] + 132] = uint255(arg3) * 2
    mem[mem[64] + 164] = this.address
    mem[mem[64] + 196] = block.timestamp
    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
         gas gas_remaining wei
        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, stor0, 2 * _142 / 3, Mask(255, 1, arg3), uint255(arg3) * 2, address(this.address), block.timestamp
    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 64
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _160 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _161 = mem[_160]
    _162 = mem[64]
    mem[mem[64]] = 5
    mem[mem[64] + 32 len 160] = call.data[calldata.size len 160]
    require 3 < mem[ceil32(return_data.size) + 96]
    mem[ceil32(return_data.size) + 224] = stor0
    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.WETH() with:
            gas gas_remaining wei
    mem[mem[64] + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size) + 192
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require 4 < mem[ceil32(return_data.size) + 96]
    mem[ceil32(return_data.size) + 256] = ext_call.return_data[12 len 20]
    mem[_162 + ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[_162 + ceil32(return_data.size) + 196] = _161
    mem[_162 + ceil32(return_data.size) + 228] = _161 / 5
    mem[_162 + ceil32(return_data.size) + 260] = 160
    mem[_162 + ceil32(return_data.size) + 356] = mem[_162]
    idx = 0
    s = _162 + ceil32(return_data.size) + 388
    t = _162 + 32
    while idx < mem[_162]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_162 + ceil32(return_data.size) + 292] = msg.sender
    mem[_162 + ceil32(return_data.size) + 324] = block.timestamp
    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _161, _161 / 5, 160, msg.sender, block.timestamp, mem[_162 + ceil32(return_data.size) + 356 len (32 * mem[_162]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[_162 + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = _162 + (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _195 = mem[_162 + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _161) >> 32
    require mem[_162 + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _161) >> 32 <= test266151307()
    require _162 + ceil32(return_data.size) + return_data.size + 192 > _162 + ceil32(return_data.size) + mem[_162 + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _161) >> 32 + 223
    _196 = mem[_162 + ceil32(return_data.size) + mem[_162 + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _161) >> 32 + 192]
    require mem[_162 + ceil32(return_data.size) + mem[_162 + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _161) >> 32 + 192] <= test266151307()
    require (32 * mem[_162 + ceil32(return_data.size) + mem[_162 + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _161) >> 32 + 192]) + 32 >= 0 and _162 + (2 * ceil32(return_data.size)) + (32 * mem[_162 + ceil32(return_data.size) + mem[_162 + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _161) >> 32 + 192]) + 224 <= test266151307()
    mem[64] = _162 + (2 * ceil32(return_data.size)) + (32 * mem[_162 + ceil32(return_data.size) + mem[_162 + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _161) >> 32 + 192]) + 224
    mem[_162 + (2 * ceil32(return_data.size)) + 192] = mem[_162 + ceil32(return_data.size) + mem[_162 + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _161) >> 32 + 192]
    require return_data.size >= _195 + (32 * _196) + 32
    mem[_162 + (2 * ceil32(return_data.size)) + 224 len 32 * _196] = mem[_162 + ceil32(return_data.size) + _195 + 224 len 32 * _196]
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _216 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _217 = mem[_216]
    mem[mem[64] + 4] = owner
    mem[mem[64] + 36] = _217 - arg4 - ext_call.return_data[0]
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
         gas gas_remaining wei
        args owner, _217 - arg4 - ext_call.return_data[0]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _220 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_220] == bool(mem[_220])
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = arg4 + ext_call.return_data[0]
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg4 + ext_call.return_data[0]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _224 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_224] == bool(mem[_224])
    if not mem[_224]:
        revert with 0, 'Transfer fund back failed'
}



}
