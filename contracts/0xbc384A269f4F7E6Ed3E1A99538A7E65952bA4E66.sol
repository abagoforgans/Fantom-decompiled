contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

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

function liquidate(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg2)
    staticcall arg2.comptroller() with:
            gas gas_remaining wei
    if not ext_call.success:
        require ext_code.size(arg2)
        staticcall arg2.0x6070e006 with:
                gas gas_remaining wei
    else:
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(arg2)
        staticcall arg2.comptroller() with:
                gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(ext_call.return_data[12 len 20])
    staticcall ext_call.return_data[12 len 20].closeFactorMantissa() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg2)
    staticcall arg2.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 0, 'max close is 0'
    if not ext_call.return_data[0]:
        revert with 0, 'max close is 0'
    require ext_call.return_data[0]
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'multiplication overflow', 0
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 <= 0:
        revert with 0, 'max close is 0'
    require ext_code.size(arg2)
    staticcall arg2.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
    if ext_call.return_data[12 len 20] == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), 0x4068da6c83afcfa0e13ba15a6696662335d5b75
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
        require ext_code.size(address(ext_call.return_data[0]))
        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
            if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] * ext_call.return_data[0] / 10^18, ext_call.return_data[0] * ext_call.return_data[0] / 10^18, address(this.address), 128, 160, address(arg1), address(arg2), address(arg3), address(ext_call.return_data[0]), 0x4068da6c83afcfa0e13ba15a6696662335d5b75
            else:
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] * ext_call.return_data[0] / 10^18, 0, address(this.address), 128, 160, address(arg1), address(arg2), address(arg3), address(ext_call.return_data[0]), 0x4068da6c83afcfa0e13ba15a6696662335d5b75
        else:
            if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[0] * ext_call.return_data[0] / 10^18, address(this.address), 128, 160, address(arg1), address(arg2), address(arg3), address(ext_call.return_data[0]), 0x4068da6c83afcfa0e13ba15a6696662335d5b75
            else:
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 0, address(this.address), 128, 160, address(arg1), address(arg2), address(arg3), address(ext_call.return_data[0]), 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    else:
        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
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
        require ext_code.size(address(ext_call.return_data[0]))
        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
            if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] * ext_call.return_data[0] / 10^18, ext_call.return_data[0] * ext_call.return_data[0] / 10^18, address(this.address), 128, 160, address(arg1), address(arg2), address(arg3), address(ext_call.return_data[0]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            else:
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] * ext_call.return_data[0] / 10^18, 0, address(this.address), 128, 160, address(arg1), address(arg2), address(arg3), address(ext_call.return_data[0]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        else:
            if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[0] * ext_call.return_data[0] / 10^18, address(this.address), 128, 160, address(arg1), address(arg2), address(arg3), address(ext_call.return_data[0]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            else:
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 0, address(this.address), 128, 160, address(arg1), address(arg2), address(arg3), address(ext_call.return_data[0]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
    require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
    staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, '!pair'
    if arg1 != this.address:
        revert with 0, '!sender'
    require arg4.length >= 160
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
    require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
    require cd[(arg4 + 132)] == address(cd[(arg4 + 132)])
    require cd[(arg4 + 164)] == address(cd[(arg4 + 164)])
    mem[(4 * ceil32(return_data.size)) + 100] = address(cd[(arg4 + 68)])
    mem[(4 * ceil32(return_data.size)) + 132] = -1
    require ext_code.size(address(cd[(arg4 + 132)]))
    call address(cd[(arg4 + 132)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[(arg4 + 68)]), -1
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 100] = address(cd[(arg4 + 36)])
    if not arg2:
        mem[(6 * ceil32(return_data.size)) + 132] = arg3
        mem[(6 * ceil32(return_data.size)) + 164] = address(cd[(arg4 + 100)])
        require ext_code.size(address(cd[(arg4 + 68)]))
        call address(cd[(arg4 + 68)]).liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 36)]), arg3, address(cd[(arg4 + 100)])
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            revert with 0, 'liquidation failed'
        mem[(7 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(address(cd[(arg4 + 100)]))
        staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
        require ext_code.size(address(cd[(arg4 + 100)]))
        call address(cd[(arg4 + 100)]).redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(10 * ceil32(return_data.size)) + 96] = 2
        mem[(10 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
        mem[(10 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
        mem[(10 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[(10 * ceil32(return_data.size)) + 196] = arg3
        mem[(10 * ceil32(return_data.size)) + 228] = 64
        mem[(10 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (10 * ceil32(return_data.size)) + 128
        t = (10 * ceil32(return_data.size)) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor2)
        staticcall stor2.getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (11 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _361 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
        require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
        _363 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
        require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
        mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
        mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        require _361 + (32 * _363) + 32 <= return_data.size
        idx = 0
        s = (10 * ceil32(return_data.size)) + _361 + 224
        t = (11 * ceil32(return_data.size)) + 224
        while idx < _363:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require 0 < _363
        _701 = mem[(11 * ceil32(return_data.size)) + 224]
        require ext_code.size(address(cd[(arg4 + 100)]))
        staticcall address(cd[(arg4 + 100)]).underlying() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            require ext_code.size(stor1)
            call stor1.deposit() with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if address(cd[(arg4 + 68)]) == address(cd[(arg4 + 100)]):
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                mem[mem[64] + 36] = arg3 + (3 * arg3 / 997) + 1
                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg3 + (3 * arg3 / 997) + 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _737 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_737] == bool(mem[_737])
                mem[mem[64] + 4] = this.address
                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _786 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _802 = mem[_786]
                require mem[_786] == mem[_786]
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = _802
                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor0, _802
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _864 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_864] == bool(mem[_864])
            else:
                if address(cd[(arg4 + 164)]) == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    mem[mem[64] + 36] = _701
                    require ext_code.size(address(cd[(arg4 + 164)]))
                    call address(cd[(arg4 + 164)]).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), _701
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _735 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_735] == bool(mem[_735])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _785 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _801 = mem[_785]
                    require mem[_785] == mem[_785]
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _801
                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _801
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _863 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_863] == bool(mem[_863])
                else:
                    mem[mem[64] + 4] = stor2
                    mem[mem[64] + 36] = -1
                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor2, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _736 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_736] == bool(mem[_736])
                    _761 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_761]
                    mem[_761 + 32] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 1 < mem[_761]
                    mem[_761 + 64] = address(cd[(arg4 + 164)])
                    mem[_761 + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[_761 + 100] = _701
                    mem[_761 + 132] = -1
                    mem[_761 + 164] = 160
                    mem[_761 + 260] = mem[_761]
                    idx = 0
                    s = _761 + 32
                    t = _761 + 292
                    while idx < mem[_761]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_761 + 196] = this.address
                    mem[_761 + 228] = block.timestamp + 30
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _761 + (32 * mem[_761]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1051 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1057 = mem[_1051]
                    require mem[_1051] <= test266151307()
                    require _1051 + mem[_1051] + 31 < _1051 + return_data.size
                    _1063 = mem[_1051 + mem[_1051]]
                    require mem[_1051 + mem[_1051]] <= test266151307()
                    require _1051 + ceil32(return_data.size) + (32 * mem[_1051 + mem[_1051]]) + 32 <= test266151307() and (32 * mem[_1051 + mem[_1051]]) + 32 >= 0
                    mem[64] = _1051 + ceil32(return_data.size) + (32 * mem[_1051 + mem[_1051]]) + 32
                    mem[_1051 + ceil32(return_data.size)] = _1063
                    require _1057 + (32 * _1063) + 32 <= return_data.size
                    idx = 0
                    s = _1051 + _1057 + 32
                    t = _1051 + ceil32(return_data.size) + 32
                    while idx < _1063:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    mem[mem[64] + 36] = _701
                    require ext_code.size(address(cd[(arg4 + 164)]))
                    call address(cd[(arg4 + 164)]).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), _701
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1171 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1171] == bool(mem[_1171])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1195 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1201 = mem[_1195]
                    require mem[_1195] == mem[_1195]
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _1201
                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _1201
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1219 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1219] == bool(mem[_1219])
        else:
            _707 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_707] == mem[_707 + 12 len 20]
            require ext_code.size(address(cd[(arg4 + 100)]))
            staticcall address(cd[(arg4 + 100)]).underlying() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _725 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _727 = mem[_725]
            require mem[_725] == mem[_725 + 12 len 20]
            if mem[_725 + 12 len 20] != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                if address(cd[(arg4 + 68)]) == address(cd[(arg4 + 100)]):
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    mem[mem[64] + 36] = arg3 + (3 * arg3 / 997) + 1
                    require ext_code.size(address(_727))
                    call address(_727).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg3 + (3 * arg3 / 997) + 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _789 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_789] == bool(mem[_789])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_727))
                    staticcall address(_727).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _866 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _879 = mem[_866]
                    require mem[_866] == mem[_866]
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _879
                    require ext_code.size(address(_727))
                    call address(_727).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _879
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _926 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_926] == bool(mem[_926])
                else:
                    if address(cd[(arg4 + 164)]) == mem[_725 + 12 len 20]:
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _701
                        require ext_code.size(address(cd[(arg4 + 164)]))
                        call address(cd[(arg4 + 164)]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _701
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _787 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_787] == bool(mem[_787])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_727))
                        staticcall address(_727).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _865 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _878 = mem[_865]
                        require mem[_865] == mem[_865]
                        mem[mem[64] + 4] = stor0
                        mem[mem[64] + 36] = _878
                        require ext_code.size(address(_727))
                        call address(_727).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor0, _878
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _925 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_925] == bool(mem[_925])
                    else:
                        mem[mem[64] + 4] = stor2
                        mem[mem[64] + 36] = -1
                        require ext_code.size(address(_727))
                        call address(_727).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor2, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _788 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_788] == bool(mem[_788])
                        _835 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_835]
                        mem[_835 + 32] = address(_727)
                        require 1 < mem[_835]
                        mem[_835 + 64] = address(cd[(arg4 + 164)])
                        mem[_835 + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[_835 + 100] = _701
                        mem[_835 + 132] = -1
                        mem[_835 + 164] = 160
                        mem[_835 + 260] = mem[_835]
                        idx = 0
                        s = _835 + 32
                        t = _835 + 292
                        while idx < mem[_835]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_835 + 196] = this.address
                        mem[_835 + 228] = block.timestamp + 30
                        require ext_code.size(stor2)
                        call stor2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _835 + (32 * mem[_835]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1052 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1058 = mem[_1052]
                        require mem[_1052] <= test266151307()
                        require _1052 + mem[_1052] + 31 < _1052 + return_data.size
                        _1064 = mem[_1052 + mem[_1052]]
                        require mem[_1052 + mem[_1052]] <= test266151307()
                        require _1052 + ceil32(return_data.size) + (32 * mem[_1052 + mem[_1052]]) + 32 <= test266151307() and (32 * mem[_1052 + mem[_1052]]) + 32 >= 0
                        mem[64] = _1052 + ceil32(return_data.size) + (32 * mem[_1052 + mem[_1052]]) + 32
                        mem[_1052 + ceil32(return_data.size)] = _1064
                        require _1058 + (32 * _1064) + 32 <= return_data.size
                        idx = 0
                        s = _1052 + _1058 + 32
                        t = _1052 + ceil32(return_data.size) + 32
                        while idx < _1064:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _701
                        require ext_code.size(address(cd[(arg4 + 164)]))
                        call address(cd[(arg4 + 164)]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _701
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1172 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1172] == bool(mem[_1172])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_727))
                        staticcall address(_727).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1196 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1202 = mem[_1196]
                        require mem[_1196] == mem[_1196]
                        mem[mem[64] + 4] = stor0
                        mem[mem[64] + 36] = _1202
                        require ext_code.size(address(_727))
                        call address(_727).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor0, _1202
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1220 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1220] == bool(mem[_1220])
            else:
                require ext_code.size(stor1)
                call stor1.deposit() with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(cd[(arg4 + 68)]) == address(cd[(arg4 + 100)]):
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    mem[mem[64] + 36] = arg3 + (3 * arg3 / 997) + 1
                    require ext_code.size(address(_727))
                    call address(_727).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg3 + (3 * arg3 / 997) + 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _808 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_808] == bool(mem[_808])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_727))
                    staticcall address(_727).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _881 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _894 = mem[_881]
                    require mem[_881] == mem[_881]
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _894
                    require ext_code.size(address(_727))
                    call address(_727).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _894
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _937 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_937] == bool(mem[_937])
                else:
                    if address(cd[(arg4 + 164)]) == mem[_725 + 12 len 20]:
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _701
                        require ext_code.size(address(cd[(arg4 + 164)]))
                        call address(cd[(arg4 + 164)]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _701
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _806 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_806] == bool(mem[_806])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_727))
                        staticcall address(_727).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _880 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _893 = mem[_880]
                        require mem[_880] == mem[_880]
                        mem[mem[64] + 4] = stor0
                        mem[mem[64] + 36] = _893
                        require ext_code.size(address(_727))
                        call address(_727).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor0, _893
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _936 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_936] == bool(mem[_936])
                    else:
                        mem[mem[64] + 4] = stor2
                        mem[mem[64] + 36] = -1
                        require ext_code.size(address(_727))
                        call address(_727).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor2, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _807 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_807] == bool(mem[_807])
                        _844 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_844]
                        mem[_844 + 32] = address(_727)
                        require 1 < mem[_844]
                        mem[_844 + 64] = address(cd[(arg4 + 164)])
                        mem[_844 + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[_844 + 100] = _701
                        mem[_844 + 132] = -1
                        mem[_844 + 164] = 160
                        mem[_844 + 260] = mem[_844]
                        idx = 0
                        s = _844 + 32
                        t = _844 + 292
                        while idx < mem[_844]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_844 + 196] = this.address
                        mem[_844 + 228] = block.timestamp + 30
                        require ext_code.size(stor2)
                        call stor2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _844 + (32 * mem[_844]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1053 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1059 = mem[_1053]
                        require mem[_1053] <= test266151307()
                        require _1053 + mem[_1053] + 31 < _1053 + return_data.size
                        _1065 = mem[_1053 + mem[_1053]]
                        require mem[_1053 + mem[_1053]] <= test266151307()
                        require _1053 + ceil32(return_data.size) + (32 * mem[_1053 + mem[_1053]]) + 32 <= test266151307() and (32 * mem[_1053 + mem[_1053]]) + 32 >= 0
                        mem[64] = _1053 + ceil32(return_data.size) + (32 * mem[_1053 + mem[_1053]]) + 32
                        mem[_1053 + ceil32(return_data.size)] = _1065
                        require _1059 + (32 * _1065) + 32 <= return_data.size
                        idx = 0
                        s = _1053 + _1059 + 32
                        t = _1053 + ceil32(return_data.size) + 32
                        while idx < _1065:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _701
                        require ext_code.size(address(cd[(arg4 + 164)]))
                        call address(cd[(arg4 + 164)]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _701
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1173 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1173] == bool(mem[_1173])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_727))
                        staticcall address(_727).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1197 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1203 = mem[_1197]
                        require mem[_1197] == mem[_1197]
                        mem[mem[64] + 4] = stor0
                        mem[mem[64] + 36] = _1203
                        require ext_code.size(address(_727))
                        call address(_727).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor0, _1203
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1221 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1221] == bool(mem[_1221])
    else:
        mem[(6 * ceil32(return_data.size)) + 132] = arg2
        mem[(6 * ceil32(return_data.size)) + 164] = address(cd[(arg4 + 100)])
        require ext_code.size(address(cd[(arg4 + 68)]))
        call address(cd[(arg4 + 68)]).liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 36)]), arg2, address(cd[(arg4 + 100)])
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            revert with 0, 'liquidation failed'
        mem[(7 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(address(cd[(arg4 + 100)]))
        staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
        require ext_code.size(address(cd[(arg4 + 100)]))
        call address(cd[(arg4 + 100)]).redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(10 * ceil32(return_data.size)) + 96] = 2
        mem[(10 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
        mem[(10 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
        mem[(10 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[(10 * ceil32(return_data.size)) + 196] = arg2
        mem[(10 * ceil32(return_data.size)) + 228] = 64
        mem[(10 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (10 * ceil32(return_data.size)) + 128
        t = (10 * ceil32(return_data.size)) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor2)
        staticcall stor2.getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg2, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (11 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _362 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
        require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
        _364 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
        require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
        mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
        mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        require _362 + (32 * _364) + 32 <= return_data.size
        idx = 0
        s = (10 * ceil32(return_data.size)) + _362 + 224
        t = (11 * ceil32(return_data.size)) + 224
        while idx < _364:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require 0 < _364
        _704 = mem[(11 * ceil32(return_data.size)) + 224]
        require ext_code.size(address(cd[(arg4 + 100)]))
        staticcall address(cd[(arg4 + 100)]).underlying() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            require ext_code.size(stor1)
            call stor1.deposit() with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if address(cd[(arg4 + 68)]) == address(cd[(arg4 + 100)]):
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                mem[mem[64] + 36] = arg2 + (3 * arg2 / 997) + 1
                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg2 + (3 * arg2 / 997) + 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _740 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_740] == bool(mem[_740])
                mem[mem[64] + 4] = this.address
                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _791 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _810 = mem[_791]
                require mem[_791] == mem[_791]
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = _810
                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor0, _810
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _868 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_868] == bool(mem[_868])
            else:
                if address(cd[(arg4 + 164)]) == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    mem[mem[64] + 36] = _704
                    require ext_code.size(address(cd[(arg4 + 164)]))
                    call address(cd[(arg4 + 164)]).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), _704
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _738 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_738] == bool(mem[_738])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _790 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _809 = mem[_790]
                    require mem[_790] == mem[_790]
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _809
                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _809
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _867 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_867] == bool(mem[_867])
                else:
                    mem[mem[64] + 4] = stor2
                    mem[mem[64] + 36] = -1
                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor2, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _739 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_739] == bool(mem[_739])
                    _762 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_762]
                    mem[_762 + 32] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    require 1 < mem[_762]
                    mem[_762 + 64] = address(cd[(arg4 + 164)])
                    mem[_762 + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[_762 + 100] = _704
                    mem[_762 + 132] = -1
                    mem[_762 + 164] = 160
                    mem[_762 + 260] = mem[_762]
                    idx = 0
                    s = _762 + 32
                    t = _762 + 292
                    while idx < mem[_762]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_762 + 196] = this.address
                    mem[_762 + 228] = block.timestamp + 30
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _762 + (32 * mem[_762]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1054 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1060 = mem[_1054]
                    require mem[_1054] <= test266151307()
                    require _1054 + mem[_1054] + 31 < _1054 + return_data.size
                    _1066 = mem[_1054 + mem[_1054]]
                    require mem[_1054 + mem[_1054]] <= test266151307()
                    require _1054 + ceil32(return_data.size) + (32 * mem[_1054 + mem[_1054]]) + 32 <= test266151307() and (32 * mem[_1054 + mem[_1054]]) + 32 >= 0
                    mem[64] = _1054 + ceil32(return_data.size) + (32 * mem[_1054 + mem[_1054]]) + 32
                    mem[_1054 + ceil32(return_data.size)] = _1066
                    require _1060 + (32 * _1066) + 32 <= return_data.size
                    idx = 0
                    s = _1054 + _1060 + 32
                    t = _1054 + ceil32(return_data.size) + 32
                    while idx < _1066:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    mem[mem[64] + 36] = _704
                    require ext_code.size(address(cd[(arg4 + 164)]))
                    call address(cd[(arg4 + 164)]).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), _704
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1174 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1174] == bool(mem[_1174])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1198 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1204 = mem[_1198]
                    require mem[_1198] == mem[_1198]
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _1204
                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _1204
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1222 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1222] == bool(mem[_1222])
        else:
            _708 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_708] == mem[_708 + 12 len 20]
            require ext_code.size(address(cd[(arg4 + 100)]))
            staticcall address(cd[(arg4 + 100)]).underlying() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _726 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _728 = mem[_726]
            require mem[_726] == mem[_726 + 12 len 20]
            if mem[_726 + 12 len 20] != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                if address(cd[(arg4 + 68)]) == address(cd[(arg4 + 100)]):
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    mem[mem[64] + 36] = arg2 + (3 * arg2 / 997) + 1
                    require ext_code.size(address(_728))
                    call address(_728).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg2 + (3 * arg2 / 997) + 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _794 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_794] == bool(mem[_794])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_728))
                    staticcall address(_728).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _870 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _886 = mem[_870]
                    require mem[_870] == mem[_870]
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _886
                    require ext_code.size(address(_728))
                    call address(_728).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _886
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _928 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_928] == bool(mem[_928])
                else:
                    if address(cd[(arg4 + 164)]) == mem[_726 + 12 len 20]:
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _704
                        require ext_code.size(address(cd[(arg4 + 164)]))
                        call address(cd[(arg4 + 164)]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _704
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _792 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_792] == bool(mem[_792])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_728))
                        staticcall address(_728).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _869 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _885 = mem[_869]
                        require mem[_869] == mem[_869]
                        mem[mem[64] + 4] = stor0
                        mem[mem[64] + 36] = _885
                        require ext_code.size(address(_728))
                        call address(_728).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor0, _885
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _927 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_927] == bool(mem[_927])
                    else:
                        mem[mem[64] + 4] = stor2
                        mem[mem[64] + 36] = -1
                        require ext_code.size(address(_728))
                        call address(_728).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor2, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _793 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_793] == bool(mem[_793])
                        _836 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_836]
                        mem[_836 + 32] = address(_728)
                        require 1 < mem[_836]
                        mem[_836 + 64] = address(cd[(arg4 + 164)])
                        mem[_836 + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[_836 + 100] = _704
                        mem[_836 + 132] = -1
                        mem[_836 + 164] = 160
                        mem[_836 + 260] = mem[_836]
                        idx = 0
                        s = _836 + 32
                        t = _836 + 292
                        while idx < mem[_836]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_836 + 196] = this.address
                        mem[_836 + 228] = block.timestamp + 30
                        require ext_code.size(stor2)
                        call stor2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _836 + (32 * mem[_836]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1055 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1061 = mem[_1055]
                        require mem[_1055] <= test266151307()
                        require _1055 + mem[_1055] + 31 < _1055 + return_data.size
                        _1067 = mem[_1055 + mem[_1055]]
                        require mem[_1055 + mem[_1055]] <= test266151307()
                        require _1055 + ceil32(return_data.size) + (32 * mem[_1055 + mem[_1055]]) + 32 <= test266151307() and (32 * mem[_1055 + mem[_1055]]) + 32 >= 0
                        mem[64] = _1055 + ceil32(return_data.size) + (32 * mem[_1055 + mem[_1055]]) + 32
                        mem[_1055 + ceil32(return_data.size)] = _1067
                        require _1061 + (32 * _1067) + 32 <= return_data.size
                        idx = 0
                        s = _1055 + _1061 + 32
                        t = _1055 + ceil32(return_data.size) + 32
                        while idx < _1067:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _704
                        require ext_code.size(address(cd[(arg4 + 164)]))
                        call address(cd[(arg4 + 164)]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _704
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1175 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1175] == bool(mem[_1175])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_728))
                        staticcall address(_728).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1199 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1205 = mem[_1199]
                        require mem[_1199] == mem[_1199]
                        mem[mem[64] + 4] = stor0
                        mem[mem[64] + 36] = _1205
                        require ext_code.size(address(_728))
                        call address(_728).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor0, _1205
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1223 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1223] == bool(mem[_1223])
            else:
                require ext_code.size(stor1)
                call stor1.deposit() with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(cd[(arg4 + 68)]) == address(cd[(arg4 + 100)]):
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    mem[mem[64] + 36] = arg2 + (3 * arg2 / 997) + 1
                    require ext_code.size(address(_728))
                    call address(_728).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg2 + (3 * arg2 / 997) + 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _816 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_816] == bool(mem[_816])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_728))
                    staticcall address(_728).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _888 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _896 = mem[_888]
                    require mem[_888] == mem[_888]
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _896
                    require ext_code.size(address(_728))
                    call address(_728).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _896
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _942 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_942] == bool(mem[_942])
                else:
                    if address(cd[(arg4 + 164)]) == mem[_726 + 12 len 20]:
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _704
                        require ext_code.size(address(cd[(arg4 + 164)]))
                        call address(cd[(arg4 + 164)]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _704
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _814 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_814] == bool(mem[_814])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_728))
                        staticcall address(_728).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _887 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _895 = mem[_887]
                        require mem[_887] == mem[_887]
                        mem[mem[64] + 4] = stor0
                        mem[mem[64] + 36] = _895
                        require ext_code.size(address(_728))
                        call address(_728).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor0, _895
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _941 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_941] == bool(mem[_941])
                    else:
                        mem[mem[64] + 4] = stor2
                        mem[mem[64] + 36] = -1
                        require ext_code.size(address(_728))
                        call address(_728).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor2, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _815 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_815] == bool(mem[_815])
                        _846 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_846]
                        mem[_846 + 32] = address(_728)
                        require 1 < mem[_846]
                        mem[_846 + 64] = address(cd[(arg4 + 164)])
                        mem[_846 + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[_846 + 100] = _704
                        mem[_846 + 132] = -1
                        mem[_846 + 164] = 160
                        mem[_846 + 260] = mem[_846]
                        idx = 0
                        s = _846 + 32
                        t = _846 + 292
                        while idx < mem[_846]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_846 + 196] = this.address
                        mem[_846 + 228] = block.timestamp + 30
                        require ext_code.size(stor2)
                        call stor2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _846 + (32 * mem[_846]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1056 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1062 = mem[_1056]
                        require mem[_1056] <= test266151307()
                        require _1056 + mem[_1056] + 31 < _1056 + return_data.size
                        _1068 = mem[_1056 + mem[_1056]]
                        require mem[_1056 + mem[_1056]] <= test266151307()
                        require _1056 + ceil32(return_data.size) + (32 * mem[_1056 + mem[_1056]]) + 32 <= test266151307() and (32 * mem[_1056 + mem[_1056]]) + 32 >= 0
                        mem[64] = _1056 + ceil32(return_data.size) + (32 * mem[_1056 + mem[_1056]]) + 32
                        mem[_1056 + ceil32(return_data.size)] = _1068
                        require _1062 + (32 * _1068) + 32 <= return_data.size
                        idx = 0
                        s = _1056 + _1062 + 32
                        t = _1056 + ceil32(return_data.size) + 32
                        while idx < _1068:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _704
                        require ext_code.size(address(cd[(arg4 + 164)]))
                        call address(cd[(arg4 + 164)]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _704
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1176 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1176] == bool(mem[_1176])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_728))
                        staticcall address(_728).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1200 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1206 = mem[_1200]
                        require mem[_1200] == mem[_1200]
                        mem[mem[64] + 4] = stor0
                        mem[mem[64] + 36] = _1206
                        require ext_code.size(address(_728))
                        call address(_728).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor0, _1206
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1224 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1224] == bool(mem[_1224])
}



}
