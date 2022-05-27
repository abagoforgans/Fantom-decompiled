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
                _847 = mem[64]
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
                    args mem[mem[64] + 4 len (32 * mem[96]) + _847 + -mem[64] + 160]
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
                        _1723 = mem[64]
                        mem[mem[64] + 36] = address(routerAddress)
                        mem[mem[64] + 68] = -1
                        _1724 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1724 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1724 + 36 len 28]
                        _1727 = mem[_1724]
                        t = _1724 + 32
                        u = mem[64]
                        s = mem[_1724]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[mem[64] + floor32(mem[_1724])] = mem[_1724 + floor32(mem[_1724]) + -(mem[_1724] % 32) + 64 len mem[_1724] % 32] or Mask(8 * -(mem[_1724] % 32) + 32, -(8 * -(mem[_1724] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1724])])
                        call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1727 + _1723 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, '!safeApprove'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, '!safeApprove'
                        else:
                            _2427 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_2427] = return_data.size
                            mem[_2427 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, '!safeApprove'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_2427 + 32]:
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
                        _1745 = mem[64]
                        mem[mem[64] + 36] = address(routerAddress)
                        mem[mem[64] + 68] = -1
                        _1746 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1746 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1746 + 36 len 28]
                        _1749 = mem[_1746]
                        t = _1746 + 32
                        u = mem[64]
                        s = mem[_1746]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[mem[64] + floor32(mem[_1746])] = mem[_1746 + floor32(mem[_1746]) + -(mem[_1746] % 32) + 64 len mem[_1746] % 32] or Mask(8 * -(mem[_1746] % 32) + 32, -(8 * -(mem[_1746] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1746])])
                        call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1749 + _1745 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, '!safeApprove'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, '!safeApprove'
                        else:
                            _2428 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_2428] = return_data.size
                            mem[_2428 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, '!safeApprove'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_2428 + 32]:
                                    revert with 0, '!safeApprove'
            else:
                require this.address == msg.sender
                _853 = mem[64]
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
                    args mem[mem[64] + 4 len (32 * mem[96]) + _853 + -mem[64] + 160]
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
                        _1728 = mem[64]
                        mem[mem[64] + 36] = address(routerAddress)
                        mem[mem[64] + 68] = -1
                        _1729 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1729 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1729 + 36 len 28]
                        _1732 = mem[_1729]
                        t = _1729 + 32
                        u = mem[64]
                        s = mem[_1729]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[mem[64] + floor32(mem[_1729])] = mem[_1729 + floor32(mem[_1729]) + -(mem[_1729] % 32) + 64 len mem[_1729] % 32] or Mask(8 * -(mem[_1729] % 32) + 32, -(8 * -(mem[_1729] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1729])])
                        call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1732 + _1728 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, '!safeApprove'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, '!safeApprove'
                        else:
                            _2429 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_2429] = return_data.size
                            mem[_2429 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, '!safeApprove'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_2429 + 32]:
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
                        _1752 = mem[64]
                        mem[mem[64] + 36] = address(routerAddress)
                        mem[mem[64] + 68] = -1
                        _1753 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1753 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1753 + 36 len 28]
                        _1756 = mem[_1753]
                        t = _1753 + 32
                        u = mem[64]
                        s = mem[_1753]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[mem[64] + floor32(mem[_1753])] = mem[_1753 + floor32(mem[_1753]) + -(mem[_1753] % 32) + 64 len mem[_1753] % 32] or Mask(8 * -(mem[_1753] % 32) + 32, -(8 * -(mem[_1753] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1753])])
                        call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1756 + _1752 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, '!safeApprove'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, '!safeApprove'
                        else:
                            _2430 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_2430] = return_data.size
                            mem[_2430 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, '!safeApprove'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_2430 + 32]:
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
                _850 = mem[64]
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
                    args mem[mem[64] + 4 len (32 * mem[96]) + _850 + -mem[64] + 160]
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
                        _1733 = mem[64]
                        mem[mem[64] + 36] = address(routerAddress)
                        mem[mem[64] + 68] = -1
                        _1734 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1734 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1734 + 36 len 28]
                        _1737 = mem[_1734]
                        t = _1734 + 32
                        u = mem[64]
                        s = mem[_1734]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[mem[64] + floor32(mem[_1734])] = mem[_1734 + floor32(mem[_1734]) + -(mem[_1734] % 32) + 64 len mem[_1734] % 32] or Mask(8 * -(mem[_1734] % 32) + 32, -(8 * -(mem[_1734] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1734])])
                        call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1737 + _1733 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, '!safeApprove'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, '!safeApprove'
                        else:
                            _2431 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_2431] = return_data.size
                            mem[_2431 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, '!safeApprove'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_2431 + 32]:
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
                        _1759 = mem[64]
                        mem[mem[64] + 36] = address(routerAddress)
                        mem[mem[64] + 68] = -1
                        _1760 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1760 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1760 + 36 len 28]
                        _1763 = mem[_1760]
                        t = _1760 + 32
                        u = mem[64]
                        s = mem[_1760]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[mem[64] + floor32(mem[_1760])] = mem[_1760 + floor32(mem[_1760]) + -(mem[_1760] % 32) + 64 len mem[_1760] % 32] or Mask(8 * -(mem[_1760] % 32) + 32, -(8 * -(mem[_1760] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1760])])
                        call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1763 + _1759 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, '!safeApprove'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, '!safeApprove'
                        else:
                            _2432 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_2432] = return_data.size
                            mem[_2432 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, '!safeApprove'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_2432 + 32]:
                                    revert with 0, '!safeApprove'
            else:
                require this.address == msg.sender
                _856 = mem[64]
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
                    args mem[mem[64] + 4 len (32 * mem[96]) + _856 + -mem[64] + 160]
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
                        _1738 = mem[64]
                        mem[mem[64] + 36] = address(routerAddress)
                        mem[mem[64] + 68] = -1
                        _1739 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1739 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1739 + 36 len 28]
                        _1742 = mem[_1739]
                        t = _1739 + 32
                        u = mem[64]
                        s = mem[_1739]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[mem[64] + floor32(mem[_1739])] = mem[_1739 + floor32(mem[_1739]) + -(mem[_1739] % 32) + 64 len mem[_1739] % 32] or Mask(8 * -(mem[_1739] % 32) + 32, -(8 * -(mem[_1739] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1739])])
                        call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1742 + _1738 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, '!safeApprove'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, '!safeApprove'
                        else:
                            _2433 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_2433] = return_data.size
                            mem[_2433 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, '!safeApprove'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_2433 + 32]:
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
                        _1766 = mem[64]
                        mem[mem[64] + 36] = address(routerAddress)
                        mem[mem[64] + 68] = -1
                        _1767 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1767 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1767 + 36 len 28]
                        _1770 = mem[_1767]
                        t = _1767 + 32
                        u = mem[64]
                        s = mem[_1767]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[mem[64] + floor32(mem[_1767])] = mem[_1767 + floor32(mem[_1767]) + -(mem[_1767] % 32) + 64 len mem[_1767] % 32] or Mask(8 * -(mem[_1767] % 32) + 32, -(8 * -(mem[_1767] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1767])])
                        call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1770 + _1766 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, '!safeApprove'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, '!safeApprove'
                        else:
                            _2434 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_2434] = return_data.size
                            mem[_2434 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, '!safeApprove'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_2434 + 32]:
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
        require idx < pids.length
        require idx < allPairs.length
        mem[0] = 2
        require ext_code.size(address(allPairs[idx]))
        staticcall address(allPairs[idx]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[mem[64]] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = pids[idx]
        mem[mem[64] + 36] = ext_call.return_data[0]
        require ext_code.size(chefAddress)
        call chefAddress.0xe2bbb158 with:
             gas gas_remaining wei
            args pids[idx], ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
