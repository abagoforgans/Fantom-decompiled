contract main {




// =====================  Runtime code  =====================


#
#  - payback(address arg1, uint256 arg2)
#
function _fallback() payable {
    revert
}

function getBorrowRateFor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3)
    if arg1 == 0xffffffffffffffffffffffffffffffffffffffff:
        staticcall 0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3.getReserveData(address arg1) with:
                gas gas_remaining wei
               args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    else:
        staticcall 0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3.getReserveData(address arg1) with:
                gas gas_remaining wei
               args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    require ext_call.return_data[288] == ext_call.return_data[315 len 5]
    return ext_call.return_data[128]
}

function getBorrowBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3)
    if arg1 == 0xffffffffffffffffffffffffffffffffffffffff:
        staticcall 0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3.getUserReserveData(address arg1, address arg2) with:
                gas gas_remaining wei
               args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, msg.sender
    else:
        staticcall 0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3.getUserReserveData(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    require ext_call.return_data[224] == ext_call.return_data[251 len 5]
    require ext_call.return_data[256] == bool(ext_call.return_data[256])
    return ext_call.return_data[64]
}

function getDepositBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3)
    if arg1 == 0xffffffffffffffffffffffffffffffffffffffff:
        staticcall 0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3.getUserReserveData(address arg1, address arg2) with:
                gas gas_remaining wei
               args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, msg.sender
    else:
        staticcall 0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3.getUserReserveData(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    require ext_call.return_data[224] == ext_call.return_data[251 len 5]
    require ext_call.return_data[256] == bool(ext_call.return_data[256])
    return ext_call.return_data[0]
}

function getBorrowBalanceOf(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3)
    if arg1 == 0xffffffffffffffffffffffffffffffffffffffff:
        staticcall 0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3.getUserReserveData(address arg1, address arg2) with:
                gas gas_remaining wei
               args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, arg2
    else:
        staticcall 0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3.getUserReserveData(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    require ext_call.return_data[224] == ext_call.return_data[251 len 5]
    require ext_call.return_data[256] == bool(ext_call.return_data[256])
    return ext_call.return_data[64]
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
    staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    if arg1 == 0xffffffffffffffffffffffffffffffffffffffff:
        call address(ext_call.return_data[0]).withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, arg2, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg1 == 0xffffffffffffffffffffffffffffffffffffffff:
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        call address(ext_call.return_data[0]).withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args address(arg1), arg2, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg1 == 0xffffffffffffffffffffffffffffffffffffffff:
            require ext_code.size(arg1)
            call arg1.0x2e1a7d4d with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function borrow(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
    staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    if arg1 == 0xffffffffffffffffffffffffffffffffffffffff:
        call address(ext_call.return_data[0]).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
             gas gas_remaining wei
            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, arg2, 2, 0, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg1 == 0xffffffffffffffffffffffffffffffffffffffff:
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        call address(ext_call.return_data[0]).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
             gas gas_remaining wei
            args address(arg1), arg2, 2, 0, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg1 == 0xffffffffffffffffffffffffffffffffffffffff:
            require ext_code.size(arg1)
            call arg1.0x2e1a7d4d with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
    staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg1 != 0xffffffffffffffffffffffffffffffffffffffff:
        if not arg1:
            revert with 0, 'Approve called on ETH'
        if arg1 == 0xffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 'Approve called on ETH'
        if not arg2:
            mem[ceil32(return_data.size) + 132] = ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 164] = 0
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = 0, ext_call.return_data[12 len 20], 0, 0
            mem[ceil32(return_data.size) + 328] = 0
            call arg1 with:
               funct Mask(32, 224, 0, ext_call.return_data[12 len 20], 0, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, ext_call.return_data[12 len 20], 0, 0) << 288)
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
                mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                    if not mem[ceil32(return_data.size) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                 gas gas_remaining wei
                args address(arg1), arg2, address(this.address), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).setUserUseReserveAsCollateral(address arg1, bool arg2) with:
                 gas gas_remaining wei
                args address(arg1), 1
        else:
            mem[ceil32(return_data.size) + 100] = this.address
            mem[ceil32(return_data.size) + 132] = address(ext_call.return_data[0])
            require ext_code.size(arg1)
            staticcall arg1.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(ext_call.return_data[0])
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= arg2:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                     gas gas_remaining wei
                    args address(arg1), arg2, address(this.address), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).setUserUseReserveAsCollateral(address arg1, bool arg2) with:
                     gas gas_remaining wei
                    args address(arg1), 1
            else:
                if not ext_call.return_data[0]:
                    if not arg2:
                        mem[(2 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 164] = arg2
                        mem[(2 * ceil32(return_data.size)) + 96] = 68
                        mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
                        mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
                        mem[(2 * ceil32(return_data.size)) + 196] = 32
                        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, arg2, 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 0
                        call arg1 with:
                           funct Mask(32, 224, approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, arg2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, arg2, 0) << 288)
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
                            mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                                if not mem[(2 * ceil32(return_data.size)) + 292]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(2 * ceil32(return_data.size)) + 100] = this.address
                        mem[(2 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                        require ext_code.size(arg1)
                        staticcall arg1.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), address(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[(4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 164] = arg2
                        mem[(4 * ceil32(return_data.size)) + 96] = 68
                        mem[(4 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
                        mem[(4 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
                        mem[(4 * ceil32(return_data.size)) + 196] = 32
                        mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, arg2, 0
                        mem[(4 * ceil32(return_data.size)) + 328] = 0
                        call arg1 with:
                           funct Mask(32, 224, approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, arg2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, arg2, 0) << 288)
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
                            mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                                if not mem[(4 * ceil32(return_data.size)) + 292]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                         gas gas_remaining wei
                        args address(arg1), arg2, address(this.address), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).setUserUseReserveAsCollateral(address arg1, bool arg2) with:
                         gas gas_remaining wei
                        args address(arg1), 1
                else:
                    mem[(2 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 164] = 0
                    mem[(2 * ceil32(return_data.size)) + 96] = 68
                    mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
                    mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
                    mem[(2 * ceil32(return_data.size)) + 196] = 32
                    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, 0, 0
                    mem[(2 * ceil32(return_data.size)) + 328] = 0
                    call arg1 with:
                       funct Mask(32, 224, approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, 0, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, 0, 0) << 288)
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
                        if not arg2:
                            mem[(2 * ceil32(return_data.size)) + 296] = address(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 328] = arg2
                            mem[(2 * ceil32(return_data.size)) + 260] = 68
                            mem[(2 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
                            mem[(2 * ceil32(return_data.size)) + 360] = 32
                            mem[(2 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[(2 * ceil32(return_data.size)) + 424 len 96] = 0, address(ext_call.return_data[0]), arg2, 0
                            mem[(2 * ceil32(return_data.size)) + 492] = 0
                            call arg1 with:
                               funct Mask(32, 224, 0, address(ext_call.return_data[0]), arg2, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, 0, address(ext_call.return_data[0]), arg2, 0) << 288)
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
                                mem[(2 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(2 * ceil32(return_data.size)) + 456] == bool(mem[(2 * ceil32(return_data.size)) + 456])
                                    if not mem[(2 * ceil32(return_data.size)) + 456]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(2 * ceil32(return_data.size)) + 264] = this.address
                            mem[(2 * ceil32(return_data.size)) + 296] = address(ext_call.return_data[0])
                            require ext_code.size(arg1)
                            staticcall arg1.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            mem[(4 * ceil32(return_data.size)) + 296] = address(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 328] = arg2
                            mem[(4 * ceil32(return_data.size)) + 260] = 68
                            mem[(4 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
                            mem[(4 * ceil32(return_data.size)) + 360] = 32
                            mem[(4 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[(4 * ceil32(return_data.size)) + 424 len 96] = 0, address(ext_call.return_data[0]), arg2, 0
                            mem[(4 * ceil32(return_data.size)) + 492] = 0
                            call arg1 with:
                               funct Mask(32, 224, 0, address(ext_call.return_data[0]), arg2, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, 0, address(ext_call.return_data[0]), arg2, 0) << 288)
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
                                mem[(4 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(4 * ceil32(return_data.size)) + 456] == bool(mem[(4 * ceil32(return_data.size)) + 456])
                                    if not mem[(4 * ceil32(return_data.size)) + 456]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args address(arg1), arg2, address(this.address), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).setUserUseReserveAsCollateral(address arg1, bool arg2) with:
                             gas gas_remaining wei
                            args address(arg1), 1
                    else:
                        mem[(2 * ceil32(return_data.size)) + 260] = return_data.size
                        mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                            if not mem[(2 * ceil32(return_data.size)) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if not arg2:
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg2
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(ext_call.return_data[0]), arg2, 0
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                            call arg1 with:
                               funct Mask(32, 224, 0, address(ext_call.return_data[0]), arg2, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, 0, address(ext_call.return_data[0]), arg2, 0) << 288)
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
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                     gas gas_remaining wei
                                    args address(arg1), arg2, address(this.address), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).setUserUseReserveAsCollateral(address arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), 1
                            else:
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 430] = 32
                                    mem[(4 * ceil32(return_data.size)) + 462] = 32
                                    mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 426
                                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                                    if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                        mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 430] = 32
                                        mem[(4 * ceil32(return_data.size)) + 462] = 42
                                        mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
                                        mem[(4 * ceil32(return_data.size)) + 526] = 'ot succeed'
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + 426
                                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                                mem[(4 * ceil32(return_data.size)) + 430] = arg1
                                mem[(4 * ceil32(return_data.size)) + 462] = arg2
                                mem[(4 * ceil32(return_data.size)) + 494] = this.address
                                mem[(4 * ceil32(return_data.size)) + 526] = 0
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 430 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 430] = arg1
                                mem[(4 * ceil32(return_data.size)) + 462] = 1
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).setUserUseReserveAsCollateral(address arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 430 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
                        else:
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = this.address
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(ext_call.return_data[0])
                            require ext_code.size(arg1)
                            staticcall arg1.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg2
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(ext_call.return_data[0]), arg2, 0
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                            call arg1 with:
                               funct Mask(32, 224, 0, address(ext_call.return_data[0]), arg2, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, 0, address(ext_call.return_data[0]), arg2, 0) << 288)
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
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                     gas gas_remaining wei
                                    args address(arg1), arg2, address(this.address), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).setUserUseReserveAsCollateral(address arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), 1
                            else:
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 430] = 32
                                    mem[(8 * ceil32(return_data.size)) + 462] = 32
                                    mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 426
                                       len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                                    if not mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                        mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(8 * ceil32(return_data.size)) + 430] = 32
                                        mem[(8 * ceil32(return_data.size)) + 462] = 42
                                        mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
                                        mem[(8 * ceil32(return_data.size)) + 526] = 'ot succeed'
                                        revert with memory
                                          from (8 * ceil32(return_data.size)) + 426
                                           len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                                mem[(8 * ceil32(return_data.size)) + 430] = arg1
                                mem[(8 * ceil32(return_data.size)) + 462] = arg2
                                mem[(8 * ceil32(return_data.size)) + 494] = this.address
                                mem[(8 * ceil32(return_data.size)) + 526] = 0
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                     gas gas_remaining wei
                                    args mem[(8 * ceil32(return_data.size)) + 430 len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + 430] = arg1
                                mem[(8 * ceil32(return_data.size)) + 462] = 1
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).setUserUseReserveAsCollateral(address arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args mem[(8 * ceil32(return_data.size)) + 430 len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
    else:
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.deposit() with:
           value arg2 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not arg2:
            mem[ceil32(return_data.size) + 132] = address(ext_call.return_data[0])
            mem[ceil32(return_data.size) + 164] = 0
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = address(ext_call.return_data[0]) << 64
            mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, 0, 0
            mem[ceil32(return_data.size) + 328] = 0
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
               funct Mask(32, 224, approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, 0, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, 0, 0) << 288)
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
                mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                    if not mem[ceil32(return_data.size) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                 gas gas_remaining wei
                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, arg2, address(this.address), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).setUserUseReserveAsCollateral(address arg1, bool arg2) with:
                 gas gas_remaining wei
                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, 1
        else:
            mem[ceil32(return_data.size) + 100] = this.address
            mem[ceil32(return_data.size) + 132] = address(ext_call.return_data[0])
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(ext_call.return_data[0])
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= arg2:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                     gas gas_remaining wei
                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, arg2, address(this.address), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).setUserUseReserveAsCollateral(address arg1, bool arg2) with:
                     gas gas_remaining wei
                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, 1
            else:
                if not ext_call.return_data[0]:
                    if not arg2:
                        mem[(2 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 164] = arg2
                        mem[(2 * ceil32(return_data.size)) + 96] = 68
                        mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
                        mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
                        mem[(2 * ceil32(return_data.size)) + 196] = 32
                        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, arg2, 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 0
                        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
                           funct Mask(32, 224, approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, arg2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, arg2, 0) << 288)
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
                            mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                                if not mem[(2 * ceil32(return_data.size)) + 292]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(2 * ceil32(return_data.size)) + 100] = this.address
                        mem[(2 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), address(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[(4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 164] = arg2
                        mem[(4 * ceil32(return_data.size)) + 96] = 68
                        mem[(4 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
                        mem[(4 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
                        mem[(4 * ceil32(return_data.size)) + 196] = 32
                        mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                            revert with 0, 'Address: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, arg2, 0
                        mem[(4 * ceil32(return_data.size)) + 328] = 0
                        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
                           funct Mask(32, 224, approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, arg2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, arg2, 0) << 288)
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
                            mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                                if not mem[(4 * ceil32(return_data.size)) + 292]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                         gas gas_remaining wei
                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, arg2, address(this.address), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).setUserUseReserveAsCollateral(address arg1, bool arg2) with:
                         gas gas_remaining wei
                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, 1
                else:
                    mem[(2 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 164] = 0
                    mem[(2 * ceil32(return_data.size)) + 96] = 68
                    mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
                    mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
                    mem[(2 * ceil32(return_data.size)) + 196] = 32
                    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, 0, 0
                    mem[(2 * ceil32(return_data.size)) + 328] = 0
                    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
                       funct Mask(32, 224, approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, 0, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, 0, 0) << 288)
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
                        if not arg2:
                            mem[(2 * ceil32(return_data.size)) + 296] = address(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 328] = arg2
                            mem[(2 * ceil32(return_data.size)) + 260] = 68
                            mem[(2 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
                            mem[(2 * ceil32(return_data.size)) + 360] = 32
                            mem[(2 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                                revert with 0, 'Address: call to non-contract'
                            mem[(2 * ceil32(return_data.size)) + 424 len 96] = 0, address(ext_call.return_data[0]), arg2, 0
                            mem[(2 * ceil32(return_data.size)) + 492] = 0
                            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
                               funct Mask(32, 224, 0, address(ext_call.return_data[0]), arg2, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, 0, address(ext_call.return_data[0]), arg2, 0) << 288)
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
                                mem[(2 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(2 * ceil32(return_data.size)) + 456] == bool(mem[(2 * ceil32(return_data.size)) + 456])
                                    if not mem[(2 * ceil32(return_data.size)) + 456]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(2 * ceil32(return_data.size)) + 264] = this.address
                            mem[(2 * ceil32(return_data.size)) + 296] = address(ext_call.return_data[0])
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            mem[(4 * ceil32(return_data.size)) + 296] = address(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 328] = arg2
                            mem[(4 * ceil32(return_data.size)) + 260] = 68
                            mem[(4 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
                            mem[(4 * ceil32(return_data.size)) + 360] = 32
                            mem[(4 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                                revert with 0, 'Address: call to non-contract'
                            mem[(4 * ceil32(return_data.size)) + 424 len 96] = 0, address(ext_call.return_data[0]), arg2, 0
                            mem[(4 * ceil32(return_data.size)) + 492] = 0
                            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
                               funct Mask(32, 224, 0, address(ext_call.return_data[0]), arg2, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, 0, address(ext_call.return_data[0]), arg2, 0) << 288)
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
                                mem[(4 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(4 * ceil32(return_data.size)) + 456] == bool(mem[(4 * ceil32(return_data.size)) + 456])
                                    if not mem[(4 * ceil32(return_data.size)) + 456]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, arg2, address(this.address), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).setUserUseReserveAsCollateral(address arg1, bool arg2) with:
                             gas gas_remaining wei
                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, 1
                    else:
                        mem[(2 * ceil32(return_data.size)) + 260] = return_data.size
                        mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                            if not mem[(2 * ceil32(return_data.size)) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if not arg2:
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg2
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                                revert with 0, 'Address: call to non-contract'
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(ext_call.return_data[0]), arg2, 0
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
                               funct Mask(32, 224, 0, address(ext_call.return_data[0]), arg2, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, 0, address(ext_call.return_data[0]), arg2, 0) << 288)
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
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                     gas gas_remaining wei
                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, arg2, address(this.address), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).setUserUseReserveAsCollateral(address arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, 1
                            else:
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 430] = 32
                                    mem[(4 * ceil32(return_data.size)) + 462] = 32
                                    mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 426
                                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                                    if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                        mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 430] = 32
                                        mem[(4 * ceil32(return_data.size)) + 462] = 42
                                        mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
                                        mem[(4 * ceil32(return_data.size)) + 526] = 'ot succeed'
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + 426
                                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                                mem[(4 * ceil32(return_data.size)) + 430] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                mem[(4 * ceil32(return_data.size)) + 462] = arg2
                                mem[(4 * ceil32(return_data.size)) + 494] = this.address
                                mem[(4 * ceil32(return_data.size)) + 526] = 0
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 430 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 430] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                mem[(4 * ceil32(return_data.size)) + 462] = 1
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).setUserUseReserveAsCollateral(address arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 430 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
                        else:
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = this.address
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(ext_call.return_data[0])
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg2
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                                revert with 0, 'Address: call to non-contract'
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(ext_call.return_data[0]), arg2, 0
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
                               funct Mask(32, 224, 0, address(ext_call.return_data[0]), arg2, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, 0, address(ext_call.return_data[0]), arg2, 0) << 288)
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
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                     gas gas_remaining wei
                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, arg2, address(this.address), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).setUserUseReserveAsCollateral(address arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, 1
                            else:
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 430] = 32
                                    mem[(8 * ceil32(return_data.size)) + 462] = 32
                                    mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 426
                                       len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                                    if not mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                        mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(8 * ceil32(return_data.size)) + 430] = 32
                                        mem[(8 * ceil32(return_data.size)) + 462] = 42
                                        mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
                                        mem[(8 * ceil32(return_data.size)) + 526] = 'ot succeed'
                                        revert with memory
                                          from (8 * ceil32(return_data.size)) + 426
                                           len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                                mem[(8 * ceil32(return_data.size)) + 430] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                mem[(8 * ceil32(return_data.size)) + 462] = arg2
                                mem[(8 * ceil32(return_data.size)) + 494] = this.address
                                mem[(8 * ceil32(return_data.size)) + 526] = 0
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                     gas gas_remaining wei
                                    args mem[(8 * ceil32(return_data.size)) + 430 len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + 430] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                mem[(8 * ceil32(return_data.size)) + 462] = 1
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).setUserUseReserveAsCollateral(address arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args mem[(8 * ceil32(return_data.size)) + 430 len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
