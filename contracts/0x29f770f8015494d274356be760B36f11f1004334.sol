contract main {




// =====================  Runtime code  =====================


#
#  - swap(uint256 arg1, uint256 arg2, address arg3, address[] arg4, address arg5, address[] arg6, address arg7, bool arg8)
#
address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function myadmincall(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
        args arg3[all]
}

function withdrawToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdrawTokenTo(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function uint2str(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        return '0'
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s - 1
        idx = arg1
        while idx:
            require t < mem[96]
            mem[t + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _32 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[96]
        _34 = mem[96]
        mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if not mem[96] % 32:
            return 32, mem[mem[64] + 32 len mem[96] + 32]
        mem[floor32(mem[96]) + mem[64] + 64] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 96 len mem[96] % 32]
        return memory
          from mem[64]
           len floor32(_34) + _32 + -mem[64] + 96
    mem[128 len s] = call.data[calldata.size len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < mem[96]
        mem[t + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _35 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    _37 = mem[96]
    mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if not mem[96] % 32:
        return 32, mem[mem[64] + 32 len mem[96] + 32]
    mem[floor32(mem[96]) + mem[64] + 64] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 96 len mem[96] % 32]
    return memory
      from mem[64]
       len floor32(_37) + _35 + -mem[64] + 96
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xe6a43905 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7320656e737572652074686174206d73672e73656e646572206973206120563220706169,
                    mem[200 len 28]
    if arg1 != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x72756e6973776170563243616c6c2073656e646572206d7573742062652073656c,
                    mem[197 len 31]
    require arg4.length >= 96
    require ext_code.size(address(cd[(arg4 + 36)]))
    staticcall address(cd[(arg4 + 36)]).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] - cd[(arg4 + 100)] - cd[(arg4 + 68)] < 0:
        revert with 0, 'balance check'
    mem[196 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, cd[(arg4 + 68)]) >> 32
    call address(cd[(arg4 + 36)]) with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, cd[(arg4 + 68)]) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
}

function swapByMyRouter(uint256 arg1, address[] arg2, address[] arg3, bool arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require 0 < arg2.length
    mem[100] = this.address
    require ext_code.size(address(cd[(arg2 + 36)]))
    staticcall address(cd[(arg2 + 36)]).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + 160
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0
    idx = 0
    s = 0
    s = arg1
    while idx < arg2.length - 1:
        require idx < mem[(32 * arg2.length) + 128]
        _358 = mem[(32 * idx) + (32 * arg2.length) + 160]
        require ext_code.size(mem[(32 * idx) + (32 * arg2.length) + 172 len 20])
        staticcall mem[(32 * idx) + (32 * arg2.length) + 172 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require idx + 1 < mem[96]
        require idx < mem[96]
        if 997 * s / 997 != s:
            revert with 0, 'ds-math-mul-overflow'
        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
            if not Mask(112, 0, ext_call.return_data[32]):
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-add-overflow'
                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                require idx + 1 < mem[96]
                require idx < mem[96]
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if idx >= mem[96] - 2:
                        _441 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        if idx:
                            mem[_441 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_441 + 36] = 0
                            mem[_441 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_441 + 100] = this.address
                            mem[_441 + 132] = 128
                            mem[_441 + 164] = mem[_441]
                            t = 0
                            while t < mem[_441]:
                                mem[_441 + t + 196] = mem[_441 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_441] % 32:
                                require ext_code.size(address(_358))
                                call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_441 + 164 len mem[_441] + 32]
                            else:
                                mem[floor32(mem[_441]) + _441 + 196] = mem[floor32(mem[_441]) + _441 + -(mem[_441] % 32) + 228 len mem[_441] % 32]
                                require ext_code.size(address(_358))
                                call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_441], mem[_441 + 196 len floor32(mem[_441]) + 32]
                        else:
                            require 0 < mem[96]
                            require ext_code.size(mem[140 len 20])
                            staticcall mem[140 len 20].balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_441 + 64] = s
                            mem[_441 + 96] = ext_call.return_data[0]
                            mem[_441 + 32] = 64
                            mem[64] = _441 + 128
                            mem[_441 + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_441 + 132] = 0
                            mem[_441 + 164] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_441 + 196] = this.address
                            mem[_441 + 228] = 128
                            mem[_441 + 260] = 64
                            t = 0
                            while t < 64:
                                mem[_441 + t + 292] = mem[_441 + t + 64]
                                t = t + 32
                                continue 
                            require ext_code.size(address(_358))
                            call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, 64, mem[_441 + 292 len 64]
                    else:
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        _433 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                        _449 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        if idx:
                            mem[_449 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_449 + 36] = 0
                            mem[_449 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_449 + 100] = address(_433)
                            mem[_449 + 132] = 128
                            mem[_449 + 164] = mem[_449]
                            t = 0
                            while t < mem[_449]:
                                mem[_449 + t + 196] = mem[_449 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_449] % 32:
                                require ext_code.size(address(_358))
                                call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_433), 128, mem[_449 + 164 len mem[_449] + 32]
                            else:
                                mem[floor32(mem[_449]) + _449 + 196] = mem[floor32(mem[_449]) + _449 + -(mem[_449] % 32) + 228 len mem[_449] % 32]
                                require ext_code.size(address(_358))
                                call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_433), 128, mem[_449], mem[_449 + 196 len floor32(mem[_449]) + 32]
                        else:
                            require 0 < mem[96]
                            require ext_code.size(mem[140 len 20])
                            staticcall mem[140 len 20].balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_449 + 64] = s
                            mem[_449 + 96] = ext_call.return_data[0]
                            mem[_449 + 32] = 64
                            mem[64] = _449 + 128
                            mem[_449 + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_449 + 132] = 0
                            mem[_449 + 164] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_449 + 196] = address(_433)
                            mem[_449 + 228] = 128
                            mem[_449 + 260] = 64
                            t = 0
                            while t < 64:
                                mem[_449 + t + 292] = mem[_449 + t + 64]
                                t = t + 32
                                continue 
                            require ext_code.size(address(_358))
                            call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_433), 128, 64, mem[_449 + 292 len 64]
                else:
                    if idx >= mem[96] - 2:
                        _442 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        if idx:
                            mem[_442 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_442 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_442 + 68] = 0
                            mem[_442 + 100] = this.address
                            mem[_442 + 132] = 128
                            mem[_442 + 164] = mem[_442]
                            t = 0
                            while t < mem[_442]:
                                mem[_442 + t + 196] = mem[_442 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_442] % 32:
                                require ext_code.size(address(_358))
                                call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_442 + 164 len mem[_442] + 32]
                            else:
                                mem[floor32(mem[_442]) + _442 + 196] = mem[floor32(mem[_442]) + _442 + -(mem[_442] % 32) + 228 len mem[_442] % 32]
                                require ext_code.size(address(_358))
                                call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_442], mem[_442 + 196 len floor32(mem[_442]) + 32]
                        else:
                            require 0 < mem[96]
                            require ext_code.size(mem[140 len 20])
                            staticcall mem[140 len 20].balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_442 + 64] = s
                            mem[_442 + 96] = ext_call.return_data[0]
                            mem[_442 + 32] = 64
                            mem[64] = _442 + 128
                            mem[_442 + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_442 + 132] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_442 + 164] = 0
                            mem[_442 + 196] = this.address
                            mem[_442 + 228] = 128
                            mem[_442 + 260] = 64
                            t = 0
                            while t < 64:
                                mem[_442 + t + 292] = mem[_442 + t + 64]
                                t = t + 32
                                continue 
                            require ext_code.size(address(_358))
                            call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, 64, mem[_442 + 292 len 64]
                    else:
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        _434 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                        _450 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        if idx:
                            mem[_450 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_450 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_450 + 68] = 0
                            mem[_450 + 100] = address(_434)
                            mem[_450 + 132] = 128
                            mem[_450 + 164] = mem[_450]
                            t = 0
                            while t < mem[_450]:
                                mem[_450 + t + 196] = mem[_450 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_450] % 32:
                                require ext_code.size(address(_358))
                                call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_434), 128, mem[_450 + 164 len mem[_450] + 32]
                            else:
                                mem[floor32(mem[_450]) + _450 + 196] = mem[floor32(mem[_450]) + _450 + -(mem[_450] % 32) + 228 len mem[_450] % 32]
                                require ext_code.size(address(_358))
                                call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_434), 128, mem[_450], mem[_450 + 196 len floor32(mem[_450]) + 32]
                        else:
                            require 0 < mem[96]
                            require ext_code.size(mem[140 len 20])
                            staticcall mem[140 len 20].balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_450 + 64] = s
                            mem[_450 + 96] = ext_call.return_data[0]
                            mem[_450 + 32] = 64
                            mem[64] = _450 + 128
                            mem[_450 + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_450 + 132] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_450 + 164] = 0
                            mem[_450 + 196] = address(_434)
                            mem[_450 + 228] = 128
                            mem[_450 + 260] = 64
                            t = 0
                            while t < 64:
                                mem[_450 + t + 292] = mem[_450 + t + 64]
                                t = t + 32
                                continue 
                            require ext_code.size(address(_358))
                            call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_434), 128, 64, mem[_450 + 292 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                continue 
            require Mask(112, 0, ext_call.return_data[32])
            if 997 * s * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * s:
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'ds-math-mul-overflow'
            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'ds-math-add-overflow'
            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
            require idx + 1 < mem[96]
            require idx < mem[96]
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if idx >= mem[96] - 2:
                    _465 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    if idx:
                        mem[_465 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_465 + 36] = 0
                        mem[_465 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_465 + 100] = this.address
                        mem[_465 + 132] = 128
                        mem[_465 + 164] = mem[_465]
                        t = 0
                        while t < mem[_465]:
                            mem[_465 + t + 196] = mem[_465 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_465] % 32:
                            require ext_code.size(address(_358))
                            call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_465 + 164 len mem[_465] + 32]
                        else:
                            mem[floor32(mem[_465]) + _465 + 196] = mem[floor32(mem[_465]) + _465 + -(mem[_465] % 32) + 228 len mem[_465] % 32]
                            require ext_code.size(address(_358))
                            call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_465], mem[_465 + 196 len floor32(mem[_465]) + 32]
                    else:
                        require 0 < mem[96]
                        require ext_code.size(mem[140 len 20])
                        staticcall mem[140 len 20].balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_465 + 64] = s
                        mem[_465 + 96] = ext_call.return_data[0]
                        mem[_465 + 32] = 64
                        mem[64] = _465 + 128
                        mem[_465 + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_465 + 132] = 0
                        mem[_465 + 164] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_465 + 196] = this.address
                        mem[_465 + 228] = 128
                        mem[_465 + 260] = 64
                        t = 0
                        while t < 64:
                            mem[_465 + t + 292] = mem[_465 + t + 64]
                            t = t + 32
                            continue 
                        require ext_code.size(address(_358))
                        call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, 64, mem[_465 + 292 len 64]
                else:
                    require idx + 1 < mem[(32 * arg2.length) + 128]
                    _451 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                    _491 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    if idx:
                        mem[_491 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_491 + 36] = 0
                        mem[_491 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_491 + 100] = address(_451)
                        mem[_491 + 132] = 128
                        mem[_491 + 164] = mem[_491]
                        t = 0
                        while t < mem[_491]:
                            mem[_491 + t + 196] = mem[_491 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_491] % 32:
                            require ext_code.size(address(_358))
                            call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_451), 128, mem[_491 + 164 len mem[_491] + 32]
                        else:
                            mem[floor32(mem[_491]) + _491 + 196] = mem[floor32(mem[_491]) + _491 + -(mem[_491] % 32) + 228 len mem[_491] % 32]
                            require ext_code.size(address(_358))
                            call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_451), 128, mem[_491], mem[_491 + 196 len floor32(mem[_491]) + 32]
                    else:
                        require 0 < mem[96]
                        require ext_code.size(mem[140 len 20])
                        staticcall mem[140 len 20].balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_491 + 64] = s
                        mem[_491 + 96] = ext_call.return_data[0]
                        mem[_491 + 32] = 64
                        mem[64] = _491 + 128
                        mem[_491 + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_491 + 132] = 0
                        mem[_491 + 164] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_491 + 196] = address(_451)
                        mem[_491 + 228] = 128
                        mem[_491 + 260] = 64
                        t = 0
                        while t < 64:
                            mem[_491 + t + 292] = mem[_491 + t + 64]
                            t = t + 32
                            continue 
                        require ext_code.size(address(_358))
                        call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_451), 128, 64, mem[_491 + 292 len 64]
            else:
                if idx >= mem[96] - 2:
                    _466 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    if idx:
                        mem[_466 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_466 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_466 + 68] = 0
                        mem[_466 + 100] = this.address
                        mem[_466 + 132] = 128
                        mem[_466 + 164] = mem[_466]
                        t = 0
                        while t < mem[_466]:
                            mem[_466 + t + 196] = mem[_466 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_466] % 32:
                            require ext_code.size(address(_358))
                            call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_466 + 164 len mem[_466] + 32]
                        else:
                            mem[floor32(mem[_466]) + _466 + 196] = mem[floor32(mem[_466]) + _466 + -(mem[_466] % 32) + 228 len mem[_466] % 32]
                            require ext_code.size(address(_358))
                            call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_466], mem[_466 + 196 len floor32(mem[_466]) + 32]
                    else:
                        require 0 < mem[96]
                        require ext_code.size(mem[140 len 20])
                        staticcall mem[140 len 20].balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_466 + 64] = s
                        mem[_466 + 96] = ext_call.return_data[0]
                        mem[_466 + 32] = 64
                        mem[64] = _466 + 128
                        mem[_466 + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_466 + 132] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_466 + 164] = 0
                        mem[_466 + 196] = this.address
                        mem[_466 + 228] = 128
                        mem[_466 + 260] = 64
                        t = 0
                        while t < 64:
                            mem[_466 + t + 292] = mem[_466 + t + 64]
                            t = t + 32
                            continue 
                        require ext_code.size(address(_358))
                        call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, 64, mem[_466 + 292 len 64]
                else:
                    require idx + 1 < mem[(32 * arg2.length) + 128]
                    _452 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                    _492 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    if idx:
                        mem[_492 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_492 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_492 + 68] = 0
                        mem[_492 + 100] = address(_452)
                        mem[_492 + 132] = 128
                        mem[_492 + 164] = mem[_492]
                        t = 0
                        while t < mem[_492]:
                            mem[_492 + t + 196] = mem[_492 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_492] % 32:
                            require ext_code.size(address(_358))
                            call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_452), 128, mem[_492 + 164 len mem[_492] + 32]
                        else:
                            mem[floor32(mem[_492]) + _492 + 196] = mem[floor32(mem[_492]) + _492 + -(mem[_492] % 32) + 228 len mem[_492] % 32]
                            require ext_code.size(address(_358))
                            call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_452), 128, mem[_492], mem[_492 + 196 len floor32(mem[_492]) + 32]
                    else:
                        require 0 < mem[96]
                        require ext_code.size(mem[140 len 20])
                        staticcall mem[140 len 20].balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_492 + 64] = s
                        mem[_492 + 96] = ext_call.return_data[0]
                        mem[_492 + 32] = 64
                        mem[64] = _492 + 128
                        mem[_492 + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_492 + 132] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_492 + 164] = 0
                        mem[_492 + 196] = address(_452)
                        mem[_492 + 228] = 128
                        mem[_492 + 260] = 64
                        t = 0
                        while t < 64:
                            mem[_492 + t + 292] = mem[_492 + t + 64]
                            t = t + 32
                            continue 
                        require ext_code.size(address(_358))
                        call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_452), 128, 64, mem[_492 + 292 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
            continue 
        if not Mask(112, 0, ext_call.return_data[0]):
            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-mul-overflow'
            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-add-overflow'
            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
            require idx + 1 < mem[96]
            require idx < mem[96]
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if idx >= mem[96] - 2:
                    _445 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    if idx:
                        mem[_445 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_445 + 36] = 0
                        mem[_445 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_445 + 100] = this.address
                        mem[_445 + 132] = 128
                        mem[_445 + 164] = mem[_445]
                        t = 0
                        while t < mem[_445]:
                            mem[_445 + t + 196] = mem[_445 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_445] % 32:
                            require ext_code.size(address(_358))
                            call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_445 + 164 len mem[_445] + 32]
                        else:
                            mem[floor32(mem[_445]) + _445 + 196] = mem[floor32(mem[_445]) + _445 + -(mem[_445] % 32) + 228 len mem[_445] % 32]
                            require ext_code.size(address(_358))
                            call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_445], mem[_445 + 196 len floor32(mem[_445]) + 32]
                    else:
                        require 0 < mem[96]
                        require ext_code.size(mem[140 len 20])
                        staticcall mem[140 len 20].balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_445 + 64] = s
                        mem[_445 + 96] = ext_call.return_data[0]
                        mem[_445 + 32] = 64
                        mem[64] = _445 + 128
                        mem[_445 + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_445 + 132] = 0
                        mem[_445 + 164] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_445 + 196] = this.address
                        mem[_445 + 228] = 128
                        mem[_445 + 260] = 64
                        t = 0
                        while t < 64:
                            mem[_445 + t + 292] = mem[_445 + t + 64]
                            t = t + 32
                            continue 
                        require ext_code.size(address(_358))
                        call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, 64, mem[_445 + 292 len 64]
                else:
                    require idx + 1 < mem[(32 * arg2.length) + 128]
                    _437 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                    _453 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    if idx:
                        mem[_453 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_453 + 36] = 0
                        mem[_453 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_453 + 100] = address(_437)
                        mem[_453 + 132] = 128
                        mem[_453 + 164] = mem[_453]
                        t = 0
                        while t < mem[_453]:
                            mem[_453 + t + 196] = mem[_453 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_453] % 32:
                            require ext_code.size(address(_358))
                            call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_437), 128, mem[_453 + 164 len mem[_453] + 32]
                        else:
                            mem[floor32(mem[_453]) + _453 + 196] = mem[floor32(mem[_453]) + _453 + -(mem[_453] % 32) + 228 len mem[_453] % 32]
                            require ext_code.size(address(_358))
                            call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_437), 128, mem[_453], mem[_453 + 196 len floor32(mem[_453]) + 32]
                    else:
                        require 0 < mem[96]
                        require ext_code.size(mem[140 len 20])
                        staticcall mem[140 len 20].balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_453 + 64] = s
                        mem[_453 + 96] = ext_call.return_data[0]
                        mem[_453 + 32] = 64
                        mem[64] = _453 + 128
                        mem[_453 + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_453 + 132] = 0
                        mem[_453 + 164] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_453 + 196] = address(_437)
                        mem[_453 + 228] = 128
                        mem[_453 + 260] = 64
                        t = 0
                        while t < 64:
                            mem[_453 + t + 292] = mem[_453 + t + 64]
                            t = t + 32
                            continue 
                        require ext_code.size(address(_358))
                        call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_437), 128, 64, mem[_453 + 292 len 64]
            else:
                if idx >= mem[96] - 2:
                    _446 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    if idx:
                        mem[_446 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_446 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_446 + 68] = 0
                        mem[_446 + 100] = this.address
                        mem[_446 + 132] = 128
                        mem[_446 + 164] = mem[_446]
                        t = 0
                        while t < mem[_446]:
                            mem[_446 + t + 196] = mem[_446 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_446] % 32:
                            require ext_code.size(address(_358))
                            call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_446 + 164 len mem[_446] + 32]
                        else:
                            mem[floor32(mem[_446]) + _446 + 196] = mem[floor32(mem[_446]) + _446 + -(mem[_446] % 32) + 228 len mem[_446] % 32]
                            require ext_code.size(address(_358))
                            call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_446], mem[_446 + 196 len floor32(mem[_446]) + 32]
                    else:
                        require 0 < mem[96]
                        require ext_code.size(mem[140 len 20])
                        staticcall mem[140 len 20].balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_446 + 64] = s
                        mem[_446 + 96] = ext_call.return_data[0]
                        mem[_446 + 32] = 64
                        mem[64] = _446 + 128
                        mem[_446 + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_446 + 132] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_446 + 164] = 0
                        mem[_446 + 196] = this.address
                        mem[_446 + 228] = 128
                        mem[_446 + 260] = 64
                        t = 0
                        while t < 64:
                            mem[_446 + t + 292] = mem[_446 + t + 64]
                            t = t + 32
                            continue 
                        require ext_code.size(address(_358))
                        call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, 64, mem[_446 + 292 len 64]
                else:
                    require idx + 1 < mem[(32 * arg2.length) + 128]
                    _438 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                    _454 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    if idx:
                        mem[_454 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_454 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_454 + 68] = 0
                        mem[_454 + 100] = address(_438)
                        mem[_454 + 132] = 128
                        mem[_454 + 164] = mem[_454]
                        t = 0
                        while t < mem[_454]:
                            mem[_454 + t + 196] = mem[_454 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_454] % 32:
                            require ext_code.size(address(_358))
                            call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_438), 128, mem[_454 + 164 len mem[_454] + 32]
                        else:
                            mem[floor32(mem[_454]) + _454 + 196] = mem[floor32(mem[_454]) + _454 + -(mem[_454] % 32) + 228 len mem[_454] % 32]
                            require ext_code.size(address(_358))
                            call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_438), 128, mem[_454], mem[_454 + 196 len floor32(mem[_454]) + 32]
                    else:
                        require 0 < mem[96]
                        require ext_code.size(mem[140 len 20])
                        staticcall mem[140 len 20].balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_454 + 64] = s
                        mem[_454 + 96] = ext_call.return_data[0]
                        mem[_454 + 32] = 64
                        mem[64] = _454 + 128
                        mem[_454 + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_454 + 132] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_454 + 164] = 0
                        mem[_454 + 196] = address(_438)
                        mem[_454 + 228] = 128
                        mem[_454 + 260] = 64
                        t = 0
                        while t < 64:
                            mem[_454 + t + 292] = mem[_454 + t + 64]
                            t = t + 32
                            continue 
                        require ext_code.size(address(_358))
                        call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_438), 128, 64, mem[_454 + 292 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
            s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
            continue 
        require Mask(112, 0, ext_call.return_data[0])
        if 997 * s * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * s:
            revert with 0, 'ds-math-mul-overflow'
        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'ds-math-mul-overflow'
        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'ds-math-add-overflow'
        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
        require idx + 1 < mem[96]
        require idx < mem[96]
        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
            if idx >= mem[96] - 2:
                _475 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                if idx:
                    mem[_475 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_475 + 36] = 0
                    mem[_475 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_475 + 100] = this.address
                    mem[_475 + 132] = 128
                    mem[_475 + 164] = mem[_475]
                    t = 0
                    while t < mem[_475]:
                        mem[_475 + t + 196] = mem[_475 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_475] % 32:
                        require ext_code.size(address(_358))
                        call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_475 + 164 len mem[_475] + 32]
                    else:
                        mem[floor32(mem[_475]) + _475 + 196] = mem[floor32(mem[_475]) + _475 + -(mem[_475] % 32) + 228 len mem[_475] % 32]
                        require ext_code.size(address(_358))
                        call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_475], mem[_475 + 196 len floor32(mem[_475]) + 32]
                else:
                    require 0 < mem[96]
                    require ext_code.size(mem[140 len 20])
                    staticcall mem[140 len 20].balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_475 + 64] = s
                    mem[_475 + 96] = ext_call.return_data[0]
                    mem[_475 + 32] = 64
                    mem[64] = _475 + 128
                    mem[_475 + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_475 + 132] = 0
                    mem[_475 + 164] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_475 + 196] = this.address
                    mem[_475 + 228] = 128
                    mem[_475 + 260] = 64
                    t = 0
                    while t < 64:
                        mem[_475 + t + 292] = mem[_475 + t + 64]
                        t = t + 32
                        continue 
                    require ext_code.size(address(_358))
                    call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, 64, mem[_475 + 292 len 64]
            else:
                require idx + 1 < mem[(32 * arg2.length) + 128]
                _455 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                _507 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                if idx:
                    mem[_507 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_507 + 36] = 0
                    mem[_507 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_507 + 100] = address(_455)
                    mem[_507 + 132] = 128
                    mem[_507 + 164] = mem[_507]
                    t = 0
                    while t < mem[_507]:
                        mem[_507 + t + 196] = mem[_507 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_507] % 32:
                        require ext_code.size(address(_358))
                        call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_455), 128, mem[_507 + 164 len mem[_507] + 32]
                    else:
                        mem[floor32(mem[_507]) + _507 + 196] = mem[floor32(mem[_507]) + _507 + -(mem[_507] % 32) + 228 len mem[_507] % 32]
                        require ext_code.size(address(_358))
                        call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_455), 128, mem[_507], mem[_507 + 196 len floor32(mem[_507]) + 32]
                else:
                    require 0 < mem[96]
                    require ext_code.size(mem[140 len 20])
                    staticcall mem[140 len 20].balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_507 + 64] = s
                    mem[_507 + 96] = ext_call.return_data[0]
                    mem[_507 + 32] = 64
                    mem[64] = _507 + 128
                    mem[_507 + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_507 + 132] = 0
                    mem[_507 + 164] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_507 + 196] = address(_455)
                    mem[_507 + 228] = 128
                    mem[_507 + 260] = 64
                    t = 0
                    while t < 64:
                        mem[_507 + t + 292] = mem[_507 + t + 64]
                        t = t + 32
                        continue 
                    require ext_code.size(address(_358))
                    call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_455), 128, 64, mem[_507 + 292 len 64]
        else:
            if idx >= mem[96] - 2:
                _476 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                if idx:
                    mem[_476 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_476 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_476 + 68] = 0
                    mem[_476 + 100] = this.address
                    mem[_476 + 132] = 128
                    mem[_476 + 164] = mem[_476]
                    t = 0
                    while t < mem[_476]:
                        mem[_476 + t + 196] = mem[_476 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_476] % 32:
                        require ext_code.size(address(_358))
                        call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_476 + 164 len mem[_476] + 32]
                    else:
                        mem[floor32(mem[_476]) + _476 + 196] = mem[floor32(mem[_476]) + _476 + -(mem[_476] % 32) + 228 len mem[_476] % 32]
                        require ext_code.size(address(_358))
                        call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_476], mem[_476 + 196 len floor32(mem[_476]) + 32]
                else:
                    require 0 < mem[96]
                    require ext_code.size(mem[140 len 20])
                    staticcall mem[140 len 20].balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_476 + 64] = s
                    mem[_476 + 96] = ext_call.return_data[0]
                    mem[_476 + 32] = 64
                    mem[64] = _476 + 128
                    mem[_476 + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_476 + 132] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_476 + 164] = 0
                    mem[_476 + 196] = this.address
                    mem[_476 + 228] = 128
                    mem[_476 + 260] = 64
                    t = 0
                    while t < 64:
                        mem[_476 + t + 292] = mem[_476 + t + 64]
                        t = t + 32
                        continue 
                    require ext_code.size(address(_358))
                    call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, 64, mem[_476 + 292 len 64]
            else:
                require idx + 1 < mem[(32 * arg2.length) + 128]
                _456 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                _508 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                if idx:
                    mem[_508 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_508 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_508 + 68] = 0
                    mem[_508 + 100] = address(_456)
                    mem[_508 + 132] = 128
                    mem[_508 + 164] = mem[_508]
                    t = 0
                    while t < mem[_508]:
                        mem[_508 + t + 196] = mem[_508 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_508] % 32:
                        require ext_code.size(address(_358))
                        call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_456), 128, mem[_508 + 164 len mem[_508] + 32]
                    else:
                        mem[floor32(mem[_508]) + _508 + 196] = mem[floor32(mem[_508]) + _508 + -(mem[_508] % 32) + 228 len mem[_508] % 32]
                        require ext_code.size(address(_358))
                        call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_456), 128, mem[_508], mem[_508 + 196 len floor32(mem[_508]) + 32]
                else:
                    require 0 < mem[96]
                    require ext_code.size(mem[140 len 20])
                    staticcall mem[140 len 20].balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_508 + 64] = s
                    mem[_508 + 96] = ext_call.return_data[0]
                    mem[_508 + 32] = 64
                    mem[64] = _508 + 128
                    mem[_508 + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_508 + 132] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_508 + 164] = 0
                    mem[_508 + 196] = address(_456)
                    mem[_508 + 228] = 128
                    mem[_508 + 260] = 64
                    t = 0
                    while t < 64:
                        mem[_508 + t + 292] = mem[_508 + t + 64]
                        t = t + 32
                        continue 
                    require ext_code.size(address(_358))
                    call address(_358).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_456), 128, 64, mem[_508 + 292 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
        s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
        continue 
    require 0 < arg2.length
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[(arg2 + 36)]))
    staticcall address(cd[(arg2 + 36)]).balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg4:
        if ext_call.return_data[0] <= ext_call.return_data[0]:
            revert with 0, 'no profit'
    if ext_call.return_data[0] <= ext_call.return_data[0]:
        revert with 0, '0'
    require arg5
    if not 0 / arg5:
        revert with 0, '0'
    s = 0
    idx = 0 / arg5
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    _850 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s - 1
        idx = 0 / arg5
        while idx:
            require t < mem[_850]
            mem[t + _850 + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_850]
        _970 = mem[_850]
        mem[mem[64] + 68 len ceil32(mem[_850])] = mem[_850 + 32 len ceil32(mem[_850])]
        if not _970 % 32:
            revert with 0, 32, mem[mem[64] + 36 len _970 + 32]
        mem[floor32(_970) + mem[64] + 68] = mem[floor32(_970) + mem[64] + -(_970 % 32) + 100 len _970 % 32]
        revert with 0, 32, mem[mem[64] + 36 len floor32(_970) + 64]
    mem[_850 + 32 len s] = call.data[calldata.size len s]
    t = s - 1
    idx = 0 / arg5
    while idx:
        require t < mem[_850]
        mem[t + _850 + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _971 = mem[64]
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[_850]
    _973 = mem[_850]
    mem[mem[64] + 68 len ceil32(mem[_850])] = mem[_850 + 32 len ceil32(mem[_850])]
    if not _973 % 32:
        revert with 0, 32, mem[mem[64] + 36 len _973 + 32]
    mem[floor32(_973) + mem[64] + 68] = mem[floor32(_973) + mem[64] + -(_973 % 32) + 100 len _973 % 32]
    revert with memory
      from mem[64]
       len floor32(_973) + _971 + -mem[64] + 100
}



}
