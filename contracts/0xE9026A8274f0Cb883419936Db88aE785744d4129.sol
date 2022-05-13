contract main {




// =====================  Runtime code  =====================


#
#  - sub_18f138d2(?)
#  - sub_1b71afbd(?)
#  - sub_28d001c0(?)
#  - sub_5cc7647c(?)
#  - sub_79ebf646(?)
#  - sub_cee6202c(?)
#
address owner;
address stor1;

function owner() {
    return owner
}

function _fallback() payable {
    revert
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
        _1693 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        _1697 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
            revert with 0, 65
        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
        mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
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
        if mem[_3355]:
            if msg.value < msg.value / 2:
                revert with 0, 17
            mem[mem[64] + 36] = mem[(32 * _1697 - 1) + (4 * ceil32(return_data.size)) + 224]
            require ext_code.size(address(arg2))
            call address(arg2).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value msg.value - (msg.value / 2) wei
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), mem[mem[64] + 36], 0, 0, address(arg3), block.timestamp
        else:
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
            mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
            mem[64] = mem[64] + 164
            mem[_3389 + 100] = 32
            mem[_3389 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            _3430 = mem[_3399]
            mem[_3389 + 164 len ceil32(mem[_3399])] = mem[_3399 + 32 len ceil32(mem[_3399])]
            if ceil32(_3430) > _3430:
                mem[_3430 + _3389 + 164] = 0
            call address(ext_call.return_data[0]) with:
                 gas gas_remaining wei
                args mem[_3389 + 168 len _3430 - 4]
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
                if msg.value < msg.value / 2:
                    revert with 0, 17
                require ext_code.size(address(arg2))
                call address(arg2).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value msg.value - (msg.value / 2) wei
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), mem[(32 * _1697 - 1) + (4 * ceil32(return_data.size)) + 224], 0, 0, address(arg3), block.timestamp
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
                call address(arg2).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
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
                _1695 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                _1699 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                    revert with 0, 65
                if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
                mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
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
                    mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                    mem[64] = mem[64] + 164
                    mem[_3392 + 100] = 32
                    mem[_3392 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(address(ext_call.return_data[0])):
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
                call address(arg2).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
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
                mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
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
                    mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                    mem[64] = mem[64] + 164
                    mem[_3394 + 100] = 32
                    mem[_3394 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    _3437 = mem[_3411]
                    mem[_3394 + 164 len ceil32(mem[_3411])] = mem[_3411 + 32 len ceil32(mem[_3411])]
                    if ceil32(_3437) > _3437:
                        mem[_3437 + _3394 + 164] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args mem[_3394 + 168 len _3437 - 4]
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
                call address(arg2).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
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
            call address(arg2).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
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
            mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
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
            _4983 = mem[_4974]
            require mem[_4974] <= test266151307()
            require _4974 + mem[_4974] + 31 < _4974 + return_data.size
            _5020 = mem[_4974 + mem[_4974]]
            if mem[_4974 + mem[_4974]] > test266151307():
                revert with 0, 65
            if _4974 + ceil32(return_data.size) + ceil32(32 * mem[_4974 + mem[_4974]]) + 1 > test266151307() or ceil32(32 * mem[_4974 + mem[_4974]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _4974 + ceil32(return_data.size) + ceil32(32 * mem[_4974 + mem[_4974]]) + 1
            mem[_4974 + ceil32(return_data.size)] = _5020
            require return_data.size >= _4983 + (32 * _5020) + 32
            mem[_4974 + ceil32(return_data.size) + 32 len 32 * _5020] = mem[_4974 + _4983 + 32 len 32 * _5020]
            if _5020 < 1:
                revert with 0, 17
            if _5020 - 1 >= _5020:
                revert with 0, 50
            _6529 = mem[(32 * _5020 - 1) + _4974 + ceil32(return_data.size) + 32]
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
                    _6558 = mem[64]
                    mem[mem[64] + 36] = address(arg2)
                    mem[mem[64] + 68] = -1
                    _6563 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                    mem[64] = mem[64] + 164
                    mem[_6558 + 100] = 32
                    mem[_6558 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    _6579 = mem[_6563]
                    mem[_6558 + 164 len ceil32(mem[_6563])] = mem[_6563 + 32 len ceil32(mem[_6563])]
                    if ceil32(_6579) > _6579:
                        mem[_6579 + _6558 + 164] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args mem[_6558 + 168 len _6579 - 4]
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
                        mem[_6558 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_6558 + 196] == bool(mem[_6558 + 196])
                            if not mem[_6558 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(arg2))
                call address(arg2).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
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
                mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                mem[64] = mem[64] + 164
                mem[_6544 + 100] = 32
                mem[_6544 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                _6567 = mem[_6548]
                mem[_6544 + 164 len ceil32(mem[_6548])] = mem[_6548 + 32 len ceil32(mem[_6548])]
                if ceil32(_6567) > _6567:
                    mem[_6567 + _6544 + 164] = 0
                call address(ext_call.return_data[0]) with:
                     gas gas_remaining wei
                    args mem[_6544 + 168 len _6567 - 4]
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
                        mem[_6544 + (2 * ceil32(return_data.size)) + 196 len 4] = approve(address arg1, uint256 arg2)
                        mem[_6544 + (2 * ceil32(return_data.size)) + 264] = 32
                        mem[_6544 + (2 * ceil32(return_data.size)) + 296] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(address(ext_call.return_data[0])):
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
                    call address(arg2).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
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
                        call address(arg2).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
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
                        mem[_6544 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197 len 4] = approve(address arg1, uint256 arg2)
                        mem[_6544 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 265] = 32
                        mem[_6544 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 297] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(address(ext_call.return_data[0])):
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
                            call address(arg2).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
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
                            call address(arg2).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args mem[_6544 + (4 * ceil32(return_data.size)) + 334 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
}



}
