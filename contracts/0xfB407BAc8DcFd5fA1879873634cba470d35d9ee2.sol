contract main {




// =====================  Runtime code  =====================


mapping of uint256 balances;
address owner;
array of address allPairs;
mapping of uint256 sub_1b5f7267;
array of uint256 stor4;
uint32 stor5;
address routerAddress;
uint256 stor5;
uint256 sub_82654169;
address chefAddress;

function sub_1b5f7267(?) {
    require calldata.size - 4 >= 32
    return sub_1b5f7267[arg1]
}

function allPairs(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < allPairs.length
    return address(allPairs[arg1])
}

function chef() {
    return chefAddress
}

function balances(address arg1) {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function sub_82654169(?) {
    return sub_82654169
}

function owner() {
    return owner
}

function router() {
    return address(routerAddress)
}

function _fallback() payable {
    revert
}

function withdraw() payable {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    balances[msg.sender] = 0
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require eth.balance(this.address) >= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    balances[msg.sender] -= arg1
}

function updateInfo() {
    require msg.sender == owner
    allPairs.length = 0
    idx = 0
    while allPairs.length > idx:
        uint256(allPairs[idx]) = 0
        idx = idx + 1
        continue 
    allPairs.length++
    address(allPairs[allPairs.length]) = 0x279b2c897737a50405ed2091694f225d83f2d3ba
    allPairs.length++
    address(allPairs[allPairs.length]) = 0x613bf4e46b4817015c01c6bb31c7ae9edaadc26e
    allPairs.length++
    address(allPairs[allPairs.length]) = 0xe7e90f5a767406eff87fdad7eb07ef407922ec1d
    allPairs.length++
    address(allPairs[allPairs.length]) = 0x74fe5ddc4c27f91a1898ccd5ac62dfeb2d3df726
    stor4.length++
    stor4[stor4.length] = 2
    stor4.length++
    stor4[stor4.length] = 3
    stor4.length++
    stor4[stor4.length] = 4
    stor4.length++
    stor4[stor4.length] = 21
}

function sub_4c0bcfa4(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require msg.sender == owner
    mem[(32 * arg3.length) + 292 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    require ext_code.size(address(routerAddress))
    call address(routerAddress).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg1 wei
         gas gas_remaining wei
        args arg2, Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 292 len (32 * arg3.length) - floor32(arg3.length)]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function swapExactTokensForTokensSupportingFeeOnTransferTokens(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require ext_code.size(arg1)
    staticcall arg1.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, address(routerAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg3:
        mem[388 len 0] = None
        require ext_code.size(address(routerAddress))
        call address(routerAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, 0, 160, this.address, block.timestamp, 2, mem[388 len 64]
    else:
        mem[292 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call arg1 with:
           funct uint32(stor5)
             gas gas_remaining wei
            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[356 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, '!safeApprove'
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, '!safeApprove'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, '!safeApprove'
        mem[ceil32(return_data.size) + 489 len 0] = None
        require ext_code.size(address(routerAddress))
        call address(routerAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, 0, 160, this.address, block.timestamp, 2, mem[ceil32(return_data.size) + 489 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_923df378(?) {
    require calldata.size - 4 >= 160
    require msg.sender == owner
    require ext_code.size(arg2)
    staticcall arg2.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, address(routerAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg3:
        require ext_code.size(address(routerAddress))
        call address(routerAddress).removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args 0, 0, arg3, arg4, arg5, this.address, block.timestamp
    else:
        mem[196 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call arg2 with:
           funct uint32(stor5)
             gas gas_remaining wei
            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, '!safeApprove'
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor5):
                revert with 0, '!safeApprove'
        else:
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, '!safeApprove'
            if return_data.size:
                require return_data.size >= 32
                if not mem[228]:
                    revert with 0, '!safeApprove'
        require ext_code.size(address(routerAddress))
        call address(routerAddress).removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args address(arg1), arg3, arg4, arg5, this.address, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_35315332(?) {
    require calldata.size - 4 >= 192
    require msg.sender == owner
    require ext_code.size(arg3)
    staticcall arg3.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, address(routerAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg4:
        require ext_code.size(address(routerAddress))
        call address(routerAddress).removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
             gas gas_remaining wei
            args 0, 0, address(arg2), arg4, arg5, arg6, this.address, block.timestamp
    else:
        mem[196 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call arg3 with:
           funct uint32(stor5)
             gas gas_remaining wei
            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, '!safeApprove'
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor5):
                revert with 0, '!safeApprove'
        else:
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, '!safeApprove'
            if return_data.size:
                require return_data.size >= 32
                if not mem[228]:
                    revert with 0, '!safeApprove'
        require ext_code.size(address(routerAddress))
        call address(routerAddress).removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
             gas gas_remaining wei
            args address(arg1), address(arg2), arg4, arg5, arg6, this.address, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[32]
}

function addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require msg.sender == owner
    require ext_code.size(arg1)
    staticcall arg1.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, address(routerAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg3:
        require ext_code.size(address(routerAddress))
        call address(routerAddress).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
           value arg2 wei
             gas gas_remaining wei
            args 0, 0, arg3, arg4, arg5, this.address, block.timestamp
    else:
        mem[196 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call arg1 with:
           funct uint32(stor5)
             gas gas_remaining wei
            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, '!safeApprove'
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor5):
                revert with 0, '!safeApprove'
        else:
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, '!safeApprove'
            if return_data.size:
                require return_data.size >= 32
                if not mem[228]:
                    revert with 0, '!safeApprove'
        require ext_code.size(address(routerAddress))
        call address(routerAddress).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
           value arg2 wei
             gas gas_remaining wei
            args address(arg1), arg3, arg4, arg5, this.address, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[64]
}

function sub_29337d88(?) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0
    require msg.sender == owner
    require 0 < arg3.length
    _3 = mem[128]
    require ext_code.size(mem[140 len 20])
    staticcall mem[140 len 20].allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, address(routerAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= -1:
        mem[(32 * arg3.length) + 324 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        require ext_code.size(address(routerAddress))
        call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1, arg2, Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 324 len (32 * arg3.length) - floor32(arg3.length)]), address(this.address), block.timestamp
    else:
        mem[(32 * arg3.length) + 128] = 68
        mem[(32 * arg3.length) + 228 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call address(_3) with:
           funct uint32(stor5)
             gas gas_remaining wei
            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * arg3.length) + 292 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, '!safeApprove'
            if arg3.length:
                require arg3.length >= 32
                if not mem[128]:
                    revert with 0, '!safeApprove'
            mem[(32 * arg3.length) + 424 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            require ext_code.size(address(routerAddress))
            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, arg2, Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 424 len (32 * arg3.length) - floor32(arg3.length)]), address(this.address), block.timestamp
        else:
            mem[(32 * arg3.length) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, '!safeApprove'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * arg3.length) + 260]:
                    revert with 0, '!safeApprove'
            mem[(32 * arg3.length) + ceil32(return_data.size) + 425 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            require ext_code.size(address(routerAddress))
            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, arg2, Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + ceil32(return_data.size) + floor32(arg3.length) + 425 len (32 * arg3.length) - floor32(arg3.length)]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function allocate(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    idx = 0
    while idx < 5:
        require ext_code.size(address(routerAddress))
        staticcall address(routerAddress).WETH() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < allPairs.length
        require ext_code.size(address(allPairs[idx]))
        staticcall address(allPairs[idx]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
            require idx < allPairs.length
            require ext_code.size(address(allPairs[idx]))
            staticcall address(allPairs[idx]).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require mem[96]
            mem[128] = address(ext_call.return_data[0])
            require idx < allPairs.length
            require ext_code.size(address(allPairs[idx]))
            staticcall address(allPairs[idx]).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 < mem[96]
            mem[160] = address(ext_call.return_data[0])
            require msg.sender == owner
            _293 = mem[64]
            mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 0
            mem[mem[64] + 68] = this.address
            mem[mem[64] + 100] = block.timestamp
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = mem[96]
            s = 0
            while s < 32 * mem[96]:
                mem[s + mem[64] + 164] = mem[s + 128]
                s = s + 32
                continue 
            require ext_code.size(address(routerAddress))
            call address(routerAddress).mem[mem[64] len 4] with:
               value arg1 / 8 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (32 * mem[96]) + _293 + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < allPairs.length
            require ext_code.size(address(allPairs[idx]))
            staticcall address(allPairs[idx]).token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < allPairs.length
            mem[0] = 2
            require ext_code.size(address(allPairs[idx]))
            staticcall address(allPairs[idx]).token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require msg.sender == owner
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args this.address, address(routerAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                _558 = mem[64]
                mem[mem[64] + 36] = address(routerAddress)
                mem[mem[64] + 68] = -1
                _559 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_559 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_559 + 36 len 28]
                _562 = mem[_559]
                t = _559 + 32
                u = mem[64]
                s = mem[_559]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_559])] = mem[_559 + floor32(mem[_559]) + -(mem[_559] % 32) + 64 len mem[_559] % 32] or Mask(8 * -(mem[_559] % 32) + 32, -(8 * -(mem[_559] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_559])])
                call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _562 + _558 + -mem[64] + 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, '!safeApprove'
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, '!safeApprove'
                else:
                    _730 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_730] = return_data.size
                    mem[_730 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, '!safeApprove'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_730 + 32]:
                            revert with 0, '!safeApprove'
            mem[mem[64] + 68] = 0
            mem[mem[64] + 100] = 0
            mem[mem[64] + 132] = this.address
            mem[mem[64] + 164] = block.timestamp
            require ext_code.size(address(routerAddress))
            call address(routerAddress).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value arg1 / 8 wei
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), ext_call.return_data[0], 0, 0, this.address, block.timestamp
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < stor4.length
            require idx < allPairs.length
            mem[0] = 2
            require ext_code.size(address(allPairs[idx]))
            staticcall address(allPairs[idx]).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64]] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = stor4[idx]
            mem[mem[64] + 36] = ext_call.return_data[0]
            require ext_code.size(chefAddress)
            call chefAddress.deposit(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor4[idx], ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(address(routerAddress))
            staticcall address(routerAddress).WETH() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < allPairs.length
            mem[0] = 2
            require ext_code.size(address(allPairs[idx]))
            staticcall address(allPairs[idx]).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                require idx < allPairs.length
                require ext_code.size(address(allPairs[idx]))
                staticcall address(allPairs[idx]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require mem[96]
                mem[128] = address(ext_call.return_data[0])
                require idx < allPairs.length
                require ext_code.size(address(allPairs[idx]))
                staticcall address(allPairs[idx]).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[96]
                mem[160] = address(ext_call.return_data[0])
                require msg.sender == owner
                _307 = mem[64]
                mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = block.timestamp
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = mem[96]
                s = 0
                while s < 32 * mem[96]:
                    mem[s + mem[64] + 164] = mem[s + 128]
                    s = s + 32
                    continue 
                require ext_code.size(address(routerAddress))
                call address(routerAddress).mem[mem[64] len 4] with:
                   value arg1 / 8 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (32 * mem[96]) + _307 + -mem[64] + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < allPairs.length
                require ext_code.size(address(allPairs[idx]))
                staticcall address(allPairs[idx]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < allPairs.length
                mem[0] = 2
                require ext_code.size(address(allPairs[idx]))
                staticcall address(allPairs[idx]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require msg.sender == owner
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args this.address, address(routerAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    _553 = mem[64]
                    mem[mem[64] + 36] = address(routerAddress)
                    mem[mem[64] + 68] = -1
                    _554 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_554 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_554 + 36 len 28]
                    _557 = mem[_554]
                    t = _554 + 32
                    u = mem[64]
                    s = mem[_554]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_554])] = mem[_554 + floor32(mem[_554]) + -(mem[_554] % 32) + 64 len mem[_554] % 32] or Mask(8 * -(mem[_554] % 32) + 32, -(8 * -(mem[_554] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_554])])
                    call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _557 + _553 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, '!safeApprove'
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, '!safeApprove'
                    else:
                        _729 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_729] = return_data.size
                        mem[_729 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, '!safeApprove'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_729 + 32]:
                                revert with 0, '!safeApprove'
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = 0
                mem[mem[64] + 132] = this.address
                mem[mem[64] + 164] = block.timestamp
                require ext_code.size(address(routerAddress))
                call address(routerAddress).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value arg1 / 8 wei
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), ext_call.return_data[0], 0, 0, this.address, block.timestamp
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < stor4.length
                require idx < allPairs.length
                mem[0] = 2
                require ext_code.size(address(allPairs[idx]))
                staticcall address(allPairs[idx]).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64]] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = stor4[idx]
                mem[mem[64] + 36] = ext_call.return_data[0]
                require ext_code.size(chefAddress)
                call chefAddress.deposit(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4[idx], ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
