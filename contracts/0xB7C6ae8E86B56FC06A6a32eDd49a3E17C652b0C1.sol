contract main {




// =====================  Runtime code  =====================


mapping of uint256 balances;
address owner;
array of address allPairs;
mapping of uint256 sub_1b5f7267;
array of uint256 pids;
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

function pids(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < pids.length
    return pids[arg1]
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
    if owner != msg.sender:
        require this.address == msg.sender
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    balances[msg.sender] = 0
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        require this.address == msg.sender
    require eth.balance(this.address) >= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    balances[msg.sender] -= arg1
}

function updateInfo() {
    if owner != msg.sender:
        require this.address == msg.sender
    allPairs.length = 0
    idx = 0
    while allPairs.length > idx:
        uint256(allPairs[idx]) = 0
        idx = idx + 1
        continue 
    pids.length = 0
    idx = 0
    while pids.length > idx:
        pids[idx] = 0
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
    pids.length++
    pids[pids.length] = 2
    pids.length++
    pids[pids.length] = 3
    pids.length++
    pids[pids.length] = 4
    pids.length++
    pids[pids.length] = 21
}

function sub_4c0bcfa4(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if owner != msg.sender:
        require this.address == msg.sender
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
    if owner != msg.sender:
        require this.address == msg.sender
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
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
    if owner != msg.sender:
        require this.address == msg.sender
    require ext_code.size(arg2)
    staticcall arg2.0xdd62ed3e with:
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
    if owner != msg.sender:
        require this.address == msg.sender
    require ext_code.size(arg3)
    staticcall arg3.0xdd62ed3e with:
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
    if owner != msg.sender:
        require this.address == msg.sender
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
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
    if msg.sender == owner:
        require 0 < arg3.length
        _3 = mem[128]
        require ext_code.size(mem[140 len 20])
        staticcall mem[140 len 20].0xdd62ed3e with:
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
    else:
        require this.address == msg.sender
        require 0 < arg3.length
        _7 = mem[128]
        require ext_code.size(mem[140 len 20])
        staticcall mem[140 len 20].0xdd62ed3e with:
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
            call address(_7) with:
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
    while idx < 4:
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
        require idx < allPairs.length
        require ext_code.size(address(allPairs[idx]))
        if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
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
            if msg.sender == owner:
                _527 = mem[64]
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
                    args mem[mem[64] + 4 len (32 * mem[96]) + _527 + -mem[64] + 160]
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
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if msg.sender == owner:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(routerAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        _1083 = mem[64]
                        mem[mem[64] + 36] = address(routerAddress)
                        mem[mem[64] + 68] = -1
                        _1084 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1084 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1084 + 36 len 28]
                        _1087 = mem[_1084]
                        t = _1084 + 32
                        u = mem[64]
                        s = mem[_1084]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[mem[64] + floor32(mem[_1084])] = mem[_1084 + floor32(mem[_1084]) + -(mem[_1084] % 32) + 64 len mem[_1084] % 32] or Mask(8 * -(mem[_1084] % 32) + 32, -(8 * -(mem[_1084] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1084])])
                        call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1087 + _1083 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, '!safeApprove'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, '!safeApprove'
                        else:
                            _1467 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1467] = return_data.size
                            mem[_1467 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, '!safeApprove'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_1467 + 32]:
                                    revert with 0, '!safeApprove'
                else:
                    require this.address == msg.sender
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(routerAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        _1105 = mem[64]
                        mem[mem[64] + 36] = address(routerAddress)
                        mem[mem[64] + 68] = -1
                        _1106 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1106 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1106 + 36 len 28]
                        _1109 = mem[_1106]
                        t = _1106 + 32
                        u = mem[64]
                        s = mem[_1106]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[mem[64] + floor32(mem[_1106])] = mem[_1106 + floor32(mem[_1106]) + -(mem[_1106] % 32) + 64 len mem[_1106] % 32] or Mask(8 * -(mem[_1106] % 32) + 32, -(8 * -(mem[_1106] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1106])])
                        call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1109 + _1105 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, '!safeApprove'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, '!safeApprove'
                        else:
                            _1468 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1468] = return_data.size
                            mem[_1468 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, '!safeApprove'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_1468 + 32]:
                                    revert with 0, '!safeApprove'
            else:
                require this.address == msg.sender
                _533 = mem[64]
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
                    args mem[mem[64] + 4 len (32 * mem[96]) + _533 + -mem[64] + 160]
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
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if msg.sender == owner:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(routerAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        _1088 = mem[64]
                        mem[mem[64] + 36] = address(routerAddress)
                        mem[mem[64] + 68] = -1
                        _1089 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1089 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1089 + 36 len 28]
                        _1092 = mem[_1089]
                        t = _1089 + 32
                        u = mem[64]
                        s = mem[_1089]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[mem[64] + floor32(mem[_1089])] = mem[_1089 + floor32(mem[_1089]) + -(mem[_1089] % 32) + 64 len mem[_1089] % 32] or Mask(8 * -(mem[_1089] % 32) + 32, -(8 * -(mem[_1089] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1089])])
                        call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1092 + _1088 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, '!safeApprove'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, '!safeApprove'
                        else:
                            _1469 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1469] = return_data.size
                            mem[_1469 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, '!safeApprove'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_1469 + 32]:
                                    revert with 0, '!safeApprove'
                else:
                    require this.address == msg.sender
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(routerAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        _1112 = mem[64]
                        mem[mem[64] + 36] = address(routerAddress)
                        mem[mem[64] + 68] = -1
                        _1113 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1113 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1113 + 36 len 28]
                        _1116 = mem[_1113]
                        t = _1113 + 32
                        u = mem[64]
                        s = mem[_1113]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[mem[64] + floor32(mem[_1113])] = mem[_1113 + floor32(mem[_1113]) + -(mem[_1113] % 32) + 64 len mem[_1113] % 32] or Mask(8 * -(mem[_1113] % 32) + 32, -(8 * -(mem[_1113] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1113])])
                        call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1116 + _1112 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, '!safeApprove'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, '!safeApprove'
                        else:
                            _1470 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1470] = return_data.size
                            mem[_1470 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, '!safeApprove'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_1470 + 32]:
                                    revert with 0, '!safeApprove'
        else:
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
            if msg.sender == owner:
                _530 = mem[64]
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
                    args mem[mem[64] + 4 len (32 * mem[96]) + _530 + -mem[64] + 160]
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
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if msg.sender == owner:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(routerAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        _1093 = mem[64]
                        mem[mem[64] + 36] = address(routerAddress)
                        mem[mem[64] + 68] = -1
                        _1094 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1094 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1094 + 36 len 28]
                        _1097 = mem[_1094]
                        t = _1094 + 32
                        u = mem[64]
                        s = mem[_1094]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[mem[64] + floor32(mem[_1094])] = mem[_1094 + floor32(mem[_1094]) + -(mem[_1094] % 32) + 64 len mem[_1094] % 32] or Mask(8 * -(mem[_1094] % 32) + 32, -(8 * -(mem[_1094] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1094])])
                        call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1097 + _1093 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, '!safeApprove'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, '!safeApprove'
                        else:
                            _1471 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1471] = return_data.size
                            mem[_1471 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, '!safeApprove'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_1471 + 32]:
                                    revert with 0, '!safeApprove'
                else:
                    require this.address == msg.sender
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(routerAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        _1119 = mem[64]
                        mem[mem[64] + 36] = address(routerAddress)
                        mem[mem[64] + 68] = -1
                        _1120 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1120 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1120 + 36 len 28]
                        _1123 = mem[_1120]
                        t = _1120 + 32
                        u = mem[64]
                        s = mem[_1120]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[mem[64] + floor32(mem[_1120])] = mem[_1120 + floor32(mem[_1120]) + -(mem[_1120] % 32) + 64 len mem[_1120] % 32] or Mask(8 * -(mem[_1120] % 32) + 32, -(8 * -(mem[_1120] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1120])])
                        call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1123 + _1119 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, '!safeApprove'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, '!safeApprove'
                        else:
                            _1472 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1472] = return_data.size
                            mem[_1472 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, '!safeApprove'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_1472 + 32]:
                                    revert with 0, '!safeApprove'
            else:
                require this.address == msg.sender
                _536 = mem[64]
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
                    args mem[mem[64] + 4 len (32 * mem[96]) + _536 + -mem[64] + 160]
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
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if msg.sender == owner:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(routerAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        _1098 = mem[64]
                        mem[mem[64] + 36] = address(routerAddress)
                        mem[mem[64] + 68] = -1
                        _1099 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1099 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1099 + 36 len 28]
                        _1102 = mem[_1099]
                        t = _1099 + 32
                        u = mem[64]
                        s = mem[_1099]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[mem[64] + floor32(mem[_1099])] = mem[_1099 + floor32(mem[_1099]) + -(mem[_1099] % 32) + 64 len mem[_1099] % 32] or Mask(8 * -(mem[_1099] % 32) + 32, -(8 * -(mem[_1099] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1099])])
                        call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1102 + _1098 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, '!safeApprove'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, '!safeApprove'
                        else:
                            _1473 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1473] = return_data.size
                            mem[_1473 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, '!safeApprove'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_1473 + 32]:
                                    revert with 0, '!safeApprove'
                else:
                    require this.address == msg.sender
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(routerAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        _1126 = mem[64]
                        mem[mem[64] + 36] = address(routerAddress)
                        mem[mem[64] + 68] = -1
                        _1127 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1127 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1127 + 36 len 28]
                        _1130 = mem[_1127]
                        t = _1127 + 32
                        u = mem[64]
                        s = mem[_1127]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[mem[64] + floor32(mem[_1127])] = mem[_1127 + floor32(mem[_1127]) + -(mem[_1127] % 32) + 64 len mem[_1127] % 32] or Mask(8 * -(mem[_1127] % 32) + 32, -(8 * -(mem[_1127] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1127])])
                        call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1130 + _1126 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, '!safeApprove'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, '!safeApprove'
                        else:
                            _1474 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1474] = return_data.size
                            mem[_1474 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, '!safeApprove'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_1474 + 32]:
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
        idx = idx + 1
        continue 
}



}
