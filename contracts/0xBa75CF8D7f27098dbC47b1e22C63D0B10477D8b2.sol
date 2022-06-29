contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address stor0;
address stor1;

function _fallback() payable {
    revert
}

function balance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getAmountIn(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == arg2:
        if ext_call.return_data[12 len 20] == arg2:
            if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3):
                return ((1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1)
        else:
            if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3):
                return ((1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1)
    else:
        if ext_call.return_data[12 len 20] == arg2:
            if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3):
                return ((1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1)
        else:
            if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3):
                return ((1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1)
    revert
}

function getAmountOut(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == arg2:
        if ext_call.return_data[12 len 20] == arg2:
            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3):
                return (997 * arg3 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3))
        else:
            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3):
                return (997 * arg3 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3))
        ('iszero', ('add', ('mul', 1000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mul', 997, ('param', 'arg3'))))
    else:
        if ext_call.return_data[12 len 20] == arg2:
            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3):
                return (997 * arg3 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3))
        else:
            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3):
                return (997 * arg3 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3))
        ('iszero', ('add', ('mul', 1000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mul', 997, ('param', 'arg3'))))
    revert
}

function liquidate(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg2)
    staticcall arg2.collateral() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xc45a0155 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(arg2)
        staticcall arg2.collateral() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).borrowable0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).borrowable1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).borrowable0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).borrowable0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(arg2)
        staticcall arg2.borrowBalance(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[12 len 20] != 0xef45d134b73241eda7703fa787148d9c9f4950b0:
            require ext_code.size(0xef45d134b73241eda7703fa787148d9c9f4950b0)
            staticcall 0xef45d134b73241eda7703fa787148d9c9f4950b0.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if not ext_call.return_data[12 len 20]:
                revert with 0, '!pair'
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(19 * ceil32(return_data.size)) + 324] = this.address
            mem[(19 * ceil32(return_data.size)) + 356] = 128
            mem[(19 * ceil32(return_data.size)) + 388] = 128
            mem[(19 * ceil32(return_data.size)) + 420 len 128] = address(arg1), address(arg2), address(ext_call.return_data[0]), 0xef45d134b73241eda7703fa787148d9c9f4950b0
            require ext_code.size(address(ext_call.return_data[0]))
            if -1 < ext_call.return_data[0]:
                if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args -1, -1, address(this.address), 128, 128, address(arg1), address(arg2), address(ext_call.return_data[0]), 0xef45d134b73241eda7703fa787148d9c9f4950b0
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args -1, 0, address(this.address), 128, 128, address(arg1), address(arg2), address(ext_call.return_data[0]), 0xef45d134b73241eda7703fa787148d9c9f4950b0
                else:
                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, -1, address(this.address), 128, 128, address(arg1), address(arg2), address(ext_call.return_data[0]), 0xef45d134b73241eda7703fa787148d9c9f4950b0
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, 128, address(arg1), address(arg2), address(ext_call.return_data[0]), 0xef45d134b73241eda7703fa787148d9c9f4950b0
            else:
                if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], ext_call.return_data[0], address(this.address), 128, 128, address(arg1), address(arg2), address(ext_call.return_data[0]), 0xef45d134b73241eda7703fa787148d9c9f4950b0
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, address(this.address), 128, 128, address(arg1), address(arg2), address(ext_call.return_data[0]), 0xef45d134b73241eda7703fa787148d9c9f4950b0
                else:
                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0], address(this.address), 128, 128, address(arg1), address(arg2), address(ext_call.return_data[0]), 0xef45d134b73241eda7703fa787148d9c9f4950b0
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, 128, address(arg1), address(arg2), address(ext_call.return_data[0]), 0xef45d134b73241eda7703fa787148d9c9f4950b0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if address(ext_call.return_data[0]) == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'profit too low.'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor0, ext_call.return_data[0], mem[(22 * ceil32(return_data.size)) + 324 len 5 * ceil32(return_data.size)]
            else:
                mem[(19 * ceil32(return_data.size)) + 260] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                mem[(19 * ceil32(return_data.size)) + 292] = address(ext_call.return_data[0])
                require ext_code.size(0xef45d134b73241eda7703fa787148d9c9f4950b0)
                staticcall 0xef45d134b73241eda7703fa787148d9c9f4950b0.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(20 * ceil32(return_data.size)) + 260] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(22 * ceil32(return_data.size)) + 256] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                       args mem[(22 * ceil32(return_data.size)) + 260 len 4 * ceil32(return_data.size)]
                mem[(22 * ceil32(return_data.size)) + 256 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                mem[(24 * ceil32(return_data.size)) + 256] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                       args mem[(24 * ceil32(return_data.size)) + 260 len 8 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) <= 0:
                            revert with 0, 'profit too low.'
                    else:
                        if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) <= 0:
                            revert with 0, 'profit too low.'
                else:
                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) <= 0:
                            revert with 0, 'profit too low.'
                    else:
                        if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) <= 0:
                            revert with 0, 'profit too low.'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor0, ext_call.return_data[0], mem[(28 * ceil32(return_data.size)) + 324 len 17 * ceil32(return_data.size)]
        else:
            require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
            staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if not ext_call.return_data[12 len 20]:
                revert with 0, '!pair'
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(19 * ceil32(return_data.size)) + 324] = this.address
            mem[(19 * ceil32(return_data.size)) + 356] = 128
            mem[(19 * ceil32(return_data.size)) + 388] = 128
            mem[(19 * ceil32(return_data.size)) + 420 len 128] = address(arg1), address(arg2), address(ext_call.return_data[0]), 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3
            require ext_code.size(address(ext_call.return_data[0]))
            if -1 < ext_call.return_data[0]:
                if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args -1, -1, address(this.address), 128, 128, address(arg1), address(arg2), address(ext_call.return_data[0]), 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args -1, 0, address(this.address), 128, 128, address(arg1), address(arg2), address(ext_call.return_data[0]), 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3
                else:
                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, -1, address(this.address), 128, 128, address(arg1), address(arg2), address(ext_call.return_data[0]), 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, 128, address(arg1), address(arg2), address(ext_call.return_data[0]), 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3
            else:
                if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], ext_call.return_data[0], address(this.address), 128, 128, address(arg1), address(arg2), address(ext_call.return_data[0]), 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, address(this.address), 128, 128, address(arg1), address(arg2), address(ext_call.return_data[0]), 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3
                else:
                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0], address(this.address), 128, 128, address(arg1), address(arg2), address(ext_call.return_data[0]), 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, 128, address(arg1), address(arg2), address(ext_call.return_data[0]), 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if address(ext_call.return_data[0]) == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'profit too low.'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor0, ext_call.return_data[0], mem[(22 * ceil32(return_data.size)) + 324 len 5 * ceil32(return_data.size)]
            else:
                mem[(19 * ceil32(return_data.size)) + 260] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                mem[(19 * ceil32(return_data.size)) + 292] = address(ext_call.return_data[0])
                require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(20 * ceil32(return_data.size)) + 260] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(22 * ceil32(return_data.size)) + 256] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                       args mem[(22 * ceil32(return_data.size)) + 260 len 4 * ceil32(return_data.size)]
                mem[(22 * ceil32(return_data.size)) + 256 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                mem[(24 * ceil32(return_data.size)) + 256] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                       args mem[(24 * ceil32(return_data.size)) + 260 len 8 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) <= 0:
                            revert with 0, 'profit too low.'
                    else:
                        if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) <= 0:
                            revert with 0, 'profit too low.'
                else:
                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) <= 0:
                            revert with 0, 'profit too low.'
                    else:
                        if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) <= 0:
                            revert with 0, 'profit too low.'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor0, ext_call.return_data[0], mem[(28 * ceil32(return_data.size)) + 324 len 17 * ceil32(return_data.size)]
    else:
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xc45a0155 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(arg2)
        staticcall arg2.collateral() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).borrowable0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).borrowable1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).borrowable0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).borrowable0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(arg2)
        staticcall arg2.borrowBalance(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[12 len 20] != 0xef45d134b73241eda7703fa787148d9c9f4950b0:
            require ext_code.size(0xef45d134b73241eda7703fa787148d9c9f4950b0)
            staticcall 0xef45d134b73241eda7703fa787148d9c9f4950b0.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if not ext_call.return_data[12 len 20]:
                revert with 0, '!pair'
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(21 * ceil32(return_data.size)) + 324] = this.address
            mem[(21 * ceil32(return_data.size)) + 356] = 128
            mem[(21 * ceil32(return_data.size)) + 388] = 128
            mem[(21 * ceil32(return_data.size)) + 420 len 128] = address(arg1), address(arg2), address(ext_call.return_data[0]), 0xef45d134b73241eda7703fa787148d9c9f4950b0
            require ext_code.size(address(ext_call.return_data[0]))
            if -1 < ext_call.return_data[0]:
                if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args -1, -1, address(this.address), 128, 128, address(arg1), address(arg2), address(ext_call.return_data[0]), 0xef45d134b73241eda7703fa787148d9c9f4950b0
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args -1, 0, address(this.address), 128, 128, address(arg1), address(arg2), address(ext_call.return_data[0]), 0xef45d134b73241eda7703fa787148d9c9f4950b0
                else:
                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, -1, address(this.address), 128, 128, address(arg1), address(arg2), address(ext_call.return_data[0]), 0xef45d134b73241eda7703fa787148d9c9f4950b0
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, 128, address(arg1), address(arg2), address(ext_call.return_data[0]), 0xef45d134b73241eda7703fa787148d9c9f4950b0
            else:
                if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], ext_call.return_data[0], address(this.address), 128, 128, address(arg1), address(arg2), address(ext_call.return_data[0]), 0xef45d134b73241eda7703fa787148d9c9f4950b0
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, address(this.address), 128, 128, address(arg1), address(arg2), address(ext_call.return_data[0]), 0xef45d134b73241eda7703fa787148d9c9f4950b0
                else:
                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0], address(this.address), 128, 128, address(arg1), address(arg2), address(ext_call.return_data[0]), 0xef45d134b73241eda7703fa787148d9c9f4950b0
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, 128, address(arg1), address(arg2), address(ext_call.return_data[0]), 0xef45d134b73241eda7703fa787148d9c9f4950b0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if address(ext_call.return_data[0]) == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'profit too low.'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor0, ext_call.return_data[0], mem[(24 * ceil32(return_data.size)) + 324 len 5 * ceil32(return_data.size)]
            else:
                mem[(21 * ceil32(return_data.size)) + 260] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                mem[(21 * ceil32(return_data.size)) + 292] = address(ext_call.return_data[0])
                require ext_code.size(0xef45d134b73241eda7703fa787148d9c9f4950b0)
                staticcall 0xef45d134b73241eda7703fa787148d9c9f4950b0.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(22 * ceil32(return_data.size)) + 260] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(24 * ceil32(return_data.size)) + 256] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                       args mem[(24 * ceil32(return_data.size)) + 260 len 4 * ceil32(return_data.size)]
                mem[(24 * ceil32(return_data.size)) + 256 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                mem[(26 * ceil32(return_data.size)) + 256] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                       args mem[(26 * ceil32(return_data.size)) + 260 len 8 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) <= 0:
                            revert with 0, 'profit too low.'
                    else:
                        if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) <= 0:
                            revert with 0, 'profit too low.'
                else:
                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) <= 0:
                            revert with 0, 'profit too low.'
                    else:
                        if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) <= 0:
                            revert with 0, 'profit too low.'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor0, ext_call.return_data[0], mem[(30 * ceil32(return_data.size)) + 324 len 17 * ceil32(return_data.size)]
        else:
            require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
            staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if not ext_call.return_data[12 len 20]:
                revert with 0, '!pair'
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(21 * ceil32(return_data.size)) + 324] = this.address
            mem[(21 * ceil32(return_data.size)) + 356] = 128
            mem[(21 * ceil32(return_data.size)) + 388] = 128
            mem[(21 * ceil32(return_data.size)) + 420 len 128] = address(arg1), address(arg2), address(ext_call.return_data[0]), 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3
            require ext_code.size(address(ext_call.return_data[0]))
            if -1 < ext_call.return_data[0]:
                if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args -1, -1, address(this.address), 128, 128, address(arg1), address(arg2), address(ext_call.return_data[0]), 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args -1, 0, address(this.address), 128, 128, address(arg1), address(arg2), address(ext_call.return_data[0]), 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3
                else:
                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, -1, address(this.address), 128, 128, address(arg1), address(arg2), address(ext_call.return_data[0]), 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, 128, address(arg1), address(arg2), address(ext_call.return_data[0]), 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3
            else:
                if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], ext_call.return_data[0], address(this.address), 128, 128, address(arg1), address(arg2), address(ext_call.return_data[0]), 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, address(this.address), 128, 128, address(arg1), address(arg2), address(ext_call.return_data[0]), 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3
                else:
                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0], address(this.address), 128, 128, address(arg1), address(arg2), address(ext_call.return_data[0]), 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, 128, address(arg1), address(arg2), address(ext_call.return_data[0]), 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if address(ext_call.return_data[0]) == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'profit too low.'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor0, ext_call.return_data[0], mem[(24 * ceil32(return_data.size)) + 324 len 5 * ceil32(return_data.size)]
            else:
                mem[(21 * ceil32(return_data.size)) + 260] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                mem[(21 * ceil32(return_data.size)) + 292] = address(ext_call.return_data[0])
                require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(22 * ceil32(return_data.size)) + 260] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(24 * ceil32(return_data.size)) + 256] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                       args mem[(24 * ceil32(return_data.size)) + 260 len 4 * ceil32(return_data.size)]
                mem[(24 * ceil32(return_data.size)) + 256 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                mem[(26 * ceil32(return_data.size)) + 256] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                       args mem[(26 * ceil32(return_data.size)) + 260 len 8 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) <= 0:
                            revert with 0, 'profit too low.'
                    else:
                        if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) <= 0:
                            revert with 0, 'profit too low.'
                else:
                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) <= 0:
                            revert with 0, 'profit too low.'
                    else:
                        if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) <= 0:
                            revert with 0, 'profit too low.'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor0, ext_call.return_data[0], mem[(30 * ceil32(return_data.size)) + 324 len 17 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 128
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
    require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
    require cd[(arg4 + 132)] == address(cd[(arg4 + 132)])
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(cd[(arg4 + 132)]))
    staticcall address(cd[(arg4 + 132)]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, '!pair'
    if arg1 != this.address:
        revert with 0, '!sender'
    require ext_code.size(address(cd[(arg4 + 68)]))
    staticcall address(cd[(arg4 + 68)]).underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x283e62cfe14b352db8e30a9575481dcbf589ad98, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor1)
    if not arg2:
        call stor1.liquidate(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg3, address(cd[(arg4 + 36)]), address(this.address), block.timestamp + 30
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_code.size(address(cd[(arg4 + 68)]))
        staticcall address(cd[(arg4 + 68)]).collateral() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(cd[(arg4 + 68)]))
        staticcall address(cd[(arg4 + 68)]).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x283e62cfe14b352db8e30a9575481dcbf589ad98, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor1)
        call stor1.redeem(address arg1, uint256 arg2, address arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[32], address(this.address), block.timestamp + 30, 160, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(cd[(arg4 + 68)]))
        staticcall address(cd[(arg4 + 68)]).collateral() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).underlying() with:
                gas gas_remaining wei
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).underlying() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).burn(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] == address(cd[(arg4 + 100)]):
            if ext_call.return_data[12 len 20] == address(cd[(arg4 + 100)]):
                require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                if ext_call.return_data[12 len 20] != address(cd[(arg4 + 100)]):
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                else:
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1
            else:
                require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                if ext_call.return_data[12 len 20] != address(cd[(arg4 + 100)]):
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                else:
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1
        else:
            if ext_call.return_data[12 len 20] == address(cd[(arg4 + 100)]):
                require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                if ext_call.return_data[12 len 20] != address(cd[(arg4 + 100)]):
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                else:
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1
            else:
                require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                if ext_call.return_data[12 len 20] != address(cd[(arg4 + 100)]):
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                else:
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1
    else:
        call stor1.liquidate(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg2, address(cd[(arg4 + 36)]), address(this.address), block.timestamp + 30
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_code.size(address(cd[(arg4 + 68)]))
        staticcall address(cd[(arg4 + 68)]).collateral() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(cd[(arg4 + 68)]))
        staticcall address(cd[(arg4 + 68)]).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x283e62cfe14b352db8e30a9575481dcbf589ad98, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor1)
        call stor1.redeem(address arg1, uint256 arg2, address arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[32], address(this.address), block.timestamp + 30, 160, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(cd[(arg4 + 68)]))
        staticcall address(cd[(arg4 + 68)]).collateral() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).underlying() with:
                gas gas_remaining wei
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).underlying() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).burn(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] == address(cd[(arg4 + 100)]):
            if ext_call.return_data[12 len 20] == address(cd[(arg4 + 100)]):
                require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                if ext_call.return_data[12 len 20] != address(cd[(arg4 + 100)]):
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                else:
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1
            else:
                require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                if ext_call.return_data[12 len 20] != address(cd[(arg4 + 100)]):
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                else:
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1
        else:
            if ext_call.return_data[12 len 20] == address(cd[(arg4 + 100)]):
                require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                if ext_call.return_data[12 len 20] != address(cd[(arg4 + 100)]):
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                else:
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1
            else:
                require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                if ext_call.return_data[12 len 20] != address(cd[(arg4 + 100)]):
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                else:
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
