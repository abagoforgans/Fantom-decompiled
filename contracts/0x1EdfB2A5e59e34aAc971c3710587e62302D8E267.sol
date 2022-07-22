contract main {




// =====================  Runtime code  =====================


#
#  - payback(address arg1, uint256 arg2)
#
function _fallback() payable {
    revert
}

function getBorrowBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x2330cd22c7a19af7cb026c41aa0d116b90622 * 3600)
    staticcall 0x1eede44b91750933c96d2125b6757c4f89e63e20.0x494cd9a with:
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
    require ext_code.size(0x2330cd22c7a19af7cb026c41aa0d116b90622 * 3600)
    staticcall 0x1eede44b91750933c96d2125b6757c4f89e63e20.0x494cd9a with:
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
    require ext_code.size(0x2330cd22c7a19af7cb026c41aa0d116b90622 * 3600)
    staticcall 0x1eede44b91750933c96d2125b6757c4f89e63e20.0x494cd9a with:
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
    require ext_code.size(0x2330cd22c7a19af7cb026c41aa0d116b90622 * 3600)
    staticcall 0x1eede44b91750933c96d2125b6757c4f89e63e20.0x494cd9a with:
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
    require ext_code.size(0x2330cd22c7a19af7cb026c41aa0d116b90622 * 3600)
    staticcall 0x1eede44b91750933c96d2125b6757c4f89e63e20.0x494cd9a with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).borrow(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'borrow-failed'
    if not arg1:
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if arg1 == 0xffffffffffffffffffffffffffffffffffffffff:
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(0x2330cd22c7a19af7cb026c41aa0d116b90622 * 3600)
    staticcall 0x1eede44b91750933c96d2125b6757c4f89e63e20.0x494cd9a with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).redeemUnderlying(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Withdraw-failed'
    if not arg1:
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if arg1 == 0xffffffffffffffffffffffffffffffffffffffff:
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[100] = arg1
    require ext_code.size(0x2330cd22c7a19af7cb026c41aa0d116b90622 * 3600)
    staticcall 0x1eede44b91750933c96d2125b6757c4f89e63e20.0x494cd9a with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 96] = 1
    mem[ceil32(return_data.size) + 128] = address(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 160] = 0xc299823800000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 164] = 32
    mem[ceil32(return_data.size) + 196] = 1
    idx = 0
    s = ceil32(return_data.size) + 228
    t = ceil32(return_data.size) + 128
    while idx < 1:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x4250a6d3bd57455d7c6821eecb6206f507576cd2)
    call 0x4250a6d3bd57455d7c6821eecb6206f507576cd2.enterMarkets(address[] arg1) with:
         gas gas_remaining wei
        args Array(len=1, data=mem[ceil32(return_data.size) + 228])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 160
    require return_data.size >= 32
    _6633 = mem[ceil32(return_data.size) + 160 len 4], 0
    require mem[ceil32(return_data.size) + 160 len 4], 0 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], 0 + 191 < ceil32(return_data.size) + return_data.size + 160
    _6634 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], 0 + 160]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], 0 + 160] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], 0 + 160]) + 192 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], 0 + 160]) + 32 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], 0 + 160]) + 192
    mem[(2 * ceil32(return_data.size)) + 160] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], 0 + 160]
    require return_data.size >= _6633 + (32 * _6634) + 32
    mem[(2 * ceil32(return_data.size)) + 192 len 32 * _6634] = mem[ceil32(return_data.size) + _6633 + 192 len 32 * _6634]
    if not arg1:
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.deposit() with:
           value arg2 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13263 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_13263] < arg2:
            revert with 0, 'Not enough Balance'
        if not arg2:
            _13285 = mem[64]
            mem[mem[64] + 36] = address(ext_call.return_data[0])
            mem[mem[64] + 68] = 0
            _13293 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
            mem[64] = mem[64] + 164
            mem[_13285 + 100] = 32
            mem[_13285 + 132] = 'SafeERC20: low-level call failed'
            if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                revert with 0, 'Address: call to non-contract'
            _13317 = mem[_13293]
            mem[_13285 + 164 len ceil32(mem[_13293])] = mem[_13293 + 32 len ceil32(mem[_13293])]
            if ceil32(_13317) > _13317:
                mem[_13317 + _13285 + 164] = 0
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
                 gas gas_remaining wei
                args mem[_13285 + 168 len _13317 - 4]
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
                mem[_13285 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_13285 + 196] == bool(mem[_13285 + 196])
                    if not mem[_13285 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).mint(uint256 arg1) with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'Deposit-failed'
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(ext_call.return_data[0])
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(ext_call.return_data[0])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13289 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_13289] >= arg2:
            mem[mem[64] + 4] = arg2
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).mint(uint256 arg1) with:
                 gas gas_remaining wei
                args arg2
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _13333 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_13333]:
                revert with 0, 'Deposit-failed'
        if not mem[_13289]:
            if not arg2:
                _13322 = mem[64]
                mem[mem[64] + 36] = address(ext_call.return_data[0])
                mem[mem[64] + 68] = arg2
                _13342 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                mem[64] = mem[64] + 164
                mem[_13322 + 100] = 32
                mem[_13322 + 132] = 'SafeERC20: low-level call failed'
                if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                    revert with 0, 'Address: call to non-contract'
                _13400 = mem[_13342]
                mem[_13322 + 164 len ceil32(mem[_13342])] = mem[_13342 + 32 len ceil32(mem[_13342])]
                if ceil32(_13400) > _13400:
                    mem[_13400 + _13322 + 164] = 0
                call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
                     gas gas_remaining wei
                    args mem[_13322 + 168 len _13400 - 4]
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
                    mem[_13322 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_13322 + 196] == bool(mem[_13322 + 196])
                        if not mem[_13322 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(ext_call.return_data[0])
                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(ext_call.return_data[0])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _13351 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_13351]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                _13401 = mem[64]
                mem[mem[64] + 36] = address(ext_call.return_data[0])
                mem[mem[64] + 68] = arg2
                _13437 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                mem[64] = mem[64] + 164
                mem[_13401 + 100] = 32
                mem[_13401 + 132] = 'SafeERC20: low-level call failed'
                if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                    revert with 0, 'Address: call to non-contract'
                _13553 = mem[_13437]
                mem[_13401 + 164 len ceil32(mem[_13437])] = mem[_13437 + 32 len ceil32(mem[_13437])]
                if ceil32(_13553) > _13553:
                    mem[_13553 + _13401 + 164] = 0
                call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
                     gas gas_remaining wei
                    args mem[_13401 + 168 len _13553 - 4]
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
                    mem[_13401 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_13401 + 196] == bool(mem[_13401 + 196])
                        if not mem[_13401 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).mint(uint256 arg1) with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'Deposit-failed'
        _13323 = mem[64]
        mem[mem[64] + 36] = address(ext_call.return_data[0])
        mem[mem[64] + 68] = 0
        _13344 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
        mem[64] = mem[64] + 164
        mem[_13323 + 100] = 32
        mem[_13323 + 132] = 'SafeERC20: low-level call failed'
        if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
            revert with 0, 'Address: call to non-contract'
        _13403 = mem[_13344]
        mem[_13323 + 164 len ceil32(mem[_13344])] = mem[_13344 + 32 len ceil32(mem[_13344])]
        if ceil32(_13403) > _13403:
            mem[_13403 + _13323 + 164] = 0
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
             gas gas_remaining wei
            args mem[_13323 + 168 len _13403 - 4]
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
                mem[_13323 + 200] = address(ext_call.return_data[0])
                mem[_13323 + 232] = arg2
                mem[_13323 + 164] = 68
                mem[_13323 + 196 len 4] = approve(address arg1, uint256 arg2)
                mem[_13323 + 264] = 32
                mem[_13323 + 296] = 'SafeERC20: low-level call failed'
                if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                    revert with 0, 'Address: call to non-contract'
                mem[_13323 + 328 len 96] = 0, address(ext_call.return_data[0]), arg2, 0
                mem[_13323 + 396] = 0
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
                    mem[_13323 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_13323 + 360] == bool(mem[_13323 + 360])
                        if not mem[_13323 + 360]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).mint(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'Deposit-failed'
            mem[_13323 + 168] = this.address
            mem[_13323 + 200] = address(ext_call.return_data[0])
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(ext_call.return_data[0])
            mem[_13323 + 164] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            mem[_13323 + ceil32(return_data.size) + 200] = address(ext_call.return_data[0])
            mem[_13323 + ceil32(return_data.size) + 232] = arg2
            mem[_13323 + ceil32(return_data.size) + 164] = 68
            mem[_13323 + ceil32(return_data.size) + 196 len 4] = approve(address arg1, uint256 arg2)
            mem[_13323 + ceil32(return_data.size) + 264] = 32
            mem[_13323 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
            if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                revert with 0, 'Address: call to non-contract'
            mem[_13323 + ceil32(return_data.size) + 328 len 96] = 0, address(ext_call.return_data[0]), arg2, 0
            mem[_13323 + ceil32(return_data.size) + 396] = 0
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
                mem[_13323 + ceil32(return_data.size) + 332] = arg2
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).mint(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg2
                mem[_13323 + ceil32(return_data.size) + 328] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                mem[_13323 + (2 * ceil32(return_data.size)) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_13323 + (2 * ceil32(return_data.size)) + 332] = 32
                mem[_13323 + (2 * ceil32(return_data.size)) + 364] = 14
                mem[_13323 + (2 * ceil32(return_data.size)) + 396] = 'Deposit-failed'
                revert with memory
                  from _13323 + (2 * ceil32(return_data.size)) + 328
                   len ceil32(return_data.size) + 100
            mem[_13323 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_13323 + ceil32(return_data.size) + 360] == bool(mem[_13323 + ceil32(return_data.size) + 360])
                if not mem[_13323 + ceil32(return_data.size) + 360]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[_13323 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = arg2
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).mint(uint256 arg1) with:
                 gas gas_remaining wei
                args arg2
            mem[_13323 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
            mem[_13323 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_13323 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 333] = 32
            mem[_13323 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 365] = 14
            mem[_13323 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 397] = 'Deposit-failed'
            revert with memory
              from _13323 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329
               len ceil32(return_data.size) + 100
        mem[_13323 + 164] = return_data.size
        mem[_13323 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[_13323 + 196] == bool(mem[_13323 + 196])
            if not mem[_13323 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if not arg2:
            mem[_13323 + ceil32(return_data.size) + 201] = address(ext_call.return_data[0])
            mem[_13323 + ceil32(return_data.size) + 233] = arg2
            mem[_13323 + ceil32(return_data.size) + 165] = 68
            mem[_13323 + ceil32(return_data.size) + 197 len 4] = approve(address arg1, uint256 arg2)
            mem[_13323 + ceil32(return_data.size) + 265] = 32
            mem[_13323 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
            if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                revert with 0, 'Address: call to non-contract'
            mem[_13323 + ceil32(return_data.size) + 329 len 96] = 0, address(ext_call.return_data[0]), arg2, 0
            mem[_13323 + ceil32(return_data.size) + 397] = 0
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
                call address(ext_call.return_data[0]).mint(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'Deposit-failed'
            mem[_13323 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[_13323 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                require mem[_13323 + ceil32(return_data.size) + 361] == bool(mem[_13323 + ceil32(return_data.size) + 361])
                if not mem[_13323 + ceil32(return_data.size) + 361]:
                    revert with 0, 
                                'SafeERC20: ERC20 operation did not succeed',
                                mem[_13323 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            mem[_13323 + (2 * ceil32(return_data.size)) + 334] = arg2
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).mint(uint256 arg1) with:
                 gas gas_remaining wei
                args arg2
            mem[_13323 + (2 * ceil32(return_data.size)) + 330] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
            mem[_13323 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_13323 + (4 * ceil32(return_data.size)) + 334] = 32
            mem[_13323 + (4 * ceil32(return_data.size)) + 366] = 14
            mem[_13323 + (4 * ceil32(return_data.size)) + 398] = 'Deposit-failed'
            revert with memory
              from _13323 + (4 * ceil32(return_data.size)) + 330
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        mem[_13323 + ceil32(return_data.size) + 169] = this.address
        mem[_13323 + ceil32(return_data.size) + 201] = address(ext_call.return_data[0])
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(ext_call.return_data[0])
        mem[_13323 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[_13323 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(ext_call.return_data[0])
        mem[_13323 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = arg2
        mem[_13323 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
        mem[_13323 + ceil32(return_data.size) + ceil32(return_data.size) + 197 len 4] = approve(address arg1, uint256 arg2)
        mem[_13323 + ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
        mem[_13323 + ceil32(return_data.size) + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
        if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
            revert with 0, 'Address: call to non-contract'
        mem[_13323 + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 96] = 0, address(ext_call.return_data[0]), arg2, 0
        mem[_13323 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = 0
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
            mem[_13323 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = arg2
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).mint(uint256 arg1) with:
                 gas gas_remaining wei
                args arg2
            mem[_13323 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
            mem[_13323 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_13323 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 333] = 32
            mem[_13323 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 365] = 14
            mem[_13323 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 397] = 'Deposit-failed'
            revert with memory
              from _13323 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329
               len ceil32(return_data.size) + 100
        mem[_13323 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = return_data.size
        mem[_13323 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_13323 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_13323 + (4 * ceil32(return_data.size)) + 334] = 32
            mem[_13323 + (4 * ceil32(return_data.size)) + 366] = 32
            mem[_13323 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
            revert with memory
              from _13323 + (4 * ceil32(return_data.size)) + 330
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        if return_data.size:
            require return_data.size >= 32
            require mem[_13323 + ceil32(return_data.size) + ceil32(return_data.size) + 361] == bool(mem[_13323 + ceil32(return_data.size) + ceil32(return_data.size) + 361])
            if not mem[_13323 + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
                mem[_13323 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_13323 + (4 * ceil32(return_data.size)) + 334] = 32
                mem[_13323 + (4 * ceil32(return_data.size)) + 366] = 42
                mem[_13323 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                mem[_13323 + (4 * ceil32(return_data.size)) + 430] = 'ot succeed'
                revert with memory
                  from _13323 + (4 * ceil32(return_data.size)) + 330
                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).mint(uint256 arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
        mem[_13323 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_13323 + (4 * ceil32(return_data.size)) + 334] = 32
        mem[_13323 + (4 * ceil32(return_data.size)) + 366] = 14
        mem[_13323 + (4 * ceil32(return_data.size)) + 398] = 'Deposit-failed'
        revert with memory
          from _13323 + (4 * ceil32(return_data.size)) + 330
           len (3 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if arg1 != 0xffffffffffffffffffffffffffffffffffffffff:
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13261 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_13261] < arg2:
            revert with 0, 'Not enough Balance'
        if not arg1:
            revert with 0, 'Approve called on ETH'
        if arg1 == 0xffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 'Approve called on ETH'
        if not arg2:
            _13281 = mem[64]
            mem[mem[64] + 36] = address(ext_call.return_data[0])
            mem[mem[64] + 68] = 0
            _13286 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
            mem[64] = mem[64] + 164
            mem[_13281 + 100] = 32
            mem[_13281 + 132] = 'SafeERC20: low-level call failed'
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            _13308 = mem[_13286]
            mem[_13281 + 164 len ceil32(mem[_13286])] = mem[_13286 + 32 len ceil32(mem[_13286])]
            if ceil32(_13308) > _13308:
                mem[_13308 + _13281 + 164] = 0
            call arg1 with:
                 gas gas_remaining wei
                args mem[_13281 + 168 len _13308 - 4]
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
                mem[_13281 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_13281 + 196] == bool(mem[_13281 + 196])
                    if not mem[_13281 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).mint(uint256 arg1) with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'Deposit-failed'
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(ext_call.return_data[0])
        require ext_code.size(arg1)
        staticcall arg1.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(ext_call.return_data[0])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13284 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_13284] >= arg2:
            mem[mem[64] + 4] = arg2
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).mint(uint256 arg1) with:
                 gas gas_remaining wei
                args arg2
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _13318 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_13318]:
                revert with 0, 'Deposit-failed'
        if not mem[_13284]:
            if not arg2:
                _13311 = mem[64]
                mem[mem[64] + 36] = address(ext_call.return_data[0])
                mem[mem[64] + 68] = arg2
                _13325 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                mem[64] = mem[64] + 164
                mem[_13311 + 100] = 32
                mem[_13311 + 132] = 'SafeERC20: low-level call failed'
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                _13379 = mem[_13325]
                mem[_13311 + 164 len ceil32(mem[_13325])] = mem[_13325 + 32 len ceil32(mem[_13325])]
                if ceil32(_13379) > _13379:
                    mem[_13379 + _13311 + 164] = 0
                call arg1 with:
                     gas gas_remaining wei
                    args mem[_13311 + 168 len _13379 - 4]
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
                    mem[_13311 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_13311 + 196] == bool(mem[_13311 + 196])
                        if not mem[_13311 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(ext_call.return_data[0])
                require ext_code.size(arg1)
                staticcall arg1.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(ext_call.return_data[0])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _13337 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_13337]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                _13380 = mem[64]
                mem[mem[64] + 36] = address(ext_call.return_data[0])
                mem[mem[64] + 68] = arg2
                _13404 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                mem[64] = mem[64] + 164
                mem[_13380 + 100] = 32
                mem[_13380 + 132] = 'SafeERC20: low-level call failed'
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                _13517 = mem[_13404]
                mem[_13380 + 164 len ceil32(mem[_13404])] = mem[_13404 + 32 len ceil32(mem[_13404])]
                if ceil32(_13517) > _13517:
                    mem[_13517 + _13380 + 164] = 0
                call arg1 with:
                     gas gas_remaining wei
                    args mem[_13380 + 168 len _13517 - 4]
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
                    mem[_13380 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_13380 + 196] == bool(mem[_13380 + 196])
                        if not mem[_13380 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).mint(uint256 arg1) with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'Deposit-failed'
        _13312 = mem[64]
        mem[mem[64] + 36] = address(ext_call.return_data[0])
        mem[mem[64] + 68] = 0
        _13327 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
        mem[64] = mem[64] + 164
        mem[_13312 + 100] = 32
        mem[_13312 + 132] = 'SafeERC20: low-level call failed'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        _13382 = mem[_13327]
        mem[_13312 + 164 len ceil32(mem[_13327])] = mem[_13327 + 32 len ceil32(mem[_13327])]
        if ceil32(_13382) > _13382:
            mem[_13382 + _13312 + 164] = 0
        call arg1 with:
             gas gas_remaining wei
            args mem[_13312 + 168 len _13382 - 4]
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
                mem[_13312 + 200] = address(ext_call.return_data[0])
                mem[_13312 + 232] = arg2
                mem[_13312 + 164] = 68
                mem[_13312 + 196 len 4] = approve(address arg1, uint256 arg2)
                mem[_13312 + 264] = 32
                mem[_13312 + 296] = 'SafeERC20: low-level call failed'
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[_13312 + 328 len 96] = 0, address(ext_call.return_data[0]), arg2, 0
                mem[_13312 + 396] = 0
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
                    mem[_13312 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_13312 + 360] == bool(mem[_13312 + 360])
                        if not mem[_13312 + 360]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).mint(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'Deposit-failed'
            mem[_13312 + 168] = this.address
            mem[_13312 + 200] = address(ext_call.return_data[0])
            require ext_code.size(arg1)
            staticcall arg1.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(ext_call.return_data[0])
            mem[_13312 + 164] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            mem[_13312 + ceil32(return_data.size) + 200] = address(ext_call.return_data[0])
            mem[_13312 + ceil32(return_data.size) + 232] = arg2
            mem[_13312 + ceil32(return_data.size) + 164] = 68
            mem[_13312 + ceil32(return_data.size) + 196 len 4] = approve(address arg1, uint256 arg2)
            mem[_13312 + ceil32(return_data.size) + 264] = 32
            mem[_13312 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            mem[_13312 + ceil32(return_data.size) + 328 len 96] = 0, address(ext_call.return_data[0]), arg2, 0
            mem[_13312 + ceil32(return_data.size) + 396] = 0
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
                mem[_13312 + ceil32(return_data.size) + 332] = arg2
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).mint(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg2
                mem[_13312 + ceil32(return_data.size) + 328] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                mem[_13312 + (2 * ceil32(return_data.size)) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_13312 + (2 * ceil32(return_data.size)) + 332] = 32
                mem[_13312 + (2 * ceil32(return_data.size)) + 364] = 14
                mem[_13312 + (2 * ceil32(return_data.size)) + 396] = 'Deposit-failed'
                revert with memory
                  from _13312 + (2 * ceil32(return_data.size)) + 328
                   len ceil32(return_data.size) + 100
            mem[_13312 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_13312 + ceil32(return_data.size) + 360] == bool(mem[_13312 + ceil32(return_data.size) + 360])
                if not mem[_13312 + ceil32(return_data.size) + 360]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[_13312 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = arg2
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).mint(uint256 arg1) with:
                 gas gas_remaining wei
                args arg2
            mem[_13312 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
            mem[_13312 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_13312 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 333] = 32
            mem[_13312 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 365] = 14
            mem[_13312 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 397] = 'Deposit-failed'
            revert with memory
              from _13312 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329
               len ceil32(return_data.size) + 100
        mem[_13312 + 164] = return_data.size
        mem[_13312 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[_13312 + 196] == bool(mem[_13312 + 196])
            if not mem[_13312 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if not arg2:
            mem[_13312 + ceil32(return_data.size) + 201] = address(ext_call.return_data[0])
            mem[_13312 + ceil32(return_data.size) + 233] = arg2
            mem[_13312 + ceil32(return_data.size) + 165] = 68
            mem[_13312 + ceil32(return_data.size) + 197 len 4] = approve(address arg1, uint256 arg2)
            mem[_13312 + ceil32(return_data.size) + 265] = 32
            mem[_13312 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            mem[_13312 + ceil32(return_data.size) + 329 len 96] = 0, address(ext_call.return_data[0]), arg2, 0
            mem[_13312 + ceil32(return_data.size) + 397] = 0
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
                call address(ext_call.return_data[0]).mint(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'Deposit-failed'
            mem[_13312 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[_13312 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                require mem[_13312 + ceil32(return_data.size) + 361] == bool(mem[_13312 + ceil32(return_data.size) + 361])
                if not mem[_13312 + ceil32(return_data.size) + 361]:
                    revert with 0, 
                                'SafeERC20: ERC20 operation did not succeed',
                                mem[_13312 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            mem[_13312 + (2 * ceil32(return_data.size)) + 334] = arg2
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).mint(uint256 arg1) with:
                 gas gas_remaining wei
                args arg2
            mem[_13312 + (2 * ceil32(return_data.size)) + 330] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
            mem[_13312 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_13312 + (4 * ceil32(return_data.size)) + 334] = 32
            mem[_13312 + (4 * ceil32(return_data.size)) + 366] = 14
            mem[_13312 + (4 * ceil32(return_data.size)) + 398] = 'Deposit-failed'
            revert with memory
              from _13312 + (4 * ceil32(return_data.size)) + 330
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        mem[_13312 + ceil32(return_data.size) + 169] = this.address
        mem[_13312 + ceil32(return_data.size) + 201] = address(ext_call.return_data[0])
        require ext_code.size(arg1)
        staticcall arg1.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(ext_call.return_data[0])
        mem[_13312 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[_13312 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(ext_call.return_data[0])
        mem[_13312 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = arg2
        mem[_13312 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
        mem[_13312 + ceil32(return_data.size) + ceil32(return_data.size) + 197 len 4] = approve(address arg1, uint256 arg2)
        mem[_13312 + ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
        mem[_13312 + ceil32(return_data.size) + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[_13312 + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 96] = 0, address(ext_call.return_data[0]), arg2, 0
        mem[_13312 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = 0
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
            mem[_13312 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = arg2
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).mint(uint256 arg1) with:
                 gas gas_remaining wei
                args arg2
            mem[_13312 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
            mem[_13312 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_13312 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 333] = 32
            mem[_13312 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 365] = 14
            mem[_13312 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 397] = 'Deposit-failed'
            revert with memory
              from _13312 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329
               len ceil32(return_data.size) + 100
        mem[_13312 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = return_data.size
        mem[_13312 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_13312 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_13312 + (4 * ceil32(return_data.size)) + 334] = 32
            mem[_13312 + (4 * ceil32(return_data.size)) + 366] = 32
            mem[_13312 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
            revert with memory
              from _13312 + (4 * ceil32(return_data.size)) + 330
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        if return_data.size:
            require return_data.size >= 32
            require mem[_13312 + ceil32(return_data.size) + ceil32(return_data.size) + 361] == bool(mem[_13312 + ceil32(return_data.size) + ceil32(return_data.size) + 361])
            if not mem[_13312 + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
                mem[_13312 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_13312 + (4 * ceil32(return_data.size)) + 334] = 32
                mem[_13312 + (4 * ceil32(return_data.size)) + 366] = 42
                mem[_13312 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                mem[_13312 + (4 * ceil32(return_data.size)) + 430] = 'ot succeed'
                revert with memory
                  from _13312 + (4 * ceil32(return_data.size)) + 330
                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).mint(uint256 arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
        mem[_13312 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_13312 + (4 * ceil32(return_data.size)) + 334] = 32
        mem[_13312 + (4 * ceil32(return_data.size)) + 366] = 14
        mem[_13312 + (4 * ceil32(return_data.size)) + 398] = 'Deposit-failed'
        revert with memory
          from _13312 + (4 * ceil32(return_data.size)) + 330
           len (3 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.deposit() with:
       value arg2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _13265 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_13265] < arg2:
        revert with 0, 'Not enough Balance'
    if not arg2:
        _13292 = mem[64]
        mem[mem[64] + 36] = address(ext_call.return_data[0])
        mem[mem[64] + 68] = 0
        _13298 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
        mem[64] = mem[64] + 164
        mem[_13292 + 100] = 32
        mem[_13292 + 132] = 'SafeERC20: low-level call failed'
        if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
            revert with 0, 'Address: call to non-contract'
        _13332 = mem[_13298]
        mem[_13292 + 164 len ceil32(mem[_13298])] = mem[_13298 + 32 len ceil32(mem[_13298])]
        if ceil32(_13332) > _13332:
            mem[_13332 + _13292 + 164] = 0
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
             gas gas_remaining wei
            args mem[_13292 + 168 len _13332 - 4]
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
            mem[_13292 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_13292 + 196] == bool(mem[_13292 + 196])
                if not mem[_13292 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).mint(uint256 arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'Deposit-failed'
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = address(ext_call.return_data[0])
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(ext_call.return_data[0])
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _13295 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_13295] >= arg2:
        mem[mem[64] + 4] = arg2
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).mint(uint256 arg1) with:
             gas gas_remaining wei
            args arg2
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13347 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_13347]:
            revert with 0, 'Deposit-failed'
    if not mem[_13295]:
        if not arg2:
            _13339 = mem[64]
            mem[mem[64] + 36] = address(ext_call.return_data[0])
            mem[mem[64] + 68] = arg2
            _13357 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
            mem[64] = mem[64] + 164
            mem[_13339 + 100] = 32
            mem[_13339 + 132] = 'SafeERC20: low-level call failed'
            if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                revert with 0, 'Address: call to non-contract'
            _13433 = mem[_13357]
            mem[_13339 + 164 len ceil32(mem[_13357])] = mem[_13357 + 32 len ceil32(mem[_13357])]
            if ceil32(_13433) > _13433:
                mem[_13433 + _13339 + 164] = 0
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
                 gas gas_remaining wei
                args mem[_13339 + 168 len _13433 - 4]
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
                mem[_13339 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_13339 + 196] == bool(mem[_13339 + 196])
                    if not mem[_13339 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(ext_call.return_data[0])
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(ext_call.return_data[0])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _13366 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_13366]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            _13434 = mem[64]
            mem[mem[64] + 36] = address(ext_call.return_data[0])
            mem[mem[64] + 68] = arg2
            _13465 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
            mem[64] = mem[64] + 164
            mem[_13434 + 100] = 32
            mem[_13434 + 132] = 'SafeERC20: low-level call failed'
            if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                revert with 0, 'Address: call to non-contract'
            _13606 = mem[_13465]
            mem[_13434 + 164 len ceil32(mem[_13465])] = mem[_13465 + 32 len ceil32(mem[_13465])]
            if ceil32(_13606) > _13606:
                mem[_13606 + _13434 + 164] = 0
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
                 gas gas_remaining wei
                args mem[_13434 + 168 len _13606 - 4]
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
                mem[_13434 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_13434 + 196] == bool(mem[_13434 + 196])
                    if not mem[_13434 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).mint(uint256 arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'Deposit-failed'
    _13340 = mem[64]
    mem[mem[64] + 36] = address(ext_call.return_data[0])
    mem[mem[64] + 68] = 0
    _13359 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
    mem[64] = mem[64] + 164
    mem[_13340 + 100] = 32
    mem[_13340 + 132] = 'SafeERC20: low-level call failed'
    if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
        revert with 0, 'Address: call to non-contract'
    _13436 = mem[_13359]
    mem[_13340 + 164 len ceil32(mem[_13359])] = mem[_13359 + 32 len ceil32(mem[_13359])]
    if ceil32(_13436) > _13436:
        mem[_13436 + _13340 + 164] = 0
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
         gas gas_remaining wei
        args mem[_13340 + 168 len _13436 - 4]
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
            mem[_13340 + 200] = address(ext_call.return_data[0])
            mem[_13340 + 232] = arg2
            mem[_13340 + 164] = 68
            mem[_13340 + 196 len 4] = approve(address arg1, uint256 arg2)
            mem[_13340 + 264] = 32
            mem[_13340 + 296] = 'SafeERC20: low-level call failed'
            if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                revert with 0, 'Address: call to non-contract'
            mem[_13340 + 328 len 96] = 0, address(ext_call.return_data[0]), arg2, 0
            mem[_13340 + 396] = 0
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
                mem[_13340 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_13340 + 360] == bool(mem[_13340 + 360])
                    if not mem[_13340 + 360]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).mint(uint256 arg1) with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'Deposit-failed'
        mem[_13340 + 168] = this.address
        mem[_13340 + 200] = address(ext_call.return_data[0])
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(ext_call.return_data[0])
        mem[_13340 + 164] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[_13340 + ceil32(return_data.size) + 200] = address(ext_call.return_data[0])
        mem[_13340 + ceil32(return_data.size) + 232] = arg2
        mem[_13340 + ceil32(return_data.size) + 164] = 68
        mem[_13340 + ceil32(return_data.size) + 196 len 4] = approve(address arg1, uint256 arg2)
        mem[_13340 + ceil32(return_data.size) + 264] = 32
        mem[_13340 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
        if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
            revert with 0, 'Address: call to non-contract'
        mem[_13340 + ceil32(return_data.size) + 328 len 96] = 0, address(ext_call.return_data[0]), arg2, 0
        mem[_13340 + ceil32(return_data.size) + 396] = 0
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
            mem[_13340 + ceil32(return_data.size) + 332] = arg2
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).mint(uint256 arg1) with:
                 gas gas_remaining wei
                args arg2
            mem[_13340 + ceil32(return_data.size) + 328] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
            mem[_13340 + (2 * ceil32(return_data.size)) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_13340 + (2 * ceil32(return_data.size)) + 332] = 32
            mem[_13340 + (2 * ceil32(return_data.size)) + 364] = 14
            mem[_13340 + (2 * ceil32(return_data.size)) + 396] = 'Deposit-failed'
            revert with memory
              from _13340 + (2 * ceil32(return_data.size)) + 328
               len ceil32(return_data.size) + 100
        mem[_13340 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[_13340 + ceil32(return_data.size) + 360] == bool(mem[_13340 + ceil32(return_data.size) + 360])
            if not mem[_13340 + ceil32(return_data.size) + 360]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[_13340 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = arg2
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).mint(uint256 arg1) with:
             gas gas_remaining wei
            args arg2
        mem[_13340 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
        mem[_13340 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_13340 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 333] = 32
        mem[_13340 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 365] = 14
        mem[_13340 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 397] = 'Deposit-failed'
        revert with memory
          from _13340 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329
           len ceil32(return_data.size) + 100
    mem[_13340 + 164] = return_data.size
    mem[_13340 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        require mem[_13340 + 196] == bool(mem[_13340 + 196])
        if not mem[_13340 + 196]:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if not arg2:
        mem[_13340 + ceil32(return_data.size) + 201] = address(ext_call.return_data[0])
        mem[_13340 + ceil32(return_data.size) + 233] = arg2
        mem[_13340 + ceil32(return_data.size) + 165] = 68
        mem[_13340 + ceil32(return_data.size) + 197 len 4] = approve(address arg1, uint256 arg2)
        mem[_13340 + ceil32(return_data.size) + 265] = 32
        mem[_13340 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
        if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
            revert with 0, 'Address: call to non-contract'
        mem[_13340 + ceil32(return_data.size) + 329 len 96] = 0, address(ext_call.return_data[0]), arg2, 0
        mem[_13340 + ceil32(return_data.size) + 397] = 0
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
            call address(ext_call.return_data[0]).mint(uint256 arg1) with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'Deposit-failed'
        mem[_13340 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 
                        'SafeERC20: low-level call failed',
                        mem[_13340 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if return_data.size:
            require return_data.size >= 32
            require mem[_13340 + ceil32(return_data.size) + 361] == bool(mem[_13340 + ceil32(return_data.size) + 361])
            if not mem[_13340 + ceil32(return_data.size) + 361]:
                revert with 0, 
                            'SafeERC20: ERC20 operation did not succeed',
                            mem[_13340 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        mem[_13340 + (2 * ceil32(return_data.size)) + 334] = arg2
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).mint(uint256 arg1) with:
             gas gas_remaining wei
            args arg2
        mem[_13340 + (2 * ceil32(return_data.size)) + 330] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
        mem[_13340 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_13340 + (4 * ceil32(return_data.size)) + 334] = 32
        mem[_13340 + (4 * ceil32(return_data.size)) + 366] = 14
        mem[_13340 + (4 * ceil32(return_data.size)) + 398] = 'Deposit-failed'
        revert with memory
          from _13340 + (4 * ceil32(return_data.size)) + 330
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    mem[_13340 + ceil32(return_data.size) + 169] = this.address
    mem[_13340 + ceil32(return_data.size) + 201] = address(ext_call.return_data[0])
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(ext_call.return_data[0])
    mem[_13340 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    mem[_13340 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(ext_call.return_data[0])
    mem[_13340 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = arg2
    mem[_13340 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
    mem[_13340 + ceil32(return_data.size) + ceil32(return_data.size) + 197 len 4] = approve(address arg1, uint256 arg2)
    mem[_13340 + ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
    mem[_13340 + ceil32(return_data.size) + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
    if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
        revert with 0, 'Address: call to non-contract'
    mem[_13340 + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 96] = 0, address(ext_call.return_data[0]), arg2, 0
    mem[_13340 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = 0
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
        mem[_13340 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = arg2
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).mint(uint256 arg1) with:
             gas gas_remaining wei
            args arg2
        mem[_13340 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
        mem[_13340 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_13340 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 333] = 32
        mem[_13340 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 365] = 14
        mem[_13340 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 397] = 'Deposit-failed'
        revert with memory
          from _13340 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329
           len ceil32(return_data.size) + 100
    mem[_13340 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = return_data.size
    mem[_13340 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_13340 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_13340 + (4 * ceil32(return_data.size)) + 334] = 32
        mem[_13340 + (4 * ceil32(return_data.size)) + 366] = 32
        mem[_13340 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
        revert with memory
          from _13340 + (4 * ceil32(return_data.size)) + 330
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if return_data.size:
        require return_data.size >= 32
        require mem[_13340 + ceil32(return_data.size) + ceil32(return_data.size) + 361] == bool(mem[_13340 + ceil32(return_data.size) + ceil32(return_data.size) + 361])
        if not mem[_13340 + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
            mem[_13340 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_13340 + (4 * ceil32(return_data.size)) + 334] = 32
            mem[_13340 + (4 * ceil32(return_data.size)) + 366] = 42
            mem[_13340 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
            mem[_13340 + (4 * ceil32(return_data.size)) + 430] = 'ot succeed'
            revert with memory
              from _13340 + (4 * ceil32(return_data.size)) + 330
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).mint(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
    mem[_13340 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[_13340 + (4 * ceil32(return_data.size)) + 334] = 32
    mem[_13340 + (4 * ceil32(return_data.size)) + 366] = 14
    mem[_13340 + (4 * ceil32(return_data.size)) + 398] = 'Deposit-failed'
    revert with memory
      from _13340 + (4 * ceil32(return_data.size)) + 330
       len (3 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
}



}
