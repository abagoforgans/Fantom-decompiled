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

function doFlashloan(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    call arg1.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
         gas gas_remaining wei
        args address(this.address), arg2, 96, 96, 'hello'
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
    staticcall arg2.balanceOf(address arg1) with:
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
    mem[(2 * ceil32(return_data.size)) + 196] = 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
    mem[(2 * ceil32(return_data.size)) + 228] = 2 * arg3
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 64]
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        mem[(4 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = 32
        mem[(4 * ceil32(return_data.size)) + 228] = 15
        mem[(4 * ceil32(return_data.size)) + 260] = 'approve failed.'
        revert with memory
          from (4 * ceil32(return_data.size)) + 192
           len (5 * ceil32(return_data.size)) + 100
    mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 196] = arg3 / 2
    mem[(4 * ceil32(return_data.size)) + 228] = 3 * arg3 / 2
    mem[(4 * ceil32(return_data.size)) + 260] = 160
    mem[(4 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 128
    t = (4 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 292] = msg.sender
    mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp
    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args Mask(255, 1, arg3), 3 * arg3 / 2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), msg.sender, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _39 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
    _40 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
    require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    require _39 + (32 * _40) + 32 <= return_data.size
    idx = 0
    s = (4 * ceil32(return_data.size)) + _39 + 224
    t = (6 * ceil32(return_data.size)) + 224
    while idx < _40:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor0)
    staticcall stor0.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _69 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _70 = mem[_69]
    require mem[_69] == mem[_69]
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = arg3
    require ext_code.size(0x30748322b6e34545dbe0788c421886aeb5297789)
    call 0x30748322b6e34545dbe0788c421886aeb5297789.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), arg3
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _73 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_73] == bool(mem[_73])
    mem[mem[64] + 68] = 98 * _70 / 100
    mem[mem[64] + 100] = arg3 / 3
    mem[mem[64] + 132] = this.address
    mem[mem[64] + 164] = block.timestamp
    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args stor0, _70, 98 * _70 / 100, arg3 / 3, address(this.address), block.timestamp
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _77 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    require mem[_77] == mem[_77]
    require mem[_77 + 32] == mem[_77 + 32]
    require mem[_77 + 64] == mem[_77 + 64]
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x30748322b6e34545dbe0788c421886aeb5297789)
    staticcall 0x30748322b6e34545dbe0788c421886aeb5297789.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _83 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _84 = mem[_83]
    require mem[_83] == mem[_83]
    require ext_code.size(0xefe02cb895b6e061fa227de683c04f3ce19f3a62)
    call 0xefe02cb895b6e061fa227de683c04f3ce19f3a62.deposit(uint256 arg1) with:
         gas gas_remaining wei
        args mem[_83]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xefe02cb895b6e061fa227de683c04f3ce19f3a62)
    call 0xefe02cb895b6e061fa227de683c04f3ce19f3a62.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args mem[_83]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 36] = mem[_83]
    mem[mem[64] + 68] = 98 * _70 / 100
    mem[mem[64] + 100] = arg3 / 3
    mem[mem[64] + 132] = this.address
    mem[mem[64] + 164] = block.timestamp
    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.removeLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args stor0, _84, 98 * _70 / 100, arg3 / 3, address(this.address), block.timestamp
    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _91 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 64
    require mem[_91] == mem[_91]
    require mem[_91 + 32] == mem[_91 + 32]
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor0)
    staticcall stor0.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _96 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _97 = mem[_96]
    require mem[_96] == mem[_96]
    _98 = mem[64]
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
    mem[_98 + ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[_98 + ceil32(return_data.size) + 196] = _97
    mem[_98 + ceil32(return_data.size) + 228] = ext_call.return_data[0]
    mem[_98 + ceil32(return_data.size) + 260] = 160
    mem[_98 + ceil32(return_data.size) + 356] = mem[_98]
    idx = 0
    s = _98 + 32
    t = _98 + ceil32(return_data.size) + 388
    while idx < mem[_98]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_98 + ceil32(return_data.size) + 292] = msg.sender
    mem[_98 + ceil32(return_data.size) + 324] = block.timestamp
    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _98 + ceil32(return_data.size) + (32 * mem[_98]) + -mem[64] + 384]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _130 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _131 = mem[_130]
    require mem[_130] <= test266151307()
    require _130 + mem[_130] + 31 < _130 + return_data.size
    _132 = mem[_130 + mem[_130]]
    require mem[_130 + mem[_130]] <= test266151307()
    require _130 + ceil32(return_data.size) + (32 * mem[_130 + mem[_130]]) + 32 <= test266151307() and (32 * mem[_130 + mem[_130]]) + 32 >= 0
    mem[64] = _130 + ceil32(return_data.size) + (32 * mem[_130 + mem[_130]]) + 32
    mem[_130 + ceil32(return_data.size)] = _132
    require _131 + (32 * _132) + 32 <= return_data.size
    idx = 0
    s = _130 + _131 + 32
    t = _130 + ceil32(return_data.size) + 32
    while idx < _132:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _152 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _153 = mem[_152]
    require mem[_152] == mem[_152]
    mem[mem[64] + 4] = owner
    mem[mem[64] + 36] = _153 - ext_call.return_data[0] - arg4
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args owner, _153 - ext_call.return_data[0] - arg4
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _156 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_156] == bool(mem[_156])
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = ext_call.return_data[0] + arg4
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0] + arg4
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _160 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_160] == bool(mem[_160])
    if not mem[_160]:
        revert with 0, 'Transfer fund back failed'
}



}
