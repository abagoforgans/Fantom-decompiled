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

function owner() {
    return owner
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
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
        call address(arg2).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
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
        _843 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
        require return_data.size >= _838 + (32 * _843) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _843] = mem[ceil32(return_data.size) + _838 + 224 len 32 * _843]
        if _843 < 1:
            revert with 0, 17
        if _843 - 1 >= _843:
            revert with 0, 50
        require ext_code.size(address(arg3))
        call address(arg3).deposit(uint256 rg1) with:
             gas gas_remaining wei
            args mem[(32 * _843 - 1) + (2 * ceil32(return_data.size)) + 224]
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
        _1703 = mem[_1702]
        _1720 = mem[64]
        mem[mem[64] + 36] = address(arg4)
        mem[mem[64] + 68] = _1703
        _1721 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_1720 + 100] = 32
        mem[_1720 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(arg3)):
            revert with 0, 'Address: call to non-contract'
        _1768 = mem[_1721]
        mem[_1720 + 164 len ceil32(mem[_1721])] = mem[_1721 + 32 len ceil32(mem[_1721])]
        if ceil32(_1768) > _1768:
            mem[_1768 + _1720 + 164] = 0
        call address(arg3) with:
             gas gas_remaining wei
            args mem[_1720 + 168 len _1768 - 4]
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
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address rg1, uint256 rg2)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(arg1)):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address rg1, uint256 rg2), address(arg3) << 64, 0, -1, 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call address(arg1) with:
           funct Mask(32, 224, approve(address rg1, uint256 rg2), address(arg3) << 64, 0, -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address rg1, uint256 rg2), address(arg3) << 64, 0, -1, 0) << 288)
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
                call address(arg2).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 520 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 356
                require return_data.size >= 32
                _1680 = mem[(2 * ceil32(return_data.size)) + 356 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 387 < (2 * ceil32(return_data.size)) + return_data.size + 356
                _1689 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356] > test266151307():
                    revert with 0, 65
                if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356]) + 357 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356]) + 357
                mem[(4 * ceil32(return_data.size)) + 356] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356]
                require return_data.size >= _1680 + (32 * _1689) + 32
                mem[(4 * ceil32(return_data.size)) + 388 len 32 * _1689] = mem[(2 * ceil32(return_data.size)) + _1680 + 388 len 32 * _1689]
                if _1689 < 1:
                    revert with 0, 17
                if _1689 - 1 >= _1689:
                    revert with 0, 50
                require ext_code.size(address(arg3))
                call address(arg3).deposit(uint256 rg1) with:
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
                _2444 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2460 = mem[_2444]
                _2480 = mem[64]
                mem[mem[64] + 36] = address(arg4)
                mem[mem[64] + 68] = _2460
                _2492 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_2480 + 100] = 32
                mem[_2480 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg3)):
                    revert with 0, 'Address: call to non-contract'
                _2556 = mem[_2492]
                mem[_2480 + 164 len ceil32(mem[_2492])] = mem[_2492 + 32 len ceil32(mem[_2492])]
                if ceil32(_2556) > _2556:
                    mem[_2556 + _2480 + 164] = 0
                call address(arg3) with:
                     gas gas_remaining wei
                    args mem[_2480 + 168 len _2556 - 4]
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
                    mem[_2480 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_2480 + 196] == bool(mem[_2480 + 196])
                        if not mem[_2480 + 196]:
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
                call address(arg2).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 520 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 356
                require return_data.size >= 32
                _1681 = mem[(2 * ceil32(return_data.size)) + 356 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 387 < (2 * ceil32(return_data.size)) + return_data.size + 356
                _1690 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356] > test266151307():
                    revert with 0, 65
                if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356]) + 357 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356]) + 357
                mem[(4 * ceil32(return_data.size)) + 356] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356]
                require return_data.size >= _1681 + (32 * _1690) + 32
                mem[(4 * ceil32(return_data.size)) + 388 len 32 * _1690] = mem[(2 * ceil32(return_data.size)) + _1681 + 388 len 32 * _1690]
                if _1690 < 1:
                    revert with 0, 17
                if _1690 - 1 >= _1690:
                    revert with 0, 50
                require ext_code.size(address(arg3))
                call address(arg3).deposit(uint256 rg1) with:
                     gas gas_remaining wei
                    args mem[(32 * _1690 - 1) + (4 * ceil32(return_data.size)) + 388]
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
                _2445 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2461 = mem[_2445]
                _2481 = mem[64]
                mem[mem[64] + 36] = address(arg4)
                mem[mem[64] + 68] = _2461
                _2494 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_2481 + 100] = 32
                mem[_2481 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg3)):
                    revert with 0, 'Address: call to non-contract'
                _2558 = mem[_2494]
                mem[_2481 + 164 len ceil32(mem[_2494])] = mem[_2494 + 32 len ceil32(mem[_2494])]
                if ceil32(_2558) > _2558:
                    mem[_2558 + _2481 + 164] = 0
                call address(arg3) with:
                     gas gas_remaining wei
                    args mem[_2481 + 168 len _2558 - 4]
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
                    mem[_2481 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_2481 + 196] == bool(mem[_2481 + 196])
                        if not mem[_2481 + 196]:
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
                call address(arg2).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                require return_data.size >= 32
                _1682 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 388 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 357
                _1691 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357]
                if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357] > test266151307():
                    revert with 0, 65
                if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357]) + 358 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357]) + 358
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = _1691
                require return_data.size >= _1682 + (32 * _1691) + 32
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 32 * _1691] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _1682 + 389 len 32 * _1691]
                if _1691 < 1:
                    revert with 0, 17
                if _1691 - 1 >= _1691:
                    revert with 0, 50
                require ext_code.size(address(arg3))
                call address(arg3).deposit(uint256 rg1) with:
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
                _2446 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2462 = mem[_2446]
                _2482 = mem[64]
                mem[mem[64] + 36] = address(arg4)
                mem[mem[64] + 68] = _2462
                _2496 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_2482 + 100] = 32
                mem[_2482 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg3)):
                    revert with 0, 'Address: call to non-contract'
                _2560 = mem[_2496]
                mem[_2482 + 164 len ceil32(mem[_2496])] = mem[_2496 + 32 len ceil32(mem[_2496])]
                if ceil32(_2560) > _2560:
                    mem[_2560 + _2482 + 164] = 0
                call address(arg3) with:
                     gas gas_remaining wei
                    args mem[_2482 + 168 len _2560 - 4]
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
                    mem[_2482 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_2482 + 196] == bool(mem[_2482 + 196])
                        if not mem[_2482 + 196]:
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
                call address(arg2).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                require return_data.size >= 32
                _1683 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 388 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 357
                _1692 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357]
                if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357] > test266151307():
                    revert with 0, 65
                if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357]) + 358 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357]) + 358
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = _1692
                require return_data.size >= _1683 + (32 * _1692) + 32
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 32 * _1692] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _1683 + 389 len 32 * _1692]
                if _1692 < 1:
                    revert with 0, 17
                if _1692 - 1 >= _1692:
                    revert with 0, 50
                require ext_code.size(address(arg3))
                call address(arg3).deposit(uint256 rg1) with:
                     gas gas_remaining wei
                    args mem[(32 * _1692 - 1) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389]
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
                _2447 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2463 = mem[_2447]
                _2483 = mem[64]
                mem[mem[64] + 36] = address(arg4)
                mem[mem[64] + 68] = _2463
                _2498 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_2483 + 100] = 32
                mem[_2483 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg3)):
                    revert with 0, 'Address: call to non-contract'
                _2562 = mem[_2498]
                mem[_2483 + 164 len ceil32(mem[_2498])] = mem[_2498 + 32 len ceil32(mem[_2498])]
                if ceil32(_2562) > _2562:
                    mem[_2562 + _2483 + 164] = 0
                call address(arg3) with:
                     gas gas_remaining wei
                    args mem[_2483 + 168 len _2562 - 4]
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
                    mem[_2483 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_2483 + 196] == bool(mem[_2483 + 196])
                        if not mem[_2483 + 196]:
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
        call address(arg2).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
           value msg.value / 2 wei
             gas gas_remaining wei
            args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 356 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _1693 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        _1697 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
            revert with 0, 65
        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
        mem[(4 * ceil32(return_data.size)) + 192] = _1697
        require return_data.size >= _1693 + (32 * _1697) + 32
        mem[(4 * ceil32(return_data.size)) + 224 len 32 * _1697] = mem[(2 * ceil32(return_data.size)) + _1693 + 224 len 32 * _1697]
        if _1697 < 1:
            revert with 0, 17
        if _1697 - 1 >= _1697:
            revert with 0, 50
        _3345 = mem[(32 * _1697 - 1) + (4 * ceil32(return_data.size)) + 224]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(arg2)
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3355 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_3355]:
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(arg2)
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3372 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_3372]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            _3389 = mem[64]
            mem[mem[64] + 36] = address(arg2)
            mem[mem[64] + 68] = -1
            _3399 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = approve(address rg1, uint256 rg2)
            mem[64] = mem[64] + 164
            mem[_3389 + 100] = 32
            mem[_3389 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            _3432 = mem[_3399]
            mem[_3389 + 164 len ceil32(mem[_3399])] = mem[_3399 + 32 len ceil32(mem[_3399])]
            if ceil32(_3432) > _3432:
                mem[_3432 + _3389 + 164] = 0
            call address(ext_call.return_data[0]) with:
                 gas gas_remaining wei
                args mem[_3389 + 168 len _3432 - 4]
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
                mem[_3389 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_3389 + 196] == bool(mem[_3389 + 196])
                    if not mem[_3389 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if msg.value < msg.value / 2:
            revert with 0, 17
        require ext_code.size(address(arg2))
        call address(arg2).addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
           value msg.value - (msg.value / 2) wei
             gas gas_remaining wei
            args address(ext_call.return_data[0]), _3345, 0, 0, address(arg3), block.timestamp
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
            call address(arg2).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
               value msg.value / 2 wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 356 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            if stor1 == address(ext_call.return_data[0]):
                _1695 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                _1699 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                    revert with 0, 65
                if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
                mem[(4 * ceil32(return_data.size)) + 192] = _1699
                require return_data.size >= _1695 + (32 * _1699) + 32
                mem[(4 * ceil32(return_data.size)) + 224 len 32 * _1699] = mem[(2 * ceil32(return_data.size)) + _1695 + 224 len 32 * _1699]
                if _1699 < 1:
                    revert with 0, 17
                if _1699 - 1 >= _1699:
                    revert with 0, 50
                _3347 = mem[(32 * _1699 - 1) + (4 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(arg2)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3356 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_3356]:
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(arg2)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3373 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_3373]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    _3392 = mem[64]
                    mem[mem[64] + 36] = address(arg2)
                    mem[mem[64] + 68] = -1
                    _3405 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = approve(address rg1, uint256 rg2)
                    mem[64] = mem[64] + 164
                    mem[_3392 + 100] = 32
                    mem[_3392 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    _3434 = mem[_3405]
                    mem[_3392 + 164 len ceil32(mem[_3405])] = mem[_3405 + 32 len ceil32(mem[_3405])]
                    if ceil32(_3434) > _3434:
                        mem[_3434 + _3392 + 164] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args mem[_3392 + 168 len _3434 - 4]
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
                        mem[_3392 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3392 + 196] == bool(mem[_3392 + 196])
                            if not mem[_3392 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if msg.value < msg.value / 2:
                    revert with 0, 17
                require ext_code.size(address(arg2))
                call address(arg2).addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                   value msg.value - (msg.value / 2) wei
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), _3347, 0, 0, address(arg3), block.timestamp
            else:
                _1696 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                _1700 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                    revert with 0, 65
                if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
                mem[(4 * ceil32(return_data.size)) + 192] = _1700
                require return_data.size >= _1696 + (32 * _1700) + 32
                mem[(4 * ceil32(return_data.size)) + 224 len 32 * _1700] = mem[(2 * ceil32(return_data.size)) + _1696 + 224 len 32 * _1700]
                if _1700 < 1:
                    revert with 0, 17
                if _1700 - 1 >= _1700:
                    revert with 0, 50
                _3348 = mem[(32 * _1700 - 1) + (4 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(arg2)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3357 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_3357]:
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(arg2)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3374 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_3374]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    _3394 = mem[64]
                    mem[mem[64] + 36] = address(arg2)
                    mem[mem[64] + 68] = -1
                    _3411 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = approve(address rg1, uint256 rg2)
                    mem[64] = mem[64] + 164
                    mem[_3394 + 100] = 32
                    mem[_3394 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    _3436 = mem[_3411]
                    mem[_3394 + 164 len ceil32(mem[_3411])] = mem[_3411 + 32 len ceil32(mem[_3411])]
                    if ceil32(_3436) > _3436:
                        mem[_3436 + _3394 + 164] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args mem[_3394 + 168 len _3436 - 4]
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
                        mem[_3394 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3394 + 196] == bool(mem[_3394 + 196])
                            if not mem[_3394 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if msg.value < msg.value / 2:
                    revert with 0, 17
                require ext_code.size(address(arg2))
                call address(arg2).addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                   value msg.value - (msg.value / 2) wei
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), _3348, 0, 0, address(arg3), block.timestamp
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
            call address(arg2).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
               value msg.value / 2 wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 356 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _1694 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
            require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
            _1698 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                revert with 0, 65
            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
            mem[(4 * ceil32(return_data.size)) + 192] = _1698
            require return_data.size >= _1694 + (32 * _1698) + 32
            mem[(4 * ceil32(return_data.size)) + 224 len 32 * _1698] = mem[(2 * ceil32(return_data.size)) + _1694 + 224 len 32 * _1698]
            if _1698 < 1:
                revert with 0, 17
            if _1698 - 1 >= _1698:
                revert with 0, 50
            _3346 = mem[(32 * _1698 - 1) + (4 * ceil32(return_data.size)) + 224]
            if msg.value < msg.value / 2:
                revert with 0, 17
            _3361 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if not mem[_3361]:
                revert with 0, 50
            mem[_3361 + 32] = stor1
            if 1 >= mem[_3361]:
                revert with 0, 50
            mem[_3361 + 64] = address(ext_call.return_data[0])
            mem[_3361 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[_3361 + 100] = 0
            mem[_3361 + 132] = 128
            mem[_3361 + 228] = mem[_3361]
            idx = 0
            s = _3361 + 32
            t = _3361 + 260
            while idx < mem[_3361]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_3361 + 164] = this.address
            mem[_3361 + 196] = block.timestamp
            require ext_code.size(address(arg2))
            call address(arg2).mem[mem[64] len 4] with:
               value msg.value - (msg.value / 2) wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _3361 + (32 * mem[_3361]) + -mem[64] + 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4974 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4979 = mem[_4974]
            require mem[_4974] <= test266151307()
            require _4974 + mem[_4974] + 31 < _4974 + return_data.size
            _5000 = mem[_4974 + mem[_4974]]
            if mem[_4974 + mem[_4974]] > test266151307():
                revert with 0, 65
            if _4974 + ceil32(return_data.size) + ceil32(32 * mem[_4974 + mem[_4974]]) + 1 > test266151307() or ceil32(32 * mem[_4974 + mem[_4974]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _4974 + ceil32(return_data.size) + ceil32(32 * mem[_4974 + mem[_4974]]) + 1
            mem[_4974 + ceil32(return_data.size)] = _5000
            require return_data.size >= _4979 + (32 * _5000) + 32
            mem[_4974 + ceil32(return_data.size) + 32 len 32 * _5000] = mem[_4974 + _4979 + 32 len 32 * _5000]
            if _5000 < 1:
                revert with 0, 17
            if _5000 - 1 >= _5000:
                revert with 0, 50
            _6529 = mem[(32 * _5000 - 1) + _4974 + ceil32(return_data.size) + 32]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(arg2)
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6532 = mem[64]
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
            if mem[_6532]:
                _6538 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_6538]:
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(arg2)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6553 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_6553]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    _6564 = mem[64]
                    mem[mem[64] + 36] = address(arg2)
                    mem[mem[64] + 68] = -1
                    _6566 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = approve(address rg1, uint256 rg2)
                    mem[64] = mem[64] + 164
                    mem[_6564 + 100] = 32
                    mem[_6564 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    _6579 = mem[_6566]
                    mem[_6564 + 164 len ceil32(mem[_6566])] = mem[_6566 + 32 len ceil32(mem[_6566])]
                    if ceil32(_6579) > _6579:
                        mem[_6579 + _6564 + 164] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args mem[_6564 + 168 len _6579 - 4]
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
                        mem[_6564 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_6564 + 196] == bool(mem[_6564 + 196])
                            if not mem[_6564 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(arg2))
                call address(arg2).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _3346, _6529, 0, 0, address(arg3), block.timestamp
            else:
                _6539 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_6539]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                _6544 = mem[64]
                mem[mem[64] + 36] = address(arg2)
                mem[mem[64] + 68] = -1
                _6548 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = approve(address rg1, uint256 rg2)
                mem[64] = mem[64] + 164
                mem[_6544 + 100] = 32
                mem[_6544 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                _6562 = mem[_6548]
                mem[_6544 + 164 len ceil32(mem[_6548])] = mem[_6548 + 32 len ceil32(mem[_6548])]
                if ceil32(_6562) > _6562:
                    mem[_6562 + _6544 + 164] = 0
                call address(ext_call.return_data[0]) with:
                     gas gas_remaining wei
                    args mem[_6544 + 168 len _6562 - 4]
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
                    mem[_6544 + 168] = this.address
                    mem[_6544 + 200] = address(arg2)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[_6544 + 164] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        mem[_6544 + ceil32(return_data.size) + 168] = this.address
                        mem[_6544 + ceil32(return_data.size) + 200] = address(arg2)
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(arg2)
                        mem[_6544 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[_6544 + (2 * ceil32(return_data.size)) + 200] = address(arg2)
                        mem[_6544 + (2 * ceil32(return_data.size)) + 232] = -1
                        mem[_6544 + (2 * ceil32(return_data.size)) + 164] = 68
                        mem[_6544 + (2 * ceil32(return_data.size)) + 196 len 4] = approve(address rg1, uint256 rg2)
                        mem[_6544 + (2 * ceil32(return_data.size)) + 264] = 32
                        mem[_6544 + (2 * ceil32(return_data.size)) + 296] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[_6544 + (2 * ceil32(return_data.size)) + 328 len 96] = 0, address(arg2), -1, 0
                        mem[_6544 + (2 * ceil32(return_data.size)) + 396] = 0
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
                            mem[_6544 + (2 * ceil32(return_data.size)) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_6544 + (2 * ceil32(return_data.size)) + 360] == bool(mem[_6544 + (2 * ceil32(return_data.size)) + 360])
                                if not mem[_6544 + (2 * ceil32(return_data.size)) + 360]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(arg2))
                    call address(arg2).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _3346, _6529, 0, 0, address(arg3), block.timestamp
                else:
                    mem[_6544 + 164] = return_data.size
                    mem[_6544 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_6544 + 196] == bool(mem[_6544 + 196])
                        if not mem[_6544 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_6544 + ceil32(return_data.size) + 169] = this.address
                    mem[_6544 + ceil32(return_data.size) + 201] = address(arg2)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[_6544 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(address(arg2))
                        call address(arg2).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _3346, _6529, 0, 0, address(arg3), block.timestamp
                    else:
                        mem[_6544 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                        mem[_6544 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(arg2)
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(arg2)
                        mem[_6544 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[_6544 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = address(arg2)
                        mem[_6544 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 233] = -1
                        mem[_6544 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = 68
                        mem[_6544 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197 len 4] = approve(address rg1, uint256 rg2)
                        mem[_6544 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 265] = 32
                        mem[_6544 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 297] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[_6544 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329 len 96] = 0, address(arg2), -1, 0
                        mem[_6544 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 397] = 0
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
                            call address(arg2).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _3346, _6529, 0, 0, address(arg3), block.timestamp
                        else:
                            mem[_6544 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329] = return_data.size
                            mem[_6544 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_6544 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6544 + (4 * ceil32(return_data.size)) + 334] = 32
                                mem[_6544 + (4 * ceil32(return_data.size)) + 366] = 32
                                mem[_6544 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
                                revert with memory
                                  from _6544 + (4 * ceil32(return_data.size)) + 330
                                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_6544 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361] == bool(mem[_6544 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361])
                                if not mem[_6544 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361]:
                                    mem[_6544 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_6544 + (4 * ceil32(return_data.size)) + 334] = 32
                                    mem[_6544 + (4 * ceil32(return_data.size)) + 366] = 42
                                    mem[_6544 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                                    mem[_6544 + (4 * ceil32(return_data.size)) + 430] = 'ot succeed'
                                    revert with memory
                                      from _6544 + (4 * ceil32(return_data.size)) + 330
                                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                            mem[_6544 + (4 * ceil32(return_data.size)) + 334] = address(ext_call.return_data[0])
                            mem[_6544 + (4 * ceil32(return_data.size)) + 366] = address(ext_call.return_data[0])
                            mem[_6544 + (4 * ceil32(return_data.size)) + 398] = _3346
                            mem[_6544 + (4 * ceil32(return_data.size)) + 430] = _6529
                            mem[_6544 + (4 * ceil32(return_data.size)) + 462] = 0
                            mem[_6544 + (4 * ceil32(return_data.size)) + 494] = 0
                            mem[_6544 + (4 * ceil32(return_data.size)) + 526] = address(arg3)
                            mem[_6544 + (4 * ceil32(return_data.size)) + 558] = block.timestamp
                            require ext_code.size(address(arg2))
                            call address(arg2).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[_6544 + (4 * ceil32(return_data.size)) + 334 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
}



}
