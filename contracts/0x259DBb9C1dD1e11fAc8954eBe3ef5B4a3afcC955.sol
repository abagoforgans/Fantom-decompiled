contract main {




// =====================  Runtime code  =====================


mapping of uint256 stor0;

function _fallback() payable {
    revert
}

function indexOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor0', 0))))) < 0xffffffffffffffffffffffffffffffff80000000000000000000000000000001:
        revert with 0, 17
    require ('signextend', 15, ('add', -1, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor0', 0))))))) >= 0
    return ('signextend', 15, ('add', -1, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor0', 0)))))))
}

function sub_df14af42(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    if address(arg1) != 0xe120ffbda0d14f3bb6d6053e90e63c572a66a428:
        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, arg3, address(this.address), 128, 32, address(arg2)
    else:
        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args arg3, 0, address(this.address), 128, 32, address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 32
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require ext_code.size(msg.sender)
    if not arg2:
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[ceil32(return_data.size) + 96] = 2
        mem[ceil32(return_data.size) + 128] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[ceil32(return_data.size) + 160] = address(cd[(arg4 + 36)])
        mem[ceil32(return_data.size) + 196] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
        mem[ceil32(return_data.size) + 228] = arg3
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, arg3
        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = arg3
        mem[(2 * ceil32(return_data.size)) + 228] = 0
        mem[(2 * ceil32(return_data.size)) + 260] = 160
        mem[(2 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = (2 * ceil32(return_data.size)) + 388
        while idx < mem[ceil32(return_data.size) + 96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 292] = this.address
        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _1247 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        _1249 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
        mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        require return_data.size >= _1247 + (32 * _1249) + 32
        mem[(4 * ceil32(return_data.size)) + 224 len 32 * _1249] = mem[(2 * ceil32(return_data.size)) + _1247 + 224 len 32 * _1249]
        if 0 >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        mem[ceil32(return_data.size) + 128] = address(ext_call.return_data[0])
        if 1 >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        mem[ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = 64
        _2463 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 68] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 100
        while idx < _2463:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, 64, mem[mem[64] + 68 len (32 * _2463) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3661 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3663 = mem[_3661]
        require mem[_3661] <= test266151307()
        require _3661 + mem[_3661] + 31 < _3661 + return_data.size
        _3665 = mem[_3661 + mem[_3661]]
        if mem[_3661 + mem[_3661]] > test266151307():
            revert with 0, 65
        if _3661 + ceil32(return_data.size) + ceil32(32 * mem[_3661 + mem[_3661]]) + 1 > test266151307() or ceil32(32 * mem[_3661 + mem[_3661]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _3661 + ceil32(return_data.size) + ceil32(32 * mem[_3661 + mem[_3661]]) + 1
        mem[_3661 + ceil32(return_data.size)] = _3665
        require return_data.size >= _3663 + (32 * _3665) + 32
        mem[_3661 + ceil32(return_data.size) + 32 len 32 * _3665] = mem[_3661 + _3663 + 32 len 32 * _3665]
        if 0 >= _3665:
            revert with 0, 50
        _4853 = mem[_3661 + ceil32(return_data.size) + 32]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4859 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _4861 = mem[_4859]
        mem[mem[64] + 4] = 0x92d5ebf3593a92888c25c0abef126583d4b5312e
        mem[mem[64] + 36] = _4861
        require ext_code.size(address(cd[(arg4 + 36)]))
        call address(cd[(arg4 + 36)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x92d5ebf3593a92888c25c0abef126583d4b5312e, _4861
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4867 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_4867] == bool(mem[_4867])
        if ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('cd', ('add', 36, ('param', 'arg4')))), ('name', 'stor0', 0))))) < 0xffffffffffffffffffffffffffffffff80000000000000000000000000000001:
            revert with 0, 17
        require ('signextend', 15, ('add', -1, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('cd', ('add', 36, ('param', 'arg4')))), ('name', 'stor0', 0))))))) >= 0
        mem[0] = address(ext_call.return_data[0])
        mem[32] = 0
        if ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('ext_call.return_data', 0, 32)), ('name', 'stor0', 0))))) < 0xffffffffffffffffffffffffffffffff80000000000000000000000000000001:
            revert with 0, 17
        require ('signextend', 15, ('add', -1, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('ext_call.return_data', 0, 32)), ('name', 'stor0', 0))))))) >= 0
        mem[mem[64] + 36] = ('signextend', 15, ('add', -1, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('ext_call.return_data', 0, 32)), ('name', 'stor0', 0)))))))
        mem[mem[64] + 68] = _4861
        mem[mem[64] + 100] = _4853
        require ext_code.size(0x92d5ebf3593a92888c25c0abef126583d4b5312e)
        call 0x92d5ebf3593a92888c25c0abef126583d4b5312e.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('add', -1, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('cd', ('add', 36, ('param', 'arg4')))), ('name', 'stor0', 0))))))), ('signextend', 15, ('add', -1, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('ext_call.return_data', 0, 32)), ('name', 'stor0', 0))))))), _4861, _4853
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4887 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _4889 = mem[_4887]
        if mem[_4887] <= _4853:
            revert with 0, 'worthless'
        _4893 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = _4853
        _4894 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_4893 + 100] = 32
        mem[_4893 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        _4911 = mem[_4894]
        mem[_4893 + 164 len ceil32(mem[_4894])] = mem[_4894 + 32 len ceil32(mem[_4894])]
        if ceil32(_4911) > _4911:
            mem[_4893 + _4911 + 164] = 0
        call address(ext_call.return_data[0]) with:
             gas gas_remaining wei
            args mem[_4893 + 168 len _4911 - 4]
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if _4889 < _4853:
                revert with 0, 17
            mem[_4893 + 200] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
            mem[_4893 + 232] = _4889 - _4853
            mem[_4893 + 164] = 68
            mem[_4893 + 196 len 4] = unknown_0xa9059cbb(?????)
            mem[_4893 + 264] = 32
            mem[_4893 + 296] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            mem[_4893 + 328 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, _4889 - _4853, 0
            mem[_4893 + 396] = 0
            call address(ext_call.return_data[0]) with:
               funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, _4889 - _4853, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, _4889 - _4853, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_4893 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_4893 + 360] == bool(mem[_4893 + 360])
                    if not mem[_4893 + 360]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_4893 + 164] = return_data.size
            mem[_4893 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_4893 + 196] == bool(mem[_4893 + 196])
                if not mem[_4893 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if _4889 < _4853:
                revert with 0, 17
            mem[_4893 + ceil32(return_data.size) + 201] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
            mem[_4893 + ceil32(return_data.size) + 233] = _4889 - _4853
            mem[_4893 + ceil32(return_data.size) + 165] = 68
            mem[_4893 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
            mem[_4893 + ceil32(return_data.size) + 265] = 32
            mem[_4893 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            mem[_4893 + ceil32(return_data.size) + 329 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, _4889 - _4853, 0
            mem[_4893 + ceil32(return_data.size) + 397] = 0
            call address(ext_call.return_data[0]) with:
               funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, _4889 - _4853, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, _4889 - _4853, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_4893 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[_4893 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_4893 + ceil32(return_data.size) + 361] == bool(mem[_4893 + ceil32(return_data.size) + 361])
                    if not mem[_4893 + ceil32(return_data.size) + 361]:
                        revert with 0, 
                                    'SafeERC20: ERC20 operation did not succeed',
                                    mem[_4893 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    else:
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[ceil32(return_data.size) + 96] = 2
        mem[ceil32(return_data.size) + 128] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[ceil32(return_data.size) + 160] = address(cd[(arg4 + 36)])
        mem[ceil32(return_data.size) + 196] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
        mem[ceil32(return_data.size) + 228] = arg2
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, arg2
        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = arg2
        mem[(2 * ceil32(return_data.size)) + 228] = 0
        mem[(2 * ceil32(return_data.size)) + 260] = 160
        mem[(2 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = (2 * ceil32(return_data.size)) + 388
        while idx < mem[ceil32(return_data.size) + 96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 292] = this.address
        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _1248 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        _1250 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
        mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        require return_data.size >= _1248 + (32 * _1250) + 32
        mem[(4 * ceil32(return_data.size)) + 224 len 32 * _1250] = mem[(2 * ceil32(return_data.size)) + _1248 + 224 len 32 * _1250]
        if 0 >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        mem[ceil32(return_data.size) + 128] = address(ext_call.return_data[0])
        if 1 >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        mem[ceil32(return_data.size) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg2
        mem[mem[64] + 36] = 64
        _2464 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 68] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 100
        while idx < _2464:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg2, 64, mem[mem[64] + 68 len (32 * _2464) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3662 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3664 = mem[_3662]
        require mem[_3662] <= test266151307()
        require _3662 + mem[_3662] + 31 < _3662 + return_data.size
        _3666 = mem[_3662 + mem[_3662]]
        if mem[_3662 + mem[_3662]] > test266151307():
            revert with 0, 65
        if _3662 + ceil32(return_data.size) + ceil32(32 * mem[_3662 + mem[_3662]]) + 1 > test266151307() or ceil32(32 * mem[_3662 + mem[_3662]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _3662 + ceil32(return_data.size) + ceil32(32 * mem[_3662 + mem[_3662]]) + 1
        mem[_3662 + ceil32(return_data.size)] = _3666
        require return_data.size >= _3664 + (32 * _3666) + 32
        mem[_3662 + ceil32(return_data.size) + 32 len 32 * _3666] = mem[_3662 + _3664 + 32 len 32 * _3666]
        if 0 >= _3666:
            revert with 0, 50
        _4856 = mem[_3662 + ceil32(return_data.size) + 32]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4860 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _4862 = mem[_4860]
        mem[mem[64] + 4] = 0x92d5ebf3593a92888c25c0abef126583d4b5312e
        mem[mem[64] + 36] = _4862
        require ext_code.size(address(cd[(arg4 + 36)]))
        call address(cd[(arg4 + 36)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x92d5ebf3593a92888c25c0abef126583d4b5312e, _4862
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4868 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_4868] == bool(mem[_4868])
        if ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('cd', ('add', 36, ('param', 'arg4')))), ('name', 'stor0', 0))))) < 0xffffffffffffffffffffffffffffffff80000000000000000000000000000001:
            revert with 0, 17
        require ('signextend', 15, ('add', -1, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('cd', ('add', 36, ('param', 'arg4')))), ('name', 'stor0', 0))))))) >= 0
        mem[0] = address(ext_call.return_data[0])
        mem[32] = 0
        if ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('ext_call.return_data', 0, 32)), ('name', 'stor0', 0))))) < 0xffffffffffffffffffffffffffffffff80000000000000000000000000000001:
            revert with 0, 17
        require ('signextend', 15, ('add', -1, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('ext_call.return_data', 0, 32)), ('name', 'stor0', 0))))))) >= 0
        mem[mem[64] + 36] = ('signextend', 15, ('add', -1, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('ext_call.return_data', 0, 32)), ('name', 'stor0', 0)))))))
        mem[mem[64] + 68] = _4862
        mem[mem[64] + 100] = _4856
        require ext_code.size(0x92d5ebf3593a92888c25c0abef126583d4b5312e)
        call 0x92d5ebf3593a92888c25c0abef126583d4b5312e.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('add', -1, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('cd', ('add', 36, ('param', 'arg4')))), ('name', 'stor0', 0))))))), ('signextend', 15, ('add', -1, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('ext_call.return_data', 0, 32)), ('name', 'stor0', 0))))))), _4862, _4856
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4888 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _4890 = mem[_4888]
        if mem[_4888] <= _4856:
            revert with 0, 'worthless'
        _4898 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = _4856
        _4899 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_4898 + 100] = 32
        mem[_4898 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        _4913 = mem[_4899]
        mem[_4898 + 164 len ceil32(mem[_4899])] = mem[_4899 + 32 len ceil32(mem[_4899])]
        if ceil32(_4913) > _4913:
            mem[_4898 + _4913 + 164] = 0
        call address(ext_call.return_data[0]) with:
             gas gas_remaining wei
            args mem[_4898 + 168 len _4913 - 4]
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if _4890 < _4856:
                revert with 0, 17
            mem[_4898 + 200] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
            mem[_4898 + 232] = _4890 - _4856
            mem[_4898 + 164] = 68
            mem[_4898 + 196 len 4] = unknown_0xa9059cbb(?????)
            mem[_4898 + 264] = 32
            mem[_4898 + 296] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            mem[_4898 + 328 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, _4890 - _4856, 0
            mem[_4898 + 396] = 0
            call address(ext_call.return_data[0]) with:
               funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, _4890 - _4856, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, _4890 - _4856, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_4898 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_4898 + 360] == bool(mem[_4898 + 360])
                    if not mem[_4898 + 360]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_4898 + 164] = return_data.size
            mem[_4898 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_4898 + 196] == bool(mem[_4898 + 196])
                if not mem[_4898 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if _4890 < _4856:
                revert with 0, 17
            mem[_4898 + ceil32(return_data.size) + 201] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
            mem[_4898 + ceil32(return_data.size) + 233] = _4890 - _4856
            mem[_4898 + ceil32(return_data.size) + 165] = 68
            mem[_4898 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
            mem[_4898 + ceil32(return_data.size) + 265] = 32
            mem[_4898 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            mem[_4898 + ceil32(return_data.size) + 329 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, _4890 - _4856, 0
            mem[_4898 + ceil32(return_data.size) + 397] = 0
            call address(ext_call.return_data[0]) with:
               funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, _4890 - _4856, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, _4890 - _4856, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_4898 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[_4898 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_4898 + ceil32(return_data.size) + 361] == bool(mem[_4898 + ceil32(return_data.size) + 361])
                    if not mem[_4898 + ceil32(return_data.size) + 361]:
                        revert with 0, 
                                    'SafeERC20: ERC20 operation did not succeed',
                                    mem[_4898 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}



}
