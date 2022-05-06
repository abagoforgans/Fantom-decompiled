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

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    revert with 0, 'enter uniswapV2Call'
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
        _342 = mem[(32 * idx) + (32 * arg2.length) + 160]
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
                        _409 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        if idx:
                            mem[_409 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_409 + 36] = 0
                            mem[_409 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_409 + 100] = this.address
                            mem[_409 + 132] = 128
                            mem[_409 + 164] = mem[_409]
                            t = 0
                            while t < mem[_409]:
                                mem[_409 + t + 196] = mem[_409 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_409] % 32:
                                require ext_code.size(address(_342))
                                call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_409 + 164 len mem[_409] + 32]
                            else:
                                mem[floor32(mem[_409]) + _409 + 196] = mem[floor32(mem[_409]) + _409 + -(mem[_409] % 32) + 228 len mem[_409] % 32]
                                require ext_code.size(address(_342))
                                call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_409], mem[_409 + 196 len floor32(mem[_409]) + 32]
                        else:
                            require 0 < mem[96]
                            require ext_code.size(mem[140 len 20])
                            staticcall mem[140 len 20].balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_409 + 64] = s
                            mem[_409 + 96] = ext_call.return_data[0]
                            mem[_409 + 32] = 64
                            mem[64] = _409 + 128
                            mem[_409 + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_409 + 132] = 0
                            mem[_409 + 164] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_409 + 196] = this.address
                            mem[_409 + 228] = 128
                            mem[_409 + 260] = 64
                            t = 0
                            while t < 64:
                                mem[_409 + t + 292] = mem[_409 + t + 64]
                                t = t + 32
                                continue 
                            require ext_code.size(address(_342))
                            call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, 64, mem[_409 + 292 len 64]
                    else:
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        _401 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                        _417 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        if idx:
                            mem[_417 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_417 + 36] = 0
                            mem[_417 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_417 + 100] = address(_401)
                            mem[_417 + 132] = 128
                            mem[_417 + 164] = mem[_417]
                            t = 0
                            while t < mem[_417]:
                                mem[_417 + t + 196] = mem[_417 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_417] % 32:
                                require ext_code.size(address(_342))
                                call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_401), 128, mem[_417 + 164 len mem[_417] + 32]
                            else:
                                mem[floor32(mem[_417]) + _417 + 196] = mem[floor32(mem[_417]) + _417 + -(mem[_417] % 32) + 228 len mem[_417] % 32]
                                require ext_code.size(address(_342))
                                call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_401), 128, mem[_417], mem[_417 + 196 len floor32(mem[_417]) + 32]
                        else:
                            require 0 < mem[96]
                            require ext_code.size(mem[140 len 20])
                            staticcall mem[140 len 20].balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_417 + 64] = s
                            mem[_417 + 96] = ext_call.return_data[0]
                            mem[_417 + 32] = 64
                            mem[64] = _417 + 128
                            mem[_417 + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_417 + 132] = 0
                            mem[_417 + 164] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_417 + 196] = address(_401)
                            mem[_417 + 228] = 128
                            mem[_417 + 260] = 64
                            t = 0
                            while t < 64:
                                mem[_417 + t + 292] = mem[_417 + t + 64]
                                t = t + 32
                                continue 
                            require ext_code.size(address(_342))
                            call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_401), 128, 64, mem[_417 + 292 len 64]
                else:
                    if idx >= mem[96] - 2:
                        _410 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        if idx:
                            mem[_410 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_410 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_410 + 68] = 0
                            mem[_410 + 100] = this.address
                            mem[_410 + 132] = 128
                            mem[_410 + 164] = mem[_410]
                            t = 0
                            while t < mem[_410]:
                                mem[_410 + t + 196] = mem[_410 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_410] % 32:
                                require ext_code.size(address(_342))
                                call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_410 + 164 len mem[_410] + 32]
                            else:
                                mem[floor32(mem[_410]) + _410 + 196] = mem[floor32(mem[_410]) + _410 + -(mem[_410] % 32) + 228 len mem[_410] % 32]
                                require ext_code.size(address(_342))
                                call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_410], mem[_410 + 196 len floor32(mem[_410]) + 32]
                        else:
                            require 0 < mem[96]
                            require ext_code.size(mem[140 len 20])
                            staticcall mem[140 len 20].balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_410 + 64] = s
                            mem[_410 + 96] = ext_call.return_data[0]
                            mem[_410 + 32] = 64
                            mem[64] = _410 + 128
                            mem[_410 + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_410 + 132] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_410 + 164] = 0
                            mem[_410 + 196] = this.address
                            mem[_410 + 228] = 128
                            mem[_410 + 260] = 64
                            t = 0
                            while t < 64:
                                mem[_410 + t + 292] = mem[_410 + t + 64]
                                t = t + 32
                                continue 
                            require ext_code.size(address(_342))
                            call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, 64, mem[_410 + 292 len 64]
                    else:
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        _402 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                        _418 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        if idx:
                            mem[_418 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_418 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_418 + 68] = 0
                            mem[_418 + 100] = address(_402)
                            mem[_418 + 132] = 128
                            mem[_418 + 164] = mem[_418]
                            t = 0
                            while t < mem[_418]:
                                mem[_418 + t + 196] = mem[_418 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_418] % 32:
                                require ext_code.size(address(_342))
                                call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_402), 128, mem[_418 + 164 len mem[_418] + 32]
                            else:
                                mem[floor32(mem[_418]) + _418 + 196] = mem[floor32(mem[_418]) + _418 + -(mem[_418] % 32) + 228 len mem[_418] % 32]
                                require ext_code.size(address(_342))
                                call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_402), 128, mem[_418], mem[_418 + 196 len floor32(mem[_418]) + 32]
                        else:
                            require 0 < mem[96]
                            require ext_code.size(mem[140 len 20])
                            staticcall mem[140 len 20].balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_418 + 64] = s
                            mem[_418 + 96] = ext_call.return_data[0]
                            mem[_418 + 32] = 64
                            mem[64] = _418 + 128
                            mem[_418 + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_418 + 132] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_418 + 164] = 0
                            mem[_418 + 196] = address(_402)
                            mem[_418 + 228] = 128
                            mem[_418 + 260] = 64
                            t = 0
                            while t < 64:
                                mem[_418 + t + 292] = mem[_418 + t + 64]
                                t = t + 32
                                continue 
                            require ext_code.size(address(_342))
                            call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_402), 128, 64, mem[_418 + 292 len 64]
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
                    _433 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    if idx:
                        mem[_433 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_433 + 36] = 0
                        mem[_433 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_433 + 100] = this.address
                        mem[_433 + 132] = 128
                        mem[_433 + 164] = mem[_433]
                        t = 0
                        while t < mem[_433]:
                            mem[_433 + t + 196] = mem[_433 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_433] % 32:
                            require ext_code.size(address(_342))
                            call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_433 + 164 len mem[_433] + 32]
                        else:
                            mem[floor32(mem[_433]) + _433 + 196] = mem[floor32(mem[_433]) + _433 + -(mem[_433] % 32) + 228 len mem[_433] % 32]
                            require ext_code.size(address(_342))
                            call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_433], mem[_433 + 196 len floor32(mem[_433]) + 32]
                    else:
                        require 0 < mem[96]
                        require ext_code.size(mem[140 len 20])
                        staticcall mem[140 len 20].balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_433 + 64] = s
                        mem[_433 + 96] = ext_call.return_data[0]
                        mem[_433 + 32] = 64
                        mem[64] = _433 + 128
                        mem[_433 + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_433 + 132] = 0
                        mem[_433 + 164] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_433 + 196] = this.address
                        mem[_433 + 228] = 128
                        mem[_433 + 260] = 64
                        t = 0
                        while t < 64:
                            mem[_433 + t + 292] = mem[_433 + t + 64]
                            t = t + 32
                            continue 
                        require ext_code.size(address(_342))
                        call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, 64, mem[_433 + 292 len 64]
                else:
                    require idx + 1 < mem[(32 * arg2.length) + 128]
                    _419 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                    _459 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    if idx:
                        mem[_459 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_459 + 36] = 0
                        mem[_459 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_459 + 100] = address(_419)
                        mem[_459 + 132] = 128
                        mem[_459 + 164] = mem[_459]
                        t = 0
                        while t < mem[_459]:
                            mem[_459 + t + 196] = mem[_459 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_459] % 32:
                            require ext_code.size(address(_342))
                            call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_419), 128, mem[_459 + 164 len mem[_459] + 32]
                        else:
                            mem[floor32(mem[_459]) + _459 + 196] = mem[floor32(mem[_459]) + _459 + -(mem[_459] % 32) + 228 len mem[_459] % 32]
                            require ext_code.size(address(_342))
                            call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_419), 128, mem[_459], mem[_459 + 196 len floor32(mem[_459]) + 32]
                    else:
                        require 0 < mem[96]
                        require ext_code.size(mem[140 len 20])
                        staticcall mem[140 len 20].balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_459 + 64] = s
                        mem[_459 + 96] = ext_call.return_data[0]
                        mem[_459 + 32] = 64
                        mem[64] = _459 + 128
                        mem[_459 + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_459 + 132] = 0
                        mem[_459 + 164] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_459 + 196] = address(_419)
                        mem[_459 + 228] = 128
                        mem[_459 + 260] = 64
                        t = 0
                        while t < 64:
                            mem[_459 + t + 292] = mem[_459 + t + 64]
                            t = t + 32
                            continue 
                        require ext_code.size(address(_342))
                        call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_419), 128, 64, mem[_459 + 292 len 64]
            else:
                if idx >= mem[96] - 2:
                    _434 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    if idx:
                        mem[_434 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_434 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_434 + 68] = 0
                        mem[_434 + 100] = this.address
                        mem[_434 + 132] = 128
                        mem[_434 + 164] = mem[_434]
                        t = 0
                        while t < mem[_434]:
                            mem[_434 + t + 196] = mem[_434 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_434] % 32:
                            require ext_code.size(address(_342))
                            call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_434 + 164 len mem[_434] + 32]
                        else:
                            mem[floor32(mem[_434]) + _434 + 196] = mem[floor32(mem[_434]) + _434 + -(mem[_434] % 32) + 228 len mem[_434] % 32]
                            require ext_code.size(address(_342))
                            call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_434], mem[_434 + 196 len floor32(mem[_434]) + 32]
                    else:
                        require 0 < mem[96]
                        require ext_code.size(mem[140 len 20])
                        staticcall mem[140 len 20].balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_434 + 64] = s
                        mem[_434 + 96] = ext_call.return_data[0]
                        mem[_434 + 32] = 64
                        mem[64] = _434 + 128
                        mem[_434 + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_434 + 132] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_434 + 164] = 0
                        mem[_434 + 196] = this.address
                        mem[_434 + 228] = 128
                        mem[_434 + 260] = 64
                        t = 0
                        while t < 64:
                            mem[_434 + t + 292] = mem[_434 + t + 64]
                            t = t + 32
                            continue 
                        require ext_code.size(address(_342))
                        call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, 64, mem[_434 + 292 len 64]
                else:
                    require idx + 1 < mem[(32 * arg2.length) + 128]
                    _420 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                    _460 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    if idx:
                        mem[_460 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_460 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_460 + 68] = 0
                        mem[_460 + 100] = address(_420)
                        mem[_460 + 132] = 128
                        mem[_460 + 164] = mem[_460]
                        t = 0
                        while t < mem[_460]:
                            mem[_460 + t + 196] = mem[_460 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_460] % 32:
                            require ext_code.size(address(_342))
                            call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_420), 128, mem[_460 + 164 len mem[_460] + 32]
                        else:
                            mem[floor32(mem[_460]) + _460 + 196] = mem[floor32(mem[_460]) + _460 + -(mem[_460] % 32) + 228 len mem[_460] % 32]
                            require ext_code.size(address(_342))
                            call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_420), 128, mem[_460], mem[_460 + 196 len floor32(mem[_460]) + 32]
                    else:
                        require 0 < mem[96]
                        require ext_code.size(mem[140 len 20])
                        staticcall mem[140 len 20].balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_460 + 64] = s
                        mem[_460 + 96] = ext_call.return_data[0]
                        mem[_460 + 32] = 64
                        mem[64] = _460 + 128
                        mem[_460 + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_460 + 132] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_460 + 164] = 0
                        mem[_460 + 196] = address(_420)
                        mem[_460 + 228] = 128
                        mem[_460 + 260] = 64
                        t = 0
                        while t < 64:
                            mem[_460 + t + 292] = mem[_460 + t + 64]
                            t = t + 32
                            continue 
                        require ext_code.size(address(_342))
                        call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_420), 128, 64, mem[_460 + 292 len 64]
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
                    _413 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    if idx:
                        mem[_413 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_413 + 36] = 0
                        mem[_413 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_413 + 100] = this.address
                        mem[_413 + 132] = 128
                        mem[_413 + 164] = mem[_413]
                        t = 0
                        while t < mem[_413]:
                            mem[_413 + t + 196] = mem[_413 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_413] % 32:
                            require ext_code.size(address(_342))
                            call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_413 + 164 len mem[_413] + 32]
                        else:
                            mem[floor32(mem[_413]) + _413 + 196] = mem[floor32(mem[_413]) + _413 + -(mem[_413] % 32) + 228 len mem[_413] % 32]
                            require ext_code.size(address(_342))
                            call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_413], mem[_413 + 196 len floor32(mem[_413]) + 32]
                    else:
                        require 0 < mem[96]
                        require ext_code.size(mem[140 len 20])
                        staticcall mem[140 len 20].balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_413 + 64] = s
                        mem[_413 + 96] = ext_call.return_data[0]
                        mem[_413 + 32] = 64
                        mem[64] = _413 + 128
                        mem[_413 + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_413 + 132] = 0
                        mem[_413 + 164] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_413 + 196] = this.address
                        mem[_413 + 228] = 128
                        mem[_413 + 260] = 64
                        t = 0
                        while t < 64:
                            mem[_413 + t + 292] = mem[_413 + t + 64]
                            t = t + 32
                            continue 
                        require ext_code.size(address(_342))
                        call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, 64, mem[_413 + 292 len 64]
                else:
                    require idx + 1 < mem[(32 * arg2.length) + 128]
                    _405 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                    _421 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    if idx:
                        mem[_421 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_421 + 36] = 0
                        mem[_421 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_421 + 100] = address(_405)
                        mem[_421 + 132] = 128
                        mem[_421 + 164] = mem[_421]
                        t = 0
                        while t < mem[_421]:
                            mem[_421 + t + 196] = mem[_421 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_421] % 32:
                            require ext_code.size(address(_342))
                            call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_405), 128, mem[_421 + 164 len mem[_421] + 32]
                        else:
                            mem[floor32(mem[_421]) + _421 + 196] = mem[floor32(mem[_421]) + _421 + -(mem[_421] % 32) + 228 len mem[_421] % 32]
                            require ext_code.size(address(_342))
                            call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_405), 128, mem[_421], mem[_421 + 196 len floor32(mem[_421]) + 32]
                    else:
                        require 0 < mem[96]
                        require ext_code.size(mem[140 len 20])
                        staticcall mem[140 len 20].balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_421 + 64] = s
                        mem[_421 + 96] = ext_call.return_data[0]
                        mem[_421 + 32] = 64
                        mem[64] = _421 + 128
                        mem[_421 + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_421 + 132] = 0
                        mem[_421 + 164] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_421 + 196] = address(_405)
                        mem[_421 + 228] = 128
                        mem[_421 + 260] = 64
                        t = 0
                        while t < 64:
                            mem[_421 + t + 292] = mem[_421 + t + 64]
                            t = t + 32
                            continue 
                        require ext_code.size(address(_342))
                        call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_405), 128, 64, mem[_421 + 292 len 64]
            else:
                if idx >= mem[96] - 2:
                    _414 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    if idx:
                        mem[_414 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_414 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_414 + 68] = 0
                        mem[_414 + 100] = this.address
                        mem[_414 + 132] = 128
                        mem[_414 + 164] = mem[_414]
                        t = 0
                        while t < mem[_414]:
                            mem[_414 + t + 196] = mem[_414 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_414] % 32:
                            require ext_code.size(address(_342))
                            call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_414 + 164 len mem[_414] + 32]
                        else:
                            mem[floor32(mem[_414]) + _414 + 196] = mem[floor32(mem[_414]) + _414 + -(mem[_414] % 32) + 228 len mem[_414] % 32]
                            require ext_code.size(address(_342))
                            call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_414], mem[_414 + 196 len floor32(mem[_414]) + 32]
                    else:
                        require 0 < mem[96]
                        require ext_code.size(mem[140 len 20])
                        staticcall mem[140 len 20].balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_414 + 64] = s
                        mem[_414 + 96] = ext_call.return_data[0]
                        mem[_414 + 32] = 64
                        mem[64] = _414 + 128
                        mem[_414 + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_414 + 132] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_414 + 164] = 0
                        mem[_414 + 196] = this.address
                        mem[_414 + 228] = 128
                        mem[_414 + 260] = 64
                        t = 0
                        while t < 64:
                            mem[_414 + t + 292] = mem[_414 + t + 64]
                            t = t + 32
                            continue 
                        require ext_code.size(address(_342))
                        call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, 64, mem[_414 + 292 len 64]
                else:
                    require idx + 1 < mem[(32 * arg2.length) + 128]
                    _406 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                    _422 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    if idx:
                        mem[_422 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_422 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_422 + 68] = 0
                        mem[_422 + 100] = address(_406)
                        mem[_422 + 132] = 128
                        mem[_422 + 164] = mem[_422]
                        t = 0
                        while t < mem[_422]:
                            mem[_422 + t + 196] = mem[_422 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_422] % 32:
                            require ext_code.size(address(_342))
                            call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_406), 128, mem[_422 + 164 len mem[_422] + 32]
                        else:
                            mem[floor32(mem[_422]) + _422 + 196] = mem[floor32(mem[_422]) + _422 + -(mem[_422] % 32) + 228 len mem[_422] % 32]
                            require ext_code.size(address(_342))
                            call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_406), 128, mem[_422], mem[_422 + 196 len floor32(mem[_422]) + 32]
                    else:
                        require 0 < mem[96]
                        require ext_code.size(mem[140 len 20])
                        staticcall mem[140 len 20].balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_422 + 64] = s
                        mem[_422 + 96] = ext_call.return_data[0]
                        mem[_422 + 32] = 64
                        mem[64] = _422 + 128
                        mem[_422 + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_422 + 132] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_422 + 164] = 0
                        mem[_422 + 196] = address(_406)
                        mem[_422 + 228] = 128
                        mem[_422 + 260] = 64
                        t = 0
                        while t < 64:
                            mem[_422 + t + 292] = mem[_422 + t + 64]
                            t = t + 32
                            continue 
                        require ext_code.size(address(_342))
                        call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_406), 128, 64, mem[_422 + 292 len 64]
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
                _443 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                if idx:
                    mem[_443 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_443 + 36] = 0
                    mem[_443 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_443 + 100] = this.address
                    mem[_443 + 132] = 128
                    mem[_443 + 164] = mem[_443]
                    t = 0
                    while t < mem[_443]:
                        mem[_443 + t + 196] = mem[_443 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_443] % 32:
                        require ext_code.size(address(_342))
                        call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_443 + 164 len mem[_443] + 32]
                    else:
                        mem[floor32(mem[_443]) + _443 + 196] = mem[floor32(mem[_443]) + _443 + -(mem[_443] % 32) + 228 len mem[_443] % 32]
                        require ext_code.size(address(_342))
                        call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_443], mem[_443 + 196 len floor32(mem[_443]) + 32]
                else:
                    require 0 < mem[96]
                    require ext_code.size(mem[140 len 20])
                    staticcall mem[140 len 20].balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_443 + 64] = s
                    mem[_443 + 96] = ext_call.return_data[0]
                    mem[_443 + 32] = 64
                    mem[64] = _443 + 128
                    mem[_443 + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_443 + 132] = 0
                    mem[_443 + 164] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_443 + 196] = this.address
                    mem[_443 + 228] = 128
                    mem[_443 + 260] = 64
                    t = 0
                    while t < 64:
                        mem[_443 + t + 292] = mem[_443 + t + 64]
                        t = t + 32
                        continue 
                    require ext_code.size(address(_342))
                    call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, 64, mem[_443 + 292 len 64]
            else:
                require idx + 1 < mem[(32 * arg2.length) + 128]
                _423 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                _475 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                if idx:
                    mem[_475 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_475 + 36] = 0
                    mem[_475 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_475 + 100] = address(_423)
                    mem[_475 + 132] = 128
                    mem[_475 + 164] = mem[_475]
                    t = 0
                    while t < mem[_475]:
                        mem[_475 + t + 196] = mem[_475 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_475] % 32:
                        require ext_code.size(address(_342))
                        call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_423), 128, mem[_475 + 164 len mem[_475] + 32]
                    else:
                        mem[floor32(mem[_475]) + _475 + 196] = mem[floor32(mem[_475]) + _475 + -(mem[_475] % 32) + 228 len mem[_475] % 32]
                        require ext_code.size(address(_342))
                        call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_423), 128, mem[_475], mem[_475 + 196 len floor32(mem[_475]) + 32]
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
                    mem[_475 + 196] = address(_423)
                    mem[_475 + 228] = 128
                    mem[_475 + 260] = 64
                    t = 0
                    while t < 64:
                        mem[_475 + t + 292] = mem[_475 + t + 64]
                        t = t + 32
                        continue 
                    require ext_code.size(address(_342))
                    call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_423), 128, 64, mem[_475 + 292 len 64]
        else:
            if idx >= mem[96] - 2:
                _444 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                if idx:
                    mem[_444 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_444 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_444 + 68] = 0
                    mem[_444 + 100] = this.address
                    mem[_444 + 132] = 128
                    mem[_444 + 164] = mem[_444]
                    t = 0
                    while t < mem[_444]:
                        mem[_444 + t + 196] = mem[_444 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_444] % 32:
                        require ext_code.size(address(_342))
                        call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_444 + 164 len mem[_444] + 32]
                    else:
                        mem[floor32(mem[_444]) + _444 + 196] = mem[floor32(mem[_444]) + _444 + -(mem[_444] % 32) + 228 len mem[_444] % 32]
                        require ext_code.size(address(_342))
                        call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_444], mem[_444 + 196 len floor32(mem[_444]) + 32]
                else:
                    require 0 < mem[96]
                    require ext_code.size(mem[140 len 20])
                    staticcall mem[140 len 20].balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_444 + 64] = s
                    mem[_444 + 96] = ext_call.return_data[0]
                    mem[_444 + 32] = 64
                    mem[64] = _444 + 128
                    mem[_444 + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_444 + 132] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_444 + 164] = 0
                    mem[_444 + 196] = this.address
                    mem[_444 + 228] = 128
                    mem[_444 + 260] = 64
                    t = 0
                    while t < 64:
                        mem[_444 + t + 292] = mem[_444 + t + 64]
                        t = t + 32
                        continue 
                    require ext_code.size(address(_342))
                    call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, 64, mem[_444 + 292 len 64]
            else:
                require idx + 1 < mem[(32 * arg2.length) + 128]
                _424 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                _476 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                if idx:
                    mem[_476 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_476 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_476 + 68] = 0
                    mem[_476 + 100] = address(_424)
                    mem[_476 + 132] = 128
                    mem[_476 + 164] = mem[_476]
                    t = 0
                    while t < mem[_476]:
                        mem[_476 + t + 196] = mem[_476 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_476] % 32:
                        require ext_code.size(address(_342))
                        call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_424), 128, mem[_476 + 164 len mem[_476] + 32]
                    else:
                        mem[floor32(mem[_476]) + _476 + 196] = mem[floor32(mem[_476]) + _476 + -(mem[_476] % 32) + 228 len mem[_476] % 32]
                        require ext_code.size(address(_342))
                        call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_424), 128, mem[_476], mem[_476 + 196 len floor32(mem[_476]) + 32]
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
                    mem[_476 + 196] = address(_424)
                    mem[_476 + 228] = 128
                    mem[_476 + 260] = 64
                    t = 0
                    while t < 64:
                        mem[_476 + t + 292] = mem[_476 + t + 64]
                        t = t + 32
                        continue 
                    require ext_code.size(address(_342))
                    call address(_342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_424), 128, 64, mem[_476 + 292 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
        s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
        continue 
}



}
