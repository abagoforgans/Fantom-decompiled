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

function sub_0b187dd3(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if 0x4068da6c83afcfa0e13ba15a6696662335d5b75 == address(arg1):
        require ext_code.size(0x328a7b4d538a2b3942653a9983fda3c12c571141)
        call 0x328a7b4d538a2b3942653a9983fda3c12c571141.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args 0, uint32(this.address), arg2, 96, 0
    else:
        if address(arg1) != 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e:
            revert with 0, 'cToken unknown'
        require ext_code.size(0x4c762a5df2fa02fe868f25359e0c259fb811cfe)
        call 0x04c762a5df2fa02fe868f25359e0c259fb811cfe.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args 0, uint32(this.address), arg2, 96, 0
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
    staticcall arg2.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = 0x92d5ebf3593a92888c25c0abef126583d4b5312e
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x92d5ebf3593a92888c25c0abef126583d4b5312e, ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor0', 0))))) < 0xffffffffffffffffffffffffffffffff80000000000000000000000000000001:
        revert with 0, 17
    require ('signextend', 15, ('add', -1, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor0', 0))))))) >= 0
    if ('signextend', 15, ('signextend', 15, ('stor', ('map', 26346240637861415816638451521257078600511405178, ('name', 'stor0', 0))))) < 0xffffffffffffffffffffffffffffffff80000000000000000000000000000001:
        revert with 0, 17
    require ('signextend', 15, ('add', -1, ('signextend', 15, ('signextend', 15, ('stor', ('map', 26346240637861415816638451521257078600511405178, ('name', 'stor0', 0))))))) >= 0
    mem[(2 * ceil32(return_data.size)) + 100] = ('signextend', 15, ('add', -1, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor0', 0)))))))
    mem[(2 * ceil32(return_data.size)) + 132] = ('signextend', 15, ('add', -1, ('signextend', 15, ('signextend', 15, ('stor', ('map', 26346240637861415816638451521257078600511405178, ('name', 'stor0', 0)))))))
    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 196] = 0
    require ext_code.size(0x92d5ebf3593a92888c25c0abef126583d4b5312e)
    call 0x92d5ebf3593a92888c25c0abef126583d4b5312e.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args ('signextend', 15, ('add', -1, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor0', 0))))))), ('signextend', 15, ('add', -1, ('signextend', 15, ('signextend', 15, ('stor', ('map', 26346240637861415816638451521257078600511405178, ('name', 'stor0', 0))))))), ext_call.return_data[0], 0
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(0x49d68029688eabf473097a2fc38ef61633a3c7a)
    staticcall 0x49d68029688eabf473097a2fc38ef61633a3c7a.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(6 * ceil32(return_data.size)) + 100] = 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523
    mem[(6 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(0x49d68029688eabf473097a2fc38ef61633a3c7a)
    call 0x049d68029688eabf473097a2fc38ef61633a3c7a.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523, ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg3 > !arg4:
        revert with 0, 17
    if 0x4068da6c83afcfa0e13ba15a6696662335d5b75 == arg2:
        mem[(7 * ceil32(return_data.size)) + 100] = 1
        mem[(7 * ceil32(return_data.size)) + 132] = 0
        mem[(7 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 196] = arg3 + arg4
        mem[(7 * ceil32(return_data.size)) + 228] = block.timestamp
        require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
        call 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 1, 0, ext_call.return_data[0], arg3 + arg4, block.timestamp
    else:
        if 0x49d68029688eabf473097a2fc38ef61633a3c7a == arg2:
            mem[(7 * ceil32(return_data.size)) + 100] = 1
            mem[(7 * ceil32(return_data.size)) + 132] = 1
            mem[(7 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 196] = arg3 + arg4
            mem[(7 * ceil32(return_data.size)) + 228] = block.timestamp
            require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
            call 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 1, 1, ext_call.return_data[0], arg3 + arg4, block.timestamp
        else:
            if arg2 != 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e:
                revert with 0, 'wtf'
            mem[(7 * ceil32(return_data.size)) + 100] = 1
            mem[(7 * ceil32(return_data.size)) + 132] = 2
            mem[(7 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 196] = arg3 + arg4
            mem[(7 * ceil32(return_data.size)) + 228] = block.timestamp
            require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
            call 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 1, 2, ext_call.return_data[0], arg3 + arg4, block.timestamp
    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(8 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(arg2)
    staticcall arg2.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(10 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(10 * ceil32(return_data.size)) + 164] = arg3 + arg4
    mem[(10 * ceil32(return_data.size)) + 96] = 68
    mem[(10 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(10 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
    mem[(10 * ceil32(return_data.size)) + 196] = 32
    mem[(10 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg2):
        revert with 0, 'Address: call to non-contract'
    mem[(10 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), msg.sender, arg3 + arg4, 0
    mem[(10 * ceil32(return_data.size)) + 328] = 0
    call arg2 with:
       funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, arg3 + arg4, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, arg3 + arg4, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if ext_call.return_data[0] < arg3 + arg4:
            revert with 0, 17
        mem[(10 * ceil32(return_data.size)) + 296] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
        mem[(10 * ceil32(return_data.size)) + 328] = ext_call.return_data[0] - arg3 - arg4
        mem[(10 * ceil32(return_data.size)) + 260] = 68
        mem[(10 * ceil32(return_data.size)) + 292 len 4] = transfer(address arg1, uint256 arg2)
        mem[(10 * ceil32(return_data.size)) + 360] = 32
        mem[(10 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(arg2):
            revert with 0, 'Address: call to non-contract'
        mem[(10 * ceil32(return_data.size)) + 424 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] - arg3 - arg4, 0
        mem[(10 * ceil32(return_data.size)) + 492] = 0
        call arg2 with:
           funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] - arg3 - arg4, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] - arg3 - arg4, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(10 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(10 * ceil32(return_data.size)) + 456] == bool(mem[(10 * ceil32(return_data.size)) + 456])
                if not mem[(10 * ceil32(return_data.size)) + 456]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(10 * ceil32(return_data.size)) + 260] = return_data.size
        mem[(10 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(10 * ceil32(return_data.size)) + 292] == bool(mem[(10 * ceil32(return_data.size)) + 292])
            if not mem[(10 * ceil32(return_data.size)) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if ext_call.return_data[0] < arg3 + arg4:
            revert with 0, 17
        mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
        mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0] - arg3 - arg4
        mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
        mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = transfer(address arg1, uint256 arg2)
        mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
        mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(arg2):
            revert with 0, 'Address: call to non-contract'
        mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] - arg3 - arg4, 0
        mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
        call arg2 with:
           funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] - arg3 - arg4, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] - arg3 - arg4, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(13 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                require mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                if not mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                    revert with 0, 
                                'SafeERC20: ERC20 operation did not succeed',
                                mem[(13 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}



}
