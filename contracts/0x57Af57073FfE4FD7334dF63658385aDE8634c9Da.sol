contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
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

function withdrawToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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

function withdrawTokenTo(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
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

function toString(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require (2 * arg1.length) + 2 <= test266151307()
    if (2 * arg1.length) + 2:
        mem[ceil32(arg1.length) + 224 len (2 * arg1.length) + 2] = call.data[calldata.size len (2 * arg1.length) + 2]
    require 0 < (2 * arg1.length) + 2
    require 1 < (2 * arg1.length) + 2
    mem[ceil32(arg1.length) + 225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require 2 * idx < 2 * arg1.length
        mem[(2 * idx) + ceil32(arg1.length) + 226 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        require idx < arg1.length
        require (2 * idx) + 3 < (2 * arg1.length) + 2
        mem[(2 * idx) + ceil32(arg1.length) + 227 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        idx = idx + 1
        continue 
    return Array(len=(2 * arg1.length) + 2, data=Mask(8 * (2 * arg1.length) + 2, -(8 * (2 * arg1.length) + 2) + 256, 0, mem[ceil32(arg1.length) + 225 len floor32((2 * arg1.length) + 33) - 1]) << (8 * (2 * arg1.length) + 2) - 256), 
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
    staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
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
    while idx < 1:
        require idx < mem[(32 * arg2.length) + 128]
        _180 = mem[(32 * idx) + (32 * arg2.length) + 160]
        require ext_code.size(mem[(32 * idx) + (32 * arg2.length) + 172 len 20])
        staticcall mem[(32 * idx) + (32 * arg2.length) + 172 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require idx + 1 < mem[96]
        require idx < mem[96]
        if 997 * arg1 / 997 != arg1:
            revert with 0, 'ds-math-mul-overflow'
        if mem[(32 * idx) + 140 len 20] <= mem[(32 * idx + 1) + 140 len 20]:
            if not Mask(112, 0, ext_call.return_data[32]):
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-add-overflow'
                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)
                require idx + 1 < mem[96]
                require idx < mem[96]
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    _243 = mem[64]
                    mem[mem[64] + 32] = arg1
                    mem[mem[64] + 64] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)
                    mem[mem[64] + 96] = 128
                    mem[mem[64] + 160] = mem[96]
                    _245 = mem[96]
                    s = 0
                    while s < 32 * mem[96]:
                        mem[mem[64] + s + 192] = mem[s + 128]
                        s = s + 32
                        continue 
                    mem[_243 + 128] = (32 * mem[96]) + 160
                    mem[(32 * mem[96]) + _243 + 192] = mem[(32 * arg2.length) + 128]
                    _369 = mem[(32 * arg2.length) + 128]
                    s = 0
                    while s < 32 * _369:
                        mem[(32 * mem[96]) + _243 + s + 224] = mem[(32 * arg2.length) + s + 160]
                        s = s + 32
                        continue 
                    _484 = mem[64]
                    mem[64] = (32 * _369) + (32 * mem[96]) + _243 + 224
                    mem[(32 * _369) + (32 * mem[96]) + _243 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _369) + (32 * mem[96]) + _243 + 228] = 0
                    mem[(32 * _369) + (32 * mem[96]) + _243 + 260] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)
                    mem[(32 * _369) + (32 * mem[96]) + _243 + 292] = this.address
                    mem[(32 * _369) + (32 * mem[96]) + _243 + 324] = 128
                    mem[(32 * _369) + (32 * mem[96]) + _243 + 356] = mem[_484]
                    _487 = mem[_484]
                    s = 0
                    while s < _487:
                        mem[(32 * _369) + (32 * mem[96]) + _243 + s + 388] = mem[_484 + s + 32]
                        s = s + 32
                        continue 
                    if not _487 % 32:
                        require ext_code.size(address(_180))
                        call address(_180).mem[(32 * _369) + (32 * _245) + _243 + 224 len 4] with:
                             gas gas_remaining wei
                            args mem[(32 * _369) + (32 * _245) + _243 + 228 len _487 + (32 * mem[96]) + -(32 * _245) + 160]
                    else:
                        mem[floor32(_487) + (32 * _369) + (32 * mem[96]) + _243 + 388] = mem[floor32(_487) + (32 * _369) + (32 * mem[96]) + _243 + -(_487 % 32) + 420 len _487 % 32]
                        require ext_code.size(address(_180))
                        call address(_180).mem[(32 * _369) + (32 * _245) + _243 + 224 len 4] with:
                             gas gas_remaining wei
                            args mem[(32 * _369) + (32 * _245) + _243 + 228 len floor32(_487) + (32 * mem[96]) + -(32 * _245) + 192]
                else:
                    _246 = mem[64]
                    mem[mem[64] + 32] = arg1
                    mem[mem[64] + 64] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)
                    mem[mem[64] + 96] = 128
                    mem[mem[64] + 160] = mem[96]
                    _248 = mem[96]
                    s = 0
                    while s < 32 * mem[96]:
                        mem[mem[64] + s + 192] = mem[s + 128]
                        s = s + 32
                        continue 
                    mem[_246 + 128] = (32 * mem[96]) + 160
                    mem[(32 * mem[96]) + _246 + 192] = mem[(32 * arg2.length) + 128]
                    _372 = mem[(32 * arg2.length) + 128]
                    s = 0
                    while s < 32 * _372:
                        mem[(32 * mem[96]) + _246 + s + 224] = mem[(32 * arg2.length) + s + 160]
                        s = s + 32
                        continue 
                    _489 = mem[64]
                    mem[64] = (32 * _372) + (32 * mem[96]) + _246 + 224
                    mem[(32 * _372) + (32 * mem[96]) + _246 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _372) + (32 * mem[96]) + _246 + 228] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)
                    mem[(32 * _372) + (32 * mem[96]) + _246 + 260] = 0
                    mem[(32 * _372) + (32 * mem[96]) + _246 + 292] = this.address
                    mem[(32 * _372) + (32 * mem[96]) + _246 + 324] = 128
                    mem[(32 * _372) + (32 * mem[96]) + _246 + 356] = mem[_489]
                    _492 = mem[_489]
                    s = 0
                    while s < _492:
                        mem[(32 * _372) + (32 * mem[96]) + _246 + s + 388] = mem[_489 + s + 32]
                        s = s + 32
                        continue 
                    if not _492 % 32:
                        require ext_code.size(address(_180))
                        call address(_180).mem[(32 * _372) + (32 * _248) + _246 + 224 len 4] with:
                             gas gas_remaining wei
                            args mem[(32 * _372) + (32 * _248) + _246 + 228 len _492 + (32 * mem[96]) + -(32 * _248) + 160]
                    else:
                        mem[floor32(_492) + (32 * _372) + (32 * mem[96]) + _246 + 388] = mem[floor32(_492) + (32 * _372) + (32 * mem[96]) + _246 + -(_492 % 32) + 420 len _492 % 32]
                        require ext_code.size(address(_180))
                        call address(_180).mem[(32 * _372) + (32 * _248) + _246 + 224 len 4] with:
                             gas gas_remaining wei
                            args mem[(32 * _372) + (32 * _248) + _246 + 228 len floor32(_492) + (32 * mem[96]) + -(32 * _248) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)
                continue 
            require Mask(112, 0, ext_call.return_data[32])
            if 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * arg1:
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'ds-math-mul-overflow'
            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'ds-math-add-overflow'
            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)
            require idx + 1 < mem[96]
            require idx < mem[96]
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                _265 = mem[64]
                mem[mem[64] + 32] = arg1
                mem[mem[64] + 64] = 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)
                mem[mem[64] + 96] = 128
                mem[mem[64] + 160] = mem[96]
                _267 = mem[96]
                s = 0
                while s < 32 * mem[96]:
                    mem[mem[64] + s + 192] = mem[s + 128]
                    s = s + 32
                    continue 
                mem[_265 + 128] = (32 * mem[96]) + 160
                mem[(32 * mem[96]) + _265 + 192] = mem[(32 * arg2.length) + 128]
                _375 = mem[(32 * arg2.length) + 128]
                s = 0
                while s < 32 * _375:
                    mem[(32 * mem[96]) + _265 + s + 224] = mem[(32 * arg2.length) + s + 160]
                    s = s + 32
                    continue 
                _494 = mem[64]
                mem[64] = (32 * _375) + (32 * mem[96]) + _265 + 224
                mem[(32 * _375) + (32 * mem[96]) + _265 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _375) + (32 * mem[96]) + _265 + 228] = 0
                mem[(32 * _375) + (32 * mem[96]) + _265 + 260] = 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)
                mem[(32 * _375) + (32 * mem[96]) + _265 + 292] = this.address
                mem[(32 * _375) + (32 * mem[96]) + _265 + 324] = 128
                mem[(32 * _375) + (32 * mem[96]) + _265 + 356] = mem[_494]
                _497 = mem[_494]
                s = 0
                while s < _497:
                    mem[(32 * _375) + (32 * mem[96]) + _265 + s + 388] = mem[_494 + s + 32]
                    s = s + 32
                    continue 
                if not _497 % 32:
                    require ext_code.size(address(_180))
                    call address(_180).mem[(32 * _375) + (32 * _267) + _265 + 224 len 4] with:
                         gas gas_remaining wei
                        args mem[(32 * _375) + (32 * _267) + _265 + 228 len _497 + (32 * mem[96]) + -(32 * _267) + 160]
                else:
                    mem[floor32(_497) + (32 * _375) + (32 * mem[96]) + _265 + 388] = mem[floor32(_497) + (32 * _375) + (32 * mem[96]) + _265 + -(_497 % 32) + 420 len _497 % 32]
                    require ext_code.size(address(_180))
                    call address(_180).mem[(32 * _375) + (32 * _267) + _265 + 224 len 4] with:
                         gas gas_remaining wei
                        args mem[(32 * _375) + (32 * _267) + _265 + 228 len floor32(_497) + (32 * mem[96]) + -(32 * _267) + 192]
            else:
                _268 = mem[64]
                mem[mem[64] + 32] = arg1
                mem[mem[64] + 64] = 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)
                mem[mem[64] + 96] = 128
                mem[mem[64] + 160] = mem[96]
                _270 = mem[96]
                s = 0
                while s < 32 * mem[96]:
                    mem[mem[64] + s + 192] = mem[s + 128]
                    s = s + 32
                    continue 
                mem[_268 + 128] = (32 * mem[96]) + 160
                mem[(32 * mem[96]) + _268 + 192] = mem[(32 * arg2.length) + 128]
                _378 = mem[(32 * arg2.length) + 128]
                s = 0
                while s < 32 * _378:
                    mem[(32 * mem[96]) + _268 + s + 224] = mem[(32 * arg2.length) + s + 160]
                    s = s + 32
                    continue 
                _499 = mem[64]
                mem[64] = (32 * _378) + (32 * mem[96]) + _268 + 224
                mem[(32 * _378) + (32 * mem[96]) + _268 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _378) + (32 * mem[96]) + _268 + 228] = 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)
                mem[(32 * _378) + (32 * mem[96]) + _268 + 260] = 0
                mem[(32 * _378) + (32 * mem[96]) + _268 + 292] = this.address
                mem[(32 * _378) + (32 * mem[96]) + _268 + 324] = 128
                mem[(32 * _378) + (32 * mem[96]) + _268 + 356] = mem[_499]
                _502 = mem[_499]
                s = 0
                while s < _502:
                    mem[(32 * _378) + (32 * mem[96]) + _268 + s + 388] = mem[_499 + s + 32]
                    s = s + 32
                    continue 
                if not _502 % 32:
                    require ext_code.size(address(_180))
                    call address(_180).mem[(32 * _378) + (32 * _270) + _268 + 224 len 4] with:
                         gas gas_remaining wei
                        args mem[(32 * _378) + (32 * _270) + _268 + 228 len _502 + (32 * mem[96]) + -(32 * _270) + 160]
                else:
                    mem[floor32(_502) + (32 * _378) + (32 * mem[96]) + _268 + 388] = mem[floor32(_502) + (32 * _378) + (32 * mem[96]) + _268 + -(_502 % 32) + 420 len _502 % 32]
                    require ext_code.size(address(_180))
                    call address(_180).mem[(32 * _378) + (32 * _270) + _268 + 224 len 4] with:
                         gas gas_remaining wei
                        args mem[(32 * _378) + (32 * _270) + _268 + 228 len floor32(_502) + (32 * mem[96]) + -(32 * _270) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)
            continue 
        if not Mask(112, 0, ext_call.return_data[0]):
            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-mul-overflow'
            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-add-overflow'
            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)
            require idx + 1 < mem[96]
            require idx < mem[96]
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                _252 = mem[64]
                mem[mem[64] + 32] = arg1
                mem[mem[64] + 64] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)
                mem[mem[64] + 96] = 128
                mem[mem[64] + 160] = mem[96]
                _254 = mem[96]
                s = 0
                while s < 32 * mem[96]:
                    mem[mem[64] + s + 192] = mem[s + 128]
                    s = s + 32
                    continue 
                mem[_252 + 128] = (32 * mem[96]) + 160
                mem[(32 * mem[96]) + _252 + 192] = mem[(32 * arg2.length) + 128]
                _381 = mem[(32 * arg2.length) + 128]
                s = 0
                while s < 32 * _381:
                    mem[(32 * mem[96]) + _252 + s + 224] = mem[(32 * arg2.length) + s + 160]
                    s = s + 32
                    continue 
                _504 = mem[64]
                mem[64] = (32 * _381) + (32 * mem[96]) + _252 + 224
                mem[(32 * _381) + (32 * mem[96]) + _252 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _381) + (32 * mem[96]) + _252 + 228] = 0
                mem[(32 * _381) + (32 * mem[96]) + _252 + 260] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)
                mem[(32 * _381) + (32 * mem[96]) + _252 + 292] = this.address
                mem[(32 * _381) + (32 * mem[96]) + _252 + 324] = 128
                mem[(32 * _381) + (32 * mem[96]) + _252 + 356] = mem[_504]
                _507 = mem[_504]
                s = 0
                while s < _507:
                    mem[(32 * _381) + (32 * mem[96]) + _252 + s + 388] = mem[_504 + s + 32]
                    s = s + 32
                    continue 
                if not _507 % 32:
                    require ext_code.size(address(_180))
                    call address(_180).mem[(32 * _381) + (32 * _254) + _252 + 224 len 4] with:
                         gas gas_remaining wei
                        args mem[(32 * _381) + (32 * _254) + _252 + 228 len _507 + (32 * mem[96]) + -(32 * _254) + 160]
                else:
                    mem[floor32(_507) + (32 * _381) + (32 * mem[96]) + _252 + 388] = mem[floor32(_507) + (32 * _381) + (32 * mem[96]) + _252 + -(_507 % 32) + 420 len _507 % 32]
                    require ext_code.size(address(_180))
                    call address(_180).mem[(32 * _381) + (32 * _254) + _252 + 224 len 4] with:
                         gas gas_remaining wei
                        args mem[(32 * _381) + (32 * _254) + _252 + 228 len floor32(_507) + (32 * mem[96]) + -(32 * _254) + 192]
            else:
                _255 = mem[64]
                mem[mem[64] + 32] = arg1
                mem[mem[64] + 64] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)
                mem[mem[64] + 96] = 128
                mem[mem[64] + 160] = mem[96]
                _257 = mem[96]
                s = 0
                while s < 32 * mem[96]:
                    mem[mem[64] + s + 192] = mem[s + 128]
                    s = s + 32
                    continue 
                mem[_255 + 128] = (32 * mem[96]) + 160
                mem[(32 * mem[96]) + _255 + 192] = mem[(32 * arg2.length) + 128]
                _384 = mem[(32 * arg2.length) + 128]
                s = 0
                while s < 32 * _384:
                    mem[(32 * mem[96]) + _255 + s + 224] = mem[(32 * arg2.length) + s + 160]
                    s = s + 32
                    continue 
                _509 = mem[64]
                mem[64] = (32 * _384) + (32 * mem[96]) + _255 + 224
                mem[(32 * _384) + (32 * mem[96]) + _255 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _384) + (32 * mem[96]) + _255 + 228] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)
                mem[(32 * _384) + (32 * mem[96]) + _255 + 260] = 0
                mem[(32 * _384) + (32 * mem[96]) + _255 + 292] = this.address
                mem[(32 * _384) + (32 * mem[96]) + _255 + 324] = 128
                mem[(32 * _384) + (32 * mem[96]) + _255 + 356] = mem[_509]
                _512 = mem[_509]
                s = 0
                while s < _512:
                    mem[(32 * _384) + (32 * mem[96]) + _255 + s + 388] = mem[_509 + s + 32]
                    s = s + 32
                    continue 
                if not _512 % 32:
                    require ext_code.size(address(_180))
                    call address(_180).mem[(32 * _384) + (32 * _257) + _255 + 224 len 4] with:
                         gas gas_remaining wei
                        args mem[(32 * _384) + (32 * _257) + _255 + 228 len _512 + (32 * mem[96]) + -(32 * _257) + 160]
                else:
                    mem[floor32(_512) + (32 * _384) + (32 * mem[96]) + _255 + 388] = mem[floor32(_512) + (32 * _384) + (32 * mem[96]) + _255 + -(_512 % 32) + 420 len _512 % 32]
                    require ext_code.size(address(_180))
                    call address(_180).mem[(32 * _384) + (32 * _257) + _255 + 224 len 4] with:
                         gas gas_remaining wei
                        args mem[(32 * _384) + (32 * _257) + _255 + 228 len floor32(_512) + (32 * mem[96]) + -(32 * _257) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)
            continue 
        require Mask(112, 0, ext_call.return_data[0])
        if 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * arg1:
            revert with 0, 'ds-math-mul-overflow'
        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'ds-math-mul-overflow'
        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) < 1000 * Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'ds-math-add-overflow'
        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)
        require idx + 1 < mem[96]
        require idx < mem[96]
        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
            _277 = mem[64]
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)
            mem[mem[64] + 96] = 128
            mem[mem[64] + 160] = mem[96]
            _279 = mem[96]
            s = 0
            while s < 32 * mem[96]:
                mem[mem[64] + s + 192] = mem[s + 128]
                s = s + 32
                continue 
            mem[_277 + 128] = (32 * mem[96]) + 160
            mem[(32 * mem[96]) + _277 + 192] = mem[(32 * arg2.length) + 128]
            _387 = mem[(32 * arg2.length) + 128]
            s = 0
            while s < 32 * _387:
                mem[(32 * mem[96]) + _277 + s + 224] = mem[(32 * arg2.length) + s + 160]
                s = s + 32
                continue 
            _514 = mem[64]
            mem[64] = (32 * _387) + (32 * mem[96]) + _277 + 224
            mem[(32 * _387) + (32 * mem[96]) + _277 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _387) + (32 * mem[96]) + _277 + 228] = 0
            mem[(32 * _387) + (32 * mem[96]) + _277 + 260] = 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)
            mem[(32 * _387) + (32 * mem[96]) + _277 + 292] = this.address
            mem[(32 * _387) + (32 * mem[96]) + _277 + 324] = 128
            mem[(32 * _387) + (32 * mem[96]) + _277 + 356] = mem[_514]
            _517 = mem[_514]
            s = 0
            while s < _517:
                mem[(32 * _387) + (32 * mem[96]) + _277 + s + 388] = mem[_514 + s + 32]
                s = s + 32
                continue 
            if not _517 % 32:
                require ext_code.size(address(_180))
                call address(_180).mem[(32 * _387) + (32 * _279) + _277 + 224 len 4] with:
                     gas gas_remaining wei
                    args mem[(32 * _387) + (32 * _279) + _277 + 228 len _517 + (32 * mem[96]) + -(32 * _279) + 160]
            else:
                mem[floor32(_517) + (32 * _387) + (32 * mem[96]) + _277 + 388] = mem[floor32(_517) + (32 * _387) + (32 * mem[96]) + _277 + -(_517 % 32) + 420 len _517 % 32]
                require ext_code.size(address(_180))
                call address(_180).mem[(32 * _387) + (32 * _279) + _277 + 224 len 4] with:
                     gas gas_remaining wei
                    args mem[(32 * _387) + (32 * _279) + _277 + 228 len floor32(_517) + (32 * mem[96]) + -(32 * _279) + 192]
        else:
            _280 = mem[64]
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)
            mem[mem[64] + 96] = 128
            mem[mem[64] + 160] = mem[96]
            _282 = mem[96]
            s = 0
            while s < 32 * mem[96]:
                mem[mem[64] + s + 192] = mem[s + 128]
                s = s + 32
                continue 
            mem[_280 + 128] = (32 * mem[96]) + 160
            mem[(32 * mem[96]) + _280 + 192] = mem[(32 * arg2.length) + 128]
            _390 = mem[(32 * arg2.length) + 128]
            s = 0
            while s < 32 * _390:
                mem[(32 * mem[96]) + _280 + s + 224] = mem[(32 * arg2.length) + s + 160]
                s = s + 32
                continue 
            _519 = mem[64]
            mem[64] = (32 * _390) + (32 * mem[96]) + _280 + 224
            mem[(32 * _390) + (32 * mem[96]) + _280 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _390) + (32 * mem[96]) + _280 + 228] = 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)
            mem[(32 * _390) + (32 * mem[96]) + _280 + 260] = 0
            mem[(32 * _390) + (32 * mem[96]) + _280 + 292] = this.address
            mem[(32 * _390) + (32 * mem[96]) + _280 + 324] = 128
            mem[(32 * _390) + (32 * mem[96]) + _280 + 356] = mem[_519]
            _522 = mem[_519]
            s = 0
            while s < _522:
                mem[(32 * _390) + (32 * mem[96]) + _280 + s + 388] = mem[_519 + s + 32]
                s = s + 32
                continue 
            if not _522 % 32:
                require ext_code.size(address(_180))
                call address(_180).mem[(32 * _390) + (32 * _282) + _280 + 224 len 4] with:
                     gas gas_remaining wei
                    args mem[(32 * _390) + (32 * _282) + _280 + 228 len _522 + (32 * mem[96]) + -(32 * _282) + 160]
            else:
                mem[floor32(_522) + (32 * _390) + (32 * mem[96]) + _280 + 388] = mem[floor32(_522) + (32 * _390) + (32 * mem[96]) + _280 + -(_522 % 32) + 420 len _522 % 32]
                require ext_code.size(address(_180))
                call address(_180).mem[(32 * _390) + (32 * _282) + _280 + 224 len 4] with:
                     gas gas_remaining wei
                    args mem[(32 * _390) + (32 * _282) + _280 + 228 len floor32(_522) + (32 * mem[96]) + -(32 * _282) + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)
        continue 
    require 0 < arg2.length
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[(arg2 + 36)]))
    staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
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
    _392 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s - 1
        idx = 0 / arg5
        while idx:
            require t < mem[_392]
            mem[t + _392 + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _526 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_392]
        _528 = mem[_392]
        mem[mem[64] + 68 len ceil32(mem[_392])] = mem[_392 + 32 len ceil32(mem[_392])]
        if not _528 % 32:
            revert with 0, 32, mem[mem[64] + 36 len _528 + 32]
        mem[floor32(_528) + mem[64] + 68] = mem[floor32(_528) + mem[64] + -(_528 % 32) + 100 len _528 % 32]
        revert with memory
          from mem[64]
           len floor32(_528) + _526 + -mem[64] + 100
    mem[_392 + 32 len s] = call.data[calldata.size len s]
    t = s - 1
    idx = 0 / arg5
    while idx:
        require t < mem[_392]
        mem[t + _392 + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _529 = mem[64]
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[_392]
    _531 = mem[_392]
    mem[mem[64] + 68 len ceil32(mem[_392])] = mem[_392 + 32 len ceil32(mem[_392])]
    if not _531 % 32:
        revert with 0, 32, mem[mem[64] + 36 len _531 + 32]
    mem[floor32(_531) + mem[64] + 68] = mem[floor32(_531) + mem[64] + -(_531 % 32) + 100 len _531 % 32]
    revert with memory
      from mem[64]
       len floor32(_531) + _529 + -mem[64] + 100
}

function hswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
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
    mem[ceil32(arg4.length) + 132] = address(ext_call.return_data[0])
    mem[ceil32(arg4.length) + 164] = address(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    36,
                    0x7320656e737572652074686174206d73672e73656e646572206973206120563220706169,
                    mem[ceil32(arg4.length) + 232 len 28]
    if arg1 != this.address:
        revert with 0, 32, 33, 0x72756e6973776170563243616c6c2073656e646572206d7573742062652073656c, mem[ceil32(arg4.length) + 229 len 31]
    require arg4.length >= 128
    _23 = mem[128]
    _24 = mem[160]
    _25 = mem[192]
    require mem[192] <= 4294967296
    require mem[192] + 64 <= arg4.length + 32
    require mem[mem[192] + 128] <= 4294967296 and mem[192] + (32 * mem[mem[192] + 128]) + 64 <= arg4.length + 32
    mem[ceil32(arg4.length) + 128] = mem[mem[192] + 128]
    _28 = mem[_25 + 128]
    mem[ceil32(arg4.length) + 160 len floor32(mem[_25 + 128])] = mem[_25 + 160 len floor32(mem[_25 + 128])]
    _906 = mem[224]
    require mem[224] <= 4294967296
    require mem[224] + 64 <= arg4.length + 32
    require mem[mem[224] + 128] <= 4294967296 and mem[224] + (32 * mem[mem[224] + 128]) + 64 <= arg4.length + 32
    mem[(32 * _28) + ceil32(arg4.length) + 160] = mem[mem[224] + 128]
    _910 = mem[_906 + 128]
    mem[(32 * _28) + ceil32(arg4.length) + 192 len floor32(mem[_906 + 128])] = mem[_906 + 160 len floor32(mem[_906 + 128])]
    mem[64] = (32 * _910) + (32 * _28) + ceil32(arg4.length) + 192
    _2655 = 0, mem[ceil32(arg4.length) + 132 len 28]
    idx = 1
    s = _24
    s = _24
    while idx < _2655 - 1:
        if idx != 1:
            require idx < mem[(32 * _28) + ceil32(arg4.length) + 160]
            _2665 = mem[(32 * idx) + (32 * _28) + ceil32(arg4.length) + 192]
            require ext_code.size(mem[(32 * idx) + (32 * _28) + ceil32(arg4.length) + 204 len 20])
            staticcall mem[(32 * idx) + (32 * _28) + ceil32(arg4.length) + 204 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx + 1 < mem[ceil32(arg4.length) + 128]
            require idx < mem[ceil32(arg4.length) + 128]
            if 997 * s / 997 != s:
                revert with 0, 'ds-math-mul-overflow'
            if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                if not Mask(112, 0, ext_call.return_data[32]):
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                    require idx + 1 < mem[ceil32(arg4.length) + 128]
                    require idx < mem[ceil32(arg4.length) + 128]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        if idx >= mem[ceil32(arg4.length) + 128] - 2:
                            _2858 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2858 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2858 + 36] = 0
                            mem[_2858 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_2858 + 100] = this.address
                            mem[_2858 + 132] = 128
                            mem[_2858 + 164] = mem[_2858]
                            t = 0
                            while t < mem[_2858]:
                                mem[_2858 + t + 196] = mem[_2858 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2858] % 32:
                                require ext_code.size(address(_2665))
                                call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2858 + 164 len mem[_2858] + 32]
                            else:
                                mem[floor32(mem[_2858]) + _2858 + 196] = mem[floor32(mem[_2858]) + _2858 + -(mem[_2858] % 32) + 228 len mem[_2858] % 32]
                                require ext_code.size(address(_2665))
                                call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2858], mem[_2858 + 196 len floor32(mem[_2858]) + 32]
                        else:
                            require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                            _2850 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                            _2874 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2874 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2874 + 36] = 0
                            mem[_2874 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_2874 + 100] = address(_2850)
                            mem[_2874 + 132] = 128
                            mem[_2874 + 164] = mem[_2874]
                            t = 0
                            while t < mem[_2874]:
                                mem[_2874 + t + 196] = mem[_2874 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2874] % 32:
                                require ext_code.size(address(_2665))
                                call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2850), 128, mem[_2874 + 164 len mem[_2874] + 32]
                            else:
                                mem[floor32(mem[_2874]) + _2874 + 196] = mem[floor32(mem[_2874]) + _2874 + -(mem[_2874] % 32) + 228 len mem[_2874] % 32]
                                require ext_code.size(address(_2665))
                                call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2850), 128, mem[_2874], mem[_2874 + 196 len floor32(mem[_2874]) + 32]
                    else:
                        if idx >= mem[ceil32(arg4.length) + 128] - 2:
                            _2859 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2859 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2859 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_2859 + 68] = 0
                            mem[_2859 + 100] = this.address
                            mem[_2859 + 132] = 128
                            mem[_2859 + 164] = mem[_2859]
                            t = 0
                            while t < mem[_2859]:
                                mem[_2859 + t + 196] = mem[_2859 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2859] % 32:
                                require ext_code.size(address(_2665))
                                call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2859 + 164 len mem[_2859] + 32]
                            else:
                                mem[floor32(mem[_2859]) + _2859 + 196] = mem[floor32(mem[_2859]) + _2859 + -(mem[_2859] % 32) + 228 len mem[_2859] % 32]
                                require ext_code.size(address(_2665))
                                call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2859], mem[_2859 + 196 len floor32(mem[_2859]) + 32]
                        else:
                            require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                            _2851 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                            _2878 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2878 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2878 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_2878 + 68] = 0
                            mem[_2878 + 100] = address(_2851)
                            mem[_2878 + 132] = 128
                            mem[_2878 + 164] = mem[_2878]
                            t = 0
                            while t < mem[_2878]:
                                mem[_2878 + t + 196] = mem[_2878 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2878] % 32:
                                require ext_code.size(address(_2665))
                                call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2851), 128, mem[_2878 + 164 len mem[_2878] + 32]
                            else:
                                mem[floor32(mem[_2878]) + _2878 + 196] = mem[floor32(mem[_2878]) + _2878 + -(mem[_2878] % 32) + 228 len mem[_2878] % 32]
                                require ext_code.size(address(_2665))
                                call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2851), 128, mem[_2878], mem[_2878 + 196 len floor32(mem[_2878]) + 32]
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
                require idx + 1 < mem[ceil32(arg4.length) + 128]
                require idx < mem[ceil32(arg4.length) + 128]
                if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                    if idx >= mem[ceil32(arg4.length) + 128] - 2:
                        _2900 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2900 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2900 + 36] = 0
                        mem[_2900 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_2900 + 100] = this.address
                        mem[_2900 + 132] = 128
                        mem[_2900 + 164] = mem[_2900]
                        t = 0
                        while t < mem[_2900]:
                            mem[_2900 + t + 196] = mem[_2900 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_2900] % 32:
                            require ext_code.size(address(_2665))
                            call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2900 + 164 len mem[_2900] + 32]
                        else:
                            mem[floor32(mem[_2900]) + _2900 + 196] = mem[floor32(mem[_2900]) + _2900 + -(mem[_2900] % 32) + 228 len mem[_2900] % 32]
                            require ext_code.size(address(_2665))
                            call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2900], mem[_2900 + 196 len floor32(mem[_2900]) + 32]
                    else:
                        require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                        _2882 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                        _2928 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2928 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2928 + 36] = 0
                        mem[_2928 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_2928 + 100] = address(_2882)
                        mem[_2928 + 132] = 128
                        mem[_2928 + 164] = mem[_2928]
                        t = 0
                        while t < mem[_2928]:
                            mem[_2928 + t + 196] = mem[_2928 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_2928] % 32:
                            require ext_code.size(address(_2665))
                            call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2882), 128, mem[_2928 + 164 len mem[_2928] + 32]
                        else:
                            mem[floor32(mem[_2928]) + _2928 + 196] = mem[floor32(mem[_2928]) + _2928 + -(mem[_2928] % 32) + 228 len mem[_2928] % 32]
                            require ext_code.size(address(_2665))
                            call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2882), 128, mem[_2928], mem[_2928 + 196 len floor32(mem[_2928]) + 32]
                else:
                    if idx >= mem[ceil32(arg4.length) + 128] - 2:
                        _2901 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2901 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2901 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_2901 + 68] = 0
                        mem[_2901 + 100] = this.address
                        mem[_2901 + 132] = 128
                        mem[_2901 + 164] = mem[_2901]
                        t = 0
                        while t < mem[_2901]:
                            mem[_2901 + t + 196] = mem[_2901 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_2901] % 32:
                            require ext_code.size(address(_2665))
                            call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2901 + 164 len mem[_2901] + 32]
                        else:
                            mem[floor32(mem[_2901]) + _2901 + 196] = mem[floor32(mem[_2901]) + _2901 + -(mem[_2901] % 32) + 228 len mem[_2901] % 32]
                            require ext_code.size(address(_2665))
                            call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2901], mem[_2901 + 196 len floor32(mem[_2901]) + 32]
                    else:
                        require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                        _2883 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                        _2932 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2932 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2932 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_2932 + 68] = 0
                        mem[_2932 + 100] = address(_2883)
                        mem[_2932 + 132] = 128
                        mem[_2932 + 164] = mem[_2932]
                        t = 0
                        while t < mem[_2932]:
                            mem[_2932 + t + 196] = mem[_2932 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_2932] % 32:
                            require ext_code.size(address(_2665))
                            call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2883), 128, mem[_2932 + 164 len mem[_2932] + 32]
                        else:
                            mem[floor32(mem[_2932]) + _2932 + 196] = mem[floor32(mem[_2932]) + _2932 + -(mem[_2932] % 32) + 228 len mem[_2932] % 32]
                            require ext_code.size(address(_2665))
                            call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2883), 128, mem[_2932], mem[_2932 + 196 len floor32(mem[_2932]) + 32]
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
                require idx + 1 < mem[ceil32(arg4.length) + 128]
                require idx < mem[ceil32(arg4.length) + 128]
                if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                    if idx >= mem[ceil32(arg4.length) + 128] - 2:
                        _2862 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2862 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2862 + 36] = 0
                        mem[_2862 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_2862 + 100] = this.address
                        mem[_2862 + 132] = 128
                        mem[_2862 + 164] = mem[_2862]
                        t = 0
                        while t < mem[_2862]:
                            mem[_2862 + t + 196] = mem[_2862 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_2862] % 32:
                            require ext_code.size(address(_2665))
                            call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2862 + 164 len mem[_2862] + 32]
                        else:
                            mem[floor32(mem[_2862]) + _2862 + 196] = mem[floor32(mem[_2862]) + _2862 + -(mem[_2862] % 32) + 228 len mem[_2862] % 32]
                            require ext_code.size(address(_2665))
                            call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2862], mem[_2862 + 196 len floor32(mem[_2862]) + 32]
                    else:
                        require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                        _2854 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                        _2884 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2884 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2884 + 36] = 0
                        mem[_2884 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_2884 + 100] = address(_2854)
                        mem[_2884 + 132] = 128
                        mem[_2884 + 164] = mem[_2884]
                        t = 0
                        while t < mem[_2884]:
                            mem[_2884 + t + 196] = mem[_2884 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_2884] % 32:
                            require ext_code.size(address(_2665))
                            call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2854), 128, mem[_2884 + 164 len mem[_2884] + 32]
                        else:
                            mem[floor32(mem[_2884]) + _2884 + 196] = mem[floor32(mem[_2884]) + _2884 + -(mem[_2884] % 32) + 228 len mem[_2884] % 32]
                            require ext_code.size(address(_2665))
                            call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2854), 128, mem[_2884], mem[_2884 + 196 len floor32(mem[_2884]) + 32]
                else:
                    if idx >= mem[ceil32(arg4.length) + 128] - 2:
                        _2863 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2863 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2863 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_2863 + 68] = 0
                        mem[_2863 + 100] = this.address
                        mem[_2863 + 132] = 128
                        mem[_2863 + 164] = mem[_2863]
                        t = 0
                        while t < mem[_2863]:
                            mem[_2863 + t + 196] = mem[_2863 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_2863] % 32:
                            require ext_code.size(address(_2665))
                            call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2863 + 164 len mem[_2863] + 32]
                        else:
                            mem[floor32(mem[_2863]) + _2863 + 196] = mem[floor32(mem[_2863]) + _2863 + -(mem[_2863] % 32) + 228 len mem[_2863] % 32]
                            require ext_code.size(address(_2665))
                            call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2863], mem[_2863 + 196 len floor32(mem[_2863]) + 32]
                    else:
                        require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                        _2855 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                        _2888 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2888 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2888 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_2888 + 68] = 0
                        mem[_2888 + 100] = address(_2855)
                        mem[_2888 + 132] = 128
                        mem[_2888 + 164] = mem[_2888]
                        t = 0
                        while t < mem[_2888]:
                            mem[_2888 + t + 196] = mem[_2888 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_2888] % 32:
                            require ext_code.size(address(_2665))
                            call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2855), 128, mem[_2888 + 164 len mem[_2888] + 32]
                        else:
                            mem[floor32(mem[_2888]) + _2888 + 196] = mem[floor32(mem[_2888]) + _2888 + -(mem[_2888] % 32) + 228 len mem[_2888] % 32]
                            require ext_code.size(address(_2665))
                            call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2855), 128, mem[_2888], mem[_2888 + 196 len floor32(mem[_2888]) + 32]
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
            require idx + 1 < mem[ceil32(arg4.length) + 128]
            require idx < mem[ceil32(arg4.length) + 128]
            if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                if idx >= mem[ceil32(arg4.length) + 128] - 2:
                    _2908 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2908 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2908 + 36] = 0
                    mem[_2908 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_2908 + 100] = this.address
                    mem[_2908 + 132] = 128
                    mem[_2908 + 164] = mem[_2908]
                    t = 0
                    while t < mem[_2908]:
                        mem[_2908 + t + 196] = mem[_2908 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_2908] % 32:
                        require ext_code.size(address(_2665))
                        call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2908 + 164 len mem[_2908] + 32]
                    else:
                        mem[floor32(mem[_2908]) + _2908 + 196] = mem[floor32(mem[_2908]) + _2908 + -(mem[_2908] % 32) + 228 len mem[_2908] % 32]
                        require ext_code.size(address(_2665))
                        call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2908], mem[_2908 + 196 len floor32(mem[_2908]) + 32]
                else:
                    require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                    _2892 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                    _2938 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2938 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2938 + 36] = 0
                    mem[_2938 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_2938 + 100] = address(_2892)
                    mem[_2938 + 132] = 128
                    mem[_2938 + 164] = mem[_2938]
                    t = 0
                    while t < mem[_2938]:
                        mem[_2938 + t + 196] = mem[_2938 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_2938] % 32:
                        require ext_code.size(address(_2665))
                        call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2892), 128, mem[_2938 + 164 len mem[_2938] + 32]
                    else:
                        mem[floor32(mem[_2938]) + _2938 + 196] = mem[floor32(mem[_2938]) + _2938 + -(mem[_2938] % 32) + 228 len mem[_2938] % 32]
                        require ext_code.size(address(_2665))
                        call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2892), 128, mem[_2938], mem[_2938 + 196 len floor32(mem[_2938]) + 32]
            else:
                if idx >= mem[ceil32(arg4.length) + 128] - 2:
                    _2909 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2909 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2909 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_2909 + 68] = 0
                    mem[_2909 + 100] = this.address
                    mem[_2909 + 132] = 128
                    mem[_2909 + 164] = mem[_2909]
                    t = 0
                    while t < mem[_2909]:
                        mem[_2909 + t + 196] = mem[_2909 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_2909] % 32:
                        require ext_code.size(address(_2665))
                        call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2909 + 164 len mem[_2909] + 32]
                    else:
                        mem[floor32(mem[_2909]) + _2909 + 196] = mem[floor32(mem[_2909]) + _2909 + -(mem[_2909] % 32) + 228 len mem[_2909] % 32]
                        require ext_code.size(address(_2665))
                        call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2909], mem[_2909 + 196 len floor32(mem[_2909]) + 32]
                else:
                    require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                    _2893 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                    _2942 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2942 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2942 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_2942 + 68] = 0
                    mem[_2942 + 100] = address(_2893)
                    mem[_2942 + 132] = 128
                    mem[_2942 + 164] = mem[_2942]
                    t = 0
                    while t < mem[_2942]:
                        mem[_2942 + t + 196] = mem[_2942 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_2942] % 32:
                        require ext_code.size(address(_2665))
                        call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2893), 128, mem[_2942 + 164 len mem[_2942] + 32]
                    else:
                        mem[floor32(mem[_2942]) + _2942 + 196] = mem[floor32(mem[_2942]) + _2942 + -(mem[_2942] % 32) + 228 len mem[_2942] % 32]
                        require ext_code.size(address(_2665))
                        call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2893), 128, mem[_2942], mem[_2942 + 196 len floor32(mem[_2942]) + 32]
        else:
            require 1 < mem[ceil32(arg4.length) + 128]
            _2668 = mem[ceil32(arg4.length) + 192]
            require 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
            _2676 = mem[64]
            mem[mem[64] + 36] = mem[(32 * _28) + ceil32(arg4.length) + 236 len 20]
            mem[mem[64] + 68] = s
            _2677 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_2677 + 32] = mem[_2677 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            _2680 = mem[_2677]
            u = _2677 + 32
            v = mem[64]
            t = mem[_2677]
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[mem[64] + floor32(mem[_2677])] = mem[_2677 + floor32(mem[_2677]) + -(mem[_2677] % 32) + 64 len mem[_2677] % 32] or Mask(8 * -(mem[_2677] % 32) + 32, -(8 * -(mem[_2677] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2677])])
            call address(_2668).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _2680 + _2676 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if not mem[96]:
                    require idx < mem[(32 * _28) + ceil32(arg4.length) + 160]
                    _3834 = mem[(32 * idx) + (32 * _28) + ceil32(arg4.length) + 192]
                    require ext_code.size(mem[(32 * idx) + (32 * _28) + ceil32(arg4.length) + 204 len 20])
                    staticcall mem[(32 * idx) + (32 * _28) + ceil32(arg4.length) + 204 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx + 1 < mem[ceil32(arg4.length) + 128]
                    require idx < mem[ceil32(arg4.length) + 128]
                    if 997 * s / 997 != s:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            require idx + 1 < mem[ceil32(arg4.length) + 128]
                            require idx < mem[ceil32(arg4.length) + 128]
                            if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                                if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                    _4080 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4080 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4080 + 36] = 0
                                    mem[_4080 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_4080 + 100] = this.address
                                    mem[_4080 + 132] = 128
                                    mem[_4080 + 164] = mem[_4080]
                                    t = 0
                                    while t < mem[_4080]:
                                        mem[_4080 + t + 196] = mem[_4080 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4080] % 32:
                                        require ext_code.size(address(_3834))
                                        call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_4080 + 164 len mem[_4080] + 32]
                                    else:
                                        mem[floor32(mem[_4080]) + _4080 + 196] = mem[floor32(mem[_4080]) + _4080 + -(mem[_4080] % 32) + 228 len mem[_4080] % 32]
                                        require ext_code.size(address(_3834))
                                        call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_4080], mem[_4080 + 196 len floor32(mem[_4080]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                    _4052 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                    _4104 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4104 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4104 + 36] = 0
                                    mem[_4104 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_4104 + 100] = address(_4052)
                                    mem[_4104 + 132] = 128
                                    mem[_4104 + 164] = mem[_4104]
                                    t = 0
                                    while t < mem[_4104]:
                                        mem[_4104 + t + 196] = mem[_4104 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4104] % 32:
                                        require ext_code.size(address(_3834))
                                        call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_4052), 128, mem[_4104 + 164 len mem[_4104] + 32]
                                    else:
                                        mem[floor32(mem[_4104]) + _4104 + 196] = mem[floor32(mem[_4104]) + _4104 + -(mem[_4104] % 32) + 228 len mem[_4104] % 32]
                                        require ext_code.size(address(_3834))
                                        call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_4052), 128, mem[_4104], mem[_4104 + 196 len floor32(mem[_4104]) + 32]
                            else:
                                if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                    _4081 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4081 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4081 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_4081 + 68] = 0
                                    mem[_4081 + 100] = this.address
                                    mem[_4081 + 132] = 128
                                    mem[_4081 + 164] = mem[_4081]
                                    t = 0
                                    while t < mem[_4081]:
                                        mem[_4081 + t + 196] = mem[_4081 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4081] % 32:
                                        require ext_code.size(address(_3834))
                                        call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_4081 + 164 len mem[_4081] + 32]
                                    else:
                                        mem[floor32(mem[_4081]) + _4081 + 196] = mem[floor32(mem[_4081]) + _4081 + -(mem[_4081] % 32) + 228 len mem[_4081] % 32]
                                        require ext_code.size(address(_3834))
                                        call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_4081], mem[_4081 + 196 len floor32(mem[_4081]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                    _4053 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                    _4108 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4108 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4108 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_4108 + 68] = 0
                                    mem[_4108 + 100] = address(_4053)
                                    mem[_4108 + 132] = 128
                                    mem[_4108 + 164] = mem[_4108]
                                    t = 0
                                    while t < mem[_4108]:
                                        mem[_4108 + t + 196] = mem[_4108 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4108] % 32:
                                        require ext_code.size(address(_3834))
                                        call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_4053), 128, mem[_4108 + 164 len mem[_4108] + 32]
                                    else:
                                        mem[floor32(mem[_4108]) + _4108 + 196] = mem[floor32(mem[_4108]) + _4108 + -(mem[_4108] % 32) + 228 len mem[_4108] % 32]
                                        require ext_code.size(address(_3834))
                                        call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_4053), 128, mem[_4108], mem[_4108 + 196 len floor32(mem[_4108]) + 32]
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
                        require idx + 1 < mem[ceil32(arg4.length) + 128]
                        require idx < mem[ceil32(arg4.length) + 128]
                        if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                            if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                _4166 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4166 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4166 + 36] = 0
                                mem[_4166 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_4166 + 100] = this.address
                                mem[_4166 + 132] = 128
                                mem[_4166 + 164] = mem[_4166]
                                t = 0
                                while t < mem[_4166]:
                                    mem[_4166 + t + 196] = mem[_4166 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4166] % 32:
                                    require ext_code.size(address(_3834))
                                    call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_4166 + 164 len mem[_4166] + 32]
                                else:
                                    mem[floor32(mem[_4166]) + _4166 + 196] = mem[floor32(mem[_4166]) + _4166 + -(mem[_4166] % 32) + 228 len mem[_4166] % 32]
                                    require ext_code.size(address(_3834))
                                    call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_4166], mem[_4166 + 196 len floor32(mem[_4166]) + 32]
                            else:
                                require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                _4112 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                _4210 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4210 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4210 + 36] = 0
                                mem[_4210 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_4210 + 100] = address(_4112)
                                mem[_4210 + 132] = 128
                                mem[_4210 + 164] = mem[_4210]
                                t = 0
                                while t < mem[_4210]:
                                    mem[_4210 + t + 196] = mem[_4210 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4210] % 32:
                                    require ext_code.size(address(_3834))
                                    call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_4112), 128, mem[_4210 + 164 len mem[_4210] + 32]
                                else:
                                    mem[floor32(mem[_4210]) + _4210 + 196] = mem[floor32(mem[_4210]) + _4210 + -(mem[_4210] % 32) + 228 len mem[_4210] % 32]
                                    require ext_code.size(address(_3834))
                                    call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_4112), 128, mem[_4210], mem[_4210 + 196 len floor32(mem[_4210]) + 32]
                        else:
                            if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                _4167 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4167 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4167 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_4167 + 68] = 0
                                mem[_4167 + 100] = this.address
                                mem[_4167 + 132] = 128
                                mem[_4167 + 164] = mem[_4167]
                                t = 0
                                while t < mem[_4167]:
                                    mem[_4167 + t + 196] = mem[_4167 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4167] % 32:
                                    require ext_code.size(address(_3834))
                                    call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_4167 + 164 len mem[_4167] + 32]
                                else:
                                    mem[floor32(mem[_4167]) + _4167 + 196] = mem[floor32(mem[_4167]) + _4167 + -(mem[_4167] % 32) + 228 len mem[_4167] % 32]
                                    require ext_code.size(address(_3834))
                                    call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_4167], mem[_4167 + 196 len floor32(mem[_4167]) + 32]
                            else:
                                require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                _4113 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                _4214 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4214 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4214 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_4214 + 68] = 0
                                mem[_4214 + 100] = address(_4113)
                                mem[_4214 + 132] = 128
                                mem[_4214 + 164] = mem[_4214]
                                t = 0
                                while t < mem[_4214]:
                                    mem[_4214 + t + 196] = mem[_4214 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4214] % 32:
                                    require ext_code.size(address(_3834))
                                    call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_4113), 128, mem[_4214 + 164 len mem[_4214] + 32]
                                else:
                                    mem[floor32(mem[_4214]) + _4214 + 196] = mem[floor32(mem[_4214]) + _4214 + -(mem[_4214] % 32) + 228 len mem[_4214] % 32]
                                    require ext_code.size(address(_3834))
                                    call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_4113), 128, mem[_4214], mem[_4214 + 196 len floor32(mem[_4214]) + 32]
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
                        require idx + 1 < mem[ceil32(arg4.length) + 128]
                        require idx < mem[ceil32(arg4.length) + 128]
                        if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                            if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                _4084 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4084 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4084 + 36] = 0
                                mem[_4084 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_4084 + 100] = this.address
                                mem[_4084 + 132] = 128
                                mem[_4084 + 164] = mem[_4084]
                                t = 0
                                while t < mem[_4084]:
                                    mem[_4084 + t + 196] = mem[_4084 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4084] % 32:
                                    require ext_code.size(address(_3834))
                                    call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_4084 + 164 len mem[_4084] + 32]
                                else:
                                    mem[floor32(mem[_4084]) + _4084 + 196] = mem[floor32(mem[_4084]) + _4084 + -(mem[_4084] % 32) + 228 len mem[_4084] % 32]
                                    require ext_code.size(address(_3834))
                                    call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_4084], mem[_4084 + 196 len floor32(mem[_4084]) + 32]
                            else:
                                require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                _4056 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                _4114 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4114 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4114 + 36] = 0
                                mem[_4114 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_4114 + 100] = address(_4056)
                                mem[_4114 + 132] = 128
                                mem[_4114 + 164] = mem[_4114]
                                t = 0
                                while t < mem[_4114]:
                                    mem[_4114 + t + 196] = mem[_4114 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4114] % 32:
                                    require ext_code.size(address(_3834))
                                    call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_4056), 128, mem[_4114 + 164 len mem[_4114] + 32]
                                else:
                                    mem[floor32(mem[_4114]) + _4114 + 196] = mem[floor32(mem[_4114]) + _4114 + -(mem[_4114] % 32) + 228 len mem[_4114] % 32]
                                    require ext_code.size(address(_3834))
                                    call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_4056), 128, mem[_4114], mem[_4114 + 196 len floor32(mem[_4114]) + 32]
                        else:
                            if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                _4085 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4085 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4085 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_4085 + 68] = 0
                                mem[_4085 + 100] = this.address
                                mem[_4085 + 132] = 128
                                mem[_4085 + 164] = mem[_4085]
                                t = 0
                                while t < mem[_4085]:
                                    mem[_4085 + t + 196] = mem[_4085 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4085] % 32:
                                    require ext_code.size(address(_3834))
                                    call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_4085 + 164 len mem[_4085] + 32]
                                else:
                                    mem[floor32(mem[_4085]) + _4085 + 196] = mem[floor32(mem[_4085]) + _4085 + -(mem[_4085] % 32) + 228 len mem[_4085] % 32]
                                    require ext_code.size(address(_3834))
                                    call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_4085], mem[_4085 + 196 len floor32(mem[_4085]) + 32]
                            else:
                                require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                _4057 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                _4118 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4118 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4118 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_4118 + 68] = 0
                                mem[_4118 + 100] = address(_4057)
                                mem[_4118 + 132] = 128
                                mem[_4118 + 164] = mem[_4118]
                                t = 0
                                while t < mem[_4118]:
                                    mem[_4118 + t + 196] = mem[_4118 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4118] % 32:
                                    require ext_code.size(address(_3834))
                                    call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_4057), 128, mem[_4118 + 164 len mem[_4118] + 32]
                                else:
                                    mem[floor32(mem[_4118]) + _4118 + 196] = mem[floor32(mem[_4118]) + _4118 + -(mem[_4118] % 32) + 228 len mem[_4118] % 32]
                                    require ext_code.size(address(_3834))
                                    call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_4057), 128, mem[_4118], mem[_4118 + 196 len floor32(mem[_4118]) + 32]
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
                    require idx + 1 < mem[ceil32(arg4.length) + 128]
                    require idx < mem[ceil32(arg4.length) + 128]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        if idx >= mem[ceil32(arg4.length) + 128] - 2:
                            _4174 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4174 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4174 + 36] = 0
                            mem[_4174 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_4174 + 100] = this.address
                            mem[_4174 + 132] = 128
                            mem[_4174 + 164] = mem[_4174]
                            t = 0
                            while t < mem[_4174]:
                                mem[_4174 + t + 196] = mem[_4174 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_4174] % 32:
                                require ext_code.size(address(_3834))
                                call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_4174 + 164 len mem[_4174] + 32]
                            else:
                                mem[floor32(mem[_4174]) + _4174 + 196] = mem[floor32(mem[_4174]) + _4174 + -(mem[_4174] % 32) + 228 len mem[_4174] % 32]
                                require ext_code.size(address(_3834))
                                call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_4174], mem[_4174 + 196 len floor32(mem[_4174]) + 32]
                        else:
                            require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                            _4122 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                            _4220 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4220 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4220 + 36] = 0
                            mem[_4220 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_4220 + 100] = address(_4122)
                            mem[_4220 + 132] = 128
                            mem[_4220 + 164] = mem[_4220]
                            t = 0
                            while t < mem[_4220]:
                                mem[_4220 + t + 196] = mem[_4220 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_4220] % 32:
                                require ext_code.size(address(_3834))
                                call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_4122), 128, mem[_4220 + 164 len mem[_4220] + 32]
                            else:
                                mem[floor32(mem[_4220]) + _4220 + 196] = mem[floor32(mem[_4220]) + _4220 + -(mem[_4220] % 32) + 228 len mem[_4220] % 32]
                                require ext_code.size(address(_3834))
                                call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_4122), 128, mem[_4220], mem[_4220 + 196 len floor32(mem[_4220]) + 32]
                    else:
                        if idx >= mem[ceil32(arg4.length) + 128] - 2:
                            _4175 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4175 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4175 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_4175 + 68] = 0
                            mem[_4175 + 100] = this.address
                            mem[_4175 + 132] = 128
                            mem[_4175 + 164] = mem[_4175]
                            t = 0
                            while t < mem[_4175]:
                                mem[_4175 + t + 196] = mem[_4175 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_4175] % 32:
                                require ext_code.size(address(_3834))
                                call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_4175 + 164 len mem[_4175] + 32]
                            else:
                                mem[floor32(mem[_4175]) + _4175 + 196] = mem[floor32(mem[_4175]) + _4175 + -(mem[_4175] % 32) + 228 len mem[_4175] % 32]
                                require ext_code.size(address(_3834))
                                call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_4175], mem[_4175 + 196 len floor32(mem[_4175]) + 32]
                        else:
                            require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                            _4123 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                            _4224 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4224 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4224 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_4224 + 68] = 0
                            mem[_4224 + 100] = address(_4123)
                            mem[_4224 + 132] = 128
                            mem[_4224 + 164] = mem[_4224]
                            t = 0
                            while t < mem[_4224]:
                                mem[_4224 + t + 196] = mem[_4224 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_4224] % 32:
                                require ext_code.size(address(_3834))
                                call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_4123), 128, mem[_4224 + 164 len mem[_4224] + 32]
                            else:
                                mem[floor32(mem[_4224]) + _4224 + 196] = mem[floor32(mem[_4224]) + _4224 + -(mem[_4224] % 32) + 228 len mem[_4224] % 32]
                                require ext_code.size(address(_3834))
                                call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_4123), 128, mem[_4224], mem[_4224 + 196 len floor32(mem[_4224]) + 32]
                else:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    require idx < mem[(32 * _28) + ceil32(arg4.length) + 160]
                    _3843 = mem[(32 * idx) + (32 * _28) + ceil32(arg4.length) + 192]
                    require ext_code.size(mem[(32 * idx) + (32 * _28) + ceil32(arg4.length) + 204 len 20])
                    staticcall mem[(32 * idx) + (32 * _28) + ceil32(arg4.length) + 204 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx + 1 < mem[ceil32(arg4.length) + 128]
                    require idx < mem[ceil32(arg4.length) + 128]
                    if 997 * s / 997 != s:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            require idx + 1 < mem[ceil32(arg4.length) + 128]
                            require idx < mem[ceil32(arg4.length) + 128]
                            if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                                if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                    _4176 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4176 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4176 + 36] = 0
                                    mem[_4176 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_4176 + 100] = this.address
                                    mem[_4176 + 132] = 128
                                    mem[_4176 + 164] = mem[_4176]
                                    t = 0
                                    while t < mem[_4176]:
                                        mem[_4176 + t + 196] = mem[_4176 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4176] % 32:
                                        require ext_code.size(address(_3843))
                                        call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_4176 + 164 len mem[_4176] + 32]
                                    else:
                                        mem[floor32(mem[_4176]) + _4176 + 196] = mem[floor32(mem[_4176]) + _4176 + -(mem[_4176] % 32) + 228 len mem[_4176] % 32]
                                        require ext_code.size(address(_3843))
                                        call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_4176], mem[_4176 + 196 len floor32(mem[_4176]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                    _4124 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                    _4228 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4228 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4228 + 36] = 0
                                    mem[_4228 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_4228 + 100] = address(_4124)
                                    mem[_4228 + 132] = 128
                                    mem[_4228 + 164] = mem[_4228]
                                    t = 0
                                    while t < mem[_4228]:
                                        mem[_4228 + t + 196] = mem[_4228 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4228] % 32:
                                        require ext_code.size(address(_3843))
                                        call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_4124), 128, mem[_4228 + 164 len mem[_4228] + 32]
                                    else:
                                        mem[floor32(mem[_4228]) + _4228 + 196] = mem[floor32(mem[_4228]) + _4228 + -(mem[_4228] % 32) + 228 len mem[_4228] % 32]
                                        require ext_code.size(address(_3843))
                                        call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_4124), 128, mem[_4228], mem[_4228 + 196 len floor32(mem[_4228]) + 32]
                            else:
                                if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                    _4177 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4177 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4177 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_4177 + 68] = 0
                                    mem[_4177 + 100] = this.address
                                    mem[_4177 + 132] = 128
                                    mem[_4177 + 164] = mem[_4177]
                                    t = 0
                                    while t < mem[_4177]:
                                        mem[_4177 + t + 196] = mem[_4177 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4177] % 32:
                                        require ext_code.size(address(_3843))
                                        call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_4177 + 164 len mem[_4177] + 32]
                                    else:
                                        mem[floor32(mem[_4177]) + _4177 + 196] = mem[floor32(mem[_4177]) + _4177 + -(mem[_4177] % 32) + 228 len mem[_4177] % 32]
                                        require ext_code.size(address(_3843))
                                        call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_4177], mem[_4177 + 196 len floor32(mem[_4177]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                    _4125 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                    _4232 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4232 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4232 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_4232 + 68] = 0
                                    mem[_4232 + 100] = address(_4125)
                                    mem[_4232 + 132] = 128
                                    mem[_4232 + 164] = mem[_4232]
                                    t = 0
                                    while t < mem[_4232]:
                                        mem[_4232 + t + 196] = mem[_4232 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4232] % 32:
                                        require ext_code.size(address(_3843))
                                        call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_4125), 128, mem[_4232 + 164 len mem[_4232] + 32]
                                    else:
                                        mem[floor32(mem[_4232]) + _4232 + 196] = mem[floor32(mem[_4232]) + _4232 + -(mem[_4232] % 32) + 228 len mem[_4232] % 32]
                                        require ext_code.size(address(_3843))
                                        call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_4125), 128, mem[_4232], mem[_4232 + 196 len floor32(mem[_4232]) + 32]
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
                        require idx + 1 < mem[ceil32(arg4.length) + 128]
                        require idx < mem[ceil32(arg4.length) + 128]
                        if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                            if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                _4318 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4318 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4318 + 36] = 0
                                mem[_4318 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_4318 + 100] = this.address
                                mem[_4318 + 132] = 128
                                mem[_4318 + 164] = mem[_4318]
                                t = 0
                                while t < mem[_4318]:
                                    mem[_4318 + t + 196] = mem[_4318 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4318] % 32:
                                    require ext_code.size(address(_3843))
                                    call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_4318 + 164 len mem[_4318] + 32]
                                else:
                                    mem[floor32(mem[_4318]) + _4318 + 196] = mem[floor32(mem[_4318]) + _4318 + -(mem[_4318] % 32) + 228 len mem[_4318] % 32]
                                    require ext_code.size(address(_3843))
                                    call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_4318], mem[_4318 + 196 len floor32(mem[_4318]) + 32]
                            else:
                                require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                _4236 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                _4386 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4386 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4386 + 36] = 0
                                mem[_4386 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_4386 + 100] = address(_4236)
                                mem[_4386 + 132] = 128
                                mem[_4386 + 164] = mem[_4386]
                                t = 0
                                while t < mem[_4386]:
                                    mem[_4386 + t + 196] = mem[_4386 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4386] % 32:
                                    require ext_code.size(address(_3843))
                                    call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_4236), 128, mem[_4386 + 164 len mem[_4386] + 32]
                                else:
                                    mem[floor32(mem[_4386]) + _4386 + 196] = mem[floor32(mem[_4386]) + _4386 + -(mem[_4386] % 32) + 228 len mem[_4386] % 32]
                                    require ext_code.size(address(_3843))
                                    call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_4236), 128, mem[_4386], mem[_4386 + 196 len floor32(mem[_4386]) + 32]
                        else:
                            if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                _4319 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4319 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4319 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_4319 + 68] = 0
                                mem[_4319 + 100] = this.address
                                mem[_4319 + 132] = 128
                                mem[_4319 + 164] = mem[_4319]
                                t = 0
                                while t < mem[_4319]:
                                    mem[_4319 + t + 196] = mem[_4319 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4319] % 32:
                                    require ext_code.size(address(_3843))
                                    call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_4319 + 164 len mem[_4319] + 32]
                                else:
                                    mem[floor32(mem[_4319]) + _4319 + 196] = mem[floor32(mem[_4319]) + _4319 + -(mem[_4319] % 32) + 228 len mem[_4319] % 32]
                                    require ext_code.size(address(_3843))
                                    call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_4319], mem[_4319 + 196 len floor32(mem[_4319]) + 32]
                            else:
                                require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                _4237 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                _4390 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4390 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4390 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_4390 + 68] = 0
                                mem[_4390 + 100] = address(_4237)
                                mem[_4390 + 132] = 128
                                mem[_4390 + 164] = mem[_4390]
                                t = 0
                                while t < mem[_4390]:
                                    mem[_4390 + t + 196] = mem[_4390 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4390] % 32:
                                    require ext_code.size(address(_3843))
                                    call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_4237), 128, mem[_4390 + 164 len mem[_4390] + 32]
                                else:
                                    mem[floor32(mem[_4390]) + _4390 + 196] = mem[floor32(mem[_4390]) + _4390 + -(mem[_4390] % 32) + 228 len mem[_4390] % 32]
                                    require ext_code.size(address(_3843))
                                    call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_4237), 128, mem[_4390], mem[_4390 + 196 len floor32(mem[_4390]) + 32]
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
                        require idx + 1 < mem[ceil32(arg4.length) + 128]
                        require idx < mem[ceil32(arg4.length) + 128]
                        if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                            if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                _4180 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4180 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4180 + 36] = 0
                                mem[_4180 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_4180 + 100] = this.address
                                mem[_4180 + 132] = 128
                                mem[_4180 + 164] = mem[_4180]
                                t = 0
                                while t < mem[_4180]:
                                    mem[_4180 + t + 196] = mem[_4180 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4180] % 32:
                                    require ext_code.size(address(_3843))
                                    call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_4180 + 164 len mem[_4180] + 32]
                                else:
                                    mem[floor32(mem[_4180]) + _4180 + 196] = mem[floor32(mem[_4180]) + _4180 + -(mem[_4180] % 32) + 228 len mem[_4180] % 32]
                                    require ext_code.size(address(_3843))
                                    call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_4180], mem[_4180 + 196 len floor32(mem[_4180]) + 32]
                            else:
                                require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                _4128 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                _4238 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4238 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4238 + 36] = 0
                                mem[_4238 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_4238 + 100] = address(_4128)
                                mem[_4238 + 132] = 128
                                mem[_4238 + 164] = mem[_4238]
                                t = 0
                                while t < mem[_4238]:
                                    mem[_4238 + t + 196] = mem[_4238 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4238] % 32:
                                    require ext_code.size(address(_3843))
                                    call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_4128), 128, mem[_4238 + 164 len mem[_4238] + 32]
                                else:
                                    mem[floor32(mem[_4238]) + _4238 + 196] = mem[floor32(mem[_4238]) + _4238 + -(mem[_4238] % 32) + 228 len mem[_4238] % 32]
                                    require ext_code.size(address(_3843))
                                    call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_4128), 128, mem[_4238], mem[_4238 + 196 len floor32(mem[_4238]) + 32]
                        else:
                            if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                _4181 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4181 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4181 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_4181 + 68] = 0
                                mem[_4181 + 100] = this.address
                                mem[_4181 + 132] = 128
                                mem[_4181 + 164] = mem[_4181]
                                t = 0
                                while t < mem[_4181]:
                                    mem[_4181 + t + 196] = mem[_4181 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4181] % 32:
                                    require ext_code.size(address(_3843))
                                    call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_4181 + 164 len mem[_4181] + 32]
                                else:
                                    mem[floor32(mem[_4181]) + _4181 + 196] = mem[floor32(mem[_4181]) + _4181 + -(mem[_4181] % 32) + 228 len mem[_4181] % 32]
                                    require ext_code.size(address(_3843))
                                    call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_4181], mem[_4181 + 196 len floor32(mem[_4181]) + 32]
                            else:
                                require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                _4129 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                _4242 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4242 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4242 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_4242 + 68] = 0
                                mem[_4242 + 100] = address(_4129)
                                mem[_4242 + 132] = 128
                                mem[_4242 + 164] = mem[_4242]
                                t = 0
                                while t < mem[_4242]:
                                    mem[_4242 + t + 196] = mem[_4242 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4242] % 32:
                                    require ext_code.size(address(_3843))
                                    call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_4129), 128, mem[_4242 + 164 len mem[_4242] + 32]
                                else:
                                    mem[floor32(mem[_4242]) + _4242 + 196] = mem[floor32(mem[_4242]) + _4242 + -(mem[_4242] % 32) + 228 len mem[_4242] % 32]
                                    require ext_code.size(address(_3843))
                                    call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_4129), 128, mem[_4242], mem[_4242 + 196 len floor32(mem[_4242]) + 32]
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
                    require idx + 1 < mem[ceil32(arg4.length) + 128]
                    require idx < mem[ceil32(arg4.length) + 128]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        if idx >= mem[ceil32(arg4.length) + 128] - 2:
                            _4326 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4326 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4326 + 36] = 0
                            mem[_4326 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_4326 + 100] = this.address
                            mem[_4326 + 132] = 128
                            mem[_4326 + 164] = mem[_4326]
                            t = 0
                            while t < mem[_4326]:
                                mem[_4326 + t + 196] = mem[_4326 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_4326] % 32:
                                require ext_code.size(address(_3843))
                                call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_4326 + 164 len mem[_4326] + 32]
                            else:
                                mem[floor32(mem[_4326]) + _4326 + 196] = mem[floor32(mem[_4326]) + _4326 + -(mem[_4326] % 32) + 228 len mem[_4326] % 32]
                                require ext_code.size(address(_3843))
                                call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_4326], mem[_4326 + 196 len floor32(mem[_4326]) + 32]
                        else:
                            require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                            _4246 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                            _4396 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4396 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4396 + 36] = 0
                            mem[_4396 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_4396 + 100] = address(_4246)
                            mem[_4396 + 132] = 128
                            mem[_4396 + 164] = mem[_4396]
                            t = 0
                            while t < mem[_4396]:
                                mem[_4396 + t + 196] = mem[_4396 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_4396] % 32:
                                require ext_code.size(address(_3843))
                                call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_4246), 128, mem[_4396 + 164 len mem[_4396] + 32]
                            else:
                                mem[floor32(mem[_4396]) + _4396 + 196] = mem[floor32(mem[_4396]) + _4396 + -(mem[_4396] % 32) + 228 len mem[_4396] % 32]
                                require ext_code.size(address(_3843))
                                call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_4246), 128, mem[_4396], mem[_4396 + 196 len floor32(mem[_4396]) + 32]
                    else:
                        if idx >= mem[ceil32(arg4.length) + 128] - 2:
                            _4327 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4327 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4327 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_4327 + 68] = 0
                            mem[_4327 + 100] = this.address
                            mem[_4327 + 132] = 128
                            mem[_4327 + 164] = mem[_4327]
                            t = 0
                            while t < mem[_4327]:
                                mem[_4327 + t + 196] = mem[_4327 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_4327] % 32:
                                require ext_code.size(address(_3843))
                                call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_4327 + 164 len mem[_4327] + 32]
                            else:
                                mem[floor32(mem[_4327]) + _4327 + 196] = mem[floor32(mem[_4327]) + _4327 + -(mem[_4327] % 32) + 228 len mem[_4327] % 32]
                                require ext_code.size(address(_3843))
                                call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_4327], mem[_4327 + 196 len floor32(mem[_4327]) + 32]
                        else:
                            require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                            _4247 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                            _4400 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4400 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4400 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_4400 + 68] = 0
                            mem[_4400 + 100] = address(_4247)
                            mem[_4400 + 132] = 128
                            mem[_4400 + 164] = mem[_4400]
                            t = 0
                            while t < mem[_4400]:
                                mem[_4400 + t + 196] = mem[_4400 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_4400] % 32:
                                require ext_code.size(address(_3843))
                                call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_4247), 128, mem[_4400 + 164 len mem[_4400] + 32]
                            else:
                                mem[floor32(mem[_4400]) + _4400 + 196] = mem[floor32(mem[_4400]) + _4400 + -(mem[_4400] % 32) + 228 len mem[_4400] % 32]
                                require ext_code.size(address(_3843))
                                call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_4247), 128, mem[_4400], mem[_4400 + 196 len floor32(mem[_4400]) + 32]
            else:
                _3787 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_3787] = return_data.size
                mem[_3787 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if not return_data.size:
                    require idx < mem[(32 * _28) + ceil32(arg4.length) + 160]
                    _3837 = mem[(32 * idx) + (32 * _28) + ceil32(arg4.length) + 192]
                    require ext_code.size(mem[(32 * idx) + (32 * _28) + ceil32(arg4.length) + 204 len 20])
                    staticcall mem[(32 * idx) + (32 * _28) + ceil32(arg4.length) + 204 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx + 1 < mem[ceil32(arg4.length) + 128]
                    require idx < mem[ceil32(arg4.length) + 128]
                    if 997 * s / 997 != s:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            require idx + 1 < mem[ceil32(arg4.length) + 128]
                            require idx < mem[ceil32(arg4.length) + 128]
                            if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                                if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                    _4092 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4092 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4092 + 36] = 0
                                    mem[_4092 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_4092 + 100] = this.address
                                    mem[_4092 + 132] = 128
                                    mem[_4092 + 164] = mem[_4092]
                                    t = 0
                                    while t < mem[_4092]:
                                        mem[_4092 + t + 196] = mem[_4092 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4092] % 32:
                                        require ext_code.size(address(_3837))
                                        call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_4092 + 164 len mem[_4092] + 32]
                                    else:
                                        mem[floor32(mem[_4092]) + _4092 + 196] = mem[floor32(mem[_4092]) + _4092 + -(mem[_4092] % 32) + 228 len mem[_4092] % 32]
                                        require ext_code.size(address(_3837))
                                        call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_4092], mem[_4092 + 196 len floor32(mem[_4092]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                    _4066 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                    _4132 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4132 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4132 + 36] = 0
                                    mem[_4132 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_4132 + 100] = address(_4066)
                                    mem[_4132 + 132] = 128
                                    mem[_4132 + 164] = mem[_4132]
                                    t = 0
                                    while t < mem[_4132]:
                                        mem[_4132 + t + 196] = mem[_4132 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4132] % 32:
                                        require ext_code.size(address(_3837))
                                        call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_4066), 128, mem[_4132 + 164 len mem[_4132] + 32]
                                    else:
                                        mem[floor32(mem[_4132]) + _4132 + 196] = mem[floor32(mem[_4132]) + _4132 + -(mem[_4132] % 32) + 228 len mem[_4132] % 32]
                                        require ext_code.size(address(_3837))
                                        call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_4066), 128, mem[_4132], mem[_4132 + 196 len floor32(mem[_4132]) + 32]
                            else:
                                if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                    _4093 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4093 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4093 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_4093 + 68] = 0
                                    mem[_4093 + 100] = this.address
                                    mem[_4093 + 132] = 128
                                    mem[_4093 + 164] = mem[_4093]
                                    t = 0
                                    while t < mem[_4093]:
                                        mem[_4093 + t + 196] = mem[_4093 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4093] % 32:
                                        require ext_code.size(address(_3837))
                                        call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_4093 + 164 len mem[_4093] + 32]
                                    else:
                                        mem[floor32(mem[_4093]) + _4093 + 196] = mem[floor32(mem[_4093]) + _4093 + -(mem[_4093] % 32) + 228 len mem[_4093] % 32]
                                        require ext_code.size(address(_3837))
                                        call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_4093], mem[_4093 + 196 len floor32(mem[_4093]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                    _4067 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                    _4136 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4136 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4136 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_4136 + 68] = 0
                                    mem[_4136 + 100] = address(_4067)
                                    mem[_4136 + 132] = 128
                                    mem[_4136 + 164] = mem[_4136]
                                    t = 0
                                    while t < mem[_4136]:
                                        mem[_4136 + t + 196] = mem[_4136 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4136] % 32:
                                        require ext_code.size(address(_3837))
                                        call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_4067), 128, mem[_4136 + 164 len mem[_4136] + 32]
                                    else:
                                        mem[floor32(mem[_4136]) + _4136 + 196] = mem[floor32(mem[_4136]) + _4136 + -(mem[_4136] % 32) + 228 len mem[_4136] % 32]
                                        require ext_code.size(address(_3837))
                                        call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_4067), 128, mem[_4136], mem[_4136 + 196 len floor32(mem[_4136]) + 32]
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
                        require idx + 1 < mem[ceil32(arg4.length) + 128]
                        require idx < mem[ceil32(arg4.length) + 128]
                        if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                            if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                _4190 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4190 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4190 + 36] = 0
                                mem[_4190 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_4190 + 100] = this.address
                                mem[_4190 + 132] = 128
                                mem[_4190 + 164] = mem[_4190]
                                t = 0
                                while t < mem[_4190]:
                                    mem[_4190 + t + 196] = mem[_4190 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4190] % 32:
                                    require ext_code.size(address(_3837))
                                    call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_4190 + 164 len mem[_4190] + 32]
                                else:
                                    mem[floor32(mem[_4190]) + _4190 + 196] = mem[floor32(mem[_4190]) + _4190 + -(mem[_4190] % 32) + 228 len mem[_4190] % 32]
                                    require ext_code.size(address(_3837))
                                    call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_4190], mem[_4190 + 196 len floor32(mem[_4190]) + 32]
                            else:
                                require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                _4140 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                _4250 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4250 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4250 + 36] = 0
                                mem[_4250 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_4250 + 100] = address(_4140)
                                mem[_4250 + 132] = 128
                                mem[_4250 + 164] = mem[_4250]
                                t = 0
                                while t < mem[_4250]:
                                    mem[_4250 + t + 196] = mem[_4250 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4250] % 32:
                                    require ext_code.size(address(_3837))
                                    call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_4140), 128, mem[_4250 + 164 len mem[_4250] + 32]
                                else:
                                    mem[floor32(mem[_4250]) + _4250 + 196] = mem[floor32(mem[_4250]) + _4250 + -(mem[_4250] % 32) + 228 len mem[_4250] % 32]
                                    require ext_code.size(address(_3837))
                                    call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_4140), 128, mem[_4250], mem[_4250 + 196 len floor32(mem[_4250]) + 32]
                        else:
                            if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                _4191 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4191 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4191 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_4191 + 68] = 0
                                mem[_4191 + 100] = this.address
                                mem[_4191 + 132] = 128
                                mem[_4191 + 164] = mem[_4191]
                                t = 0
                                while t < mem[_4191]:
                                    mem[_4191 + t + 196] = mem[_4191 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4191] % 32:
                                    require ext_code.size(address(_3837))
                                    call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_4191 + 164 len mem[_4191] + 32]
                                else:
                                    mem[floor32(mem[_4191]) + _4191 + 196] = mem[floor32(mem[_4191]) + _4191 + -(mem[_4191] % 32) + 228 len mem[_4191] % 32]
                                    require ext_code.size(address(_3837))
                                    call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_4191], mem[_4191 + 196 len floor32(mem[_4191]) + 32]
                            else:
                                require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                _4141 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                _4254 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4254 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4254 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_4254 + 68] = 0
                                mem[_4254 + 100] = address(_4141)
                                mem[_4254 + 132] = 128
                                mem[_4254 + 164] = mem[_4254]
                                t = 0
                                while t < mem[_4254]:
                                    mem[_4254 + t + 196] = mem[_4254 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4254] % 32:
                                    require ext_code.size(address(_3837))
                                    call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_4141), 128, mem[_4254 + 164 len mem[_4254] + 32]
                                else:
                                    mem[floor32(mem[_4254]) + _4254 + 196] = mem[floor32(mem[_4254]) + _4254 + -(mem[_4254] % 32) + 228 len mem[_4254] % 32]
                                    require ext_code.size(address(_3837))
                                    call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_4141), 128, mem[_4254], mem[_4254 + 196 len floor32(mem[_4254]) + 32]
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
                        require idx + 1 < mem[ceil32(arg4.length) + 128]
                        require idx < mem[ceil32(arg4.length) + 128]
                        if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                            if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                _4096 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4096 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4096 + 36] = 0
                                mem[_4096 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_4096 + 100] = this.address
                                mem[_4096 + 132] = 128
                                mem[_4096 + 164] = mem[_4096]
                                t = 0
                                while t < mem[_4096]:
                                    mem[_4096 + t + 196] = mem[_4096 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4096] % 32:
                                    require ext_code.size(address(_3837))
                                    call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_4096 + 164 len mem[_4096] + 32]
                                else:
                                    mem[floor32(mem[_4096]) + _4096 + 196] = mem[floor32(mem[_4096]) + _4096 + -(mem[_4096] % 32) + 228 len mem[_4096] % 32]
                                    require ext_code.size(address(_3837))
                                    call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_4096], mem[_4096 + 196 len floor32(mem[_4096]) + 32]
                            else:
                                require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                _4070 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                _4142 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4142 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4142 + 36] = 0
                                mem[_4142 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_4142 + 100] = address(_4070)
                                mem[_4142 + 132] = 128
                                mem[_4142 + 164] = mem[_4142]
                                t = 0
                                while t < mem[_4142]:
                                    mem[_4142 + t + 196] = mem[_4142 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4142] % 32:
                                    require ext_code.size(address(_3837))
                                    call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_4070), 128, mem[_4142 + 164 len mem[_4142] + 32]
                                else:
                                    mem[floor32(mem[_4142]) + _4142 + 196] = mem[floor32(mem[_4142]) + _4142 + -(mem[_4142] % 32) + 228 len mem[_4142] % 32]
                                    require ext_code.size(address(_3837))
                                    call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_4070), 128, mem[_4142], mem[_4142 + 196 len floor32(mem[_4142]) + 32]
                        else:
                            if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                _4097 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4097 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4097 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_4097 + 68] = 0
                                mem[_4097 + 100] = this.address
                                mem[_4097 + 132] = 128
                                mem[_4097 + 164] = mem[_4097]
                                t = 0
                                while t < mem[_4097]:
                                    mem[_4097 + t + 196] = mem[_4097 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4097] % 32:
                                    require ext_code.size(address(_3837))
                                    call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_4097 + 164 len mem[_4097] + 32]
                                else:
                                    mem[floor32(mem[_4097]) + _4097 + 196] = mem[floor32(mem[_4097]) + _4097 + -(mem[_4097] % 32) + 228 len mem[_4097] % 32]
                                    require ext_code.size(address(_3837))
                                    call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_4097], mem[_4097 + 196 len floor32(mem[_4097]) + 32]
                            else:
                                require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                _4071 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                _4146 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4146 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4146 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_4146 + 68] = 0
                                mem[_4146 + 100] = address(_4071)
                                mem[_4146 + 132] = 128
                                mem[_4146 + 164] = mem[_4146]
                                t = 0
                                while t < mem[_4146]:
                                    mem[_4146 + t + 196] = mem[_4146 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4146] % 32:
                                    require ext_code.size(address(_3837))
                                    call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_4071), 128, mem[_4146 + 164 len mem[_4146] + 32]
                                else:
                                    mem[floor32(mem[_4146]) + _4146 + 196] = mem[floor32(mem[_4146]) + _4146 + -(mem[_4146] % 32) + 228 len mem[_4146] % 32]
                                    require ext_code.size(address(_3837))
                                    call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_4071), 128, mem[_4146], mem[_4146 + 196 len floor32(mem[_4146]) + 32]
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
                    require idx + 1 < mem[ceil32(arg4.length) + 128]
                    require idx < mem[ceil32(arg4.length) + 128]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        if idx >= mem[ceil32(arg4.length) + 128] - 2:
                            _4198 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4198 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4198 + 36] = 0
                            mem[_4198 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_4198 + 100] = this.address
                            mem[_4198 + 132] = 128
                            mem[_4198 + 164] = mem[_4198]
                            t = 0
                            while t < mem[_4198]:
                                mem[_4198 + t + 196] = mem[_4198 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_4198] % 32:
                                require ext_code.size(address(_3837))
                                call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_4198 + 164 len mem[_4198] + 32]
                            else:
                                mem[floor32(mem[_4198]) + _4198 + 196] = mem[floor32(mem[_4198]) + _4198 + -(mem[_4198] % 32) + 228 len mem[_4198] % 32]
                                require ext_code.size(address(_3837))
                                call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_4198], mem[_4198 + 196 len floor32(mem[_4198]) + 32]
                        else:
                            require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                            _4150 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                            _4260 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4260 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4260 + 36] = 0
                            mem[_4260 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_4260 + 100] = address(_4150)
                            mem[_4260 + 132] = 128
                            mem[_4260 + 164] = mem[_4260]
                            t = 0
                            while t < mem[_4260]:
                                mem[_4260 + t + 196] = mem[_4260 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_4260] % 32:
                                require ext_code.size(address(_3837))
                                call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_4150), 128, mem[_4260 + 164 len mem[_4260] + 32]
                            else:
                                mem[floor32(mem[_4260]) + _4260 + 196] = mem[floor32(mem[_4260]) + _4260 + -(mem[_4260] % 32) + 228 len mem[_4260] % 32]
                                require ext_code.size(address(_3837))
                                call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_4150), 128, mem[_4260], mem[_4260 + 196 len floor32(mem[_4260]) + 32]
                    else:
                        if idx >= mem[ceil32(arg4.length) + 128] - 2:
                            _4199 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4199 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4199 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_4199 + 68] = 0
                            mem[_4199 + 100] = this.address
                            mem[_4199 + 132] = 128
                            mem[_4199 + 164] = mem[_4199]
                            t = 0
                            while t < mem[_4199]:
                                mem[_4199 + t + 196] = mem[_4199 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_4199] % 32:
                                require ext_code.size(address(_3837))
                                call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_4199 + 164 len mem[_4199] + 32]
                            else:
                                mem[floor32(mem[_4199]) + _4199 + 196] = mem[floor32(mem[_4199]) + _4199 + -(mem[_4199] % 32) + 228 len mem[_4199] % 32]
                                require ext_code.size(address(_3837))
                                call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_4199], mem[_4199 + 196 len floor32(mem[_4199]) + 32]
                        else:
                            require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                            _4151 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                            _4264 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4264 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4264 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_4264 + 68] = 0
                            mem[_4264 + 100] = address(_4151)
                            mem[_4264 + 132] = 128
                            mem[_4264 + 164] = mem[_4264]
                            t = 0
                            while t < mem[_4264]:
                                mem[_4264 + t + 196] = mem[_4264 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_4264] % 32:
                                require ext_code.size(address(_3837))
                                call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_4151), 128, mem[_4264 + 164 len mem[_4264] + 32]
                            else:
                                mem[floor32(mem[_4264]) + _4264 + 196] = mem[floor32(mem[_4264]) + _4264 + -(mem[_4264] % 32) + 228 len mem[_4264] % 32]
                                require ext_code.size(address(_3837))
                                call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_4151), 128, mem[_4264], mem[_4264 + 196 len floor32(mem[_4264]) + 32]
                else:
                    require return_data.size >= 32
                    if not mem[_3787 + 32]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    require idx < mem[(32 * _28) + ceil32(arg4.length) + 160]
                    _3847 = mem[(32 * idx) + (32 * _28) + ceil32(arg4.length) + 192]
                    require ext_code.size(mem[(32 * idx) + (32 * _28) + ceil32(arg4.length) + 204 len 20])
                    staticcall mem[(32 * idx) + (32 * _28) + ceil32(arg4.length) + 204 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx + 1 < mem[ceil32(arg4.length) + 128]
                    require idx < mem[ceil32(arg4.length) + 128]
                    if 997 * s / 997 != s:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            require idx + 1 < mem[ceil32(arg4.length) + 128]
                            require idx < mem[ceil32(arg4.length) + 128]
                            if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                                if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                    _4200 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4200 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4200 + 36] = 0
                                    mem[_4200 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_4200 + 100] = this.address
                                    mem[_4200 + 132] = 128
                                    mem[_4200 + 164] = mem[_4200]
                                    t = 0
                                    while t < mem[_4200]:
                                        mem[_4200 + t + 196] = mem[_4200 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4200] % 32:
                                        require ext_code.size(address(_3847))
                                        call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_4200 + 164 len mem[_4200] + 32]
                                    else:
                                        mem[floor32(mem[_4200]) + _4200 + 196] = mem[floor32(mem[_4200]) + _4200 + -(mem[_4200] % 32) + 228 len mem[_4200] % 32]
                                        require ext_code.size(address(_3847))
                                        call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_4200], mem[_4200 + 196 len floor32(mem[_4200]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                    _4152 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                    _4268 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4268 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4268 + 36] = 0
                                    mem[_4268 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_4268 + 100] = address(_4152)
                                    mem[_4268 + 132] = 128
                                    mem[_4268 + 164] = mem[_4268]
                                    t = 0
                                    while t < mem[_4268]:
                                        mem[_4268 + t + 196] = mem[_4268 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4268] % 32:
                                        require ext_code.size(address(_3847))
                                        call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_4152), 128, mem[_4268 + 164 len mem[_4268] + 32]
                                    else:
                                        mem[floor32(mem[_4268]) + _4268 + 196] = mem[floor32(mem[_4268]) + _4268 + -(mem[_4268] % 32) + 228 len mem[_4268] % 32]
                                        require ext_code.size(address(_3847))
                                        call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_4152), 128, mem[_4268], mem[_4268 + 196 len floor32(mem[_4268]) + 32]
                            else:
                                if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                    _4201 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4201 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4201 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_4201 + 68] = 0
                                    mem[_4201 + 100] = this.address
                                    mem[_4201 + 132] = 128
                                    mem[_4201 + 164] = mem[_4201]
                                    t = 0
                                    while t < mem[_4201]:
                                        mem[_4201 + t + 196] = mem[_4201 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4201] % 32:
                                        require ext_code.size(address(_3847))
                                        call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_4201 + 164 len mem[_4201] + 32]
                                    else:
                                        mem[floor32(mem[_4201]) + _4201 + 196] = mem[floor32(mem[_4201]) + _4201 + -(mem[_4201] % 32) + 228 len mem[_4201] % 32]
                                        require ext_code.size(address(_3847))
                                        call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_4201], mem[_4201 + 196 len floor32(mem[_4201]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                    _4153 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                    _4272 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4272 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4272 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_4272 + 68] = 0
                                    mem[_4272 + 100] = address(_4153)
                                    mem[_4272 + 132] = 128
                                    mem[_4272 + 164] = mem[_4272]
                                    t = 0
                                    while t < mem[_4272]:
                                        mem[_4272 + t + 196] = mem[_4272 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4272] % 32:
                                        require ext_code.size(address(_3847))
                                        call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_4153), 128, mem[_4272 + 164 len mem[_4272] + 32]
                                    else:
                                        mem[floor32(mem[_4272]) + _4272 + 196] = mem[floor32(mem[_4272]) + _4272 + -(mem[_4272] % 32) + 228 len mem[_4272] % 32]
                                        require ext_code.size(address(_3847))
                                        call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_4153), 128, mem[_4272], mem[_4272 + 196 len floor32(mem[_4272]) + 32]
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
                        require idx + 1 < mem[ceil32(arg4.length) + 128]
                        require idx < mem[ceil32(arg4.length) + 128]
                        if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                            if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                _4358 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4358 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4358 + 36] = 0
                                mem[_4358 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_4358 + 100] = this.address
                                mem[_4358 + 132] = 128
                                mem[_4358 + 164] = mem[_4358]
                                t = 0
                                while t < mem[_4358]:
                                    mem[_4358 + t + 196] = mem[_4358 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4358] % 32:
                                    require ext_code.size(address(_3847))
                                    call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_4358 + 164 len mem[_4358] + 32]
                                else:
                                    mem[floor32(mem[_4358]) + _4358 + 196] = mem[floor32(mem[_4358]) + _4358 + -(mem[_4358] % 32) + 228 len mem[_4358] % 32]
                                    require ext_code.size(address(_3847))
                                    call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_4358], mem[_4358 + 196 len floor32(mem[_4358]) + 32]
                            else:
                                require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                _4276 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                _4422 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4422 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4422 + 36] = 0
                                mem[_4422 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_4422 + 100] = address(_4276)
                                mem[_4422 + 132] = 128
                                mem[_4422 + 164] = mem[_4422]
                                t = 0
                                while t < mem[_4422]:
                                    mem[_4422 + t + 196] = mem[_4422 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4422] % 32:
                                    require ext_code.size(address(_3847))
                                    call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_4276), 128, mem[_4422 + 164 len mem[_4422] + 32]
                                else:
                                    mem[floor32(mem[_4422]) + _4422 + 196] = mem[floor32(mem[_4422]) + _4422 + -(mem[_4422] % 32) + 228 len mem[_4422] % 32]
                                    require ext_code.size(address(_3847))
                                    call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_4276), 128, mem[_4422], mem[_4422 + 196 len floor32(mem[_4422]) + 32]
                        else:
                            if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                _4359 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4359 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4359 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_4359 + 68] = 0
                                mem[_4359 + 100] = this.address
                                mem[_4359 + 132] = 128
                                mem[_4359 + 164] = mem[_4359]
                                t = 0
                                while t < mem[_4359]:
                                    mem[_4359 + t + 196] = mem[_4359 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4359] % 32:
                                    require ext_code.size(address(_3847))
                                    call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_4359 + 164 len mem[_4359] + 32]
                                else:
                                    mem[floor32(mem[_4359]) + _4359 + 196] = mem[floor32(mem[_4359]) + _4359 + -(mem[_4359] % 32) + 228 len mem[_4359] % 32]
                                    require ext_code.size(address(_3847))
                                    call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_4359], mem[_4359 + 196 len floor32(mem[_4359]) + 32]
                            else:
                                require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                _4277 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                _4426 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4426 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4426 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_4426 + 68] = 0
                                mem[_4426 + 100] = address(_4277)
                                mem[_4426 + 132] = 128
                                mem[_4426 + 164] = mem[_4426]
                                t = 0
                                while t < mem[_4426]:
                                    mem[_4426 + t + 196] = mem[_4426 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4426] % 32:
                                    require ext_code.size(address(_3847))
                                    call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_4277), 128, mem[_4426 + 164 len mem[_4426] + 32]
                                else:
                                    mem[floor32(mem[_4426]) + _4426 + 196] = mem[floor32(mem[_4426]) + _4426 + -(mem[_4426] % 32) + 228 len mem[_4426] % 32]
                                    require ext_code.size(address(_3847))
                                    call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_4277), 128, mem[_4426], mem[_4426 + 196 len floor32(mem[_4426]) + 32]
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
                        require idx + 1 < mem[ceil32(arg4.length) + 128]
                        require idx < mem[ceil32(arg4.length) + 128]
                        if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                            if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                _4204 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4204 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4204 + 36] = 0
                                mem[_4204 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_4204 + 100] = this.address
                                mem[_4204 + 132] = 128
                                mem[_4204 + 164] = mem[_4204]
                                t = 0
                                while t < mem[_4204]:
                                    mem[_4204 + t + 196] = mem[_4204 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4204] % 32:
                                    require ext_code.size(address(_3847))
                                    call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_4204 + 164 len mem[_4204] + 32]
                                else:
                                    mem[floor32(mem[_4204]) + _4204 + 196] = mem[floor32(mem[_4204]) + _4204 + -(mem[_4204] % 32) + 228 len mem[_4204] % 32]
                                    require ext_code.size(address(_3847))
                                    call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_4204], mem[_4204 + 196 len floor32(mem[_4204]) + 32]
                            else:
                                require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                _4156 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                _4278 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4278 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4278 + 36] = 0
                                mem[_4278 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_4278 + 100] = address(_4156)
                                mem[_4278 + 132] = 128
                                mem[_4278 + 164] = mem[_4278]
                                t = 0
                                while t < mem[_4278]:
                                    mem[_4278 + t + 196] = mem[_4278 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4278] % 32:
                                    require ext_code.size(address(_3847))
                                    call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_4156), 128, mem[_4278 + 164 len mem[_4278] + 32]
                                else:
                                    mem[floor32(mem[_4278]) + _4278 + 196] = mem[floor32(mem[_4278]) + _4278 + -(mem[_4278] % 32) + 228 len mem[_4278] % 32]
                                    require ext_code.size(address(_3847))
                                    call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_4156), 128, mem[_4278], mem[_4278 + 196 len floor32(mem[_4278]) + 32]
                        else:
                            if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                _4205 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4205 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4205 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_4205 + 68] = 0
                                mem[_4205 + 100] = this.address
                                mem[_4205 + 132] = 128
                                mem[_4205 + 164] = mem[_4205]
                                t = 0
                                while t < mem[_4205]:
                                    mem[_4205 + t + 196] = mem[_4205 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4205] % 32:
                                    require ext_code.size(address(_3847))
                                    call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_4205 + 164 len mem[_4205] + 32]
                                else:
                                    mem[floor32(mem[_4205]) + _4205 + 196] = mem[floor32(mem[_4205]) + _4205 + -(mem[_4205] % 32) + 228 len mem[_4205] % 32]
                                    require ext_code.size(address(_3847))
                                    call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_4205], mem[_4205 + 196 len floor32(mem[_4205]) + 32]
                            else:
                                require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                _4157 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                _4282 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4282 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4282 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_4282 + 68] = 0
                                mem[_4282 + 100] = address(_4157)
                                mem[_4282 + 132] = 128
                                mem[_4282 + 164] = mem[_4282]
                                t = 0
                                while t < mem[_4282]:
                                    mem[_4282 + t + 196] = mem[_4282 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4282] % 32:
                                    require ext_code.size(address(_3847))
                                    call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_4157), 128, mem[_4282 + 164 len mem[_4282] + 32]
                                else:
                                    mem[floor32(mem[_4282]) + _4282 + 196] = mem[floor32(mem[_4282]) + _4282 + -(mem[_4282] % 32) + 228 len mem[_4282] % 32]
                                    require ext_code.size(address(_3847))
                                    call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_4157), 128, mem[_4282], mem[_4282 + 196 len floor32(mem[_4282]) + 32]
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
                    require idx + 1 < mem[ceil32(arg4.length) + 128]
                    require idx < mem[ceil32(arg4.length) + 128]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        if idx >= mem[ceil32(arg4.length) + 128] - 2:
                            _4366 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4366 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4366 + 36] = 0
                            mem[_4366 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_4366 + 100] = this.address
                            mem[_4366 + 132] = 128
                            mem[_4366 + 164] = mem[_4366]
                            t = 0
                            while t < mem[_4366]:
                                mem[_4366 + t + 196] = mem[_4366 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_4366] % 32:
                                require ext_code.size(address(_3847))
                                call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_4366 + 164 len mem[_4366] + 32]
                            else:
                                mem[floor32(mem[_4366]) + _4366 + 196] = mem[floor32(mem[_4366]) + _4366 + -(mem[_4366] % 32) + 228 len mem[_4366] % 32]
                                require ext_code.size(address(_3847))
                                call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_4366], mem[_4366 + 196 len floor32(mem[_4366]) + 32]
                        else:
                            require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                            _4286 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                            _4432 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4432 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4432 + 36] = 0
                            mem[_4432 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_4432 + 100] = address(_4286)
                            mem[_4432 + 132] = 128
                            mem[_4432 + 164] = mem[_4432]
                            t = 0
                            while t < mem[_4432]:
                                mem[_4432 + t + 196] = mem[_4432 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_4432] % 32:
                                require ext_code.size(address(_3847))
                                call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_4286), 128, mem[_4432 + 164 len mem[_4432] + 32]
                            else:
                                mem[floor32(mem[_4432]) + _4432 + 196] = mem[floor32(mem[_4432]) + _4432 + -(mem[_4432] % 32) + 228 len mem[_4432] % 32]
                                require ext_code.size(address(_3847))
                                call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_4286), 128, mem[_4432], mem[_4432 + 196 len floor32(mem[_4432]) + 32]
                    else:
                        if idx >= mem[ceil32(arg4.length) + 128] - 2:
                            _4367 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4367 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4367 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_4367 + 68] = 0
                            mem[_4367 + 100] = this.address
                            mem[_4367 + 132] = 128
                            mem[_4367 + 164] = mem[_4367]
                            t = 0
                            while t < mem[_4367]:
                                mem[_4367 + t + 196] = mem[_4367 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_4367] % 32:
                                require ext_code.size(address(_3847))
                                call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_4367 + 164 len mem[_4367] + 32]
                            else:
                                mem[floor32(mem[_4367]) + _4367 + 196] = mem[floor32(mem[_4367]) + _4367 + -(mem[_4367] % 32) + 228 len mem[_4367] % 32]
                                require ext_code.size(address(_3847))
                                call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_4367], mem[_4367 + 196 len floor32(mem[_4367]) + 32]
                        else:
                            require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                            _4287 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                            _4436 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4436 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4436 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_4436 + 68] = 0
                            mem[_4436 + 100] = address(_4287)
                            mem[_4436 + 132] = 128
                            mem[_4436 + 164] = mem[_4436]
                            t = 0
                            while t < mem[_4436]:
                                mem[_4436 + t + 196] = mem[_4436 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_4436] % 32:
                                require ext_code.size(address(_3847))
                                call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_4287), 128, mem[_4436 + 164 len mem[_4436] + 32]
                            else:
                                mem[floor32(mem[_4436]) + _4436 + 196] = mem[floor32(mem[_4436]) + _4436 + -(mem[_4436] % 32) + 228 len mem[_4436] % 32]
                                require ext_code.size(address(_3847))
                                call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_4287), 128, mem[_4436], mem[_4436 + 196 len floor32(mem[_4436]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
        s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
        continue 
    require 0 < mem[ceil32(arg4.length) + 128]
    _2657 = mem[ceil32(arg4.length) + 160]
    _2660 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = _23
    _2661 = mem[64]
    mem[mem[64]] = 68
    mem[64] = mem[64] + 100
    mem[_2661 + 32 len 4] = unknown_0xa9059cbb(?????)
    _2664 = mem[_2661]
    mem[_2660 + 100 len floor32(mem[_2661])] = mem[_2661 + 32 len floor32(mem[_2661])]
    mem[_2660 + floor32(mem[_2661]) + -(mem[_2661] % 32) + 132 len mem[_2661] % 32] = mem[_2661 + -(mem[_2661] % 32) + floor32(mem[_2661]) + 64 len mem[_2661] % 32]
    call address(_2657).mem[_2660 + 100 len 4] with:
         gas gas_remaining wei
        args mem[_2660 + 104 len _2664 - 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if mem[96]:
            require mem[96] >= 32
            if not mem[128]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[_2660 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[_2660 + 132]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
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
    mem[ceil32(arg4.length) + 132] = address(ext_call.return_data[0])
    mem[ceil32(arg4.length) + 164] = address(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    36,
                    0x7320656e737572652074686174206d73672e73656e646572206973206120563220706169,
                    mem[ceil32(arg4.length) + 232 len 28]
    if arg1 != this.address:
        revert with 0, 32, 33, 0x72756e6973776170563243616c6c2073656e646572206d7573742062652073656c, mem[ceil32(arg4.length) + 229 len 31]
    require arg4.length >= 128
    _23 = mem[128]
    _24 = mem[160]
    _25 = mem[192]
    require mem[192] <= 4294967296
    require mem[192] + 64 <= arg4.length + 32
    require mem[mem[192] + 128] <= 4294967296 and mem[192] + (32 * mem[mem[192] + 128]) + 64 <= arg4.length + 32
    mem[ceil32(arg4.length) + 128] = mem[mem[192] + 128]
    _28 = mem[_25 + 128]
    mem[ceil32(arg4.length) + 160 len floor32(mem[_25 + 128])] = mem[_25 + 160 len floor32(mem[_25 + 128])]
    _906 = mem[224]
    require mem[224] <= 4294967296
    require mem[224] + 64 <= arg4.length + 32
    require mem[mem[224] + 128] <= 4294967296 and mem[224] + (32 * mem[mem[224] + 128]) + 64 <= arg4.length + 32
    mem[(32 * _28) + ceil32(arg4.length) + 160] = mem[mem[224] + 128]
    _910 = mem[_906 + 128]
    mem[(32 * _28) + ceil32(arg4.length) + 192 len floor32(mem[_906 + 128])] = mem[_906 + 160 len floor32(mem[_906 + 128])]
    mem[64] = (32 * _910) + (32 * _28) + ceil32(arg4.length) + 192
    _2655 = 0, mem[ceil32(arg4.length) + 132 len 28]
    idx = 1
    s = _24
    s = _24
    while idx < _2655 - 1:
        if idx != 1:
            require idx < mem[(32 * _28) + ceil32(arg4.length) + 160]
            _2665 = mem[(32 * idx) + (32 * _28) + ceil32(arg4.length) + 192]
            require ext_code.size(mem[(32 * idx) + (32 * _28) + ceil32(arg4.length) + 204 len 20])
            staticcall mem[(32 * idx) + (32 * _28) + ceil32(arg4.length) + 204 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx + 1 < mem[ceil32(arg4.length) + 128]
            require idx < mem[ceil32(arg4.length) + 128]
            if 997 * s / 997 != s:
                revert with 0, 'ds-math-mul-overflow'
            if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                if not Mask(112, 0, ext_call.return_data[32]):
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                    require idx + 1 < mem[ceil32(arg4.length) + 128]
                    require idx < mem[ceil32(arg4.length) + 128]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        if idx >= mem[ceil32(arg4.length) + 128] - 2:
                            _2858 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2858 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2858 + 36] = 0
                            mem[_2858 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_2858 + 100] = this.address
                            mem[_2858 + 132] = 128
                            mem[_2858 + 164] = mem[_2858]
                            t = 0
                            while t < mem[_2858]:
                                mem[_2858 + t + 196] = mem[_2858 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2858] % 32:
                                require ext_code.size(address(_2665))
                                call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2858 + 164 len mem[_2858] + 32]
                            else:
                                mem[floor32(mem[_2858]) + _2858 + 196] = mem[floor32(mem[_2858]) + _2858 + -(mem[_2858] % 32) + 228 len mem[_2858] % 32]
                                require ext_code.size(address(_2665))
                                call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2858], mem[_2858 + 196 len floor32(mem[_2858]) + 32]
                        else:
                            require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                            _2850 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                            _2874 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2874 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2874 + 36] = 0
                            mem[_2874 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_2874 + 100] = address(_2850)
                            mem[_2874 + 132] = 128
                            mem[_2874 + 164] = mem[_2874]
                            t = 0
                            while t < mem[_2874]:
                                mem[_2874 + t + 196] = mem[_2874 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2874] % 32:
                                require ext_code.size(address(_2665))
                                call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2850), 128, mem[_2874 + 164 len mem[_2874] + 32]
                            else:
                                mem[floor32(mem[_2874]) + _2874 + 196] = mem[floor32(mem[_2874]) + _2874 + -(mem[_2874] % 32) + 228 len mem[_2874] % 32]
                                require ext_code.size(address(_2665))
                                call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2850), 128, mem[_2874], mem[_2874 + 196 len floor32(mem[_2874]) + 32]
                    else:
                        if idx >= mem[ceil32(arg4.length) + 128] - 2:
                            _2859 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2859 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2859 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_2859 + 68] = 0
                            mem[_2859 + 100] = this.address
                            mem[_2859 + 132] = 128
                            mem[_2859 + 164] = mem[_2859]
                            t = 0
                            while t < mem[_2859]:
                                mem[_2859 + t + 196] = mem[_2859 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2859] % 32:
                                require ext_code.size(address(_2665))
                                call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2859 + 164 len mem[_2859] + 32]
                            else:
                                mem[floor32(mem[_2859]) + _2859 + 196] = mem[floor32(mem[_2859]) + _2859 + -(mem[_2859] % 32) + 228 len mem[_2859] % 32]
                                require ext_code.size(address(_2665))
                                call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2859], mem[_2859 + 196 len floor32(mem[_2859]) + 32]
                        else:
                            require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                            _2851 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                            _2878 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2878 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2878 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_2878 + 68] = 0
                            mem[_2878 + 100] = address(_2851)
                            mem[_2878 + 132] = 128
                            mem[_2878 + 164] = mem[_2878]
                            t = 0
                            while t < mem[_2878]:
                                mem[_2878 + t + 196] = mem[_2878 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_2878] % 32:
                                require ext_code.size(address(_2665))
                                call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2851), 128, mem[_2878 + 164 len mem[_2878] + 32]
                            else:
                                mem[floor32(mem[_2878]) + _2878 + 196] = mem[floor32(mem[_2878]) + _2878 + -(mem[_2878] % 32) + 228 len mem[_2878] % 32]
                                require ext_code.size(address(_2665))
                                call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2851), 128, mem[_2878], mem[_2878 + 196 len floor32(mem[_2878]) + 32]
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
                require idx + 1 < mem[ceil32(arg4.length) + 128]
                require idx < mem[ceil32(arg4.length) + 128]
                if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                    if idx >= mem[ceil32(arg4.length) + 128] - 2:
                        _2900 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2900 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2900 + 36] = 0
                        mem[_2900 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_2900 + 100] = this.address
                        mem[_2900 + 132] = 128
                        mem[_2900 + 164] = mem[_2900]
                        t = 0
                        while t < mem[_2900]:
                            mem[_2900 + t + 196] = mem[_2900 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_2900] % 32:
                            require ext_code.size(address(_2665))
                            call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2900 + 164 len mem[_2900] + 32]
                        else:
                            mem[floor32(mem[_2900]) + _2900 + 196] = mem[floor32(mem[_2900]) + _2900 + -(mem[_2900] % 32) + 228 len mem[_2900] % 32]
                            require ext_code.size(address(_2665))
                            call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_2900], mem[_2900 + 196 len floor32(mem[_2900]) + 32]
                    else:
                        require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                        _2882 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                        _2928 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2928 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2928 + 36] = 0
                        mem[_2928 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_2928 + 100] = address(_2882)
                        mem[_2928 + 132] = 128
                        mem[_2928 + 164] = mem[_2928]
                        t = 0
                        while t < mem[_2928]:
                            mem[_2928 + t + 196] = mem[_2928 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_2928] % 32:
                            require ext_code.size(address(_2665))
                            call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2882), 128, mem[_2928 + 164 len mem[_2928] + 32]
                        else:
                            mem[floor32(mem[_2928]) + _2928 + 196] = mem[floor32(mem[_2928]) + _2928 + -(mem[_2928] % 32) + 228 len mem[_2928] % 32]
                            require ext_code.size(address(_2665))
                            call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_2882), 128, mem[_2928], mem[_2928 + 196 len floor32(mem[_2928]) + 32]
                else:
                    if idx >= mem[ceil32(arg4.length) + 128] - 2:
                        _2901 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2901 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2901 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_2901 + 68] = 0
                        mem[_2901 + 100] = this.address
                        mem[_2901 + 132] = 128
                        mem[_2901 + 164] = mem[_2901]
                        t = 0
                        while t < mem[_2901]:
                            mem[_2901 + t + 196] = mem[_2901 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_2901] % 32:
                            require ext_code.size(address(_2665))
                            call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2901 + 164 len mem[_2901] + 32]
                        else:
                            mem[floor32(mem[_2901]) + _2901 + 196] = mem[floor32(mem[_2901]) + _2901 + -(mem[_2901] % 32) + 228 len mem[_2901] % 32]
                            require ext_code.size(address(_2665))
                            call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_2901], mem[_2901 + 196 len floor32(mem[_2901]) + 32]
                    else:
                        require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                        _2883 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                        _2932 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2932 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2932 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_2932 + 68] = 0
                        mem[_2932 + 100] = address(_2883)
                        mem[_2932 + 132] = 128
                        mem[_2932 + 164] = mem[_2932]
                        t = 0
                        while t < mem[_2932]:
                            mem[_2932 + t + 196] = mem[_2932 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_2932] % 32:
                            require ext_code.size(address(_2665))
                            call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2883), 128, mem[_2932 + 164 len mem[_2932] + 32]
                        else:
                            mem[floor32(mem[_2932]) + _2932 + 196] = mem[floor32(mem[_2932]) + _2932 + -(mem[_2932] % 32) + 228 len mem[_2932] % 32]
                            require ext_code.size(address(_2665))
                            call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_2883), 128, mem[_2932], mem[_2932 + 196 len floor32(mem[_2932]) + 32]
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
                require idx + 1 < mem[ceil32(arg4.length) + 128]
                require idx < mem[ceil32(arg4.length) + 128]
                if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                    if idx >= mem[ceil32(arg4.length) + 128] - 2:
                        _2862 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2862 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2862 + 36] = 0
                        mem[_2862 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_2862 + 100] = this.address
                        mem[_2862 + 132] = 128
                        mem[_2862 + 164] = mem[_2862]
                        t = 0
                        while t < mem[_2862]:
                            mem[_2862 + t + 196] = mem[_2862 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_2862] % 32:
                            require ext_code.size(address(_2665))
                            call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2862 + 164 len mem[_2862] + 32]
                        else:
                            mem[floor32(mem[_2862]) + _2862 + 196] = mem[floor32(mem[_2862]) + _2862 + -(mem[_2862] % 32) + 228 len mem[_2862] % 32]
                            require ext_code.size(address(_2665))
                            call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2862], mem[_2862 + 196 len floor32(mem[_2862]) + 32]
                    else:
                        require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                        _2854 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                        _2884 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2884 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2884 + 36] = 0
                        mem[_2884 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_2884 + 100] = address(_2854)
                        mem[_2884 + 132] = 128
                        mem[_2884 + 164] = mem[_2884]
                        t = 0
                        while t < mem[_2884]:
                            mem[_2884 + t + 196] = mem[_2884 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_2884] % 32:
                            require ext_code.size(address(_2665))
                            call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2854), 128, mem[_2884 + 164 len mem[_2884] + 32]
                        else:
                            mem[floor32(mem[_2884]) + _2884 + 196] = mem[floor32(mem[_2884]) + _2884 + -(mem[_2884] % 32) + 228 len mem[_2884] % 32]
                            require ext_code.size(address(_2665))
                            call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2854), 128, mem[_2884], mem[_2884 + 196 len floor32(mem[_2884]) + 32]
                else:
                    if idx >= mem[ceil32(arg4.length) + 128] - 2:
                        _2863 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2863 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2863 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_2863 + 68] = 0
                        mem[_2863 + 100] = this.address
                        mem[_2863 + 132] = 128
                        mem[_2863 + 164] = mem[_2863]
                        t = 0
                        while t < mem[_2863]:
                            mem[_2863 + t + 196] = mem[_2863 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_2863] % 32:
                            require ext_code.size(address(_2665))
                            call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2863 + 164 len mem[_2863] + 32]
                        else:
                            mem[floor32(mem[_2863]) + _2863 + 196] = mem[floor32(mem[_2863]) + _2863 + -(mem[_2863] % 32) + 228 len mem[_2863] % 32]
                            require ext_code.size(address(_2665))
                            call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2863], mem[_2863 + 196 len floor32(mem[_2863]) + 32]
                    else:
                        require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                        _2855 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                        _2888 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2888 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2888 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_2888 + 68] = 0
                        mem[_2888 + 100] = address(_2855)
                        mem[_2888 + 132] = 128
                        mem[_2888 + 164] = mem[_2888]
                        t = 0
                        while t < mem[_2888]:
                            mem[_2888 + t + 196] = mem[_2888 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_2888] % 32:
                            require ext_code.size(address(_2665))
                            call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2855), 128, mem[_2888 + 164 len mem[_2888] + 32]
                        else:
                            mem[floor32(mem[_2888]) + _2888 + 196] = mem[floor32(mem[_2888]) + _2888 + -(mem[_2888] % 32) + 228 len mem[_2888] % 32]
                            require ext_code.size(address(_2665))
                            call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2855), 128, mem[_2888], mem[_2888 + 196 len floor32(mem[_2888]) + 32]
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
            require idx + 1 < mem[ceil32(arg4.length) + 128]
            require idx < mem[ceil32(arg4.length) + 128]
            if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                if idx >= mem[ceil32(arg4.length) + 128] - 2:
                    _2908 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2908 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2908 + 36] = 0
                    mem[_2908 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_2908 + 100] = this.address
                    mem[_2908 + 132] = 128
                    mem[_2908 + 164] = mem[_2908]
                    t = 0
                    while t < mem[_2908]:
                        mem[_2908 + t + 196] = mem[_2908 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_2908] % 32:
                        require ext_code.size(address(_2665))
                        call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2908 + 164 len mem[_2908] + 32]
                    else:
                        mem[floor32(mem[_2908]) + _2908 + 196] = mem[floor32(mem[_2908]) + _2908 + -(mem[_2908] % 32) + 228 len mem[_2908] % 32]
                        require ext_code.size(address(_2665))
                        call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_2908], mem[_2908 + 196 len floor32(mem[_2908]) + 32]
                else:
                    require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                    _2892 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                    _2938 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2938 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2938 + 36] = 0
                    mem[_2938 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_2938 + 100] = address(_2892)
                    mem[_2938 + 132] = 128
                    mem[_2938 + 164] = mem[_2938]
                    t = 0
                    while t < mem[_2938]:
                        mem[_2938 + t + 196] = mem[_2938 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_2938] % 32:
                        require ext_code.size(address(_2665))
                        call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2892), 128, mem[_2938 + 164 len mem[_2938] + 32]
                    else:
                        mem[floor32(mem[_2938]) + _2938 + 196] = mem[floor32(mem[_2938]) + _2938 + -(mem[_2938] % 32) + 228 len mem[_2938] % 32]
                        require ext_code.size(address(_2665))
                        call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_2892), 128, mem[_2938], mem[_2938 + 196 len floor32(mem[_2938]) + 32]
            else:
                if idx >= mem[ceil32(arg4.length) + 128] - 2:
                    _2909 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2909 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2909 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_2909 + 68] = 0
                    mem[_2909 + 100] = this.address
                    mem[_2909 + 132] = 128
                    mem[_2909 + 164] = mem[_2909]
                    t = 0
                    while t < mem[_2909]:
                        mem[_2909 + t + 196] = mem[_2909 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_2909] % 32:
                        require ext_code.size(address(_2665))
                        call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2909 + 164 len mem[_2909] + 32]
                    else:
                        mem[floor32(mem[_2909]) + _2909 + 196] = mem[floor32(mem[_2909]) + _2909 + -(mem[_2909] % 32) + 228 len mem[_2909] % 32]
                        require ext_code.size(address(_2665))
                        call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_2909], mem[_2909 + 196 len floor32(mem[_2909]) + 32]
                else:
                    require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                    _2893 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                    _2942 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2942 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2942 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_2942 + 68] = 0
                    mem[_2942 + 100] = address(_2893)
                    mem[_2942 + 132] = 128
                    mem[_2942 + 164] = mem[_2942]
                    t = 0
                    while t < mem[_2942]:
                        mem[_2942 + t + 196] = mem[_2942 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_2942] % 32:
                        require ext_code.size(address(_2665))
                        call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2893), 128, mem[_2942 + 164 len mem[_2942] + 32]
                    else:
                        mem[floor32(mem[_2942]) + _2942 + 196] = mem[floor32(mem[_2942]) + _2942 + -(mem[_2942] % 32) + 228 len mem[_2942] % 32]
                        require ext_code.size(address(_2665))
                        call address(_2665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_2893), 128, mem[_2942], mem[_2942 + 196 len floor32(mem[_2942]) + 32]
        else:
            require 1 < mem[ceil32(arg4.length) + 128]
            _2668 = mem[ceil32(arg4.length) + 192]
            require 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
            _2676 = mem[64]
            mem[mem[64] + 36] = mem[(32 * _28) + ceil32(arg4.length) + 236 len 20]
            mem[mem[64] + 68] = s
            _2677 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_2677 + 32] = mem[_2677 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            _2680 = mem[_2677]
            u = _2677 + 32
            v = mem[64]
            t = mem[_2677]
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[mem[64] + floor32(mem[_2677])] = mem[_2677 + floor32(mem[_2677]) + -(mem[_2677] % 32) + 64 len mem[_2677] % 32] or Mask(8 * -(mem[_2677] % 32) + 32, -(8 * -(mem[_2677] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2677])])
            call address(_2668).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _2680 + _2676 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if not mem[96]:
                    require idx < mem[(32 * _28) + ceil32(arg4.length) + 160]
                    _3834 = mem[(32 * idx) + (32 * _28) + ceil32(arg4.length) + 192]
                    require ext_code.size(mem[(32 * idx) + (32 * _28) + ceil32(arg4.length) + 204 len 20])
                    staticcall mem[(32 * idx) + (32 * _28) + ceil32(arg4.length) + 204 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx + 1 < mem[ceil32(arg4.length) + 128]
                    require idx < mem[ceil32(arg4.length) + 128]
                    if 997 * s / 997 != s:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            require idx + 1 < mem[ceil32(arg4.length) + 128]
                            require idx < mem[ceil32(arg4.length) + 128]
                            if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                                if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                    _4080 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4080 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4080 + 36] = 0
                                    mem[_4080 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_4080 + 100] = this.address
                                    mem[_4080 + 132] = 128
                                    mem[_4080 + 164] = mem[_4080]
                                    t = 0
                                    while t < mem[_4080]:
                                        mem[_4080 + t + 196] = mem[_4080 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4080] % 32:
                                        require ext_code.size(address(_3834))
                                        call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_4080 + 164 len mem[_4080] + 32]
                                    else:
                                        mem[floor32(mem[_4080]) + _4080 + 196] = mem[floor32(mem[_4080]) + _4080 + -(mem[_4080] % 32) + 228 len mem[_4080] % 32]
                                        require ext_code.size(address(_3834))
                                        call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_4080], mem[_4080 + 196 len floor32(mem[_4080]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                    _4052 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                    _4104 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4104 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4104 + 36] = 0
                                    mem[_4104 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_4104 + 100] = address(_4052)
                                    mem[_4104 + 132] = 128
                                    mem[_4104 + 164] = mem[_4104]
                                    t = 0
                                    while t < mem[_4104]:
                                        mem[_4104 + t + 196] = mem[_4104 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4104] % 32:
                                        require ext_code.size(address(_3834))
                                        call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_4052), 128, mem[_4104 + 164 len mem[_4104] + 32]
                                    else:
                                        mem[floor32(mem[_4104]) + _4104 + 196] = mem[floor32(mem[_4104]) + _4104 + -(mem[_4104] % 32) + 228 len mem[_4104] % 32]
                                        require ext_code.size(address(_3834))
                                        call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_4052), 128, mem[_4104], mem[_4104 + 196 len floor32(mem[_4104]) + 32]
                            else:
                                if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                    _4081 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4081 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4081 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_4081 + 68] = 0
                                    mem[_4081 + 100] = this.address
                                    mem[_4081 + 132] = 128
                                    mem[_4081 + 164] = mem[_4081]
                                    t = 0
                                    while t < mem[_4081]:
                                        mem[_4081 + t + 196] = mem[_4081 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4081] % 32:
                                        require ext_code.size(address(_3834))
                                        call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_4081 + 164 len mem[_4081] + 32]
                                    else:
                                        mem[floor32(mem[_4081]) + _4081 + 196] = mem[floor32(mem[_4081]) + _4081 + -(mem[_4081] % 32) + 228 len mem[_4081] % 32]
                                        require ext_code.size(address(_3834))
                                        call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_4081], mem[_4081 + 196 len floor32(mem[_4081]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                    _4053 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                    _4108 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4108 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4108 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_4108 + 68] = 0
                                    mem[_4108 + 100] = address(_4053)
                                    mem[_4108 + 132] = 128
                                    mem[_4108 + 164] = mem[_4108]
                                    t = 0
                                    while t < mem[_4108]:
                                        mem[_4108 + t + 196] = mem[_4108 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4108] % 32:
                                        require ext_code.size(address(_3834))
                                        call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_4053), 128, mem[_4108 + 164 len mem[_4108] + 32]
                                    else:
                                        mem[floor32(mem[_4108]) + _4108 + 196] = mem[floor32(mem[_4108]) + _4108 + -(mem[_4108] % 32) + 228 len mem[_4108] % 32]
                                        require ext_code.size(address(_3834))
                                        call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_4053), 128, mem[_4108], mem[_4108 + 196 len floor32(mem[_4108]) + 32]
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
                        require idx + 1 < mem[ceil32(arg4.length) + 128]
                        require idx < mem[ceil32(arg4.length) + 128]
                        if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                            if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                _4166 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4166 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4166 + 36] = 0
                                mem[_4166 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_4166 + 100] = this.address
                                mem[_4166 + 132] = 128
                                mem[_4166 + 164] = mem[_4166]
                                t = 0
                                while t < mem[_4166]:
                                    mem[_4166 + t + 196] = mem[_4166 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4166] % 32:
                                    require ext_code.size(address(_3834))
                                    call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_4166 + 164 len mem[_4166] + 32]
                                else:
                                    mem[floor32(mem[_4166]) + _4166 + 196] = mem[floor32(mem[_4166]) + _4166 + -(mem[_4166] % 32) + 228 len mem[_4166] % 32]
                                    require ext_code.size(address(_3834))
                                    call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_4166], mem[_4166 + 196 len floor32(mem[_4166]) + 32]
                            else:
                                require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                _4112 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                _4210 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4210 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4210 + 36] = 0
                                mem[_4210 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_4210 + 100] = address(_4112)
                                mem[_4210 + 132] = 128
                                mem[_4210 + 164] = mem[_4210]
                                t = 0
                                while t < mem[_4210]:
                                    mem[_4210 + t + 196] = mem[_4210 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4210] % 32:
                                    require ext_code.size(address(_3834))
                                    call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_4112), 128, mem[_4210 + 164 len mem[_4210] + 32]
                                else:
                                    mem[floor32(mem[_4210]) + _4210 + 196] = mem[floor32(mem[_4210]) + _4210 + -(mem[_4210] % 32) + 228 len mem[_4210] % 32]
                                    require ext_code.size(address(_3834))
                                    call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_4112), 128, mem[_4210], mem[_4210 + 196 len floor32(mem[_4210]) + 32]
                        else:
                            if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                _4167 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4167 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4167 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_4167 + 68] = 0
                                mem[_4167 + 100] = this.address
                                mem[_4167 + 132] = 128
                                mem[_4167 + 164] = mem[_4167]
                                t = 0
                                while t < mem[_4167]:
                                    mem[_4167 + t + 196] = mem[_4167 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4167] % 32:
                                    require ext_code.size(address(_3834))
                                    call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_4167 + 164 len mem[_4167] + 32]
                                else:
                                    mem[floor32(mem[_4167]) + _4167 + 196] = mem[floor32(mem[_4167]) + _4167 + -(mem[_4167] % 32) + 228 len mem[_4167] % 32]
                                    require ext_code.size(address(_3834))
                                    call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_4167], mem[_4167 + 196 len floor32(mem[_4167]) + 32]
                            else:
                                require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                _4113 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                _4214 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4214 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4214 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_4214 + 68] = 0
                                mem[_4214 + 100] = address(_4113)
                                mem[_4214 + 132] = 128
                                mem[_4214 + 164] = mem[_4214]
                                t = 0
                                while t < mem[_4214]:
                                    mem[_4214 + t + 196] = mem[_4214 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4214] % 32:
                                    require ext_code.size(address(_3834))
                                    call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_4113), 128, mem[_4214 + 164 len mem[_4214] + 32]
                                else:
                                    mem[floor32(mem[_4214]) + _4214 + 196] = mem[floor32(mem[_4214]) + _4214 + -(mem[_4214] % 32) + 228 len mem[_4214] % 32]
                                    require ext_code.size(address(_3834))
                                    call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_4113), 128, mem[_4214], mem[_4214 + 196 len floor32(mem[_4214]) + 32]
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
                        require idx + 1 < mem[ceil32(arg4.length) + 128]
                        require idx < mem[ceil32(arg4.length) + 128]
                        if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                            if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                _4084 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4084 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4084 + 36] = 0
                                mem[_4084 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_4084 + 100] = this.address
                                mem[_4084 + 132] = 128
                                mem[_4084 + 164] = mem[_4084]
                                t = 0
                                while t < mem[_4084]:
                                    mem[_4084 + t + 196] = mem[_4084 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4084] % 32:
                                    require ext_code.size(address(_3834))
                                    call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_4084 + 164 len mem[_4084] + 32]
                                else:
                                    mem[floor32(mem[_4084]) + _4084 + 196] = mem[floor32(mem[_4084]) + _4084 + -(mem[_4084] % 32) + 228 len mem[_4084] % 32]
                                    require ext_code.size(address(_3834))
                                    call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_4084], mem[_4084 + 196 len floor32(mem[_4084]) + 32]
                            else:
                                require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                _4056 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                _4114 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4114 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4114 + 36] = 0
                                mem[_4114 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_4114 + 100] = address(_4056)
                                mem[_4114 + 132] = 128
                                mem[_4114 + 164] = mem[_4114]
                                t = 0
                                while t < mem[_4114]:
                                    mem[_4114 + t + 196] = mem[_4114 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4114] % 32:
                                    require ext_code.size(address(_3834))
                                    call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_4056), 128, mem[_4114 + 164 len mem[_4114] + 32]
                                else:
                                    mem[floor32(mem[_4114]) + _4114 + 196] = mem[floor32(mem[_4114]) + _4114 + -(mem[_4114] % 32) + 228 len mem[_4114] % 32]
                                    require ext_code.size(address(_3834))
                                    call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_4056), 128, mem[_4114], mem[_4114 + 196 len floor32(mem[_4114]) + 32]
                        else:
                            if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                _4085 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4085 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4085 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_4085 + 68] = 0
                                mem[_4085 + 100] = this.address
                                mem[_4085 + 132] = 128
                                mem[_4085 + 164] = mem[_4085]
                                t = 0
                                while t < mem[_4085]:
                                    mem[_4085 + t + 196] = mem[_4085 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4085] % 32:
                                    require ext_code.size(address(_3834))
                                    call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_4085 + 164 len mem[_4085] + 32]
                                else:
                                    mem[floor32(mem[_4085]) + _4085 + 196] = mem[floor32(mem[_4085]) + _4085 + -(mem[_4085] % 32) + 228 len mem[_4085] % 32]
                                    require ext_code.size(address(_3834))
                                    call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_4085], mem[_4085 + 196 len floor32(mem[_4085]) + 32]
                            else:
                                require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                _4057 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                _4118 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4118 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4118 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_4118 + 68] = 0
                                mem[_4118 + 100] = address(_4057)
                                mem[_4118 + 132] = 128
                                mem[_4118 + 164] = mem[_4118]
                                t = 0
                                while t < mem[_4118]:
                                    mem[_4118 + t + 196] = mem[_4118 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4118] % 32:
                                    require ext_code.size(address(_3834))
                                    call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_4057), 128, mem[_4118 + 164 len mem[_4118] + 32]
                                else:
                                    mem[floor32(mem[_4118]) + _4118 + 196] = mem[floor32(mem[_4118]) + _4118 + -(mem[_4118] % 32) + 228 len mem[_4118] % 32]
                                    require ext_code.size(address(_3834))
                                    call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_4057), 128, mem[_4118], mem[_4118 + 196 len floor32(mem[_4118]) + 32]
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
                    require idx + 1 < mem[ceil32(arg4.length) + 128]
                    require idx < mem[ceil32(arg4.length) + 128]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        if idx >= mem[ceil32(arg4.length) + 128] - 2:
                            _4174 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4174 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4174 + 36] = 0
                            mem[_4174 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_4174 + 100] = this.address
                            mem[_4174 + 132] = 128
                            mem[_4174 + 164] = mem[_4174]
                            t = 0
                            while t < mem[_4174]:
                                mem[_4174 + t + 196] = mem[_4174 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_4174] % 32:
                                require ext_code.size(address(_3834))
                                call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_4174 + 164 len mem[_4174] + 32]
                            else:
                                mem[floor32(mem[_4174]) + _4174 + 196] = mem[floor32(mem[_4174]) + _4174 + -(mem[_4174] % 32) + 228 len mem[_4174] % 32]
                                require ext_code.size(address(_3834))
                                call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_4174], mem[_4174 + 196 len floor32(mem[_4174]) + 32]
                        else:
                            require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                            _4122 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                            _4220 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4220 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4220 + 36] = 0
                            mem[_4220 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_4220 + 100] = address(_4122)
                            mem[_4220 + 132] = 128
                            mem[_4220 + 164] = mem[_4220]
                            t = 0
                            while t < mem[_4220]:
                                mem[_4220 + t + 196] = mem[_4220 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_4220] % 32:
                                require ext_code.size(address(_3834))
                                call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_4122), 128, mem[_4220 + 164 len mem[_4220] + 32]
                            else:
                                mem[floor32(mem[_4220]) + _4220 + 196] = mem[floor32(mem[_4220]) + _4220 + -(mem[_4220] % 32) + 228 len mem[_4220] % 32]
                                require ext_code.size(address(_3834))
                                call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_4122), 128, mem[_4220], mem[_4220 + 196 len floor32(mem[_4220]) + 32]
                    else:
                        if idx >= mem[ceil32(arg4.length) + 128] - 2:
                            _4175 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4175 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4175 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_4175 + 68] = 0
                            mem[_4175 + 100] = this.address
                            mem[_4175 + 132] = 128
                            mem[_4175 + 164] = mem[_4175]
                            t = 0
                            while t < mem[_4175]:
                                mem[_4175 + t + 196] = mem[_4175 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_4175] % 32:
                                require ext_code.size(address(_3834))
                                call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_4175 + 164 len mem[_4175] + 32]
                            else:
                                mem[floor32(mem[_4175]) + _4175 + 196] = mem[floor32(mem[_4175]) + _4175 + -(mem[_4175] % 32) + 228 len mem[_4175] % 32]
                                require ext_code.size(address(_3834))
                                call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_4175], mem[_4175 + 196 len floor32(mem[_4175]) + 32]
                        else:
                            require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                            _4123 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                            _4224 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4224 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4224 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_4224 + 68] = 0
                            mem[_4224 + 100] = address(_4123)
                            mem[_4224 + 132] = 128
                            mem[_4224 + 164] = mem[_4224]
                            t = 0
                            while t < mem[_4224]:
                                mem[_4224 + t + 196] = mem[_4224 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_4224] % 32:
                                require ext_code.size(address(_3834))
                                call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_4123), 128, mem[_4224 + 164 len mem[_4224] + 32]
                            else:
                                mem[floor32(mem[_4224]) + _4224 + 196] = mem[floor32(mem[_4224]) + _4224 + -(mem[_4224] % 32) + 228 len mem[_4224] % 32]
                                require ext_code.size(address(_3834))
                                call address(_3834).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_4123), 128, mem[_4224], mem[_4224 + 196 len floor32(mem[_4224]) + 32]
                else:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    require idx < mem[(32 * _28) + ceil32(arg4.length) + 160]
                    _3843 = mem[(32 * idx) + (32 * _28) + ceil32(arg4.length) + 192]
                    require ext_code.size(mem[(32 * idx) + (32 * _28) + ceil32(arg4.length) + 204 len 20])
                    staticcall mem[(32 * idx) + (32 * _28) + ceil32(arg4.length) + 204 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx + 1 < mem[ceil32(arg4.length) + 128]
                    require idx < mem[ceil32(arg4.length) + 128]
                    if 997 * s / 997 != s:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            require idx + 1 < mem[ceil32(arg4.length) + 128]
                            require idx < mem[ceil32(arg4.length) + 128]
                            if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                                if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                    _4176 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4176 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4176 + 36] = 0
                                    mem[_4176 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_4176 + 100] = this.address
                                    mem[_4176 + 132] = 128
                                    mem[_4176 + 164] = mem[_4176]
                                    t = 0
                                    while t < mem[_4176]:
                                        mem[_4176 + t + 196] = mem[_4176 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4176] % 32:
                                        require ext_code.size(address(_3843))
                                        call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_4176 + 164 len mem[_4176] + 32]
                                    else:
                                        mem[floor32(mem[_4176]) + _4176 + 196] = mem[floor32(mem[_4176]) + _4176 + -(mem[_4176] % 32) + 228 len mem[_4176] % 32]
                                        require ext_code.size(address(_3843))
                                        call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_4176], mem[_4176 + 196 len floor32(mem[_4176]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                    _4124 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                    _4228 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4228 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4228 + 36] = 0
                                    mem[_4228 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_4228 + 100] = address(_4124)
                                    mem[_4228 + 132] = 128
                                    mem[_4228 + 164] = mem[_4228]
                                    t = 0
                                    while t < mem[_4228]:
                                        mem[_4228 + t + 196] = mem[_4228 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4228] % 32:
                                        require ext_code.size(address(_3843))
                                        call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_4124), 128, mem[_4228 + 164 len mem[_4228] + 32]
                                    else:
                                        mem[floor32(mem[_4228]) + _4228 + 196] = mem[floor32(mem[_4228]) + _4228 + -(mem[_4228] % 32) + 228 len mem[_4228] % 32]
                                        require ext_code.size(address(_3843))
                                        call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_4124), 128, mem[_4228], mem[_4228 + 196 len floor32(mem[_4228]) + 32]
                            else:
                                if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                    _4177 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4177 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4177 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_4177 + 68] = 0
                                    mem[_4177 + 100] = this.address
                                    mem[_4177 + 132] = 128
                                    mem[_4177 + 164] = mem[_4177]
                                    t = 0
                                    while t < mem[_4177]:
                                        mem[_4177 + t + 196] = mem[_4177 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4177] % 32:
                                        require ext_code.size(address(_3843))
                                        call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_4177 + 164 len mem[_4177] + 32]
                                    else:
                                        mem[floor32(mem[_4177]) + _4177 + 196] = mem[floor32(mem[_4177]) + _4177 + -(mem[_4177] % 32) + 228 len mem[_4177] % 32]
                                        require ext_code.size(address(_3843))
                                        call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_4177], mem[_4177 + 196 len floor32(mem[_4177]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                    _4125 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                    _4232 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4232 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4232 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_4232 + 68] = 0
                                    mem[_4232 + 100] = address(_4125)
                                    mem[_4232 + 132] = 128
                                    mem[_4232 + 164] = mem[_4232]
                                    t = 0
                                    while t < mem[_4232]:
                                        mem[_4232 + t + 196] = mem[_4232 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4232] % 32:
                                        require ext_code.size(address(_3843))
                                        call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_4125), 128, mem[_4232 + 164 len mem[_4232] + 32]
                                    else:
                                        mem[floor32(mem[_4232]) + _4232 + 196] = mem[floor32(mem[_4232]) + _4232 + -(mem[_4232] % 32) + 228 len mem[_4232] % 32]
                                        require ext_code.size(address(_3843))
                                        call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_4125), 128, mem[_4232], mem[_4232 + 196 len floor32(mem[_4232]) + 32]
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
                        require idx + 1 < mem[ceil32(arg4.length) + 128]
                        require idx < mem[ceil32(arg4.length) + 128]
                        if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                            if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                _4318 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4318 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4318 + 36] = 0
                                mem[_4318 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_4318 + 100] = this.address
                                mem[_4318 + 132] = 128
                                mem[_4318 + 164] = mem[_4318]
                                t = 0
                                while t < mem[_4318]:
                                    mem[_4318 + t + 196] = mem[_4318 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4318] % 32:
                                    require ext_code.size(address(_3843))
                                    call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_4318 + 164 len mem[_4318] + 32]
                                else:
                                    mem[floor32(mem[_4318]) + _4318 + 196] = mem[floor32(mem[_4318]) + _4318 + -(mem[_4318] % 32) + 228 len mem[_4318] % 32]
                                    require ext_code.size(address(_3843))
                                    call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_4318], mem[_4318 + 196 len floor32(mem[_4318]) + 32]
                            else:
                                require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                _4236 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                _4386 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4386 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4386 + 36] = 0
                                mem[_4386 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_4386 + 100] = address(_4236)
                                mem[_4386 + 132] = 128
                                mem[_4386 + 164] = mem[_4386]
                                t = 0
                                while t < mem[_4386]:
                                    mem[_4386 + t + 196] = mem[_4386 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4386] % 32:
                                    require ext_code.size(address(_3843))
                                    call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_4236), 128, mem[_4386 + 164 len mem[_4386] + 32]
                                else:
                                    mem[floor32(mem[_4386]) + _4386 + 196] = mem[floor32(mem[_4386]) + _4386 + -(mem[_4386] % 32) + 228 len mem[_4386] % 32]
                                    require ext_code.size(address(_3843))
                                    call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_4236), 128, mem[_4386], mem[_4386 + 196 len floor32(mem[_4386]) + 32]
                        else:
                            if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                _4319 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4319 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4319 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_4319 + 68] = 0
                                mem[_4319 + 100] = this.address
                                mem[_4319 + 132] = 128
                                mem[_4319 + 164] = mem[_4319]
                                t = 0
                                while t < mem[_4319]:
                                    mem[_4319 + t + 196] = mem[_4319 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4319] % 32:
                                    require ext_code.size(address(_3843))
                                    call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_4319 + 164 len mem[_4319] + 32]
                                else:
                                    mem[floor32(mem[_4319]) + _4319 + 196] = mem[floor32(mem[_4319]) + _4319 + -(mem[_4319] % 32) + 228 len mem[_4319] % 32]
                                    require ext_code.size(address(_3843))
                                    call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_4319], mem[_4319 + 196 len floor32(mem[_4319]) + 32]
                            else:
                                require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                _4237 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                _4390 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4390 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4390 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_4390 + 68] = 0
                                mem[_4390 + 100] = address(_4237)
                                mem[_4390 + 132] = 128
                                mem[_4390 + 164] = mem[_4390]
                                t = 0
                                while t < mem[_4390]:
                                    mem[_4390 + t + 196] = mem[_4390 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4390] % 32:
                                    require ext_code.size(address(_3843))
                                    call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_4237), 128, mem[_4390 + 164 len mem[_4390] + 32]
                                else:
                                    mem[floor32(mem[_4390]) + _4390 + 196] = mem[floor32(mem[_4390]) + _4390 + -(mem[_4390] % 32) + 228 len mem[_4390] % 32]
                                    require ext_code.size(address(_3843))
                                    call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_4237), 128, mem[_4390], mem[_4390 + 196 len floor32(mem[_4390]) + 32]
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
                        require idx + 1 < mem[ceil32(arg4.length) + 128]
                        require idx < mem[ceil32(arg4.length) + 128]
                        if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                            if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                _4180 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4180 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4180 + 36] = 0
                                mem[_4180 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_4180 + 100] = this.address
                                mem[_4180 + 132] = 128
                                mem[_4180 + 164] = mem[_4180]
                                t = 0
                                while t < mem[_4180]:
                                    mem[_4180 + t + 196] = mem[_4180 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4180] % 32:
                                    require ext_code.size(address(_3843))
                                    call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_4180 + 164 len mem[_4180] + 32]
                                else:
                                    mem[floor32(mem[_4180]) + _4180 + 196] = mem[floor32(mem[_4180]) + _4180 + -(mem[_4180] % 32) + 228 len mem[_4180] % 32]
                                    require ext_code.size(address(_3843))
                                    call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_4180], mem[_4180 + 196 len floor32(mem[_4180]) + 32]
                            else:
                                require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                _4128 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                _4238 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4238 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4238 + 36] = 0
                                mem[_4238 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_4238 + 100] = address(_4128)
                                mem[_4238 + 132] = 128
                                mem[_4238 + 164] = mem[_4238]
                                t = 0
                                while t < mem[_4238]:
                                    mem[_4238 + t + 196] = mem[_4238 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4238] % 32:
                                    require ext_code.size(address(_3843))
                                    call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_4128), 128, mem[_4238 + 164 len mem[_4238] + 32]
                                else:
                                    mem[floor32(mem[_4238]) + _4238 + 196] = mem[floor32(mem[_4238]) + _4238 + -(mem[_4238] % 32) + 228 len mem[_4238] % 32]
                                    require ext_code.size(address(_3843))
                                    call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_4128), 128, mem[_4238], mem[_4238 + 196 len floor32(mem[_4238]) + 32]
                        else:
                            if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                _4181 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4181 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4181 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_4181 + 68] = 0
                                mem[_4181 + 100] = this.address
                                mem[_4181 + 132] = 128
                                mem[_4181 + 164] = mem[_4181]
                                t = 0
                                while t < mem[_4181]:
                                    mem[_4181 + t + 196] = mem[_4181 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4181] % 32:
                                    require ext_code.size(address(_3843))
                                    call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_4181 + 164 len mem[_4181] + 32]
                                else:
                                    mem[floor32(mem[_4181]) + _4181 + 196] = mem[floor32(mem[_4181]) + _4181 + -(mem[_4181] % 32) + 228 len mem[_4181] % 32]
                                    require ext_code.size(address(_3843))
                                    call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_4181], mem[_4181 + 196 len floor32(mem[_4181]) + 32]
                            else:
                                require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                _4129 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                _4242 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4242 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4242 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_4242 + 68] = 0
                                mem[_4242 + 100] = address(_4129)
                                mem[_4242 + 132] = 128
                                mem[_4242 + 164] = mem[_4242]
                                t = 0
                                while t < mem[_4242]:
                                    mem[_4242 + t + 196] = mem[_4242 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4242] % 32:
                                    require ext_code.size(address(_3843))
                                    call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_4129), 128, mem[_4242 + 164 len mem[_4242] + 32]
                                else:
                                    mem[floor32(mem[_4242]) + _4242 + 196] = mem[floor32(mem[_4242]) + _4242 + -(mem[_4242] % 32) + 228 len mem[_4242] % 32]
                                    require ext_code.size(address(_3843))
                                    call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_4129), 128, mem[_4242], mem[_4242 + 196 len floor32(mem[_4242]) + 32]
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
                    require idx + 1 < mem[ceil32(arg4.length) + 128]
                    require idx < mem[ceil32(arg4.length) + 128]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        if idx >= mem[ceil32(arg4.length) + 128] - 2:
                            _4326 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4326 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4326 + 36] = 0
                            mem[_4326 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_4326 + 100] = this.address
                            mem[_4326 + 132] = 128
                            mem[_4326 + 164] = mem[_4326]
                            t = 0
                            while t < mem[_4326]:
                                mem[_4326 + t + 196] = mem[_4326 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_4326] % 32:
                                require ext_code.size(address(_3843))
                                call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_4326 + 164 len mem[_4326] + 32]
                            else:
                                mem[floor32(mem[_4326]) + _4326 + 196] = mem[floor32(mem[_4326]) + _4326 + -(mem[_4326] % 32) + 228 len mem[_4326] % 32]
                                require ext_code.size(address(_3843))
                                call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_4326], mem[_4326 + 196 len floor32(mem[_4326]) + 32]
                        else:
                            require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                            _4246 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                            _4396 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4396 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4396 + 36] = 0
                            mem[_4396 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_4396 + 100] = address(_4246)
                            mem[_4396 + 132] = 128
                            mem[_4396 + 164] = mem[_4396]
                            t = 0
                            while t < mem[_4396]:
                                mem[_4396 + t + 196] = mem[_4396 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_4396] % 32:
                                require ext_code.size(address(_3843))
                                call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_4246), 128, mem[_4396 + 164 len mem[_4396] + 32]
                            else:
                                mem[floor32(mem[_4396]) + _4396 + 196] = mem[floor32(mem[_4396]) + _4396 + -(mem[_4396] % 32) + 228 len mem[_4396] % 32]
                                require ext_code.size(address(_3843))
                                call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_4246), 128, mem[_4396], mem[_4396 + 196 len floor32(mem[_4396]) + 32]
                    else:
                        if idx >= mem[ceil32(arg4.length) + 128] - 2:
                            _4327 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4327 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4327 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_4327 + 68] = 0
                            mem[_4327 + 100] = this.address
                            mem[_4327 + 132] = 128
                            mem[_4327 + 164] = mem[_4327]
                            t = 0
                            while t < mem[_4327]:
                                mem[_4327 + t + 196] = mem[_4327 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_4327] % 32:
                                require ext_code.size(address(_3843))
                                call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_4327 + 164 len mem[_4327] + 32]
                            else:
                                mem[floor32(mem[_4327]) + _4327 + 196] = mem[floor32(mem[_4327]) + _4327 + -(mem[_4327] % 32) + 228 len mem[_4327] % 32]
                                require ext_code.size(address(_3843))
                                call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_4327], mem[_4327 + 196 len floor32(mem[_4327]) + 32]
                        else:
                            require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                            _4247 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                            _4400 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4400 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4400 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_4400 + 68] = 0
                            mem[_4400 + 100] = address(_4247)
                            mem[_4400 + 132] = 128
                            mem[_4400 + 164] = mem[_4400]
                            t = 0
                            while t < mem[_4400]:
                                mem[_4400 + t + 196] = mem[_4400 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_4400] % 32:
                                require ext_code.size(address(_3843))
                                call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_4247), 128, mem[_4400 + 164 len mem[_4400] + 32]
                            else:
                                mem[floor32(mem[_4400]) + _4400 + 196] = mem[floor32(mem[_4400]) + _4400 + -(mem[_4400] % 32) + 228 len mem[_4400] % 32]
                                require ext_code.size(address(_3843))
                                call address(_3843).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_4247), 128, mem[_4400], mem[_4400 + 196 len floor32(mem[_4400]) + 32]
            else:
                _3787 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_3787] = return_data.size
                mem[_3787 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if not return_data.size:
                    require idx < mem[(32 * _28) + ceil32(arg4.length) + 160]
                    _3837 = mem[(32 * idx) + (32 * _28) + ceil32(arg4.length) + 192]
                    require ext_code.size(mem[(32 * idx) + (32 * _28) + ceil32(arg4.length) + 204 len 20])
                    staticcall mem[(32 * idx) + (32 * _28) + ceil32(arg4.length) + 204 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx + 1 < mem[ceil32(arg4.length) + 128]
                    require idx < mem[ceil32(arg4.length) + 128]
                    if 997 * s / 997 != s:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            require idx + 1 < mem[ceil32(arg4.length) + 128]
                            require idx < mem[ceil32(arg4.length) + 128]
                            if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                                if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                    _4092 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4092 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4092 + 36] = 0
                                    mem[_4092 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_4092 + 100] = this.address
                                    mem[_4092 + 132] = 128
                                    mem[_4092 + 164] = mem[_4092]
                                    t = 0
                                    while t < mem[_4092]:
                                        mem[_4092 + t + 196] = mem[_4092 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4092] % 32:
                                        require ext_code.size(address(_3837))
                                        call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_4092 + 164 len mem[_4092] + 32]
                                    else:
                                        mem[floor32(mem[_4092]) + _4092 + 196] = mem[floor32(mem[_4092]) + _4092 + -(mem[_4092] % 32) + 228 len mem[_4092] % 32]
                                        require ext_code.size(address(_3837))
                                        call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_4092], mem[_4092 + 196 len floor32(mem[_4092]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                    _4066 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                    _4132 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4132 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4132 + 36] = 0
                                    mem[_4132 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_4132 + 100] = address(_4066)
                                    mem[_4132 + 132] = 128
                                    mem[_4132 + 164] = mem[_4132]
                                    t = 0
                                    while t < mem[_4132]:
                                        mem[_4132 + t + 196] = mem[_4132 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4132] % 32:
                                        require ext_code.size(address(_3837))
                                        call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_4066), 128, mem[_4132 + 164 len mem[_4132] + 32]
                                    else:
                                        mem[floor32(mem[_4132]) + _4132 + 196] = mem[floor32(mem[_4132]) + _4132 + -(mem[_4132] % 32) + 228 len mem[_4132] % 32]
                                        require ext_code.size(address(_3837))
                                        call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_4066), 128, mem[_4132], mem[_4132 + 196 len floor32(mem[_4132]) + 32]
                            else:
                                if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                    _4093 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4093 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4093 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_4093 + 68] = 0
                                    mem[_4093 + 100] = this.address
                                    mem[_4093 + 132] = 128
                                    mem[_4093 + 164] = mem[_4093]
                                    t = 0
                                    while t < mem[_4093]:
                                        mem[_4093 + t + 196] = mem[_4093 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4093] % 32:
                                        require ext_code.size(address(_3837))
                                        call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_4093 + 164 len mem[_4093] + 32]
                                    else:
                                        mem[floor32(mem[_4093]) + _4093 + 196] = mem[floor32(mem[_4093]) + _4093 + -(mem[_4093] % 32) + 228 len mem[_4093] % 32]
                                        require ext_code.size(address(_3837))
                                        call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_4093], mem[_4093 + 196 len floor32(mem[_4093]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                    _4067 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                    _4136 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4136 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4136 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_4136 + 68] = 0
                                    mem[_4136 + 100] = address(_4067)
                                    mem[_4136 + 132] = 128
                                    mem[_4136 + 164] = mem[_4136]
                                    t = 0
                                    while t < mem[_4136]:
                                        mem[_4136 + t + 196] = mem[_4136 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4136] % 32:
                                        require ext_code.size(address(_3837))
                                        call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_4067), 128, mem[_4136 + 164 len mem[_4136] + 32]
                                    else:
                                        mem[floor32(mem[_4136]) + _4136 + 196] = mem[floor32(mem[_4136]) + _4136 + -(mem[_4136] % 32) + 228 len mem[_4136] % 32]
                                        require ext_code.size(address(_3837))
                                        call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_4067), 128, mem[_4136], mem[_4136 + 196 len floor32(mem[_4136]) + 32]
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
                        require idx + 1 < mem[ceil32(arg4.length) + 128]
                        require idx < mem[ceil32(arg4.length) + 128]
                        if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                            if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                _4190 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4190 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4190 + 36] = 0
                                mem[_4190 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_4190 + 100] = this.address
                                mem[_4190 + 132] = 128
                                mem[_4190 + 164] = mem[_4190]
                                t = 0
                                while t < mem[_4190]:
                                    mem[_4190 + t + 196] = mem[_4190 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4190] % 32:
                                    require ext_code.size(address(_3837))
                                    call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_4190 + 164 len mem[_4190] + 32]
                                else:
                                    mem[floor32(mem[_4190]) + _4190 + 196] = mem[floor32(mem[_4190]) + _4190 + -(mem[_4190] % 32) + 228 len mem[_4190] % 32]
                                    require ext_code.size(address(_3837))
                                    call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_4190], mem[_4190 + 196 len floor32(mem[_4190]) + 32]
                            else:
                                require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                _4140 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                _4250 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4250 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4250 + 36] = 0
                                mem[_4250 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_4250 + 100] = address(_4140)
                                mem[_4250 + 132] = 128
                                mem[_4250 + 164] = mem[_4250]
                                t = 0
                                while t < mem[_4250]:
                                    mem[_4250 + t + 196] = mem[_4250 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4250] % 32:
                                    require ext_code.size(address(_3837))
                                    call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_4140), 128, mem[_4250 + 164 len mem[_4250] + 32]
                                else:
                                    mem[floor32(mem[_4250]) + _4250 + 196] = mem[floor32(mem[_4250]) + _4250 + -(mem[_4250] % 32) + 228 len mem[_4250] % 32]
                                    require ext_code.size(address(_3837))
                                    call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_4140), 128, mem[_4250], mem[_4250 + 196 len floor32(mem[_4250]) + 32]
                        else:
                            if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                _4191 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4191 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4191 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_4191 + 68] = 0
                                mem[_4191 + 100] = this.address
                                mem[_4191 + 132] = 128
                                mem[_4191 + 164] = mem[_4191]
                                t = 0
                                while t < mem[_4191]:
                                    mem[_4191 + t + 196] = mem[_4191 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4191] % 32:
                                    require ext_code.size(address(_3837))
                                    call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_4191 + 164 len mem[_4191] + 32]
                                else:
                                    mem[floor32(mem[_4191]) + _4191 + 196] = mem[floor32(mem[_4191]) + _4191 + -(mem[_4191] % 32) + 228 len mem[_4191] % 32]
                                    require ext_code.size(address(_3837))
                                    call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_4191], mem[_4191 + 196 len floor32(mem[_4191]) + 32]
                            else:
                                require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                _4141 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                _4254 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4254 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4254 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_4254 + 68] = 0
                                mem[_4254 + 100] = address(_4141)
                                mem[_4254 + 132] = 128
                                mem[_4254 + 164] = mem[_4254]
                                t = 0
                                while t < mem[_4254]:
                                    mem[_4254 + t + 196] = mem[_4254 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4254] % 32:
                                    require ext_code.size(address(_3837))
                                    call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_4141), 128, mem[_4254 + 164 len mem[_4254] + 32]
                                else:
                                    mem[floor32(mem[_4254]) + _4254 + 196] = mem[floor32(mem[_4254]) + _4254 + -(mem[_4254] % 32) + 228 len mem[_4254] % 32]
                                    require ext_code.size(address(_3837))
                                    call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_4141), 128, mem[_4254], mem[_4254 + 196 len floor32(mem[_4254]) + 32]
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
                        require idx + 1 < mem[ceil32(arg4.length) + 128]
                        require idx < mem[ceil32(arg4.length) + 128]
                        if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                            if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                _4096 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4096 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4096 + 36] = 0
                                mem[_4096 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_4096 + 100] = this.address
                                mem[_4096 + 132] = 128
                                mem[_4096 + 164] = mem[_4096]
                                t = 0
                                while t < mem[_4096]:
                                    mem[_4096 + t + 196] = mem[_4096 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4096] % 32:
                                    require ext_code.size(address(_3837))
                                    call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_4096 + 164 len mem[_4096] + 32]
                                else:
                                    mem[floor32(mem[_4096]) + _4096 + 196] = mem[floor32(mem[_4096]) + _4096 + -(mem[_4096] % 32) + 228 len mem[_4096] % 32]
                                    require ext_code.size(address(_3837))
                                    call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_4096], mem[_4096 + 196 len floor32(mem[_4096]) + 32]
                            else:
                                require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                _4070 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                _4142 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4142 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4142 + 36] = 0
                                mem[_4142 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_4142 + 100] = address(_4070)
                                mem[_4142 + 132] = 128
                                mem[_4142 + 164] = mem[_4142]
                                t = 0
                                while t < mem[_4142]:
                                    mem[_4142 + t + 196] = mem[_4142 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4142] % 32:
                                    require ext_code.size(address(_3837))
                                    call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_4070), 128, mem[_4142 + 164 len mem[_4142] + 32]
                                else:
                                    mem[floor32(mem[_4142]) + _4142 + 196] = mem[floor32(mem[_4142]) + _4142 + -(mem[_4142] % 32) + 228 len mem[_4142] % 32]
                                    require ext_code.size(address(_3837))
                                    call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_4070), 128, mem[_4142], mem[_4142 + 196 len floor32(mem[_4142]) + 32]
                        else:
                            if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                _4097 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4097 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4097 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_4097 + 68] = 0
                                mem[_4097 + 100] = this.address
                                mem[_4097 + 132] = 128
                                mem[_4097 + 164] = mem[_4097]
                                t = 0
                                while t < mem[_4097]:
                                    mem[_4097 + t + 196] = mem[_4097 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4097] % 32:
                                    require ext_code.size(address(_3837))
                                    call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_4097 + 164 len mem[_4097] + 32]
                                else:
                                    mem[floor32(mem[_4097]) + _4097 + 196] = mem[floor32(mem[_4097]) + _4097 + -(mem[_4097] % 32) + 228 len mem[_4097] % 32]
                                    require ext_code.size(address(_3837))
                                    call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_4097], mem[_4097 + 196 len floor32(mem[_4097]) + 32]
                            else:
                                require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                _4071 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                _4146 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4146 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4146 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_4146 + 68] = 0
                                mem[_4146 + 100] = address(_4071)
                                mem[_4146 + 132] = 128
                                mem[_4146 + 164] = mem[_4146]
                                t = 0
                                while t < mem[_4146]:
                                    mem[_4146 + t + 196] = mem[_4146 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4146] % 32:
                                    require ext_code.size(address(_3837))
                                    call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_4071), 128, mem[_4146 + 164 len mem[_4146] + 32]
                                else:
                                    mem[floor32(mem[_4146]) + _4146 + 196] = mem[floor32(mem[_4146]) + _4146 + -(mem[_4146] % 32) + 228 len mem[_4146] % 32]
                                    require ext_code.size(address(_3837))
                                    call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_4071), 128, mem[_4146], mem[_4146 + 196 len floor32(mem[_4146]) + 32]
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
                    require idx + 1 < mem[ceil32(arg4.length) + 128]
                    require idx < mem[ceil32(arg4.length) + 128]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        if idx >= mem[ceil32(arg4.length) + 128] - 2:
                            _4198 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4198 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4198 + 36] = 0
                            mem[_4198 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_4198 + 100] = this.address
                            mem[_4198 + 132] = 128
                            mem[_4198 + 164] = mem[_4198]
                            t = 0
                            while t < mem[_4198]:
                                mem[_4198 + t + 196] = mem[_4198 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_4198] % 32:
                                require ext_code.size(address(_3837))
                                call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_4198 + 164 len mem[_4198] + 32]
                            else:
                                mem[floor32(mem[_4198]) + _4198 + 196] = mem[floor32(mem[_4198]) + _4198 + -(mem[_4198] % 32) + 228 len mem[_4198] % 32]
                                require ext_code.size(address(_3837))
                                call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_4198], mem[_4198 + 196 len floor32(mem[_4198]) + 32]
                        else:
                            require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                            _4150 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                            _4260 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4260 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4260 + 36] = 0
                            mem[_4260 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_4260 + 100] = address(_4150)
                            mem[_4260 + 132] = 128
                            mem[_4260 + 164] = mem[_4260]
                            t = 0
                            while t < mem[_4260]:
                                mem[_4260 + t + 196] = mem[_4260 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_4260] % 32:
                                require ext_code.size(address(_3837))
                                call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_4150), 128, mem[_4260 + 164 len mem[_4260] + 32]
                            else:
                                mem[floor32(mem[_4260]) + _4260 + 196] = mem[floor32(mem[_4260]) + _4260 + -(mem[_4260] % 32) + 228 len mem[_4260] % 32]
                                require ext_code.size(address(_3837))
                                call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_4150), 128, mem[_4260], mem[_4260 + 196 len floor32(mem[_4260]) + 32]
                    else:
                        if idx >= mem[ceil32(arg4.length) + 128] - 2:
                            _4199 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4199 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4199 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_4199 + 68] = 0
                            mem[_4199 + 100] = this.address
                            mem[_4199 + 132] = 128
                            mem[_4199 + 164] = mem[_4199]
                            t = 0
                            while t < mem[_4199]:
                                mem[_4199 + t + 196] = mem[_4199 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_4199] % 32:
                                require ext_code.size(address(_3837))
                                call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_4199 + 164 len mem[_4199] + 32]
                            else:
                                mem[floor32(mem[_4199]) + _4199 + 196] = mem[floor32(mem[_4199]) + _4199 + -(mem[_4199] % 32) + 228 len mem[_4199] % 32]
                                require ext_code.size(address(_3837))
                                call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_4199], mem[_4199 + 196 len floor32(mem[_4199]) + 32]
                        else:
                            require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                            _4151 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                            _4264 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4264 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4264 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_4264 + 68] = 0
                            mem[_4264 + 100] = address(_4151)
                            mem[_4264 + 132] = 128
                            mem[_4264 + 164] = mem[_4264]
                            t = 0
                            while t < mem[_4264]:
                                mem[_4264 + t + 196] = mem[_4264 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_4264] % 32:
                                require ext_code.size(address(_3837))
                                call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_4151), 128, mem[_4264 + 164 len mem[_4264] + 32]
                            else:
                                mem[floor32(mem[_4264]) + _4264 + 196] = mem[floor32(mem[_4264]) + _4264 + -(mem[_4264] % 32) + 228 len mem[_4264] % 32]
                                require ext_code.size(address(_3837))
                                call address(_3837).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_4151), 128, mem[_4264], mem[_4264 + 196 len floor32(mem[_4264]) + 32]
                else:
                    require return_data.size >= 32
                    if not mem[_3787 + 32]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    require idx < mem[(32 * _28) + ceil32(arg4.length) + 160]
                    _3847 = mem[(32 * idx) + (32 * _28) + ceil32(arg4.length) + 192]
                    require ext_code.size(mem[(32 * idx) + (32 * _28) + ceil32(arg4.length) + 204 len 20])
                    staticcall mem[(32 * idx) + (32 * _28) + ceil32(arg4.length) + 204 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx + 1 < mem[ceil32(arg4.length) + 128]
                    require idx < mem[ceil32(arg4.length) + 128]
                    if 997 * s / 997 != s:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            require idx + 1 < mem[ceil32(arg4.length) + 128]
                            require idx < mem[ceil32(arg4.length) + 128]
                            if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                                if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                    _4200 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4200 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4200 + 36] = 0
                                    mem[_4200 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_4200 + 100] = this.address
                                    mem[_4200 + 132] = 128
                                    mem[_4200 + 164] = mem[_4200]
                                    t = 0
                                    while t < mem[_4200]:
                                        mem[_4200 + t + 196] = mem[_4200 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4200] % 32:
                                        require ext_code.size(address(_3847))
                                        call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_4200 + 164 len mem[_4200] + 32]
                                    else:
                                        mem[floor32(mem[_4200]) + _4200 + 196] = mem[floor32(mem[_4200]) + _4200 + -(mem[_4200] % 32) + 228 len mem[_4200] % 32]
                                        require ext_code.size(address(_3847))
                                        call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_4200], mem[_4200 + 196 len floor32(mem[_4200]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                    _4152 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                    _4268 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4268 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4268 + 36] = 0
                                    mem[_4268 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_4268 + 100] = address(_4152)
                                    mem[_4268 + 132] = 128
                                    mem[_4268 + 164] = mem[_4268]
                                    t = 0
                                    while t < mem[_4268]:
                                        mem[_4268 + t + 196] = mem[_4268 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4268] % 32:
                                        require ext_code.size(address(_3847))
                                        call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_4152), 128, mem[_4268 + 164 len mem[_4268] + 32]
                                    else:
                                        mem[floor32(mem[_4268]) + _4268 + 196] = mem[floor32(mem[_4268]) + _4268 + -(mem[_4268] % 32) + 228 len mem[_4268] % 32]
                                        require ext_code.size(address(_3847))
                                        call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_4152), 128, mem[_4268], mem[_4268 + 196 len floor32(mem[_4268]) + 32]
                            else:
                                if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                    _4201 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4201 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4201 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_4201 + 68] = 0
                                    mem[_4201 + 100] = this.address
                                    mem[_4201 + 132] = 128
                                    mem[_4201 + 164] = mem[_4201]
                                    t = 0
                                    while t < mem[_4201]:
                                        mem[_4201 + t + 196] = mem[_4201 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4201] % 32:
                                        require ext_code.size(address(_3847))
                                        call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_4201 + 164 len mem[_4201] + 32]
                                    else:
                                        mem[floor32(mem[_4201]) + _4201 + 196] = mem[floor32(mem[_4201]) + _4201 + -(mem[_4201] % 32) + 228 len mem[_4201] % 32]
                                        require ext_code.size(address(_3847))
                                        call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_4201], mem[_4201 + 196 len floor32(mem[_4201]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                    _4153 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                    _4272 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4272 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4272 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                    mem[_4272 + 68] = 0
                                    mem[_4272 + 100] = address(_4153)
                                    mem[_4272 + 132] = 128
                                    mem[_4272 + 164] = mem[_4272]
                                    t = 0
                                    while t < mem[_4272]:
                                        mem[_4272 + t + 196] = mem[_4272 + t + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4272] % 32:
                                        require ext_code.size(address(_3847))
                                        call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_4153), 128, mem[_4272 + 164 len mem[_4272] + 32]
                                    else:
                                        mem[floor32(mem[_4272]) + _4272 + 196] = mem[floor32(mem[_4272]) + _4272 + -(mem[_4272] % 32) + 228 len mem[_4272] % 32]
                                        require ext_code.size(address(_3847))
                                        call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_4153), 128, mem[_4272], mem[_4272 + 196 len floor32(mem[_4272]) + 32]
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
                        require idx + 1 < mem[ceil32(arg4.length) + 128]
                        require idx < mem[ceil32(arg4.length) + 128]
                        if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                            if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                _4358 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4358 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4358 + 36] = 0
                                mem[_4358 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_4358 + 100] = this.address
                                mem[_4358 + 132] = 128
                                mem[_4358 + 164] = mem[_4358]
                                t = 0
                                while t < mem[_4358]:
                                    mem[_4358 + t + 196] = mem[_4358 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4358] % 32:
                                    require ext_code.size(address(_3847))
                                    call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_4358 + 164 len mem[_4358] + 32]
                                else:
                                    mem[floor32(mem[_4358]) + _4358 + 196] = mem[floor32(mem[_4358]) + _4358 + -(mem[_4358] % 32) + 228 len mem[_4358] % 32]
                                    require ext_code.size(address(_3847))
                                    call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_4358], mem[_4358 + 196 len floor32(mem[_4358]) + 32]
                            else:
                                require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                _4276 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                _4422 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4422 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4422 + 36] = 0
                                mem[_4422 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_4422 + 100] = address(_4276)
                                mem[_4422 + 132] = 128
                                mem[_4422 + 164] = mem[_4422]
                                t = 0
                                while t < mem[_4422]:
                                    mem[_4422 + t + 196] = mem[_4422 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4422] % 32:
                                    require ext_code.size(address(_3847))
                                    call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_4276), 128, mem[_4422 + 164 len mem[_4422] + 32]
                                else:
                                    mem[floor32(mem[_4422]) + _4422 + 196] = mem[floor32(mem[_4422]) + _4422 + -(mem[_4422] % 32) + 228 len mem[_4422] % 32]
                                    require ext_code.size(address(_3847))
                                    call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_4276), 128, mem[_4422], mem[_4422 + 196 len floor32(mem[_4422]) + 32]
                        else:
                            if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                _4359 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4359 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4359 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_4359 + 68] = 0
                                mem[_4359 + 100] = this.address
                                mem[_4359 + 132] = 128
                                mem[_4359 + 164] = mem[_4359]
                                t = 0
                                while t < mem[_4359]:
                                    mem[_4359 + t + 196] = mem[_4359 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4359] % 32:
                                    require ext_code.size(address(_3847))
                                    call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_4359 + 164 len mem[_4359] + 32]
                                else:
                                    mem[floor32(mem[_4359]) + _4359 + 196] = mem[floor32(mem[_4359]) + _4359 + -(mem[_4359] % 32) + 228 len mem[_4359] % 32]
                                    require ext_code.size(address(_3847))
                                    call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_4359], mem[_4359 + 196 len floor32(mem[_4359]) + 32]
                            else:
                                require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                _4277 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                _4426 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4426 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4426 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                                mem[_4426 + 68] = 0
                                mem[_4426 + 100] = address(_4277)
                                mem[_4426 + 132] = 128
                                mem[_4426 + 164] = mem[_4426]
                                t = 0
                                while t < mem[_4426]:
                                    mem[_4426 + t + 196] = mem[_4426 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4426] % 32:
                                    require ext_code.size(address(_3847))
                                    call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_4277), 128, mem[_4426 + 164 len mem[_4426] + 32]
                                else:
                                    mem[floor32(mem[_4426]) + _4426 + 196] = mem[floor32(mem[_4426]) + _4426 + -(mem[_4426] % 32) + 228 len mem[_4426] % 32]
                                    require ext_code.size(address(_3847))
                                    call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(_4277), 128, mem[_4426], mem[_4426 + 196 len floor32(mem[_4426]) + 32]
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
                        require idx + 1 < mem[ceil32(arg4.length) + 128]
                        require idx < mem[ceil32(arg4.length) + 128]
                        if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                            if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                _4204 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4204 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4204 + 36] = 0
                                mem[_4204 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_4204 + 100] = this.address
                                mem[_4204 + 132] = 128
                                mem[_4204 + 164] = mem[_4204]
                                t = 0
                                while t < mem[_4204]:
                                    mem[_4204 + t + 196] = mem[_4204 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4204] % 32:
                                    require ext_code.size(address(_3847))
                                    call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_4204 + 164 len mem[_4204] + 32]
                                else:
                                    mem[floor32(mem[_4204]) + _4204 + 196] = mem[floor32(mem[_4204]) + _4204 + -(mem[_4204] % 32) + 228 len mem[_4204] % 32]
                                    require ext_code.size(address(_3847))
                                    call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_4204], mem[_4204 + 196 len floor32(mem[_4204]) + 32]
                            else:
                                require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                _4156 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                _4278 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4278 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4278 + 36] = 0
                                mem[_4278 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_4278 + 100] = address(_4156)
                                mem[_4278 + 132] = 128
                                mem[_4278 + 164] = mem[_4278]
                                t = 0
                                while t < mem[_4278]:
                                    mem[_4278 + t + 196] = mem[_4278 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4278] % 32:
                                    require ext_code.size(address(_3847))
                                    call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_4156), 128, mem[_4278 + 164 len mem[_4278] + 32]
                                else:
                                    mem[floor32(mem[_4278]) + _4278 + 196] = mem[floor32(mem[_4278]) + _4278 + -(mem[_4278] % 32) + 228 len mem[_4278] % 32]
                                    require ext_code.size(address(_3847))
                                    call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_4156), 128, mem[_4278], mem[_4278 + 196 len floor32(mem[_4278]) + 32]
                        else:
                            if idx >= mem[ceil32(arg4.length) + 128] - 2:
                                _4205 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4205 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4205 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_4205 + 68] = 0
                                mem[_4205 + 100] = this.address
                                mem[_4205 + 132] = 128
                                mem[_4205 + 164] = mem[_4205]
                                t = 0
                                while t < mem[_4205]:
                                    mem[_4205 + t + 196] = mem[_4205 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4205] % 32:
                                    require ext_code.size(address(_3847))
                                    call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_4205 + 164 len mem[_4205] + 32]
                                else:
                                    mem[floor32(mem[_4205]) + _4205 + 196] = mem[floor32(mem[_4205]) + _4205 + -(mem[_4205] % 32) + 228 len mem[_4205] % 32]
                                    require ext_code.size(address(_3847))
                                    call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_4205], mem[_4205 + 196 len floor32(mem[_4205]) + 32]
                            else:
                                require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                                _4157 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                                _4282 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4282 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4282 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                                mem[_4282 + 68] = 0
                                mem[_4282 + 100] = address(_4157)
                                mem[_4282 + 132] = 128
                                mem[_4282 + 164] = mem[_4282]
                                t = 0
                                while t < mem[_4282]:
                                    mem[_4282 + t + 196] = mem[_4282 + t + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4282] % 32:
                                    require ext_code.size(address(_3847))
                                    call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_4157), 128, mem[_4282 + 164 len mem[_4282] + 32]
                                else:
                                    mem[floor32(mem[_4282]) + _4282 + 196] = mem[floor32(mem[_4282]) + _4282 + -(mem[_4282] % 32) + 228 len mem[_4282] % 32]
                                    require ext_code.size(address(_3847))
                                    call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_4157), 128, mem[_4282], mem[_4282 + 196 len floor32(mem[_4282]) + 32]
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
                    require idx + 1 < mem[ceil32(arg4.length) + 128]
                    require idx < mem[ceil32(arg4.length) + 128]
                    if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + 172 len 20]:
                        if idx >= mem[ceil32(arg4.length) + 128] - 2:
                            _4366 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4366 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4366 + 36] = 0
                            mem[_4366 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_4366 + 100] = this.address
                            mem[_4366 + 132] = 128
                            mem[_4366 + 164] = mem[_4366]
                            t = 0
                            while t < mem[_4366]:
                                mem[_4366 + t + 196] = mem[_4366 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_4366] % 32:
                                require ext_code.size(address(_3847))
                                call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_4366 + 164 len mem[_4366] + 32]
                            else:
                                mem[floor32(mem[_4366]) + _4366 + 196] = mem[floor32(mem[_4366]) + _4366 + -(mem[_4366] % 32) + 228 len mem[_4366] % 32]
                                require ext_code.size(address(_3847))
                                call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_4366], mem[_4366 + 196 len floor32(mem[_4366]) + 32]
                        else:
                            require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                            _4286 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                            _4432 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4432 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4432 + 36] = 0
                            mem[_4432 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_4432 + 100] = address(_4286)
                            mem[_4432 + 132] = 128
                            mem[_4432 + 164] = mem[_4432]
                            t = 0
                            while t < mem[_4432]:
                                mem[_4432 + t + 196] = mem[_4432 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_4432] % 32:
                                require ext_code.size(address(_3847))
                                call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_4286), 128, mem[_4432 + 164 len mem[_4432] + 32]
                            else:
                                mem[floor32(mem[_4432]) + _4432 + 196] = mem[floor32(mem[_4432]) + _4432 + -(mem[_4432] % 32) + 228 len mem[_4432] % 32]
                                require ext_code.size(address(_3847))
                                call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(_4286), 128, mem[_4432], mem[_4432 + 196 len floor32(mem[_4432]) + 32]
                    else:
                        if idx >= mem[ceil32(arg4.length) + 128] - 2:
                            _4367 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4367 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4367 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_4367 + 68] = 0
                            mem[_4367 + 100] = this.address
                            mem[_4367 + 132] = 128
                            mem[_4367 + 164] = mem[_4367]
                            t = 0
                            while t < mem[_4367]:
                                mem[_4367 + t + 196] = mem[_4367 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_4367] % 32:
                                require ext_code.size(address(_3847))
                                call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_4367 + 164 len mem[_4367] + 32]
                            else:
                                mem[floor32(mem[_4367]) + _4367 + 196] = mem[floor32(mem[_4367]) + _4367 + -(mem[_4367] % 32) + 228 len mem[_4367] % 32]
                                require ext_code.size(address(_3847))
                                call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_4367], mem[_4367 + 196 len floor32(mem[_4367]) + 32]
                        else:
                            require idx + 1 < mem[(32 * _28) + ceil32(arg4.length) + 160]
                            _4287 = mem[(32 * idx + 1) + (32 * _28) + ceil32(arg4.length) + 192]
                            _4436 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4436 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4436 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                            mem[_4436 + 68] = 0
                            mem[_4436 + 100] = address(_4287)
                            mem[_4436 + 132] = 128
                            mem[_4436 + 164] = mem[_4436]
                            t = 0
                            while t < mem[_4436]:
                                mem[_4436 + t + 196] = mem[_4436 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_4436] % 32:
                                require ext_code.size(address(_3847))
                                call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_4287), 128, mem[_4436 + 164 len mem[_4436] + 32]
                            else:
                                mem[floor32(mem[_4436]) + _4436 + 196] = mem[floor32(mem[_4436]) + _4436 + -(mem[_4436] % 32) + 228 len mem[_4436] % 32]
                                require ext_code.size(address(_3847))
                                call address(_3847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_4287), 128, mem[_4436], mem[_4436 + 196 len floor32(mem[_4436]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
        s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
        continue 
    require 0 < mem[ceil32(arg4.length) + 128]
    _2657 = mem[ceil32(arg4.length) + 160]
    _2660 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = _23
    _2661 = mem[64]
    mem[mem[64]] = 68
    mem[64] = mem[64] + 100
    mem[_2661 + 32 len 4] = unknown_0xa9059cbb(?????)
    _2664 = mem[_2661]
    mem[_2660 + 100 len floor32(mem[_2661])] = mem[_2661 + 32 len floor32(mem[_2661])]
    mem[_2660 + floor32(mem[_2661]) + -(mem[_2661] % 32) + 132 len mem[_2661] % 32] = mem[_2661 + -(mem[_2661] % 32) + floor32(mem[_2661]) + 64 len mem[_2661] % 32]
    call address(_2657).mem[_2660 + 100 len 4] with:
         gas gas_remaining wei
        args mem[_2660 + 104 len _2664 - 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if mem[96]:
            require mem[96] >= 32
            if not mem[128]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[_2660 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[_2660 + 132]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
}



}
