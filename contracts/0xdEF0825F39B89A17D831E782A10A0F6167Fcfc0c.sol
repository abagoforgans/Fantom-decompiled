contract main {




// =====================  Runtime code  =====================


#
#  - elkCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - wakaSwapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_3aa99232(?)
#  - pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_d92651f4(?)
#  - sub_fe39e90d(?)
#
const getSharePrice = (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / 10^18 / 10^18)


function sub_1ca68e24(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(0x2b4c76d0dc16be1c31d4c1dc53bf9b45987fc75c)
    call 0x2b4c76d0dc16be1c31d4c1dc53bf9b45987fc75c.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, arg1, address(this.address), 128, 64, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() {
    require 4 <= calldata.size
    require calldata.size <= calldata.size
    mem[calldata.size + 128] = 0
    mem[calldata.size + 128 len ceil32(calldata.size)] = 0, call.data[4 len calldata.size - 4], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
    if ceil32(calldata.size) <= calldata.size:
        delegate this.address with:
           funct (Mask(32, -(8 * ceil32(calldata.size) - calldata.size) + 224, 0, call.data[4 len calldata.size - 4]) >> -(8 * ceil32(calldata.size) - calldata.size) + 224)
             gas gas_remaining wei
            args (Mask(8 * calldata.size - 4, -(8 * calldata.size) + 256, call.data[4 len calldata.size - 4], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256) << (8 * calldata.size) - 256)
    else:
        mem[(2 * calldata.size) + 128] = 0
        delegate this.address.mem[calldata.size + 128 len 4] with:
             gas gas_remaining wei
            args mem[calldata.size + 132 len calldata.size - 4]
    if not delegate.return_code:
        revert with 0, 'uniswapV2Call failed'
    return 0, call.data[4 len calldata.size - 4]
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 64
    mem[96] = 2
    mem[128] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[160] = 0x593ab53baffaf1e821845cf7080428366f030a9c
    if arg3 and cd[(arg4 + 68)] > -1 / arg3:
        revert with 'NH{q', 17
    mem[196] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    mem[228] = arg3 * cd[(arg4 + 68)] / 100
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, arg3 * cd[(arg4 + 68)] / 100
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg3 * cd[(arg4 + 68)] / 100
    mem[ceil32(return_data.size) + 228] = 0
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
    mem[ceil32(return_data.size) + 324] = block.timestamp
    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg3 * cd[(arg4 + 68)] / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _109 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * cd[(arg4 + 68)] / 100) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * cd[(arg4 + 68)] / 100) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * cd[(arg4 + 68)] / 100) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _110 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * cd[(arg4 + 68)] / 100) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * cd[(arg4 + 68)] / 100) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * cd[(arg4 + 68)] / 100) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * cd[(arg4 + 68)] / 100) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * cd[(arg4 + 68)] / 100) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = _110
    require return_data.size >= _109 + (32 * _110) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _110] = mem[ceil32(return_data.size) + _109 + 224 len 32 * _110]
    if arg3 < arg3 * cd[(arg4 + 68)] / 100:
        revert with 'NH{q', 17
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
         gas gas_remaining wei
        args (arg3 - (arg3 * cd[(arg4 + 68)] / 100))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = 0x98e119990e3653486d84ba46b66bbc4d82f7f604
    mem[mem[64] + 36] = cd[(arg4 + 36)]
    require ext_code.size(0x593ab53baffaf1e821845cf7080428366f030a9c)
    call 0x593ab53baffaf1e821845cf7080428366f030a9c.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x98e119990e3653486d84ba46b66bbc4d82f7f604, cd[(arg4 + 36)]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _521 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_521] == bool(mem[_521])
    mem[mem[64] + 36] = 0
    require ext_code.size(0x98e119990e3653486d84ba46b66bbc4d82f7f604)
    call 0x98e119990e3653486d84ba46b66bbc4d82f7f604.mint(uint256 arg1, uint256 arg2) with:
       value arg3 - (arg3 * cd[(arg4 + 68)] / 100) wei
         gas gas_remaining wei
        args cd[(arg4 + 36)], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[128] = 0x593ab53baffaf1e821845cf7080428366f030a9c
    mem[160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x593ab53baffaf1e821845cf7080428366f030a9c)
    staticcall 0x593ab53baffaf1e821845cf7080428366f030a9c.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _529 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _530 = mem[_529]
    mem[mem[64] + 4] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    mem[mem[64] + 36] = _530
    require ext_code.size(0x593ab53baffaf1e821845cf7080428366f030a9c)
    call 0x593ab53baffaf1e821845cf7080428366f030a9c.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, _530
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _535 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_535] == bool(mem[_535])
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _530
    mem[mem[64] + 36] = 0
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
    mem[mem[64] + 132] = block.timestamp
    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _530, 0, 160, address(this.address), block.timestamp, 2, mem[mem[64] + 196 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1594 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1595 = mem[_1594]
    require mem[_1594] <= test266151307()
    require _1594 + mem[_1594] + 31 < _1594 + return_data.size
    _1596 = mem[_1594 + mem[_1594]]
    if mem[_1594 + mem[_1594]] > test266151307():
        revert with 'NH{q', 65
    if _1594 + ceil32(return_data.size) + ceil32(32 * mem[_1594 + mem[_1594]]) + 1 > test266151307() or ceil32(32 * mem[_1594 + mem[_1594]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _1594 + ceil32(return_data.size) + ceil32(32 * mem[_1594 + mem[_1594]]) + 1
    mem[_1594 + ceil32(return_data.size)] = _1596
    require return_data.size >= _1595 + (32 * _1596) + 32
    mem[_1594 + ceil32(return_data.size) + 32 len 32 * _1596] = mem[_1594 + _1595 + 32 len 32 * _1596]
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _6488 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _6489 = mem[_6488]
    require ext_code.size(0x2b4c76d0dc16be1c31d4c1dc53bf9b45987fc75c)
    staticcall 0x2b4c76d0dc16be1c31d4c1dc53bf9b45987fc75c.getReserves() with:
            gas gas_remaining wei
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _6492 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _6493 = mem[_6492]
    require mem[_6492] == mem[_6492 + 18 len 14]
    _6494 = mem[_6492 + 32]
    require mem[_6492 + 32] == mem[_6492 + 50 len 14]
    require mem[_6492 + 64] == mem[_6492 + 92 len 4]
    if mem[_6492 + 50 len 14] < arg3:
        revert with 'NH{q', 17
    if mem[_6492 + 50 len 14] - arg3 > !_6489:
        revert with 'NH{q', 17
    if _6489 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if mem[_6492 + 50 len 14] - arg3 + _6489 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 'NH{q', 17
    if (1000 * mem[_6492 + 50 len 14]) - (1000 * arg3) + (1000 * _6489) < 2 * _6489:
        revert with 'NH{q', 17
    if mem[_6492 + 18 len 14] and mem[_6492 + 50 len 14] > -1 / mem[_6492 + 18 len 14]:
        revert with 'NH{q', 17
    if mem[_6492 + 18 len 14] * mem[_6492 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 'NH{q', 17
    if 1000 * mem[_6492 + 18 len 14] * mem[_6492 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 'NH{q', 17
    if mem[_6492 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 'NH{q', 17
    if not (1000 * mem[_6492 + 50 len 14]) - (1000 * arg3) + (1001 * _6489):
        revert with 'NH{q', 18
    if 10^6 * mem[_6492 + 18 len 14] * mem[_6492 + 50 len 14] / (1000 * mem[_6492 + 50 len 14]) - (1000 * arg3) + (1001 * _6489) < 1000 * mem[_6492 + 18 len 14]:
        revert with 'NH{q', 17
    if 1 > !((10^6 * mem[_6492 + 18 len 14] * mem[_6492 + 50 len 14] / (1000 * mem[_6492 + 50 len 14]) - (1000 * arg3) + (1001 * _6489)) - (1000 * mem[_6492 + 18 len 14]) / 998):
        revert with 'NH{q', 17
    mem[128] = 0xdef844ed26409c5c46dda124ec28fb064d90d27
    mem[160] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    mem[mem[64] + 4] = this.address
    require ext_code.size(0xdef844ed26409c5c46dda124ec28fb064d90d27)
    staticcall 0xdef844ed26409c5c46dda124ec28fb064d90d27.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _6500 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _6501 = mem[_6500]
    mem[mem[64] + 4] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    mem[mem[64] + 36] = _6501
    require ext_code.size(0xdef844ed26409c5c46dda124ec28fb064d90d27)
    call 0x0def844ed26409c5c46dda124ec28fb064d90d27.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, _6501
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _6506 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_6506] == bool(mem[_6506])
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _6501
    mem[mem[64] + 36] = ((10^6 * Mask(112, 0, _6493) * Mask(112, 0, _6494) / (1000 * Mask(112, 0, _6494)) - (1000 * arg3) + (1001 * _6489)) - (1000 * Mask(112, 0, _6493)) / 998) + 1
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
    mem[mem[64] + 132] = block.timestamp
    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len 96], address(this.address), block.timestamp, mem[mem[64] + 164 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _11374 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _11375 = mem[_11374]
    require mem[_11374] <= test266151307()
    require _11374 + mem[_11374] + 31 < _11374 + return_data.size
    _11376 = mem[_11374 + mem[_11374]]
    if mem[_11374 + mem[_11374]] > test266151307():
        revert with 'NH{q', 65
    if _11374 + ceil32(return_data.size) + ceil32(32 * mem[_11374 + mem[_11374]]) + 1 > test266151307() or ceil32(32 * mem[_11374 + mem[_11374]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _11374 + ceil32(return_data.size) + ceil32(32 * mem[_11374 + mem[_11374]]) + 1
    mem[_11374 + ceil32(return_data.size)] = _11376
    require return_data.size >= _11375 + (32 * _11376) + 32
    mem[_11374 + ceil32(return_data.size) + 32 len 32 * _11376] = mem[_11374 + _11375 + 32 len 32 * _11376]
    _16235 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = _6489
    _16236 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
    mem[64] = mem[64] + 164
    mem[_16235 + 100] = 32
    mem[_16235 + 132] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
        revert with 0, 'Address: call to non-contract'
    _16243 = mem[_16236]
    mem[_16235 + 164 len ceil32(mem[_16236])] = mem[_16236 + 32 len ceil32(mem[_16236])]
    if ceil32(_16243) > _16243:
        mem[_16243 + _16235 + 164] = 0
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
         gas gas_remaining wei
        args mem[_16235 + 168 len _16243 - 4]
    if not return_data.size:
        if not ext_call.success:
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            revert with 0, 'SafeERC20: low-level call failed'
        if mem[96]:
            require mem[96] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[_16235 + 200] = msg.sender
        mem[_16235 + 232] = ((10^6 * Mask(112, 0, _6493) * Mask(112, 0, _6494) / (1000 * Mask(112, 0, _6494)) - (1000 * arg3) + (1001 * _6489)) - (1000 * Mask(112, 0, _6493)) / 998) + 1
        mem[_16235 + 164] = 68
        mem[_16235 + 196 len 4] = unknown_0xa9059cbb(?????)
        mem[_16235 + 264] = 32
        mem[_16235 + 296] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
            revert with 0, 'Address: call to non-contract'
        mem[_16235 + 328 len 96] = 0, msg.sender, ((10^6 * Mask(112, 0, _6493) * Mask(112, 0, _6494) / (1000 * Mask(112, 0, _6494)) - (1000 * arg3) + (1001 * _6489)) - (1000 * Mask(112, 0, _6493)) / 998) + 1, 0
        mem[_16235 + 396] = 0
        call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
           funct Mask(32, 224, 0, msg.sender, ((10^6 * Mask(112, 0, _6493) * Mask(112, 0, _6494) / (1000 * Mask(112, 0, _6494)) - (1000 * arg3) + (1001 * _6489)) - (1000 * Mask(112, 0, _6493)) / 998) + 1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, msg.sender, ((10^6 * Mask(112, 0, _6493) * Mask(112, 0, _6494) / (1000 * Mask(112, 0, _6494)) - (1000 * arg3) + (1001 * _6489)) - (1000 * Mask(112, 0, _6493)) / 998) + 1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[_16235 + 332] = this.address
            require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
            staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[_16235 + 328] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_16235 + ceil32(return_data.size) + 364] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
            mem[_16235 + ceil32(return_data.size) + 396] = ext_call.return_data[0]
            mem[_16235 + ceil32(return_data.size) + 328] = 68
            mem[_16235 + ceil32(return_data.size) + 360 len 4] = unknown_0xa9059cbb(?????)
            mem[_16235 + ceil32(return_data.size) + 428] = 32
            mem[_16235 + ceil32(return_data.size) + 460] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
                revert with 0, 'Address: call to non-contract'
            mem[_16235 + ceil32(return_data.size) + 492 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], 0
            mem[_16235 + ceil32(return_data.size) + 560] = 0
            call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
               funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_16235 + ceil32(return_data.size) + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_16235 + ceil32(return_data.size) + 524] == bool(mem[_16235 + ceil32(return_data.size) + 524])
                    if not mem[_16235 + ceil32(return_data.size) + 524]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[_16235 + 328] = return_data.size
        mem[_16235 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[_16235 + 360] == bool(mem[_16235 + 360])
            if not mem[_16235 + 360]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[_16235 + 164] = return_data.size
        mem[_16235 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[_16235 + 196] == bool(mem[_16235 + 196])
            if not mem[_16235 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[_16235 + ceil32(return_data.size) + 201] = msg.sender
        mem[_16235 + ceil32(return_data.size) + 233] = ((10^6 * Mask(112, 0, _6493) * Mask(112, 0, _6494) / (1000 * Mask(112, 0, _6494)) - (1000 * arg3) + (1001 * _6489)) - (1000 * Mask(112, 0, _6493)) / 998) + 1
        mem[_16235 + ceil32(return_data.size) + 165] = 68
        mem[_16235 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
        mem[_16235 + ceil32(return_data.size) + 265] = 32
        mem[_16235 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
            revert with 0, 'Address: call to non-contract'
        mem[_16235 + ceil32(return_data.size) + 329 len 96] = 0, msg.sender, ((10^6 * Mask(112, 0, _6493) * Mask(112, 0, _6494) / (1000 * Mask(112, 0, _6494)) - (1000 * arg3) + (1001 * _6489)) - (1000 * Mask(112, 0, _6493)) / 998) + 1, 0
        mem[_16235 + ceil32(return_data.size) + 397] = 0
        call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
           funct Mask(32, 224, 0, msg.sender, ((10^6 * Mask(112, 0, _6493) * Mask(112, 0, _6494) / (1000 * Mask(112, 0, _6494)) - (1000 * arg3) + (1001 * _6489)) - (1000 * Mask(112, 0, _6493)) / 998) + 1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, msg.sender, ((10^6 * Mask(112, 0, _6493) * Mask(112, 0, _6494) / (1000 * Mask(112, 0, _6494)) - (1000 * arg3) + (1001 * _6489)) - (1000 * Mask(112, 0, _6493)) / 998) + 1, 0) << 288)
        if return_data.size:
            mem[_16235 + ceil32(return_data.size) + 329] = return_data.size
            mem[_16235 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[_16235 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                require mem[_16235 + ceil32(return_data.size) + 361] == bool(mem[_16235 + ceil32(return_data.size) + 361])
                if not mem[_16235 + ceil32(return_data.size) + 361]:
                    revert with 0, 
                                'SafeERC20: ERC20 operation did not succeed',
                                mem[_16235 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            mem[_16235 + (2 * ceil32(return_data.size)) + 334] = this.address
            require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
            staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[_16235 + (2 * ceil32(return_data.size)) + 330] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_16235 + (4 * ceil32(return_data.size)) + 366] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
            mem[_16235 + (4 * ceil32(return_data.size)) + 398] = ext_call.return_data[0]
            mem[_16235 + (4 * ceil32(return_data.size)) + 330] = 68
            mem[_16235 + (4 * ceil32(return_data.size)) + 362 len 4] = unknown_0xa9059cbb(?????)
            mem[_16235 + (4 * ceil32(return_data.size)) + 430] = 32
            mem[_16235 + (4 * ceil32(return_data.size)) + 462] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
                revert with 0, 'Address: call to non-contract'
            mem[_16235 + (4 * ceil32(return_data.size)) + 494 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], 0
            mem[_16235 + (4 * ceil32(return_data.size)) + 562] = 0
            call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
               funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_16235 + (4 * ceil32(return_data.size)) + 526 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_16235 + (4 * ceil32(return_data.size)) + 526] == bool(mem[_16235 + (4 * ceil32(return_data.size)) + 526])
                    if not mem[_16235 + (4 * ceil32(return_data.size)) + 526]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if not ext_call.success:
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            revert with 0, 'SafeERC20: low-level call failed'
        if mem[96]:
            require mem[96] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    mem[_16235 + ceil32(return_data.size) + 333] = this.address
    require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
    staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[_16235 + ceil32(return_data.size) + 329] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[_16235 + ceil32(return_data.size) + ceil32(return_data.size) + 365] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
    mem[_16235 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = ext_call.return_data[0]
    mem[_16235 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 68
    mem[_16235 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len 4] = unknown_0xa9059cbb(?????)
    mem[_16235 + ceil32(return_data.size) + ceil32(return_data.size) + 429] = 32
    mem[_16235 + ceil32(return_data.size) + ceil32(return_data.size) + 461] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
        revert with 0, 'Address: call to non-contract'
    mem[_16235 + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], 0
    mem[_16235 + ceil32(return_data.size) + ceil32(return_data.size) + 561] = 0
    call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
       funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            revert with 0, 'SafeERC20: low-level call failed'
        if mem[96]:
            require mem[96] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    mem[_16235 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = return_data.size
    mem[_16235 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_16235 + (4 * ceil32(return_data.size)) + 494] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_16235 + (4 * ceil32(return_data.size)) + 498] = 32
        mem[_16235 + (4 * ceil32(return_data.size)) + 530] = 32
        mem[_16235 + (4 * ceil32(return_data.size)) + 562] = 'SafeERC20: low-level call failed'
        revert with memory
          from _16235 + (4 * ceil32(return_data.size)) + 494
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if not return_data.size:
    require return_data.size >= 32
    require mem[_16235 + ceil32(return_data.size) + ceil32(return_data.size) + 525] == bool(mem[_16235 + ceil32(return_data.size) + ceil32(return_data.size) + 525])
    if mem[_16235 + ceil32(return_data.size) + ceil32(return_data.size) + 525]:
    mem[_16235 + (4 * ceil32(return_data.size)) + 494] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[_16235 + (4 * ceil32(return_data.size)) + 498] = 32
    mem[_16235 + (4 * ceil32(return_data.size)) + 530] = 42
    mem[_16235 + (4 * ceil32(return_data.size)) + 562] = 'SafeERC20: ERC20 operation did n'
    mem[_16235 + (4 * ceil32(return_data.size)) + 594] = 'ot succeed'
    revert with memory
      from _16235 + (4 * ceil32(return_data.size)) + 494
       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}



}
