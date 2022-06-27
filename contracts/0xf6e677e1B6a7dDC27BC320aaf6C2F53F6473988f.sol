contract main {




// =====================  Runtime code  =====================


#
#  - elkCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - wakaSwapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_3aa99232(?)
#  - pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
mapping of uint256 stor0;
mapping of uint256 stor1;

function indexOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor0', 0))))) < 0xffffffffffffffffffffffffffffffff80000000000000000000000000000001:
        revert with 0, 17
    require ('signextend', 15, ('add', -1, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor0', 0))))))) >= 0
    return ('signextend', 15, ('add', -1, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor0', 0)))))))
}

function sub_8fcdccd6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor1', 1))))) < 0xffffffffffffffffffffffffffffffff80000000000000000000000000000001:
        revert with 0, 17
    require ('signextend', 15, ('add', -1, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor1', 1))))))) >= 0
    return ('signextend', 15, ('add', -1, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor1', 1)))))))
}

function _fallback() payable {
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

function sub_0e10f748(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x2dd7c9371965472e5a5fd28fbe165007c61439e1, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor1', 1))))) < 0xffffffffffffffffffffffffffffffff80000000000000000000000000000001:
        revert with 0, 17
    require ('signextend', 15, ('add', -1, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor1', 1))))))) >= 0
    if ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor1', 1))))) < 0xffffffffffffffffffffffffffffffff80000000000000000000000000000001:
        revert with 0, 17
    require ('signextend', 15, ('add', -1, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor1', 1))))))) >= 0
    require ext_code.size(0x2dd7c9371965472e5a5fd28fbe165007c61439e1)
    call 0x2dd7c9371965472e5a5fd28fbe165007c61439e1.exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args ('signextend', 15, ('add', -1, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor1', 1))))))), ('signextend', 15, ('add', -1, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor1', 1))))))), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_77842477(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x92d5ebf3593a92888c25c0abef126583d4b5312e, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor0', 0))))) < 0xffffffffffffffffffffffffffffffff80000000000000000000000000000001:
        revert with 0, 17
    require ('signextend', 15, ('add', -1, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor0', 0))))))) >= 0
    if ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor0', 0))))) < 0xffffffffffffffffffffffffffffffff80000000000000000000000000000001:
        revert with 0, 17
    require ('signextend', 15, ('add', -1, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor0', 0))))))) >= 0
    require ext_code.size(0x92d5ebf3593a92888c25c0abef126583d4b5312e)
    call 0x92d5ebf3593a92888c25c0abef126583d4b5312e.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args ('signextend', 15, ('add', -1, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor0', 0))))))), ('signextend', 15, ('add', -1, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor0', 0))))))), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_e5cdfaa4(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 0x4068da6c83afcfa0e13ba15a6696662335d5b75 == address(arg1):
        if 0x4068da6c83afcfa0e13ba15a6696662335d5b75 == address(arg2):
            require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
            call 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, 0, arg3, arg4, block.timestamp
        else:
            if 0x49d68029688eabf473097a2fc38ef61633a3c7a == address(arg2):
                require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
                call 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, 1, arg3, arg4, block.timestamp
            else:
                if address(arg2) != 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e:
                    revert with 0, 'wtf'
                require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
                call 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, 2, arg3, arg4, block.timestamp
    else:
        if 0x49d68029688eabf473097a2fc38ef61633a3c7a == address(arg1):
            if 0x4068da6c83afcfa0e13ba15a6696662335d5b75 == address(arg2):
                require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
                call 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 1, 0, arg3, arg4, block.timestamp
            else:
                if 0x49d68029688eabf473097a2fc38ef61633a3c7a == address(arg2):
                    require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
                    call 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 1, 1, arg3, arg4, block.timestamp
                else:
                    if address(arg2) != 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e:
                        revert with 0, 'wtf'
                    require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
                    call 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 1, 2, arg3, arg4, block.timestamp
        else:
            if address(arg1) != 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e:
                revert with 0, 'wtf'
            if 0x4068da6c83afcfa0e13ba15a6696662335d5b75 == address(arg2):
                require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
                call 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 2, 0, arg3, arg4, block.timestamp
            else:
                if 0x49d68029688eabf473097a2fc38ef61633a3c7a == address(arg2):
                    require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
                    call 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 2, 1, arg3, arg4, block.timestamp
                else:
                    if address(arg2) != 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e:
                        revert with 0, 'wtf'
                    require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
                    call 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 2, 2, arg3, arg4, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_464e0e04(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    mem[96] = 2
    mem[128] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    require ext_code.size(uint64(arg2))
    if not arg2:
        staticcall uint64(arg2).token1() with:
                gas gas_remaining wei
        mem[192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[160] = ext_call.return_data[12 len 20]
        mem[ceil32(return_data.size) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = arg5
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = 128
        t = ceil32(return_data.size) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg1))
        staticcall address(arg1).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg5, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _81 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
        _83 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _83
        require return_data.size >= _81 + (32 * _83) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _83] = mem[ceil32(return_data.size) + _81 + 224 len 32 * _83]
        if 0 >= _83:
            revert with 0, 50
        _137 = mem[(2 * ceil32(return_data.size)) + 224]
        if mem[(2 * ceil32(return_data.size)) + 224] > arg6:
            revert with 0, 'rg'
        if arg2:
            _148 = mem[64]
            mem[mem[64] + 32] = uint8(arg2)
            mem[mem[64] + 64] = address(arg3)
            mem[mem[64] + 96] = address(arg4)
            mem[mem[64] + 128] = address(ext_call.return_data[12 len 20])
            mem[mem[64] + 160] = _137
            _155 = mem[64]
            mem[64] = mem[64] + 192
            mem[_148 + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_148 + 196] = arg5
            mem[_148 + 228] = 0
            mem[_148 + 260] = this.address
            mem[_148 + 292] = 128
            _163 = mem[_155]
            mem[_148 + 324] = mem[_155]
            mem[_148 + 356 len ceil32(_163)] = mem[_155 + 32 len ceil32(_163)]
            if ceil32(_163) > _163:
                mem[_148 + _163 + 356] = 0
            require ext_code.size(uint64(arg2))
            call uint64(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args arg5, 0, address(this.address), 128, mem[_148 + 324 len ceil32(_163) + 32]
        else:
            _150 = mem[64]
            mem[mem[64] + 32] = uint8(arg2)
            mem[mem[64] + 64] = address(arg3)
            mem[mem[64] + 96] = address(arg4)
            mem[mem[64] + 128] = address(ext_call.return_data[12 len 20])
            mem[mem[64] + 160] = _137
            _157 = mem[64]
            mem[64] = mem[64] + 192
            mem[_150 + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_150 + 196] = 0
            mem[_150 + 228] = arg5
            mem[_150 + 260] = this.address
            mem[_150 + 292] = 128
            _164 = mem[_157]
            mem[_150 + 324] = mem[_157]
            mem[_150 + 356 len ceil32(_164)] = mem[_157 + 32 len ceil32(_164)]
            if ceil32(_164) > _164:
                mem[_150 + _164 + 356] = 0
            require ext_code.size(uint64(arg2))
            call uint64(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, arg5, address(this.address), 128, mem[_150 + 324 len ceil32(_164) + 32]
    else:
        staticcall uint64(arg2).token0() with:
                gas gas_remaining wei
        mem[192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[160] = ext_call.return_data[12 len 20]
        mem[ceil32(return_data.size) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = arg5
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = 128
        t = ceil32(return_data.size) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg1))
        staticcall address(arg1).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg5, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _82 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
        _84 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _84
        require return_data.size >= _82 + (32 * _84) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _84] = mem[ceil32(return_data.size) + _82 + 224 len 32 * _84]
        if 0 >= _84:
            revert with 0, 50
        _138 = mem[(2 * ceil32(return_data.size)) + 224]
        if mem[(2 * ceil32(return_data.size)) + 224] > arg6:
            revert with 0, 'rg'
        if arg2:
            _152 = mem[64]
            mem[mem[64] + 32] = uint8(arg2)
            mem[mem[64] + 64] = address(arg3)
            mem[mem[64] + 96] = address(arg4)
            mem[mem[64] + 128] = address(ext_call.return_data[12 len 20])
            mem[mem[64] + 160] = _138
            _159 = mem[64]
            mem[64] = mem[64] + 192
            mem[_152 + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_152 + 196] = arg5
            mem[_152 + 228] = 0
            mem[_152 + 260] = this.address
            mem[_152 + 292] = 128
            _165 = mem[_159]
            mem[_152 + 324] = mem[_159]
            mem[_152 + 356 len ceil32(_165)] = mem[_159 + 32 len ceil32(_165)]
            if ceil32(_165) > _165:
                mem[_152 + _165 + 356] = 0
            require ext_code.size(uint64(arg2))
            call uint64(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args arg5, 0, address(this.address), 128, mem[_152 + 324 len ceil32(_165) + 32]
        else:
            _154 = mem[64]
            mem[mem[64] + 32] = uint8(arg2)
            mem[mem[64] + 64] = address(arg3)
            mem[mem[64] + 96] = address(arg4)
            mem[mem[64] + 128] = address(ext_call.return_data[12 len 20])
            mem[mem[64] + 160] = _138
            _161 = mem[64]
            mem[64] = mem[64] + 192
            mem[_154 + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_154 + 196] = 0
            mem[_154 + 228] = arg5
            mem[_154 + 260] = this.address
            mem[_154 + 292] = 128
            _166 = mem[_161]
            mem[_154 + 324] = mem[_161]
            mem[_154 + 356 len ceil32(_166)] = mem[_161 + 32 len ceil32(_166)]
            if ceil32(_166) > _166:
                mem[_154 + _166 + 356] = 0
            require ext_code.size(uint64(arg2))
            call uint64(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, arg5, address(this.address), 128, mem[_154 + 324 len ceil32(_166) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
