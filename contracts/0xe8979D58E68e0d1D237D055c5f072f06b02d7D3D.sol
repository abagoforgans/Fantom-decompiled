contract main {




// =====================  Runtime code  =====================


#
#  - sub_0c37e3ba(?)
#  - sub_1042923b(?)
#  - sub_1b71afbd(?)
#  - sub_5cc7647c(?)
#  - sub_6ceaad4d(?)
#  - sub_88f61f9f(?)
#  - sub_cee6202c(?)
#  - _fallback()
#
address owner;
address stor1;
mapping of uint8 stor2;

function owner() {
    return owner
}

function sub_9416cbc6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor2[arg1])
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_88fbe419(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_f5eaf22a(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    mem[96] = 2
    mem[128] = address(arg1)
    mem[160] = stor1
    mem[192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[196] = arg2
    mem[228] = 0
    mem[260] = 160
    mem[356] = 2
    idx = 0
    s = 128
    t = 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[292] = address(arg3)
    mem[324] = block.timestamp
    require ext_code.size(address(arg4))
    call address(arg4).swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, 0, 160, address(arg3), block.timestamp, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _21 = mem[192 len 4], Mask(224, 32, arg2) >> 32
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 223 < return_data.size + 192
    _22 = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    require return_data.size >= _21 + (32 * _22) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _22] = mem[_21 + 224 len 32 * _22]
    if _22 < 1:
        revert with 0, 17
    if _22 - 1 >= _22:
        revert with 0, 50
    mem[mem[64]] = mem[(32 * _22 - 1) + ceil32(return_data.size) + 224]
    return memory
      from mem[64]
       len 32
}

function sub_c3553167(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    mem[100] = this.address
    mem[132] = address(arg3)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(arg3)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 96] = 2
        mem[ceil32(return_data.size) + 128] = stor1
        mem[ceil32(return_data.size) + 160] = address(arg1)
        mem[ceil32(return_data.size) + 192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = 0
        mem[ceil32(return_data.size) + 228] = 128
        mem[ceil32(return_data.size) + 324] = 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = ceil32(return_data.size) + 356
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 260] = this.address
        mem[ceil32(return_data.size) + 292] = block.timestamp
        require ext_code.size(address(arg2))
        call address(arg2).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value wei
             gas gas_remaining wei
            args 0, 128, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _838 = mem[ceil32(return_data.size) + 192 len 4], 0
        require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
        _851 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _851
        require return_data.size >= _838 + (32 * _851) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _851] = mem[ceil32(return_data.size) + _838 + 224 len 32 * _851]
        if _851 < 1:
            revert with 0, 17
        if _851 - 1 >= _851:
            revert with 0, 50
        require ext_code.size(address(arg3))
        call address(arg3).deposit(uint256 arg1) with:
             gas gas_remaining wei
            args mem[(32 * _851 - 1) + (2 * ceil32(return_data.size)) + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1702 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1711 = mem[_1702]
        _1720 = mem[64]
        mem[mem[64] + 36] = address(arg4)
        mem[mem[64] + 68] = _1711
        _1721 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_1720 + 100] = 32
        mem[_1720 + 132] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg3)):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(arg3)):
            revert with 0, 'Address: call to non-contract'
        _1776 = mem[_1721]
        mem[_1720 + 164 len ceil32(mem[_1721])] = mem[_1721 + 32 len ceil32(mem[_1721])]
        if ceil32(_1776) > _1776:
            mem[_1776 + _1720 + 164] = 0
        call address(arg3) with:
             gas gas_remaining wei
            args mem[_1720 + 168 len _1776 - 4]
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), address(arg3) << 64 == bool(uint32(this.address), address(arg3) << 64)
                if not uint32(this.address), address(arg3) << 64:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_1720 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_1720 + 196] == bool(mem[_1720 + 196])
                if not mem[_1720 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 100] = this.address
        mem[ceil32(return_data.size) + 132] = address(arg3)
        require ext_code.size(address(arg1))
        staticcall address(arg1).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(arg3)
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(2 * ceil32(return_data.size)) + 132] = address(arg3)
        mem[(2 * ceil32(return_data.size)) + 164] = -1
        mem[(2 * ceil32(return_data.size)) + 96] = 68
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(arg3) << 64
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg1)):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(arg1)):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, -1, 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call address(arg1) with:
           funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, -1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if not ext_call.return_data[0]:
                mem[(2 * ceil32(return_data.size)) + 260] = 2
                mem[(2 * ceil32(return_data.size)) + 292] = stor1
                mem[(2 * ceil32(return_data.size)) + 324] = address(arg1)
                mem[(2 * ceil32(return_data.size)) + 356] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 360] = 0
                mem[(2 * ceil32(return_data.size)) + 392] = 128
                mem[(2 * ceil32(return_data.size)) + 488] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 292
                t = (2 * ceil32(return_data.size)) + 520
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 424] = this.address
                mem[(2 * ceil32(return_data.size)) + 456] = block.timestamp
                require ext_code.size(address(arg2))
                call address(arg2).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 520 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 356
                require return_data.size >= 32
                _1678 = mem[(2 * ceil32(return_data.size)) + 356 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 387 < (2 * ceil32(return_data.size)) + return_data.size + 356
                _1688 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356] > test266151307():
                    revert with 0, 65
                if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356]) + 357 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356]) + 357
                mem[(4 * ceil32(return_data.size)) + 356] = _1688
                require return_data.size >= _1678 + (32 * _1688) + 32
                mem[(4 * ceil32(return_data.size)) + 388 len 32 * _1688] = mem[(2 * ceil32(return_data.size)) + _1678 + 388 len 32 * _1688]
                if _1688 < 1:
                    revert with 0, 17
                if _1688 - 1 >= _1688:
                    revert with 0, 50
                require ext_code.size(address(arg3))
                call address(arg3).deposit(uint256 arg1) with:
                     gas gas_remaining wei
                    args mem[(32 * _1688 - 1) + (4 * ceil32(return_data.size)) + 388]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2456 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2472 = mem[_2456]
                _2488 = mem[64]
                mem[mem[64] + 36] = address(arg4)
                mem[mem[64] + 68] = _2472
                _2500 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_2488 + 100] = 32
                mem[_2488 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg3)):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(address(arg3)):
                    revert with 0, 'Address: call to non-contract'
                _2553 = mem[_2500]
                mem[_2488 + 164 len ceil32(mem[_2500])] = mem[_2500 + 32 len ceil32(mem[_2500])]
                if ceil32(_2553) > _2553:
                    mem[_2553 + _2488 + 164] = 0
                call address(arg3) with:
                     gas gas_remaining wei
                    args mem[_2488 + 168 len _2553 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(this.address), address(arg3) << 64 == bool(uint32(this.address), address(arg3) << 64)
                        if not uint32(this.address), address(arg3) << 64:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_2488 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_2488 + 196] == bool(mem[_2488 + 196])
                        if not mem[_2488 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), address(arg3) << 64 == bool(uint32(this.address), address(arg3) << 64)
                if not uint32(this.address), address(arg3) << 64:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[(2 * ceil32(return_data.size)) + 260] = 2
                mem[(2 * ceil32(return_data.size)) + 292] = stor1
                mem[(2 * ceil32(return_data.size)) + 324] = address(arg1)
                mem[(2 * ceil32(return_data.size)) + 356] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 360] = 0
                mem[(2 * ceil32(return_data.size)) + 392] = 128
                mem[(2 * ceil32(return_data.size)) + 488] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 292
                t = (2 * ceil32(return_data.size)) + 520
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 424] = this.address
                mem[(2 * ceil32(return_data.size)) + 456] = block.timestamp
                require ext_code.size(address(arg2))
                call address(arg2).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 520 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 356
                require return_data.size >= 32
                _1679 = mem[(2 * ceil32(return_data.size)) + 356 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 387 < (2 * ceil32(return_data.size)) + return_data.size + 356
                _1689 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356] > test266151307():
                    revert with 0, 65
                if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356]) + 357 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356]) + 357
                mem[(4 * ceil32(return_data.size)) + 356] = _1689
                require return_data.size >= _1679 + (32 * _1689) + 32
                mem[(4 * ceil32(return_data.size)) + 388 len 32 * _1689] = mem[(2 * ceil32(return_data.size)) + _1679 + 388 len 32 * _1689]
                if _1689 < 1:
                    revert with 0, 17
                if _1689 - 1 >= _1689:
                    revert with 0, 50
                require ext_code.size(address(arg3))
                call address(arg3).deposit(uint256 arg1) with:
                     gas gas_remaining wei
                    args mem[(32 * _1689 - 1) + (4 * ceil32(return_data.size)) + 388]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2457 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2473 = mem[_2457]
                _2489 = mem[64]
                mem[mem[64] + 36] = address(arg4)
                mem[mem[64] + 68] = _2473
                _2502 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_2489 + 100] = 32
                mem[_2489 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg3)):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(address(arg3)):
                    revert with 0, 'Address: call to non-contract'
                _2556 = mem[_2502]
                mem[_2489 + 164 len ceil32(mem[_2502])] = mem[_2502 + 32 len ceil32(mem[_2502])]
                if ceil32(_2556) > _2556:
                    mem[_2556 + _2489 + 164] = 0
                call address(arg3) with:
                     gas gas_remaining wei
                    args mem[_2489 + 168 len _2556 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(this.address), address(arg3) << 64 == bool(uint32(this.address), address(arg3) << 64)
                        if not uint32(this.address), address(arg3) << 64:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_2489 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_2489 + 196] == bool(mem[_2489 + 196])
                        if not mem[_2489 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 260] = return_data.size
            mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 2
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = stor1
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = address(arg1)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 128
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = this.address
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = block.timestamp
                require ext_code.size(address(arg2))
                call address(arg2).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                require return_data.size >= 32
                _1680 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 388 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 357
                _1690 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357]
                if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357] > test266151307():
                    revert with 0, 65
                if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357]) + 358 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357]) + 358
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = _1690
                require return_data.size >= _1680 + (32 * _1690) + 32
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 32 * _1690] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _1680 + 389 len 32 * _1690]
                if _1690 < 1:
                    revert with 0, 17
                if _1690 - 1 >= _1690:
                    revert with 0, 50
                require ext_code.size(address(arg3))
                call address(arg3).deposit(uint256 arg1) with:
                     gas gas_remaining wei
                    args mem[(32 * _1690 - 1) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2458 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2474 = mem[_2458]
                _2490 = mem[64]
                mem[mem[64] + 36] = address(arg4)
                mem[mem[64] + 68] = _2474
                _2504 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_2490 + 100] = 32
                mem[_2490 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg3)):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(address(arg3)):
                    revert with 0, 'Address: call to non-contract'
                _2559 = mem[_2504]
                mem[_2490 + 164 len ceil32(mem[_2504])] = mem[_2504 + 32 len ceil32(mem[_2504])]
                if ceil32(_2559) > _2559:
                    mem[_2559 + _2490 + 164] = 0
                call address(arg3) with:
                     gas gas_remaining wei
                    args mem[_2490 + 168 len _2559 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(this.address), address(arg3) << 64 == bool(uint32(this.address), address(arg3) << 64)
                        if not uint32(this.address), address(arg3) << 64:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_2490 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_2490 + 196] == bool(mem[_2490 + 196])
                        if not mem[_2490 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                if not mem[(2 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 2
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = stor1
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = address(arg1)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 128
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = this.address
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = block.timestamp
                require ext_code.size(address(arg2))
                call address(arg2).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                require return_data.size >= 32
                _1681 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 388 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 357
                _1691 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357]
                if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357] > test266151307():
                    revert with 0, 65
                if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357]) + 358 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357]) + 358
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = _1691
                require return_data.size >= _1681 + (32 * _1691) + 32
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 32 * _1691] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _1681 + 389 len 32 * _1691]
                if _1691 < 1:
                    revert with 0, 17
                if _1691 - 1 >= _1691:
                    revert with 0, 50
                require ext_code.size(address(arg3))
                call address(arg3).deposit(uint256 arg1) with:
                     gas gas_remaining wei
                    args mem[(32 * _1691 - 1) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2459 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2475 = mem[_2459]
                _2491 = mem[64]
                mem[mem[64] + 36] = address(arg4)
                mem[mem[64] + 68] = _2475
                _2506 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_2491 + 100] = 32
                mem[_2491 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg3)):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(address(arg3)):
                    revert with 0, 'Address: call to non-contract'
                _2562 = mem[_2506]
                mem[_2491 + 164 len ceil32(mem[_2506])] = mem[_2506 + 32 len ceil32(mem[_2506])]
                if ceil32(_2562) > _2562:
                    mem[_2562 + _2491 + 164] = 0
                call address(arg3) with:
                     gas gas_remaining wei
                    args mem[_2491 + 168 len _2562 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(this.address), address(arg3) << 64 == bool(uint32(this.address), address(arg3) << 64)
                        if not uint32(this.address), address(arg3) << 64:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_2491 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_2491 + 196] == bool(mem[_2491 + 196])
                        if not mem[_2491 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_35e8b7d5(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(address(arg1))
    staticcall address(arg1).token0() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).token1() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 96] = 2
    mem[(2 * ceil32(return_data.size)) + 128] = stor1
    mem[(2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = 0
    mem[(2 * ceil32(return_data.size)) + 228] = 128
    mem[(2 * ceil32(return_data.size)) + 324] = 2
    if stor1 == address(ext_call.return_data[0]):
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 356
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 260] = this.address
        mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp
        require ext_code.size(address(arg2))
        call address(arg2).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value / 2 wei
             gas gas_remaining wei
            args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 356 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _1882 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        _1886 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
            revert with 0, 65
        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
        mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
        require return_data.size >= _1882 + (32 * _1886) + 32
        mem[(4 * ceil32(return_data.size)) + 224 len 32 * _1886] = mem[(2 * ceil32(return_data.size)) + _1882 + 224 len 32 * _1886]
        if _1886 < 1:
            revert with 0, 17
        if _1886 - 1 >= _1886:
            revert with 0, 50
        _3723 = mem[(32 * _1886 - 1) + (4 * ceil32(return_data.size)) + 224]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(arg2)
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3733 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_3733]:
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(arg2)
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3753 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_3753]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            _3775 = mem[64]
            mem[mem[64] + 36] = address(arg2)
            mem[mem[64] + 68] = -1
            _3786 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
            mem[64] = mem[64] + 164
            mem[_3775 + 100] = 32
            mem[_3775 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            _3829 = mem[_3786]
            mem[_3775 + 164 len ceil32(mem[_3786])] = mem[_3786 + 32 len ceil32(mem[_3786])]
            if ceil32(_3829) > _3829:
                mem[_3829 + _3775 + 164] = 0
            call address(ext_call.return_data[0]) with:
                 gas gas_remaining wei
                args mem[_3775 + 168 len _3829 - 4]
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
                mem[_3775 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_3775 + 196] == bool(mem[_3775 + 196])
                    if not mem[_3775 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if msg.value < msg.value / 2:
            revert with 0, 17
        require ext_code.size(address(arg2))
        if not stor2[address(arg2)]:
            call address(arg2).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value msg.value - (msg.value / 2) wei
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), _3723, 0, 0, address(arg3), block.timestamp
        else:
            call address(arg2).addLiquidityFTM(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value msg.value - (msg.value / 2) wei
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), _3723, 0, 0, address(arg3), block.timestamp
    else:
        if stor1 == ext_call.return_data[12 len 20]:
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + 356
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 260] = this.address
            mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp
            require ext_code.size(address(arg2))
            call address(arg2).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value / 2 wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 356 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            if stor1 == address(ext_call.return_data[0]):
                _1884 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                _1888 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                    revert with 0, 65
                if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
                mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                require return_data.size >= _1884 + (32 * _1888) + 32
                mem[(4 * ceil32(return_data.size)) + 224 len 32 * _1888] = mem[(2 * ceil32(return_data.size)) + _1884 + 224 len 32 * _1888]
                if _1888 < 1:
                    revert with 0, 17
                if _1888 - 1 >= _1888:
                    revert with 0, 50
                _3725 = mem[(32 * _1888 - 1) + (4 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(arg2)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3734 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_3734]:
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(arg2)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3754 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_3754]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    _3780 = mem[64]
                    mem[mem[64] + 36] = address(arg2)
                    mem[mem[64] + 68] = -1
                    _3789 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                    mem[64] = mem[64] + 164
                    mem[_3780 + 100] = 32
                    mem[_3780 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    _3832 = mem[_3789]
                    mem[_3780 + 164 len ceil32(mem[_3789])] = mem[_3789 + 32 len ceil32(mem[_3789])]
                    if ceil32(_3832) > _3832:
                        mem[_3832 + _3780 + 164] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args mem[_3780 + 168 len _3832 - 4]
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
                        mem[_3780 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3780 + 196] == bool(mem[_3780 + 196])
                            if not mem[_3780 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if msg.value < msg.value / 2:
                    revert with 0, 17
                require ext_code.size(address(arg2))
                if not stor2[address(arg2)]:
                    call address(arg2).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), _3725, 0, 0, address(arg3), block.timestamp
                else:
                    call address(arg2).addLiquidityFTM(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), _3725, 0, 0, address(arg3), block.timestamp
            else:
                _1885 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                _1889 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                    revert with 0, 65
                if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
                mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                require return_data.size >= _1885 + (32 * _1889) + 32
                mem[(4 * ceil32(return_data.size)) + 224 len 32 * _1889] = mem[(2 * ceil32(return_data.size)) + _1885 + 224 len 32 * _1889]
                if _1889 < 1:
                    revert with 0, 17
                if _1889 - 1 >= _1889:
                    revert with 0, 50
                _3726 = mem[(32 * _1889 - 1) + (4 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(arg2)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3735 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_3735]:
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(arg2)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3755 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_3755]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    _3784 = mem[64]
                    mem[mem[64] + 36] = address(arg2)
                    mem[mem[64] + 68] = -1
                    _3792 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                    mem[64] = mem[64] + 164
                    mem[_3784 + 100] = 32
                    mem[_3784 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    _3835 = mem[_3792]
                    mem[_3784 + 164 len ceil32(mem[_3792])] = mem[_3792 + 32 len ceil32(mem[_3792])]
                    if ceil32(_3835) > _3835:
                        mem[_3835 + _3784 + 164] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args mem[_3784 + 168 len _3835 - 4]
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
                        mem[_3784 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3784 + 196] == bool(mem[_3784 + 196])
                            if not mem[_3784 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if msg.value < msg.value / 2:
                    revert with 0, 17
                require ext_code.size(address(arg2))
                if not stor2[address(arg2)]:
                    call address(arg2).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), _3726, 0, 0, address(arg3), block.timestamp
                else:
                    call address(arg2).addLiquidityFTM(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), _3726, 0, 0, address(arg3), block.timestamp
        else:
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + 356
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 260] = this.address
            mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp
            require ext_code.size(address(arg2))
            call address(arg2).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value / 2 wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 356 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _1883 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
            require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
            _1887 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                revert with 0, 65
            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
            mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
            require return_data.size >= _1883 + (32 * _1887) + 32
            mem[(4 * ceil32(return_data.size)) + 224 len 32 * _1887] = mem[(2 * ceil32(return_data.size)) + _1883 + 224 len 32 * _1887]
            if _1887 < 1:
                revert with 0, 17
            if _1887 - 1 >= _1887:
                revert with 0, 50
            _3724 = mem[(32 * _1887 - 1) + (4 * ceil32(return_data.size)) + 224]
            if msg.value < msg.value / 2:
                revert with 0, 17
            _3739 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if not mem[_3739]:
                revert with 0, 50
            mem[_3739 + 32] = stor1
            if 1 >= mem[_3739]:
                revert with 0, 50
            mem[_3739 + 64] = address(ext_call.return_data[0])
            mem[_3739 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[_3739 + 100] = 0
            mem[_3739 + 132] = 128
            mem[_3739 + 228] = mem[_3739]
            idx = 0
            s = _3739 + 32
            t = _3739 + 260
            while idx < mem[_3739]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_3739 + 164] = this.address
            mem[_3739 + 196] = block.timestamp
            require ext_code.size(address(arg2))
            call address(arg2).mem[mem[64] len 4] with:
               value msg.value - (msg.value / 2) wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _3739 + (32 * mem[_3739]) + -mem[64] + 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5541 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _5550 = mem[_5541]
            require mem[_5541] <= test266151307()
            require _5541 + mem[_5541] + 31 < _5541 + return_data.size
            _5587 = mem[_5541 + mem[_5541]]
            if mem[_5541 + mem[_5541]] > test266151307():
                revert with 0, 65
            if _5541 + ceil32(return_data.size) + ceil32(32 * mem[_5541 + mem[_5541]]) + 1 > test266151307() or ceil32(32 * mem[_5541 + mem[_5541]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _5541 + ceil32(return_data.size) + ceil32(32 * mem[_5541 + mem[_5541]]) + 1
            mem[_5541 + ceil32(return_data.size)] = _5587
            require return_data.size >= _5550 + (32 * _5587) + 32
            mem[_5541 + ceil32(return_data.size) + 32 len 32 * _5587] = mem[_5541 + _5550 + 32 len 32 * _5587]
            if _5587 < 1:
                revert with 0, 17
            if _5587 - 1 >= _5587:
                revert with 0, 50
            _7264 = mem[(32 * _5587 - 1) + _5541 + ceil32(return_data.size) + 32]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(arg2)
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7267 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(arg2)
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_7267]:
                _7273 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_7273]:
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(arg2)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7288 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_7288]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    _7296 = mem[64]
                    mem[mem[64] + 36] = address(arg2)
                    mem[mem[64] + 68] = -1
                    _7301 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                    mem[64] = mem[64] + 164
                    mem[_7296 + 100] = 32
                    mem[_7296 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    _7314 = mem[_7301]
                    mem[_7296 + 164 len ceil32(mem[_7301])] = mem[_7301 + 32 len ceil32(mem[_7301])]
                    if ceil32(_7314) > _7314:
                        mem[_7314 + _7296 + 164] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args mem[_7296 + 168 len _7314 - 4]
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
                        mem[_7296 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_7296 + 196] == bool(mem[_7296 + 196])
                            if not mem[_7296 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(arg2))
                call address(arg2).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _3724, _7264, 0, 0, address(arg3), block.timestamp
            else:
                _7274 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_7274]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                _7279 = mem[64]
                mem[mem[64] + 36] = address(arg2)
                mem[mem[64] + 68] = -1
                _7283 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                mem[64] = mem[64] + 164
                mem[_7279 + 100] = 32
                mem[_7279 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                _7299 = mem[_7283]
                mem[_7279 + 164 len ceil32(mem[_7283])] = mem[_7283 + 32 len ceil32(mem[_7283])]
                if ceil32(_7299) > _7299:
                    mem[_7299 + _7279 + 164] = 0
                call address(ext_call.return_data[0]) with:
                     gas gas_remaining wei
                    args mem[_7279 + 168 len _7299 - 4]
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
                    mem[_7279 + 168] = this.address
                    mem[_7279 + 200] = address(arg2)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[_7279 + 164] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        mem[_7279 + ceil32(return_data.size) + 168] = this.address
                        mem[_7279 + ceil32(return_data.size) + 200] = address(arg2)
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(arg2)
                        mem[_7279 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[_7279 + (2 * ceil32(return_data.size)) + 200] = address(arg2)
                        mem[_7279 + (2 * ceil32(return_data.size)) + 232] = -1
                        mem[_7279 + (2 * ceil32(return_data.size)) + 164] = 68
                        mem[_7279 + (2 * ceil32(return_data.size)) + 196 len 4] = approve(address arg1, uint256 arg2)
                        mem[_7279 + (2 * ceil32(return_data.size)) + 264] = 32
                        mem[_7279 + (2 * ceil32(return_data.size)) + 296] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[_7279 + (2 * ceil32(return_data.size)) + 328 len 96] = 0, address(arg2), -1, 0
                        mem[_7279 + (2 * ceil32(return_data.size)) + 396] = 0
                        call address(ext_call.return_data[0]) with:
                           funct Mask(32, 224, 0, address(arg2), -1, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, address(arg2), -1, 0) << 288)
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
                            mem[_7279 + (2 * ceil32(return_data.size)) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_7279 + (2 * ceil32(return_data.size)) + 360] == bool(mem[_7279 + (2 * ceil32(return_data.size)) + 360])
                                if not mem[_7279 + (2 * ceil32(return_data.size)) + 360]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(arg2))
                    call address(arg2).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _3724, _7264, 0, 0, address(arg3), block.timestamp
                else:
                    mem[_7279 + 164] = return_data.size
                    mem[_7279 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_7279 + 196] == bool(mem[_7279 + 196])
                        if not mem[_7279 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_7279 + ceil32(return_data.size) + 169] = this.address
                    mem[_7279 + ceil32(return_data.size) + 201] = address(arg2)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[_7279 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(address(arg2))
                        call address(arg2).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _3724, _7264, 0, 0, address(arg3), block.timestamp
                    else:
                        mem[_7279 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                        mem[_7279 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(arg2)
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(arg2)
                        mem[_7279 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[_7279 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = address(arg2)
                        mem[_7279 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 233] = -1
                        mem[_7279 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = 68
                        mem[_7279 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197 len 4] = approve(address arg1, uint256 arg2)
                        mem[_7279 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 265] = 32
                        mem[_7279 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 297] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[_7279 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329 len 96] = 0, address(arg2), -1, 0
                        mem[_7279 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 397] = 0
                        call address(ext_call.return_data[0]) with:
                           funct Mask(32, 224, 0, address(arg2), -1, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, address(arg2), -1, 0) << 288)
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
                            require ext_code.size(address(arg2))
                            call address(arg2).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _3724, _7264, 0, 0, address(arg3), block.timestamp
                        else:
                            mem[_7279 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329] = return_data.size
                            mem[_7279 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_7279 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_7279 + (4 * ceil32(return_data.size)) + 334] = 32
                                mem[_7279 + (4 * ceil32(return_data.size)) + 366] = 32
                                mem[_7279 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
                                revert with memory
                                  from _7279 + (4 * ceil32(return_data.size)) + 330
                                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_7279 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361] == bool(mem[_7279 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361])
                                if not mem[_7279 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361]:
                                    mem[_7279 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_7279 + (4 * ceil32(return_data.size)) + 334] = 32
                                    mem[_7279 + (4 * ceil32(return_data.size)) + 366] = 42
                                    mem[_7279 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                                    mem[_7279 + (4 * ceil32(return_data.size)) + 430] = 'ot succeed'
                                    revert with memory
                                      from _7279 + (4 * ceil32(return_data.size)) + 330
                                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                            mem[_7279 + (4 * ceil32(return_data.size)) + 334] = address(ext_call.return_data[0])
                            mem[_7279 + (4 * ceil32(return_data.size)) + 366] = address(ext_call.return_data[0])
                            mem[_7279 + (4 * ceil32(return_data.size)) + 398] = _3724
                            mem[_7279 + (4 * ceil32(return_data.size)) + 430] = _7264
                            mem[_7279 + (4 * ceil32(return_data.size)) + 462] = 0
                            mem[_7279 + (4 * ceil32(return_data.size)) + 494] = 0
                            mem[_7279 + (4 * ceil32(return_data.size)) + 526] = address(arg3)
                            mem[_7279 + (4 * ceil32(return_data.size)) + 558] = block.timestamp
                            require ext_code.size(address(arg2))
                            call address(arg2).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args mem[_7279 + (4 * ceil32(return_data.size)) + 334 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
}



}
