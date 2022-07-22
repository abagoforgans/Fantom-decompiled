contract main {




// =====================  Runtime code  =====================


#
#  - deposit(address arg1, uint256 arg2)
#
function _fallback() payable {
    revert
}

function getBorrowBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xa9c29ea1a067740be6db1f98fcba0043c475041a)
    staticcall 0xa9c29ea1a067740be6db1f98fcba0043c475041a.0x494cd9a with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getBorrowBalanceOf(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(0xa9c29ea1a067740be6db1f98fcba0043c475041a)
    staticcall 0xa9c29ea1a067740be6db1f98fcba0043c475041a.0x494cd9a with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getDepositBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xa9c29ea1a067740be6db1f98fcba0043c475041a)
    staticcall 0xa9c29ea1a067740be6db1f98fcba0043c475041a.0x494cd9a with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
}

function getBorrowRateFor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xa9c29ea1a067740be6db1f98fcba0043c475041a)
    staticcall 0xa9c29ea1a067740be6db1f98fcba0043c475041a.0x494cd9a with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).borrowRatePerBlock() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
        revert with 0, 17
    if 10^9 * ext_call.return_data[0] > 0x444444444444444444444444444444444444444444444444444444444444444:
        revert with 0, 17
    if 6 * 10^10 * ext_call.return_data[0] > 0x444444444444444444444444444444444444444444444444444444444444444:
        revert with 0, 17
    if 10^9 * 3600 * ext_call.return_data[0] > 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa:
        revert with 0, 17
    if 24 * 10^9 * 24 * 3600 * ext_call.return_data[0] > 0xb38cf9b00b38cf9b00b38cf9b00b38cf9b00b38cf9b00b38cf9b00b38cf9b0:
        revert with 0, 17
    return (876 * 10^10 * 24 * 3600 * ext_call.return_data[0])
}

function borrow(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[100] = arg1
    require ext_code.size(0xa9c29ea1a067740be6db1f98fcba0043c475041a)
    staticcall 0xa9c29ea1a067740be6db1f98fcba0043c475041a.0x494cd9a with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = arg2
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).borrow(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'borrow-failed'
    if not arg1:
        if arg2:
            mem[(2 * ceil32(return_data.size)) + 132] = 0xee94a39d185329d8c46dea726e01f91641e57346
            mem[(2 * ceil32(return_data.size)) + 164] = arg2
            mem[(2 * ceil32(return_data.size)) + 96] = 68
            mem[(2 * ceil32(return_data.size)) + 132 len 28] = 0xee94a39d185329d8c46dea726e01f916
            mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(2 * ceil32(return_data.size)) + 196] = 32
            mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), 0xee94a39d185329d8c46dea72, 0, arg2, 0
            mem[(2 * ceil32(return_data.size)) + 328] = 0
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), 0xee94a39d185329d8c46dea72, 0, arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), 0xee94a39d185329d8c46dea72, 0, arg2, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
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
        require ext_code.size(0xee94a39d185329d8c46dea726e01f91641e57346)
        call 0xee94a39d185329d8c46dea726e01f91641e57346.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if arg1 == 0xffffffffffffffffffffffffffffffffffffffff:
            if arg2:
                mem[(2 * ceil32(return_data.size)) + 132] = 0xee94a39d185329d8c46dea726e01f91641e57346
                mem[(2 * ceil32(return_data.size)) + 164] = arg2
                mem[(2 * ceil32(return_data.size)) + 96] = 68
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = 0xee94a39d185329d8c46dea726e01f916
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), 0xee94a39d185329d8c46dea72, 0, arg2, 0
                mem[(2 * ceil32(return_data.size)) + 328] = 0
                call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), 0xee94a39d185329d8c46dea72, 0, arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), 0xee94a39d185329d8c46dea72, 0, arg2, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
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
            require ext_code.size(0xee94a39d185329d8c46dea726e01f91641e57346)
            call 0xee94a39d185329d8c46dea726e01f91641e57346.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[100] = arg1
    require ext_code.size(0xa9c29ea1a067740be6db1f98fcba0043c475041a)
    staticcall 0xa9c29ea1a067740be6db1f98fcba0043c475041a.0x494cd9a with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = arg2
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).redeemUnderlying(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Withdraw-failed'
    if not arg1:
        if arg2:
            mem[(2 * ceil32(return_data.size)) + 132] = 0xee94a39d185329d8c46dea726e01f91641e57346
            mem[(2 * ceil32(return_data.size)) + 164] = arg2
            mem[(2 * ceil32(return_data.size)) + 96] = 68
            mem[(2 * ceil32(return_data.size)) + 132 len 28] = 0xee94a39d185329d8c46dea726e01f916
            mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(2 * ceil32(return_data.size)) + 196] = 32
            mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), 0xee94a39d185329d8c46dea72, 0, arg2, 0
            mem[(2 * ceil32(return_data.size)) + 328] = 0
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), 0xee94a39d185329d8c46dea72, 0, arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), 0xee94a39d185329d8c46dea72, 0, arg2, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
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
        require ext_code.size(0xee94a39d185329d8c46dea726e01f91641e57346)
        call 0xee94a39d185329d8c46dea726e01f91641e57346.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if arg1 == 0xffffffffffffffffffffffffffffffffffffffff:
            if arg2:
                mem[(2 * ceil32(return_data.size)) + 132] = 0xee94a39d185329d8c46dea726e01f91641e57346
                mem[(2 * ceil32(return_data.size)) + 164] = arg2
                mem[(2 * ceil32(return_data.size)) + 96] = 68
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = 0xee94a39d185329d8c46dea726e01f916
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), 0xee94a39d185329d8c46dea72, 0, arg2, 0
                mem[(2 * ceil32(return_data.size)) + 328] = 0
                call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), 0xee94a39d185329d8c46dea72, 0, arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), 0xee94a39d185329d8c46dea72, 0, arg2, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
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
            require ext_code.size(0xee94a39d185329d8c46dea726e01f91641e57346)
            call 0xee94a39d185329d8c46dea726e01f91641e57346.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function payback(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[100] = arg1
    require ext_code.size(0xa9c29ea1a067740be6db1f98fcba0043c475041a)
    staticcall 0xa9c29ea1a067740be6db1f98fcba0043c475041a.0x494cd9a with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not arg1:
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.deposit() with:
           value arg2 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2:
            revert with 0, 'Not-enough-token'
        if not arg2:
            mem[(2 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 164] = 0
            mem[(2 * ceil32(return_data.size)) + 96] = 68
            mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
            mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
            mem[(2 * ceil32(return_data.size)) + 196] = 32
            mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
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
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
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
            if ext_call.return_data[0] < arg2:
                if not ext_call.return_data[0]:
                    if not arg2:
                        mem[(4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 164] = arg2
                        mem[(4 * ceil32(return_data.size)) + 96] = 68
                        mem[(4 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
                        mem[(4 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
                        mem[(4 * ceil32(return_data.size)) + 196] = 32
                        mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
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
                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                if not 0, mem[132 len 28]:
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
                    else:
                        mem[(4 * ceil32(return_data.size)) + 100] = this.address
                        mem[(4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), address(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[(6 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                        mem[(6 * ceil32(return_data.size)) + 164] = arg2
                        mem[(6 * ceil32(return_data.size)) + 96] = 68
                        mem[(6 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
                        mem[(6 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
                        mem[(6 * ceil32(return_data.size)) + 196] = 32
                        mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                            revert with 0, 'Address: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, arg2, 0
                        mem[(6 * ceil32(return_data.size)) + 328] = 0
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
                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                if not 0, mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                                if not mem[(6 * ceil32(return_data.size)) + 292]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 164] = 0
                    mem[(4 * ceil32(return_data.size)) + 96] = 68
                    mem[(4 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
                    mem[(4 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
                    mem[(4 * ceil32(return_data.size)) + 196] = 32
                    mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                        revert with 0, 'Address: call to non-contract'
                    mem[(4 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, 0, 0
                    mem[(4 * ceil32(return_data.size)) + 328] = 0
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
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if not arg2:
                            mem[(4 * ceil32(return_data.size)) + 296] = address(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 328] = arg2
                            mem[(4 * ceil32(return_data.size)) + 260] = 68
                            mem[(4 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
                            mem[(4 * ceil32(return_data.size)) + 360] = 32
                            mem[(4 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
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
                                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                    if not 0, mem[132 len 28]:
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
                        else:
                            mem[(4 * ceil32(return_data.size)) + 264] = this.address
                            mem[(4 * ceil32(return_data.size)) + 296] = address(ext_call.return_data[0])
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            mem[(6 * ceil32(return_data.size)) + 296] = address(ext_call.return_data[0])
                            mem[(6 * ceil32(return_data.size)) + 328] = arg2
                            mem[(6 * ceil32(return_data.size)) + 260] = 68
                            mem[(6 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
                            mem[(6 * ceil32(return_data.size)) + 360] = 32
                            mem[(6 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                                revert with 0, 'Address: call to non-contract'
                            mem[(6 * ceil32(return_data.size)) + 424 len 96] = 0, address(ext_call.return_data[0]), arg2, 0
                            mem[(6 * ceil32(return_data.size)) + 492] = 0
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
                                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                    if not 0, mem[132 len 28]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[(6 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(6 * ceil32(return_data.size)) + 456] == bool(mem[(6 * ceil32(return_data.size)) + 456])
                                    if not mem[(6 * ceil32(return_data.size)) + 456]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(4 * ceil32(return_data.size)) + 260] = return_data.size
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
                        if not arg2:
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg2
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
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
                                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                    if not 0, mem[132 len 28]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).repayBorrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
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
                            if not return_data.size:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).repayBorrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            require return_data.size >= 32
                            require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                            if mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).repayBorrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 430] = 32
                            mem[(8 * ceil32(return_data.size)) + 462] = 42
                            mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
                            mem[(8 * ceil32(return_data.size)) + 526] = 'ot succeed'
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 426
                               len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = this.address
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(ext_call.return_data[0])
                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), address(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(ext_call.return_data[0])
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg2
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                            revert with 0, 'Address: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(ext_call.return_data[0]), arg2, 0
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
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
                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                if not 0, mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(9 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                                if not mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[(9 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    else:
        if arg1 != 0xffffffffffffffffffffffffffffffffffffffff:
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg2:
                revert with 0, 'Not-enough-token'
            if not arg1:
                revert with 0, 'Approve called on ETH'
            if arg1 == 0xffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 'Approve called on ETH'
            if not arg2:
                mem[(2 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 164] = 0
                mem[(2 * ceil32(return_data.size)) + 96] = 68
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
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
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
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
                if ext_call.return_data[0] < arg2:
                    if not ext_call.return_data[0]:
                        if not arg2:
                            mem[(4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 164] = arg2
                            mem[(4 * ceil32(return_data.size)) + 96] = 68
                            mem[(4 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
                            mem[(4 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
                            mem[(4 * ceil32(return_data.size)) + 196] = 32
                            mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
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
                                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                    if not 0, mem[132 len 28]:
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
                        else:
                            mem[(4 * ceil32(return_data.size)) + 100] = this.address
                            mem[(4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                            require ext_code.size(arg1)
                            staticcall arg1.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            mem[(6 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                            mem[(6 * ceil32(return_data.size)) + 164] = arg2
                            mem[(6 * ceil32(return_data.size)) + 96] = 68
                            mem[(6 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
                            mem[(6 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
                            mem[(6 * ceil32(return_data.size)) + 196] = 32
                            mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[(6 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, arg2, 0
                            mem[(6 * ceil32(return_data.size)) + 328] = 0
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
                                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                    if not 0, mem[132 len 28]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                                    if not mem[(6 * ceil32(return_data.size)) + 292]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 164] = 0
                        mem[(4 * ceil32(return_data.size)) + 96] = 68
                        mem[(4 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
                        mem[(4 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
                        mem[(4 * ceil32(return_data.size)) + 196] = 32
                        mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, 0, 0
                        mem[(4 * ceil32(return_data.size)) + 328] = 0
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
                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                if not 0, mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if not arg2:
                                mem[(4 * ceil32(return_data.size)) + 296] = address(ext_call.return_data[0])
                                mem[(4 * ceil32(return_data.size)) + 328] = arg2
                                mem[(4 * ceil32(return_data.size)) + 260] = 68
                                mem[(4 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
                                mem[(4 * ceil32(return_data.size)) + 360] = 32
                                mem[(4 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
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
                                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                        if not 0, mem[132 len 28]:
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
                            else:
                                mem[(4 * ceil32(return_data.size)) + 264] = this.address
                                mem[(4 * ceil32(return_data.size)) + 296] = address(ext_call.return_data[0])
                                require ext_code.size(arg1)
                                staticcall arg1.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), address(ext_call.return_data[0])
                                mem[(4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                                mem[(6 * ceil32(return_data.size)) + 296] = address(ext_call.return_data[0])
                                mem[(6 * ceil32(return_data.size)) + 328] = arg2
                                mem[(6 * ceil32(return_data.size)) + 260] = 68
                                mem[(6 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
                                mem[(6 * ceil32(return_data.size)) + 360] = 32
                                mem[(6 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(arg1):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(6 * ceil32(return_data.size)) + 424 len 96] = 0, address(ext_call.return_data[0]), arg2, 0
                                mem[(6 * ceil32(return_data.size)) + 492] = 0
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
                                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                        if not 0, mem[132 len 28]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[(6 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[(6 * ceil32(return_data.size)) + 456] == bool(mem[(6 * ceil32(return_data.size)) + 456])
                                        if not mem[(6 * ceil32(return_data.size)) + 456]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(4 * ceil32(return_data.size)) + 260] = return_data.size
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
                            if not arg2:
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(ext_call.return_data[0])
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg2
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
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
                                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                        if not 0, mem[132 len 28]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
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
                                if not return_data.size:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                require return_data.size >= 32
                                require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                                if mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 430] = 32
                                mem[(8 * ceil32(return_data.size)) + 462] = 42
                                mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
                                mem[(8 * ceil32(return_data.size)) + 526] = 'ot succeed'
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + 426
                                   len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = this.address
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(ext_call.return_data[0])
                            require ext_code.size(arg1)
                            staticcall arg1.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(ext_call.return_data[0])
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg2
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(ext_call.return_data[0]), arg2, 0
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
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
                                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                    if not 0, mem[132 len 28]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(9 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                                    if not mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                        revert with 0, 
                                                    'SafeERC20: ERC20 operation did not succeed',
                                                    mem[(9 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        else:
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.deposit() with:
               value arg2 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg2:
                revert with 0, 'Not-enough-token'
            if not arg2:
                mem[(2 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 164] = 0
                mem[(2 * ceil32(return_data.size)) + 96] = 68
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
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
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
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
                if ext_call.return_data[0] < arg2:
                    if not ext_call.return_data[0]:
                        if not arg2:
                            mem[(4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 164] = arg2
                            mem[(4 * ceil32(return_data.size)) + 96] = 68
                            mem[(4 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
                            mem[(4 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
                            mem[(4 * ceil32(return_data.size)) + 196] = 32
                            mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
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
                                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                    if not 0, mem[132 len 28]:
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
                        else:
                            mem[(4 * ceil32(return_data.size)) + 100] = this.address
                            mem[(4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            mem[(6 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                            mem[(6 * ceil32(return_data.size)) + 164] = arg2
                            mem[(6 * ceil32(return_data.size)) + 96] = 68
                            mem[(6 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
                            mem[(6 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
                            mem[(6 * ceil32(return_data.size)) + 196] = 32
                            mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                                revert with 0, 'Address: call to non-contract'
                            mem[(6 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, arg2, 0
                            mem[(6 * ceil32(return_data.size)) + 328] = 0
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
                                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                    if not 0, mem[132 len 28]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                                    if not mem[(6 * ceil32(return_data.size)) + 292]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 164] = 0
                        mem[(4 * ceil32(return_data.size)) + 96] = 68
                        mem[(4 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
                        mem[(4 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
                        mem[(4 * ceil32(return_data.size)) + 196] = 32
                        mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                            revert with 0, 'Address: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, 0, 0
                        mem[(4 * ceil32(return_data.size)) + 328] = 0
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
                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                if not 0, mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if not arg2:
                                mem[(4 * ceil32(return_data.size)) + 296] = address(ext_call.return_data[0])
                                mem[(4 * ceil32(return_data.size)) + 328] = arg2
                                mem[(4 * ceil32(return_data.size)) + 260] = 68
                                mem[(4 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
                                mem[(4 * ceil32(return_data.size)) + 360] = 32
                                mem[(4 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
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
                                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                        if not 0, mem[132 len 28]:
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
                            else:
                                mem[(4 * ceil32(return_data.size)) + 264] = this.address
                                mem[(4 * ceil32(return_data.size)) + 296] = address(ext_call.return_data[0])
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), address(ext_call.return_data[0])
                                mem[(4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                                mem[(6 * ceil32(return_data.size)) + 296] = address(ext_call.return_data[0])
                                mem[(6 * ceil32(return_data.size)) + 328] = arg2
                                mem[(6 * ceil32(return_data.size)) + 260] = 68
                                mem[(6 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
                                mem[(6 * ceil32(return_data.size)) + 360] = 32
                                mem[(6 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(6 * ceil32(return_data.size)) + 424 len 96] = 0, address(ext_call.return_data[0]), arg2, 0
                                mem[(6 * ceil32(return_data.size)) + 492] = 0
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
                                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                        if not 0, mem[132 len 28]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[(6 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[(6 * ceil32(return_data.size)) + 456] == bool(mem[(6 * ceil32(return_data.size)) + 456])
                                        if not mem[(6 * ceil32(return_data.size)) + 456]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(4 * ceil32(return_data.size)) + 260] = return_data.size
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
                            if not arg2:
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(ext_call.return_data[0])
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg2
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
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
                                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                        if not 0, mem[132 len 28]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
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
                                if not return_data.size:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                require return_data.size >= 32
                                require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                                if mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 430] = 32
                                mem[(8 * ceil32(return_data.size)) + 462] = 42
                                mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
                                mem[(8 * ceil32(return_data.size)) + 526] = 'ot succeed'
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + 426
                                   len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = this.address
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(ext_call.return_data[0])
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(ext_call.return_data[0])
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg2
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                                revert with 0, 'Address: call to non-contract'
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(ext_call.return_data[0]), arg2, 0
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
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
                                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                    if not 0, mem[132 len 28]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(9 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                                    if not mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                        revert with 0, 
                                                    'SafeERC20: ERC20 operation did not succeed',
                                                    mem[(9 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).repayBorrow(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
